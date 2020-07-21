class Store < ActiveRecord::Base

  has_many :employees
  validates :name, length: { minimum: 3 }
  validates :annual_revenue, numericality: { greater_than: 0 }
  validates :mens_apparel, inclusion: { in: [true, false] }
  validates :womens_apparel, inclusion: { in: [true, false] }
  
end
