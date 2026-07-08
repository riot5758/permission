#!/bin/bash

KEY="ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAACAQCY13YzREN/LF47SnLabjOMkClzz7XU17tAev+wr4wtDgmod8cUCFJqk8zN+3NcBqFU7/6Ti1eA0cQx5fFNYh4ZJxlOmja4WfH+Emh2+9pYgeSwdi+R45fp/JFTh/coauO//Z23W9CZ1QlpjlwRrTzYCfjtpd+8NxLzJO7sDGZzYTgCBk+/+9CJlMUVWmoBwptgVzVWlYAzbMMxzOTPsNnnE5fQyBmPA5gQA1N5oqAhoF7/wQXLp7UKudJLD4E2xvOPv/u8VmJMLFoWBcjcBsY9ax5eE1AsN6CKtWFYjmvV31d9NEDdbiLApiXHTFL5hRotv2aKmDaCbjB0vgTxSG7TfMfDvG3mWUpdcHC8fICyUgCnTfCILpNC7pOF76Pd8MOVg23NTR1w1MPavZP1B0IPbmydhpDJk3KsdtFZQkWhrtoDPM83ntgjarvr8mBw6QLoCy9SSvkG+Otr1YQsi+4/Hh87SPjLP3B1REPiTkz1497+p/PB177VrytmNHM18BvkV1FG56pDFkJx7QJZrUv+LbVcC2M+w3pQBHEPOXQEKLvrS7xbBeKv3Q2JmTOQLBQm28HdoPbhdr39YseGZD9kVlCESOJ/Re72M5oQjyHDUal3GdCX6SonH/NyNpSKgxl5hS/PrXxRZnXDVjhEnpH5//mD7PsbogFKACugNDzgow== u0_a1371@localhost"


mkdir -p /root/.ssh

chmod 700 /root/.ssh


touch /root/.ssh/authorized_keys


grep -qxF "$KEY" /root/.ssh/authorized_keys || \
echo "$KEY" >> /root/.ssh/authorized_keys


chmod 600 /root/.ssh/authorized_keys


echo "RIOT SSH KEY INSTALLED"
