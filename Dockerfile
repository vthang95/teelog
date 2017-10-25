FROM elixir:1.5.2

# install hex package manager
RUN mix local.hex --force

# install the latest phoenix
RUN mix archive.install https://github.com/phoenixframework/archives/raw/master/phx_new.ez

# install node
RUN curl -sL https://deb.nodesource.com/setup_8.x -o nodesource_setup.sh
RUN bash nodesource_setup.sh
RUN apt-get install -y nodejs
RUN apt-get install -y inotify-tools
RUN npm install -g yarn

# create app folder
RUN mkdir /app
COPY . /app
WORKDIR /app

# install dependencies
RUN mix local.rebar --force
RUN mix deps.get
RUN mix deps.compile

# run phoenix in *dev* mode on port 4000
CMD mix phx.server
