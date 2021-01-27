Deface::Override.new(
  virtual_path: 'spree/users/order_account',
  name: 'user_return_authorization_initailization_button',
  insert_bottom: "[data-hook='order-show-number']",
  text: "
        <% if spree_current_user.present? && order.shipped? && order.has_returnable_products? && order.has_returnable_line_items? %>
          <%= link_to(spree.new_order_return_authorization_path(order.number), class: 'btn float-right',title: 'Return Products') do %>
            <span class='glyphicon glyphicon-refresh'><%= icon(name: 'refresh', classes: 'd-none d-xl-inline-block', width: 25, height: 25)  %></span>
          <% end %>
        <% end %>
        "
)
