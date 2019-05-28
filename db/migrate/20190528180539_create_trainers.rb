class CreateTrainers < ActiveRecord::Migration[5.2]
  def change
    create_table :trainers do |t|
      t.string :name
      t.text :bio
      t.boolean :availble_on_weekends

      t.timestamps
    end
  end
end
