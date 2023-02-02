json.id order.id
json.carted_products order.carted_products, partial: "carted_products/carted_product", as: :carted_product
json.user_id order.user_id
json.subtotal order.subtotal
json.tax order.tax
json.total order.total
json.created_at order.created_at
json.updated_at order.updated_at
