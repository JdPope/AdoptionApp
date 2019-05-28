class AddOwnerIdToDogs < ActiveRecord::Migration[5.2]
  def change
    add_reference :dogs, :owner, foreign_key: true
  end
end
