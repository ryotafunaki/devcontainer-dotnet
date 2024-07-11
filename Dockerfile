# Copyright (c) 2024 RFull Development
# This source code is managed under the MIT license. See LICENSE in the project root.
FROM ryotafunaki/devcontainer-dotnet:sdk-8.0

# Switch to root user to install global packages
# NOTE: sudo is not working in this image
USER root
RUN dotnet workload update && \
    dotnet workload install aspire

# Switch back to non-root user
ARG USER_NAME=developer
USER ${USER_NAME}
WORKDIR /home/${USER_NAME}
