class FormQuestion < ActiveRecord::Base
  attr_accessible :question, :answers, :form_type, :question_type, :order
  belongs_to :form

  def self.get_form_question_types
  	[:checkbox, :textbox, :radio_button, :statement, :message]
  end

  def self.get_questions_for_form(form_type)
  	Form.where(form_name: form_type)[0].form_questions.sort_by {|e| e.order}
  end
end
