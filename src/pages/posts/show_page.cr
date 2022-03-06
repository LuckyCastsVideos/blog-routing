class Posts::ShowPage < MainLayout
  needs post : Post
  quick_def page_title, "Post - #{post.title}"

  def content
    div class: "flex items-center justify-between mb-4" do
      h1 "Post - #{post.title}"
      render_actions
    end

    div class: "shadow-md rounded-md bg-white px-4 py-6" do
      render_post_fields
    end
  end

  def render_actions
    section class: "space-x-2" do
      link "Edit", Posts::Edit.with(post.id), class: "bg-primary-500 hover:bg-primary-700 text-white font-bold py-2 px-4 rounded"
      link "Delete",
        Posts::Delete.with(post.id),
        data_confirm: "Are you sure?",
        class: "bg-primary-500 hover:bg-primary-700 text-white font-bold py-2 px-4 rounded"
    end
  end

  def render_post_fields
    h2 post.title, class: "text-2xl font-bold mb-1"

    h3 post.published_at.to_s, class: "text-sm text-gray-700 mb-4"

    div class: "text-gray-700" do
      text post.body
    end
  end
end
