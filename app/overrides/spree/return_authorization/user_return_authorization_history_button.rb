Deface::Override.new(
  virtual_path: 'spree/shared/_user_account_nav',
  name: 'user_return_authorization_history_button',
  insert_bottom: "[data-hook='account_my_orders']",
  text: "<li class='nav-item'>
    <%= link_to(spree.return_authorizations_path, class: 'nav-link') do %>
      <%= Spree.t(:returns_history) %>
    <% end %>
    </li>"
)