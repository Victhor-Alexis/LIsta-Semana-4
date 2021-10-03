class CreateStudents < ActiveRecord::Migration[6.1]
  def change
    create_table :students do |t|
      t.string :name
      t.date :birthdate
      t.string :email
      t.string :registration_number
      t.references :teacher, null: false, foreign_key: true

      t.timestamps
    end
  end
end
