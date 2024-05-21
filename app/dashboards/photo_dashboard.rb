require "administrate/base_dashboard"

class PhotoDashboard < Administrate::BaseDashboard
  ATTRIBUTE_TYPES = {
    id: Field::Number,
    title: Field::String,
    image: Field::CarrierWave.with_options(searchable: false),
    created_at: Field::DateTime,
    updated_at: Field::DateTime,
  }.freeze

  COLLECTION_ATTRIBUTES = [
    :id,
    :title,
    :image,
  ].freeze

  SHOW_PAGE_ATTRIBUTES = [
    :id,
    :title,
    :image,
    :created_at,
    :updated_at,
  ].freeze

  FORM_ATTRIBUTES = [
    :title,
    :image,
  ].freeze

  COLLECTION_FILTERS = {}.freeze
end
