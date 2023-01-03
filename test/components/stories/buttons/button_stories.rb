class Buttons::ButtonStories < BaseStory
  self.title = "Buttons"

  story(:generic) do
    controls do
      text(:button_text, "Generic")
      select(:button_type, %w[primary secondary outline], "primary")
    end
  end

  story(:primary) do
  end

  story(:secondary) do
    controls do
      text(:button_text, "Secondary")
    end
  end

  story(:outline) do
    controls do
      text(:button_text, "Outline")
    end
  end
end