class Issue < ActiveRecord::Base
  has_many :headlines, dependent: :destroy
end
