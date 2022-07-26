defmodule Cheza.Helpers.Questions.History do
  def get_random_question() do
    questions = get_questions()
    i = :rand.uniform(length(questions))
    Enum.at(questions, i)
  end

  def get_questions do
    [
      %{
        :question => "Through which country does the greater part of the Nile flow?",
        :answer => "Sudan"
      },
      %{:question => "Of which country is Cyrenaica a part?", :answer => "Libya"},
      %{
        :question => "What's the name of the highest peak in Africa?",
        :answer => "Mount Kilimanjaro"
      },
      %{:question => "This country was once called Dahomey. Which country?", :answer => "Benin"},
      %{:question => "What's the westernmost major city of Africa?", :answer => "Dakar"}
    ]
  end
end
