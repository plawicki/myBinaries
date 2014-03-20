class CreateBeans < ActiveRecord::Migration
  def change
    create_table :beans do |t|
      t.text :snippet
      t.string :lang
      t.string :description

      t.timestamps
    end
  end
end
