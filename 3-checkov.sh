#!/bin/bash

checkov --directory . \
    --framework terraform,azure_pipelines,secrets,github_configuration \
    --check CKV_AZURE_*,CKV_GIT_* \
    --enable-secret-scan-all-files