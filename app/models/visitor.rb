class Visitor < ApplicationRecord
  belongs_to :badge
  belongs_to :sector

  attribute :visitor_photo, :string, default: ''

  validates :cpf, presence: true, length: { maximum: 11 }
  validates :cpf, uniqueness: { case_sensitive: false }
  validates :description, presence: true

  has_one_attached :photo
end
