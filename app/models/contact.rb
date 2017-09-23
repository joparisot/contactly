class Contact < ApplicationRecord
  belongs_to :user
  has_many :comments, dependent: :destroy
  # include PgSearch
  # pg_search_scope :search_by_first_name_and_last_name, against: [ :first_name, :last_name ]
end
