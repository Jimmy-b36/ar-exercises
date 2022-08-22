class Store < ActiveRecord::Base
  has_many :employees
  validates :name, presence: true, length: { minimum: 3 }
  validates :annual_revenue, numericality: { greater_than: 0 }
  validate :must_have_an_apparel_type

  before_destroy :can_destroy?, prepend: true

  def must_have_an_apparel_type
    errors.add(:mens_apparel, "can't be blank") if mens_apparel == nil
    errors.add(:womens_apparel, "can't be blank") if womens_apparel == nil
  end

  private

  def can_destroy?
    throw :abort if employees.count() > 0
  end
end
