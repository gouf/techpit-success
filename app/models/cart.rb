class Cart < ApplicationRecord
  has_many :line_items
  has_many :products, through: :line_items

  def sub_total
    sum = 0
    line_items.each do |line_item|
      sum += line_item.amount
    end

    sum
  end
end
