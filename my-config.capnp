using Workerd = import "/workerd/workerd.capnp";

const config :Workerd.Config = (
  services = [
    (name = "main", worker = .mainWorker),
  ],

  sockets = [ ( name = "http", address = "0.0.0.0:12349", http = (), service = "main" ) ]
);

const mainWorker :Workerd.Worker = (
  modules = [
    (name = "worker", esModule = embed "hello.js")
  ],
  compatibilityDate = "2023-02-28",
  # Learn more about compatibility dates at:
  # https://developers.cloudflare.com/workers/platform/compatibility-dates/
);
