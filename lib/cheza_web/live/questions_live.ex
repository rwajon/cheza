defmodule ChezaWeb.QuestionsLive do
  use Phoenix.LiveView

  def mount(%{"category" => cat} = _params, _session, socket) do
    categories = Cheza.Helpers.Categories.get_categories()
    category = Enum.find(categories, &(String.downcase(&1.name) == String.downcase(cat)))
    socket = assign(socket, :category, category)
    socket = assign(socket, :categories, categories)
    socket = assign(socket, :question, get_question(cat))
    socket = assign(socket, :answer, "")
    socket = assign(socket, :is_correct, false)
    socket = assign(socket, :show_answer, false)
    {:ok, socket}
  end

  def render(assigns) do
    Phoenix.View.render(ChezaWeb.PageView, "questions.html", assigns)
  end

  def get_question(category) do
    case String.downcase(category) do
      "geography" -> Cheza.Helpers.Questions.Geography.get_random_question()
      "history" -> Cheza.Helpers.Questions.History.get_random_question()
      "chemistry" -> Cheza.Helpers.Questions.Chemistry.get_random_question()
    end
  end

  def handle_event("next_question", _, socket) do
    category = socket.assigns.category
    socket = assign(socket, :question, get_question(category.name))
    socket = assign(socket, :answer, "")
    socket = assign(socket, :is_correct, false)
    socket = assign(socket, :show_answer, false)
    {:noreply, socket}
  end

  def handle_event("show_answer", _, socket) do
    socket = assign(socket, :show_answer, true)
    {:noreply, socket}
  end

  def handle_event("answer_to_question", %{"answer" => answer} = _params, socket) do
    question = socket.assigns.question
    is_correct = String.downcase(question.answer) == String.downcase(String.trim(answer))
    socket = assign(socket, :is_correct, is_correct)

    case is_correct do
      true ->
        category = socket.assigns.category
        socket = assign(socket, :answer, "")
        socket = assign(socket, :question, get_question(category.name))
        {:noreply, socket}

      false ->
        socket = assign(socket, :answer, answer)
        {:noreply, socket}
    end
  end
end
