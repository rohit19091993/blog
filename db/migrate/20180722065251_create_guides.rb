class CreateGuides < ActiveRecord::Migration[5.2]
  def change
    create_table :guides do |t|
      t.string :title
      t.text :Body

      t.timestamps
    end
  end
end
