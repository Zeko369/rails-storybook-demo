module ManyButtons
  class ManyButtonsStories < BaseStory
    self.title = 'Many Buttons'

    story(:default) do
      controls do
        number(:count, 5, min: 1, max: 15)
      end
    end
  end
end
