  def index
    # if current_admin_user.has_access? <%= ids["index"] %>
      @q = <%= class_name %>.search(params[:q])
      @<%= instances_name %>_list = @q.result(distinct: true).where(deleted: false).paginate(:page => params[:page])
      respond_to do |format|
        format.html 
        format.js
      end
    # else
    #   no_access
    # end
  end
