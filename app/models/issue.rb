class Issue < ActiveRecord::Base
  has_many :headlines, dependent: :destroy

  has_many :favorites, dependent: :destroy
  has_many :users, through: :favorites
end
