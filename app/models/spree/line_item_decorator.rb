module SpreeItemReturns::LineItemDecorator
  def is_returnable?
    return false unless product.returnable?
    return true
  end
end
Spree::LineItem.prepend SpreeItemReturns::LineItemDecorator