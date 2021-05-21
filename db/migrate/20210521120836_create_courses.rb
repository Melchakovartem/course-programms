class CreateCourses < ActiveRecord::Migration[6.0]
  def change
    create_table :courses do |t|
      t.references :program, type: :integer, index: true, null: false, foreign_key: true
      t.string :name, null: false
      t.string :type
      t.timestamps
    end
  end
end
