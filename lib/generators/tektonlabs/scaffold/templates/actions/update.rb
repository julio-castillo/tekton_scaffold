  def update
    # if current_admin_user.has_access? <%=ids["edit"]%>
      begin
        unless @<%= instance_name %>.deleted?
          if @<%= instance_name %>.update_attributes(<%= class_name.downcase %>_params)
            flash[:notice] = t('messages.successfully_updated')
            redirect_to action: "index"
          else
            flash[:alert] = get_errors(@<%= instance_name %>)
            redirect_to action: "edit", id: params[:id]
          end
        else
          no_access_to_edit(<%= items_path %>)
        end
      rescue ActiveRecord::StatementInvalid => error
        flash[:alert] = t('messages.error_ocurred')
        redirect_to action: "edit", id: params[:id]
      end
    # else
    #   no_access
    # end    
  end
