class Employee < ActiveRecord::Base
  belongs_to :store, required: true
  has_one :store
  validates :first_name, :last_name, presence: true

  validates :hourly_rate,
            numericality: {
              only_integer: true
            },
            comparison: {
              greater_than: 40,
              less_than: 200
            },
            presence: true
end
