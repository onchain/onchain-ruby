#-------------------------------------------------------------------------------------------------------------
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See https://go.microsoft.com/fwlink/?linkid=2090316 for license information.
#-------------------------------------------------------------------------------------------------------------

FROM ruby:2

# Install ruby-debug-ide and debase
RUN gem install ruby-debug-ide
RUN gem install debase

# Install git, process tools
RUN apt-get update && apt-get -y install git procps

# Clean up
RUN apt-get autoremove -y \
    && apt-get clean -y \
    && rm -rf /var/lib/apt/lists/*

RUN sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmybash/oh-my-bash/master/tools/install.sh)" && sed -i 's/OSH_THEME="font"/OSH_THEME="powerline-plain"/g' ~/.bashrc

# Set the default shell to bash instead of sh
ENV SHELL /bin/bash