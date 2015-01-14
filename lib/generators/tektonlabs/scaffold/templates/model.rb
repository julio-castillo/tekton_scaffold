class <%= class_name %> < ActiveRecord::Base
  <%= "set_table_name :#{table_name}\n" if table_name -%>

  # Scopes
  scope :all_able, -> { where(deleted: false) }

  # Friendly ID
  extend FriendlyId
  # friendly_id :name, use: :slugged

  # Pagination: Number of registers per page
  self.per_page = 10

  # This function evaluates if a column is nullable or not in the database
  #
  # * *args*
  #   - column(_string_) -> database column to be evaluated
  # * *returns*
  #   - if the column is nullable or not
  def self.null?(column)
    columns_hash[column].null
  end

  # This function change user state to deleted
  #
  # * *args*
  #   - id -> profile id
  # * *returns*
  #   - if the state update was successful or not
  def delete
    update_attributes(deleted: true)
  end

  # This function check if the register has been deleted or not
  #
  # * *returns*
  #   - if the register is deleted or not
  def deleted?
    deleted == true
  end

end
