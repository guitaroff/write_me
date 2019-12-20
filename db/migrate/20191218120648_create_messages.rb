class CreateMessages < ActiveRecord::Migration[5.2]
  def change
    create_table :messages do |t|
      t.string :email
      t.string :phone
      t.string :name
      t.text :body

      t.timestamps
    end
  end
end
