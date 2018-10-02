class CreateQuestions < ActiveRecord::Migration[5.0]
  def change
    create_table :questions do |t|
      t.string :content
      t.string :choice_a
      t.string :choice_b
      t.string :choice_c
      t.string :answer
    end
  end
end
