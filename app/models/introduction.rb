class Introduction < ApplicationRecord
  belongs_to :user
  has_many :favorites, dependent: :destroy
  has_many :tag_maps, dependent: :destroy
end
