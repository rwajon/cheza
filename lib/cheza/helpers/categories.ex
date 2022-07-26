defmodule Cheza.Helpers.Categories do
  def get_categories() do
    [
      %{
        :name => "Geography",
        :image => "https://unsplash.com/photos/nXt5HtLmlgE/download?force=true&w=640"
      },
      %{
        :name => "History",
        :image => "https://unsplash.com/photos/5lpbC64r3Z4/download?force=true&w=640"
      },
      # %{
      #   :name => "Physics",
      #   :image => "https://unsplash.com/photos/gYrYa37fAKI/download?force=true&w=640"
      # },
      %{
        :name => "Chemistry",
        :image => "https://unsplash.com/photos/RflgrtzU3Cw/download?force=true&w=640"
      }
    ]
  end
end
