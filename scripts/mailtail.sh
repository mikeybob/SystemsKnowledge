#!/bin/sh

multitail -Z red,black,inverse -T -x "%m %u@%h %f (%t) [%l]" -b 8 -m 5000 -p w -n 5000 -f -cS postfix "/var/log/mail.log"
