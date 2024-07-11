#!/bin/bash
# We'll only build amd64 until we can use Docker Hub Automated Builds to build containers using other architectures.
ARCH=$(dpkg --print-architecture)

if [[ "$ARCH" != "amd64" ]]; then
    echo "workload is not available"
    exit 0
fi

# Install development tools
sudo dotnet workload update
sudo dotnet workload install aspire
