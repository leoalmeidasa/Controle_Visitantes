class Visitor < ApplicationRecord
  belongs_to :badge
  belongs_to :sector

  attribute :visitor_photo, :string, default: ''

  has_one_attached :photo
end
