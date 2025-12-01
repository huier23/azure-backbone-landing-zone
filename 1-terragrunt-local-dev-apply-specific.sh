#!/bin/bash

# 使用 Local State
export TG_LOCAL_STATE=true

TARGET_DIR=""

if [ -z "$1" && -z "$TARGET_DIR" ]; then
  echo "請提供要執行的目錄路徑，範例：platform/connectivity/rg-bb-vwan-prd-global-01"
else
  TARGET_DIR="$1"
fi

# 格式化 Terraform 配置文件
terragrunt run -- fmt --recursive

# 初始化 Terraform Modules
terragrunt run --all init

# 使用 Terragrunt 執行特定目錄的 Terraform Plan
terragrunt run-all plan --terragrunt-include-dir "$TARGET_DIR"

# 使用 Terragrunt 執行特定目錄的 Terraform Apply
terragrunt run-all apply --terragrunt-include-dir "$TARGET_DIR"
