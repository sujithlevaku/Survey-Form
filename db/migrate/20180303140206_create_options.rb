class CreateOptions < ActiveRecord::Migration[5.1]
  def change
    create_table :options do |t|
      t.string :choose_value ,array: true , default: []
      t.integer :question_id

      t.timestamps
    end
  end
end
