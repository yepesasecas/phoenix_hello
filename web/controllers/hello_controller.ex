defmodule PhoenixHello.HelloController do
  use PhoenixHello.Web, :controller

  def world(conn, %{"name" => name, "last"=> last}) do
    render conn, "world.html", name: name, last: last
  end
end
