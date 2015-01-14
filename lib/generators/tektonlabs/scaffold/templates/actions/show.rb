  def show
    # if current_admin_user.has_access? <%=ids["show"]%>
      unless @<%= instance_name %>.deleted?
        @int_page_type = 1
      else
        no_access_to_show(<%= items_path %>)
      end
    # else
    #   no_access
    # end    
  end
