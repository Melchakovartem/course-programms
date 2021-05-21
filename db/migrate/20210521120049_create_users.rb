class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.references :group, type: :integer, index: true, null: false, foreign_key: true
      t.string :name, null: false
      t.string :email, null: false
      t.timestamps
    end
  end
end
