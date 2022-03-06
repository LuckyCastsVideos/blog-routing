class CreatePosts::V20220306184720 < Avram::Migrator::Migration::V1
  def migrate
    # Learn about migrations at: https://luckyframework.org/guides/database/migrations
    create table_for(Post) do
      primary_key id : UUID
      add_timestamps
      add title : String
      add body : String
      add published_at : Time
    end
  end

  def rollback
    drop table_for(Post)
  end
end
