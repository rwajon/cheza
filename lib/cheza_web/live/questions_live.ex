defmodule ChezaWeb.QuestionsLive do
  use Phoenix.LiveView

  def mount(%{"category" => cat} = _params, _session, socket) do
    categories = Cheza.Helpers.Categories.get_categories()
    category = Enum.find(categories, &(String.downcase(&1.name) == String.downcase(cat)))
    socket = assign(socket, :category, category)
    socket = assign(socket, :categories, categories)
    socket = assign(socket, :question, get_question(cat))
    {:ok, socket}
  end

  def render(assigns) do
    Phoenix.View.render(ChezaWeb.PageView, "questions.html", assigns)
  end

  def get_question(category) do
    case String.downcase(category) do
      "geography" -> Cheza.Helpers.Questions.Geography.get_random_question()
      "history" -> Cheza.Helpers.Questions.Geography.get_random_question()
    end
  end
end
