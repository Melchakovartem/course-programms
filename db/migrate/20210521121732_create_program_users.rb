class CreateProgramUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :program_users do |t|
      t.references :program, type: :integer, index: true, null: false, foreign_key: true
      t.references :user, type: :integer, index: true, null: false, foreign_key: true
      t.timestamps
    end
  end
end
