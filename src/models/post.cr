class Post < BaseModel
  table do
    column title : String
    column body : String
    column published_at : Time
  end
end
