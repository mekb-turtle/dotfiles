#!/bin/env perl
use strict;
use warnings;
use File::Basename;
use POSIX qw(exit);
use Getopt::Long;

my $start = 0;
my $quiet = 0;

if (
    not GetOptions(
        'start|s' => \$start,
        'quiet|q' => \$quiet
    )
    or ( $start ? @ARGV < 1 : @ARGV != 1 )
  )
{
  usage:
    die "Usage: $0 [OPTIONS...] <process name>\n"
      . "  --start | -s  Start the process if not found\n"
      . "  --quiet | -q  Do not print anything\n";
}

my ( $proc_match, @args ) = @ARGV;

# Open the /proc directory
opendir( my $proc_dir, '/proc' ) or die "Cannot open /proc: $!\n";

# Get $HYPRLAND_INSTANCE_SIGNATURE from the environment
my $env_name = 'HYPRLAND_INSTANCE_SIGNATURE';
if ( not exists $ENV{$env_name} ) {
    die "Environment variable $env_name is not set\n";
}
my $key_val_match = $env_name . '=' . $ENV{$env_name};

my $match_found = 0;

while ( my $entry = readdir($proc_dir) ) {

    # Skip non-numeric entries
    next unless $entry =~ /^\d+$/;
    my $pid = $entry;

    # Check the exe symlink
    my $exe_path = "/proc/$pid/exe";
    if ( -l $exe_path ) {
        my $exe_realpath = readlink($exe_path);
        if ( defined $exe_realpath
            && basename($exe_realpath) eq $proc_match )
        {
            goto match;
        }
    }

    # Check the cmdline file
    my $cmdline_path = "/proc/$pid/cmdline";
    if ( -r $cmdline_path ) {
        open my $cmdline_fh, '<', $cmdline_path or next;
        my $cmdline = do { local $/; <$cmdline_fh> };
        close $cmdline_fh;

        my @args = split( /\0/, $cmdline );
        if ( @args && $args[0] eq $proc_match ) {
            goto match;
        }
    }

    # No match found for the process name
    next;

  match:

    # Check the environ file
    my $environ_path = "/proc/$pid/environ";
    if ( -r $environ_path ) {
        open my $environ_fh, '<', $environ_path or next;
        my $environ = do { local $/; <$environ_fh> };
        close $environ_fh;

        my @env_vars = split( /\0/, $environ );
        if ( grep { $_ eq $key_val_match } @env_vars ) {
            if ( not $quiet ) {
                print "$pid\n";
            }
            $match_found = 1;
        }
    }
}

closedir($proc_dir);

if ( $start and not $match_found ) {

    # Start the process if no match was found
    my $pid = fork();

    if ( $pid == 0 ) {    # Child
        POSIX::setsid();    # Detach from the parent
        exec( $proc_match, @args ) or die "Cannot exec: $!\n";
    }
    elsif ( $pid > 0 ) {    # Parent
        sleep 1;            # Wait a few seconds for the process to start
        exit 2;
    }
    else {
        die "Cannot fork: $!\n";
    }
}

# If no match was found, exit with code 1
exit 1 unless $match_found;
