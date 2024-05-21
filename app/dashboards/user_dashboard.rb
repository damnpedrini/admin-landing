require "administrate/base_dashboard"

class UserDashboard < Administrate::BaseDashboard
  ATTRIBUTE_TYPES = {
    id: Field::Number,
    name: Field::String,
    email: Field::String,
    created_at: Field::DateTime,
    updated_at: Field::DateTime,
  }

  COLLECTION_ATTRIBUTES = [
    :id,
    :name,
    :email,
  ]

  SHOW_PAGE_ATTRIBUTES = [
    :id,
    :name,
    :email,
    :created_at,
    :updated_at,
  ]

  FORM_ATTRIBUTES = [
    :name,
    :email,
  ]
end