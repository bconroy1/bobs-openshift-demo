#!/bin/bash

set -e

echo Good
ls -l /banktools/splunkforwarder

/banktools/splunkforwarder/bin/splunk restart --accept-license --answer-yes

/banktools/splunkforwarder/bin/splunk version

