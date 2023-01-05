# RoomOrders storybook

## Running in dev

### Setup

```sh
yarn
bundle install
```

### Running

`yarn build` -> only once to build JS assets, when we start using dynamic JS we'll add watch

`rails s` -> this starts the rails server itself  
`yarn storybook:start` -> this runs storybook and needs to be rerun whenever you add new stories

## Create new component

1. Create a partial in `app/views/shared` (make sure it starts with `_` e.g. `_button`)

   If you need css, create it in `app/assets/stylesheets` and name it same as the component, to include it in the component use the following tag

   ```erb
   <%= stylesheet_link_tag "button" %>
   ```

2. To create a story, use the following command and pass the variants you want (e.g. `default wide with_image`)

   ```sh
   bin/rails generate storybook_rails:stories path/to/your/file default wide with_image
   ```

3. Go to `stories/path/to/your/file.rb` and define any controls if you want

4. Go to `stories/path/to/your/file.html.erb` and render your partial

## Examples

```rb
# stories/buttons/button_stories.rb

story(:dynamic_button) do
  controls do
    text(:button_text, "Generic")
    select(:button_type, %w[primary secondary outline], "primary")
  end
end
```

```erb
<!-- stories/buttons/button_stories.html.erb -->

<%= render partial: 'shared/button',
    locals: {
      variant: story_params[:button_type],
      button_text: story_params[:button_text],
    }
%>
```

Note, you also have access to the name of the story from `story_param` with `story_params[:story_name]`
