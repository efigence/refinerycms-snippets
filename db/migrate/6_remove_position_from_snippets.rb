class RemovePositionFromSnippets < ActiveRecord::Migration

  def self.up
    remove_column :snippets, :position
  end

  def self.down
    add_column(:snippets, :posicion, :integer,
               :null => :false, :default => 0)
  end

end
