defmodule ApplicationRouter do
  use Dynamo.Router
  #filter JSON.Dynamo.Filter
  import Ecto.Query
  prepare do
    # Pick which parts of the request you want to fetch
    # You can comment the line below if you don't need
    # any of them or move them to a forwarded router
    conn.fetch([:cookies, :params])
  end

  # It is common to break your Dynamo into many
  # routers, forwarding the requests between them:
  # forward "/posts", to: PostsRouter

  get "/test" do
   # query=from e in FourApp.Entity,
    #        select: [e.id,e.name,e.logo,e.path,e.new_path,e.img_path,e.text_path,e.key,e.place_id,e.brand_id]
    #conn.put_private :result_object, JSON.encode(FourApp.Repo.all(FourApp.Entity))
    entities=FourApp.Repo.all(FourApp.Entity)
    #IO.puts Enum.map(entities,&FourApp.Entity.to_list/1) |> JSEX.encode!
    conn.resp 200,Enum.map(entities,&FourApp.Entity.to_list/1) |> JSEX.encode!
  end
end
