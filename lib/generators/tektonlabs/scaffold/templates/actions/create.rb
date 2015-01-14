  def create
    # if current_admin_user.has_access? <%=ids["new"]%>
      begin
        <%= instance_name %> = <%= class_name %>.new(<%= class_name.downcase %>_params)
        if <%= instance_name %>.save
          flash[:notice] = t('messages.successfully_created')
          redirect_to action: "index"
        else
          flash[:alert] = get_errors(<%= instance_name %>)
          redirect_to action: "new", <%= instance_name %>: <%= instance_name %>.attributes
        end
      rescue ActiveRecord::StatementInvalid => error
        flash[:alert] = t('messages.error_ocurred')
        redirect_to action: "new", <%= instance_name %>: <%= instance_name %>.attributes
      end
    # else
    #   no_access
    # end
  end
