class Buttons::ButtonStories < ActionView::Storybook::Stories
  self.title = "Buttons"

  story(:primary) do
    controls do
      text(:button_text, "Primary")
    end
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