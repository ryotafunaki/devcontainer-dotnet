# Copyright (c) 2024 RFull Development
# This source code is managed under the MIT license. See LICENSE in the project root.
FROM ryotafunaki/devcontainer-dotnet:sdk-8.0

RUN sudo dotnet workload update && \
    sudo dotnet workload install aspire
