class CreateFormQuestions < ActiveRecord::Migration
  def change
    create_table :form_questions do |t|

      t.text :question 
      t.text :answers, default: nil 
      t.string :form_type
      t.string :question_type
      t.integer :order

      t.timestamps
    end
  end
end
