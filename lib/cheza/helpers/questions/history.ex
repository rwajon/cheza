defmodule Cheza.Helpers.Questions.History do
  def get_random_question() do
    Enum.random(get_questions())
  end

  def get_questions do
    [
      %{
        :question => "Who built the largest empire in medieval West Africa?",
        :answer => "Sundiata Keita"
      },
      %{:question => "The United States bought Alaska from which country?", :answer => "Russia"},
      %{:question => "What year did the French Revolution start?", :answer => "1789"},
      %{:question => "How many Celtic languages are still spoken today?", :answer => "6"},
      %{
        :question => "How old was Queen Elizabeth II when she was crowned the Queen of England?",
        :answer => "27"
      },
      %{:question => "What year did India gain independence from Britain?", :answer => "1947"},
      %{
        :question =>
          "What was the name of the Ukrainian nuclear power plant that was the site of a nuclear disaster in April 1986?",
        :answer => "Chernobyl"
      },
      %{
        :question =>
          "During World War II, Allied troops stormed the beaches of Normandy. Which country is Normandy in?",
        :answer => "France"
      },
      %{:question => "Who was the first Emperor of Rome?", :answer => "Augustus"},
      %{:question => "Which Greek goddess was the Parthenon dedicated to?", :answer => "Athena"},
      %{
        :question => "Who is the king of the Olympian gods in Greek mythology?",
        :answer => "Zeus"
      },
      %{
        :question => "The Maya Empire was centered in what is now which country?",
        :answer => "Guatemala"
      },
      %{:question => "How old was King Tutankhamun when he died?", :answer => "19"}
    ]
  end
end
