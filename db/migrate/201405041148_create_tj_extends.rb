# encoding: utf-8
##
# A migration for workload, I guess preferences. Rails likes objects
# to be tangible.
class CreateTjExtends < ActiveRecord::Migration
  def change
    create_table :tj_extends do |t|
      t.string :code
      t.string :name
      t.string :vartype
      t.string :type
      t.int :tj_project_id
      t.timestamps
    end
    add_index(:tj_extends, :tj_project_id)
  end
end