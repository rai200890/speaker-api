FROM elixir:1.8.1-alpine

WORKDIR app

ADD . .

RUN apk add --update postgresql-client make tzdata git
RUN cp /usr/share/zoneinfo/America/Sao_Paulo /etc/localtime \
  && echo "America/Sao_Paulo" > /etc/timezone

ARG MIX_ENV=$MIX_ENV

RUN mix do local.hex --force, local.rebar --force
RUN mix do deps.get, deps.clean --unused, compile

CMD ["sh", "-c", "mix phx.server --no-halt"]
