defmodule ChezaWeb.CategoriesLive do
  use Phoenix.LiveView

  def mount(_params, _session, socket) do
    {:ok, socket}
  end

  def render(assigns) do
    Phoenix.View.render(ChezaWeb.PageView, "categories.html", assigns)
  end
end
