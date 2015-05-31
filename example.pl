#! /usr/bin/perl

use Transfer;

my $ftp_transfer = Transfer->new('ftp://ftp.kernel.org', 'anonymous', 'al@al.com');
my @list = ("a.pl");

$ftp_transfer->get_files(@list);


my $sftp_transfer = Transfer->new('scp://nipl.net', 'username', 'password');

$sftp_transfer->put_files(@list);

my $http_transfer = Transfer->new("http://haxlab.org");
$http_transfer->post( ( name => 'song', value => '100' ) );

exit 0;
