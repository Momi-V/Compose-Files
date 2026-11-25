#!/bin/bash

.local/bin/bmoe-server --model bmoe/DeepSeek-V4.1-Flash-1017-GGUF/UD-Q8_K_XL/DeepSeek-V4.1-Flash-1017-UD-Q8_K_XL-00001-of-00009.gguf --ctx-size 1048576 --threads 8 --io-threads 8 --cache-mb 147456 --host 0.0.0.0 --devices all --api-key TOKEN --allow-origin http://truenas.lan:8765 --think --temp 1
