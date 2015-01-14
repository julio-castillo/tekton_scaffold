  def new
    # if current_admin_user.has_access? <%=ids["new"]%>
      @<%= instance_name %> = <%= class_name %>.new
      @<%= instance_name %>.assign_attributes(<%= class_name.downcase %>_params) if params[:<%= class_name.downcase %>]
      @int_page_type = 0
    # else
    #   no_access
    # end

  end
