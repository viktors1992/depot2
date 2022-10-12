class ChangeNullForLineItems < ActiveRecord::Migration[6.1]
  change_column_null :line_items, :cart_id, null: true
end
