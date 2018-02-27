class Store < ActiveRecord::Base
  has_many :employees

  validate :men_or_women_apparel
  validates :name, length: { minimum: 3 }
  # validates :annual_revenue, numericality: { only_integer: true,  }
  validates :annual_revenue, numericality: { only_integer: true, greater_than_or_equal_to: 0 }

  def men_or_women_apparel
    if !mens_apparel && !womens_apparel
      errors.add(:mens_apparel, "Must carry at lease one of the men's or women's apparel")
      errors.add(:womens_apparel, "Must carry at lease one of the men's or women's apparel")
    end
  end
end



