# Copyright (c) 2024 RFull Development
# This source code is managed under the MIT license. See LICENSE in the project root.
FROM ryotafunaki/devcontainer-dotnet:sdk-8.0

# Install dependencies
RUN apt update && \
    apt install -y sudo gnupg2

# Create a non-root user
ARG USER_NAME=developer
RUN useradd -m ${USER_NAME} -s /bin/bash
RUN echo "$USER_NAME ALL=(ALL:ALL) NOPASSWD:ALL" > /etc/sudoers.d/${USER_NAME}

# Clean up
RUN sudo apt clean && \
    sudo rm -rf /var/lib/apt/lists/*

# Update the .NET workload
RUN dotnet workload update

# Switch to the non-root user
# Run as the root user until a non-root user can run the .NET Aspire project.
# Update the .NET workload
# USER ${USER_NAME}
RUN dotnet workload update && \
    dotnet workload install aspire
