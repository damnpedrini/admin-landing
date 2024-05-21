require "administrate/base_dashboard"

class ProductDashboard < Administrate::BaseDashboard
  ATTRIBUTE_TYPES = {
    id: Field::Number,
    name: Field::String,
    description: Field::Text,
    price: Field::Number.with_options(decimals: 2),
    image: Field::Carrierwave.with_options(image: true), # Adicionar este campo
    created_at: Field::DateTime,
    updated_at: Field::DateTime,
  }.freeze

  COLLECTION_ATTRIBUTES = %i[
    id
    name
    price
    image
  ].freeze

  SHOW_PAGE_ATTRIBUTES = %i[
    id
    name
    description
    price
    image
    created_at
    updated_at
  ].freeze

  FORM_ATTRIBUTES = %i[
    name
    description
    price
    image
  ].freeze

  COLLECTION_FILTERS = {}.freeze

  def display_resource(product)
    product.name
  end
end