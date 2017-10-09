class Charity < ApplicationRecord
  default_scope { order(:id) }
  belongs_to :group
end
