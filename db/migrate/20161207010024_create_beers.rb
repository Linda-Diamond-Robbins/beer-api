class CreateBeers < ActiveRecord::Migration[5.0]
  def change
    create_table :beers do |t|
      t.string :name
      t.string :style
      t.string :alcohol
      t.string :ibu

      t.timestamps
    end
  end
end
