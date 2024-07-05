# Copyright (c) 2024 RFull Development
# This source code is managed under the MIT license. See LICENSE in the project root.
FROM ryotafunaki/devcontainer-dotnet:sdk-8.0

# Switch to the non-root user
# Run as the root user until a non-root user can run the .NET Aspire project.
# Update the .NET workload
USER root
RUN dotnet workload update && \
    dotnet workload install aspire
