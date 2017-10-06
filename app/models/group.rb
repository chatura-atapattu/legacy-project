class Group < ApplicationRecord
  has_many :charities
  has_many :faqs
end
