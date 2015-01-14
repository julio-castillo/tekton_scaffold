  def destroy
    # if current_admin_user.has_access? <%=ids["destroy"]%>
      begin
        unless @<%= instance_name %>.deleted?
          if @<%= instance_name %>.delete
            flash[:notice] = t('messages.successfully_deleted')
          else
            flash[:alert] = t('messages.error_ocurred')
          end
        else
          no_access_to_delete(<%= items_path %>)
        end
      rescue ActiveRecord::StatementInvalid => error
        flash[:alert] = t('messages.error_ocurred')
      end
      redirect_to action: "index"
    # else
    #   no_access
    # end
  end
