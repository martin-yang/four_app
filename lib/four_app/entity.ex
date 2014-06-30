defmodule FourApp.Entity do
  use Ecto.Model

  schema "expand_entities" do
    field :resource_id, :integer
    field :place_id, :integer
    field :brand_id, :integer
    field :name, :string
    field :logo, :string
    field :expand_type, :string
    field :key, :string
    field :path, :string
    field :new_path, :string
    field :img_path, :string
    field :text_path, :string
    field :created_at, :datetime
    field :updated_at, :datetime
  end
  
  def to_list(entity) do
    [ id: entity.id,
      name: entity.name,
      logo: entity.logo,
      key: entity.key,
      expand_type: entity.expand_type,
      path: entity.path,
      new_path: entity.new_path,
      img_path: entity.img_path,
      text_path: entity.text_path,
      resource_id: entity.resource_id,
      place_id: entity.place_id,
      brand_id: entity.brand_id,
      created_at: entity.created_at,
      updated_at: entity.updated_at
    ]
  end
end
