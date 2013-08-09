class AddLocaleToVersions < ActiveRecord::Migration
  def change
    if ActiveRecord::Base.connection.table_exists?('versions')
      unless ActiveRecord::Base.connection.column_exists?(:versions, :locale)
        change_table :versions do |t|
          t.string :locale
        end
      end
    else
      raise 'Install paper_trail first, make sure that generated migration file is before this migration for versions table and run rake db:migrate again'
    end
  end
end
