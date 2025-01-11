#!/bin/bash

# 获取脚本所在的目录
SCRIPT_DIR="$(dirname "$(readlink -f "$0")")"
echo "$SCRIPT_DIR/../.npmrc"

## 定义要写入的内容
CONTENT="registry=https://registry.npmjs.org"

# 将内容写入 .npmrc 文件
echo "$CONTENT" > "$SCRIPT_DIR/../.npmrc"

# 打包当前项目内容
tsup --config "$SCRIPT_DIR/../tsup.config.ts"