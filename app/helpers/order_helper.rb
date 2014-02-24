module OrderHelper
    def order_name(order)
        order.name.present? order.name
    end
end
