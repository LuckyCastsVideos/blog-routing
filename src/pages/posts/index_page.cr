class Posts::IndexPage < MainLayout
  needs posts : PostQuery
  quick_def page_title, "All Posts"

  def content
    div class: "flex justify-between items-center mb-4" do
      h1 "All Posts", class: "text-xl font-bold"
      link "New Post", to: Posts::New, class: "bg-primary-500 hover:bg-primary-700 text-white font-bold py-2 px-4 rounded"
    end

    div class: "shadow-md rounded-md bg-white px-4 py-6" do
      render_posts
    end
  end

  def render_posts
    ul class: "divide-y-2 flex flex-col" do
      posts.each do |post|
        li class: "p-4" do
          link post.title, Posts::Show.with(post)
        end
      end
    end
  end
end
