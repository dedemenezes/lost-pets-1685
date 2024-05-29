class Pet < ApplicationRecord
  SPECIES = [ 'dog', 'cat', 'pidgeon', 'hamster', 'turtle' ]

  # Validate a name
  validates :name, :address, presence: true
  validates :species, inclusion: { in: SPECIES }

  def found_days_ago
    (Date.today - found_on).to_i
  end
end
