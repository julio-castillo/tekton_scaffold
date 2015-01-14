  def edit
    # if current_admin_user.has_access? <%=ids["edit"]%>
      unless @<%= instance_name %>.deleted?
        @int_page_type = 2
      else
        no_access_to_edit(<%= items_path %>)
      end
    # else
    #   no_access
    # end
  end
