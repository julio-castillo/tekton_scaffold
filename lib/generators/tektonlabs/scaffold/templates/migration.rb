class Create<%= class_name.pluralize.delete('::') %> < ActiveRecord::Migration
  def self.up
    create_table :<%= table_name || plural_name.split('/').last %> do |t|
    <%- for attribute in model_attributes -%>
      t.<%= attribute.type %> :<%= attribute.name %>
    <%- end -%>
      t.string :slug
      t.boolean :deleted, default: false
    <%- unless options[:skip_timestamps] -%>
      t.timestamps
    <%- end -%>
    end

    add_index :<%= table_name || plural_name.split('/').last %>, :slug, unique: true
  end

  def self.down
    remove_index :<%= table_name || plural_name.split('/').last %>, :slug

    drop_table :<%= table_name || plural_name.split('/').last %>
  end
end
