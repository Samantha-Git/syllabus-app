class Lecture < ApplicationRecord
  belongs_to :subject, dependent: :destroy
  belongs_to :teacher, dependent: :destroy
end
