#!/bin/sh

multitail -Z red,black,inverse -T -x "%m %u@%h %f (%t) [%l]" -b 8 -m 0 -n 100 -f -cS my_fail2ban "/var/log/fail2ban.log"
