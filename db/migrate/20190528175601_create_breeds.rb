class CreateBreeds < ActiveRecord::Migration[5.2]
  def change
    create_table :breeds do |t|
      t.string :name
      t.string :size
      t.string :temperament
      t.string :life_expectancy
      t.text :description

      t.timestamps
    end
  end
end
