class Teacher < ApplicationRecord
  belongs_to :subject, dependent: :destroy
  has_many :lectures, dependent: :destroy
end
