<% int = 0 %>
<% controller_actions.each_with_index do |action| %>
    <% if action != 'create' and action != 'update' %>
      <% if action == 'index' %>
        Access.create_migration(id: <%=ids[action]%>, name: "<%=instance_name%>", parent_id: 0, controller: "<%=plural_name%>", action: '<%=action%>', panel: 0})
      <% else %>
        Access.create_migration(id: <%=ids[action]%>, name: "<%=action%>", parent_id: <%=ids["index"]%>})
      <% end %>
      <% int += 1 %>
    <% end %>
<% end %>
