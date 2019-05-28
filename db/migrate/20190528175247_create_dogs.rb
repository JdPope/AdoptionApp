class CreateDogs < ActiveRecord::Migration[5.2]
  def change
    create_table :dogs do |t|
      t.string :name
      t.integer :age
      t.string :size
      t.boolean :kids_compatible
      t.boolean :pets_compatible
      t.string :image_url
      t.boolean :fixed
      t.boolean :vaccinated
      t.text :bio

      t.timestamps
    end
  end
end
