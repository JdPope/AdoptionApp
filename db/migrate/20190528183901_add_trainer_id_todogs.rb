class AddTrainerIdTodogs < ActiveRecord::Migration[5.2]
  def change
    add_reference :dogs, :trainer, foreign_key: true
  end
end
