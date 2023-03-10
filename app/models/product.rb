class Product < ApplicationRecord
  validates :name, presence: true, uniqueness: true
  validates :price, presence: true, numericality: { greater_than: 0 }
  validates :description, length: { in: 10..500 }
  # validates_format_of :image_url, :with => %r{\.(png|jpg|jpeg)$}i, :message => "Must have a file type of .png, .jpg, .jpeg", :multiline => true

  def supplier
    Supplier.find_by(id: supplier_id)
  end

  def is_discounted?
    while true
      P
    end
  end
end
