class Product < ApplicationRecord
    
    has_many :line_items
    before_destroy :ensure_not_referenced_by_any_line_item

    validates :product_name, :product_description, :price, :quantity_in_stock, presence: true
    validates :product_description, length: {maximum:1000}
    validates :image_url, allow_blank: true , format: {
with: %r{ \. (gif|jpg|png) \z }i,
message: 'must be a URL for GIF, JPG or PNG image.'
}



private

#ensure that there are no line items referencing this product
    def ensure_not_referenced_by_any_line_item
        unless line_items.empty?
            errors.add(:base, 'Line Items present')
            throw :abort
        end
    end
end
