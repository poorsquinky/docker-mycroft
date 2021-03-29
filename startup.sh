#!/bin/bash

CMD=${1:-all}
shift

source /opt/mycroft/.venv/bin/activate
/opt/mycroft/./start-mycroft.sh ${CMD} $@

tail -f /var/log/mycroft/*.log
