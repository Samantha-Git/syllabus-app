class Subject < ApplicationRecord
  has_many :teachers, dependent: :destroy
  has_many :lectures, dependent: :destroy
end
