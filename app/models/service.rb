class Service < ApplicationRecord
  acts_as_taggable # Alias for acts_as_taggable_on :tags
  attachment :service_image
end
