#encoding: utf-8
# * *Page* *types*
#   - *0* -> new page
#   - *1* -> show page
#   - *2* -> edit page
class <%= plural_class_name %>Controller < ApplicationController
  before_action :set_<%= class_name.downcase %>, only: [:show, :edit, :update, :destroy]
  # uncomment and change respect to the authenticattion of user, admin_user, client_user or ...
  # before_filter :authenticate_user!
  
  <%= controller_methods :actions %>

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_<%= class_name.downcase %>
      @<%= instance_name %> = <%= class_name %>.friendly.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def <%= class_name.downcase %>_params
      params.require(<%= ":#{class_name.downcase}" %>).permit(<%= model_attributes.map { |a| ":#{a.name}" }.join(", ") %>)
    end
end
