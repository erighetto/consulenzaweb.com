FROM mcr.microsoft.com/dotnet/core/sdk:3.1-buster
WORKDIR /source
COPY . .

RUN dotnet restore --disable-parallel
RUN curl -sL https://deb.nodesource.com/setup_14.x | bash -
RUN apt-get install -y nodejs

ENTRYPOINT [ "/source/build.sh", "--target=deploy" ]