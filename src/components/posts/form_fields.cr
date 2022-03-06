class Posts::FormFields < BaseComponent
  needs operation : SavePost

  def render
    mount Shared::Field, operation.title, &.text_input(autofocus: "true")
    mount Shared::Field, operation.body
    mount Shared::Field, operation.published_at, &.date_input
  end
end
