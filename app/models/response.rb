class Response < ActiveRecord::Base
 validate :respondent_already_answered?

  belongs_to(
    :answer_choice,
    primary_key: :id,
    foreign_key: :answer_choice_id,
    class_name: 'AnswerChoice'
  )

  belongs_to(
    :respondent,
    primary_key: :id,
    foreign_key: :user_id,
    class_name: 'User'
  )


  has_one(
    :question,
    through: :answer_choice,
    source: :question
  )



  def sibling_responses #***include?
    #calling question and then calling responses on the question
    question.responses.where.not(id: self.id)
  end

  def respondent_already_answered? #*******
    if sibling_responses.any? { |response| response.user_id == self.user_id }
      errors[:user_id] << "123123"
    end
  end



end
