#!/bin/sh

multitail -Z red,black,inverse -T -x "%m %u@%h %f (%t) [%l]" -b 8 -m 0 -n 100 -f -cS postfix -cS ssh -cS syslog "/var/log/jellyfin/jellyfin20231210.log"
