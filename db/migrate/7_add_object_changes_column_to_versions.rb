class AddObjectChangesColumnToVersions < ActiveRecord::Migration
  def self.up
    if ActiveRecord::Base.connection.table_exists?('versions')
      unless ActiveRecord::Base.connection.column_exists?(:versions, :object_changes)
        add_column :versions, :object_changes, :text
      end
    end
  end

  def self.down
    if ActiveRecord::Base.connection.table_exists?('versions')
      if ActiveRecord::Base.connection.column_exists?(:versions, :object_changes)
        remove_column :versions, :object_changes
      end
    end
  end
end
