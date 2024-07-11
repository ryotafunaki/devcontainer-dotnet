# Copyright (c) 2024 RFull Development
# This source code is managed under the MIT license. See LICENSE in the project root.
FROM ryotafunaki/devcontainer-dotnet:sdk-8.0

# Install development tools
ARG USER_NAME=developer
COPY --chown=${USER_NAME}:${USER_NAME} ./shells/ ./shells/
RUN cd ./shells && \
    chmod +x install.sh && \
    ./install.sh && \
    cd ..
RUN rm -rf ./shells

# Clean up
RUN sudo apt clean && \
    sudo rm -rf /var/lib/apt/lists/*
