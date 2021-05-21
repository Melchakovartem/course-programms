class CreateProgramGroups < ActiveRecord::Migration[6.0]
  def change
    create_table :program_groups do |t|
      t.references :program, type: :integer, index: true, null: false, foreign_key: true
      t.references :group, type: :integer, index: true, null: false, foreign_key: true
      t.timestamps
    end
  end
end
