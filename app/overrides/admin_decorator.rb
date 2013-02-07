# Remove old sc property
Deface::Override.new(:virtual_path => "spree/admin/general_settings/show",
                     :name => "admin_general_settings_show_for_ph_sc",
                     :replace => "[data-hook='preferences'] > tr:last",
                     :text => "
<tr>
    <th scope=\"row\"><%= t(\"minimum_order_amount_for_store_credit_use\") %>:</th>
    <td><%=  Spree::Config[:ph_store_credit_minimum] %></td>
</tr>")

Deface::Override.new(:virtual_path => "spree/admin/general_settings/edit",
                     :name => "admin_general_settings_edit_for_ph_sc",
                     :replace => "fieldset#preferences > p:last",
                     :text => "
  <p>
	<label><%= t(\"minimum_order_amount_for_store_credit_use\") %></label>
	<%= text_field_tag('ph_store_credit_minimum', Spree::Config[:ph_store_credit_minimum]) %>
  </p>")
