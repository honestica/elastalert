#!/bin/sh
elastalert-create-index --index elastalert_status --old-index "" --no-auth --no-ssl --url-prefix ""
python -m elastalert.elastalert --config=/config/config.yml --verbose
