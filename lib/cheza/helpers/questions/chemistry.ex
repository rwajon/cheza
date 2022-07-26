defmodule Cheza.Helpers.Questions.Chemistry do
  def get_random_question() do
    Enum.random(get_questions())
  end

  def get_questions do
    [
      %{:question => "Are two atoms of the same element identical?", :answer => "No"},
      %{:question => "Can water stay liquid below zero degrees Celsius?", :answer => "Yes"},
      %{
        :question =>
          "Which element on adding to natural rubber makes it less sticky in hot weather and less hard in cold weather?",
        :answer => "Sulfur"
      },
      %{:question => "Which chemical causes Minamata disease?", :answer => "Mercury"},
      %{
        :question =>
          "27 g of Al will react completely with how many grams of oxygen? (a) 8 g (b) 16 g (c) 32 g (d) 24 g",
        :answer => "D"
      },
      %{:question => "Which element has no neutrons in it?", :answer => "Hydrogen"},
      %{:question => "Which element can easily form chains?", :answer => "Carbon"},
      %{
        :question => "What is the fundamental particle present in P – rays?",
        :answer => "Electron"
      },
      %{
        :question => "Give the name of the radioactive isotope of hydrogen",
        :answer => "Tritium"
      },
      %{:question => "Glass is made out of what?", :answer => "Sand"}
    ]
  end
end
