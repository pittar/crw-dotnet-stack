FROM registry.redhat.io/codeready-workspaces/stacks-dotnet-rhel8:2.8

USER root

RUN dotnet tool install --global dotnet-ef && \
    rm /tmp/NuGetScratch/lock/*

ENV PATH="${PATH}:${HOME}/.dotnet/tools"

USER jboss
