class Dog < ApplicationRecord
  BREEDS = File.readlines(Rails.root.join('config', 'breeds.txt')).map(&:strip).freeze

  validates :name, :birthdate, presence: true
  validates :breed, inclusion: { in: BREEDS }

  def age
    Time.now.year - birthdate.year
  end
end
