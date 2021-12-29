require "administrate/base_dashboard"

class EpisodeDashboard < Administrate::BaseDashboard
    ATTRIBUTE_TYPES = {
        id: Field::Number,
        title: Field::String,
        description: Field::Text,
        created_at: Field::DateTime,
        updated_at: Field::DateTime,
      }
      COLLECTION_ATTRIBUTES = [
        :id,
        :title,
        :description,
        :created_at,
      ]
      SHOW_PAGE_ATTRIBUTES = ATTRIBUTE_TYPES.keys
      FORM_ATTRIBUTES = [
        :title,
        :description,
      ]
    end 
               