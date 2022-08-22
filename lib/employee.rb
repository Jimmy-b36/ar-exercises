class Employee < ActiveRecord::Base
  belongs_to :store
  has_one :store
  validates :first_name, :last_name, presence: true

  validates :hourly_rate,
            numericality: {
              only_integer: true,
              greater_than: 40,
              less_than: 200
            },
            presence: true

  before_save :create_password

  private

  def create_password
    self.password =
      (0...9).map { ("a".."z").to_a[rand(26)] }.join if password.blank?
  end
end
