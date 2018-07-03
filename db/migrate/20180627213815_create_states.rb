class CreateStates < ActiveRecord::Migration[5.2]
  def change
    create_table :states do |t|
      t.string :name
      t.string :abr
      t.string :desc
      t.string :status

      t.timestamps
    end
  end
end
