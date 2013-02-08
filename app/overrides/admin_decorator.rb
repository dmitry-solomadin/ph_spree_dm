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

#Rate
Deface::Override.new(:virtual_path => "spree/admin/general_settings/show",
                     :name => "ph_store_credit_rate",
                     :insert_bottom => "[data-hook='preferences']",
                     :text => "
<tr>
    <th scope=\"row\"><%= t(\"ph_store_credit_rate\", per_amount: money(10)) %>:</th>
    <td><%= Spree::Config[:ph_store_credit_rate] %></td>
</tr>")

Deface::Override.new(:virtual_path => "spree/admin/general_settings/edit",
                     :name => "ph_store_credit_rate_edit",
                     :insert_bottom => "fieldset#preferences",
                     :text => "
  <p>
	<label><%= t(\"ph_store_credit_rate\", per_amount: money(10)) %></label>
	<%= text_field_tag('ph_store_credit_rate', Spree::Config[:ph_store_credit_rate]) %>
  </p>")

#Bonus Minimum
Deface::Override.new(:virtual_path => "spree/admin/general_settings/show",
                     :name => "ph_store_credit_bonus_minimum",
                     :insert_bottom => "[data-hook='preferences']",
                     :text => "
<tr>
    <th scope=\"row\"><%= t(\"ph_store_credit_bonus_minimum\") %>:</th>
    <td><%= Spree::Config[:ph_store_credit_bonus_minimum] %></td>
</tr>")

Deface::Override.new(:virtual_path => "spree/admin/general_settings/edit",
                     :name => "ph_store_credit_bonus_minimum_edit",
                     :insert_bottom => "fieldset#preferences",
                     :text => "
  <p>
	<label><%= t(\"ph_store_credit_bonus_minimum\") %></label>
	<%= text_field_tag('ph_store_credit_bonus_minimum', Spree::Config[:ph_store_credit_bonus_minimum]) %>
  </p>")

#Bouns Rate
Deface::Override.new(:virtual_path => "spree/admin/general_settings/show",
                     :name => "ph_store_credit_bonus_rate",
                     :insert_bottom => "[data-hook='preferences']",
                     :text => "
<tr>
    <th scope=\"row\"><%= t(\"ph_store_credit_bonus_rate\", per_amount: money(100)) %>:</th>
    <td><%= Spree::Config[:ph_store_credit_bonus_rate] %></td>
</tr>")

Deface::Override.new(:virtual_path => "spree/admin/general_settings/edit",
                     :name => "ph_store_credit_bonus_rate_edit",
                     :insert_bottom => "fieldset#preferences",
                     :text => "
  <p>
	<label><%= t(\"ph_store_credit_bonus_rate\", per_amount: money(100)) %></label>
	<%= text_field_tag('ph_store_credit_bonus_rate', Spree::Config[:ph_store_credit_bonus_rate]) %>
  </p>")


