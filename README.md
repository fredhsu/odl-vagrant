odl-vagrant
===========

Vagrant setup for OpenDaylight

Uses Ubuntu Precise 12.04

Will automatically install and start OpenDaylight with osgi console on port 8090 when finished.

Optionally remove the comment in the bootstrap.sh file to load mininet

## Port forwarding to host:
* 8080 : ODL Web Interface
* 6633 : OpenFlow
* 8090 : OSGI console

## Troubleshooting
You may have issues with virtualbox guest additions matching between your VB install and the base box.  If so, this is a handy plugin to help resolve that:
https://github.com/dotless-de/vagrant-vbguest


