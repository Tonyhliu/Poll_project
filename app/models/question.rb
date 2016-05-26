class Question < ActiveRecord::Base
  belongs_to(
    :poll,
    primary_key: :id,
    foreign_key: :poll_id,
    class_name: 'Poll'
  )

  has_many(
    :answer_choices,
    primary_key: :id,
    foreign_key: :question_id,
    class_name: 'AnswerChoice'
  )

  has_many(
    :responses,
    through: :answer_choices,
    source: :responses
  )

  def results
    response_choices = responses.all.includes(:answer_choices) # how woud we use .count?

    response_hash = Hash.new(0)
    response_choices.each do |choice|
      response_hash[choice.answer_choice.answer_choice] += 1
    end

    response_hash
  end


# SELECT
#   answer_choices.*, COUNT(*) AS num_of_responses
# FROM
#   answer_choices JOIN responses
#   ON answer_choices.id = responses.answer_choice_id
# GROUP BY
#   answer_choices.id

  def results_optimized
    answer_choices = self.answer_choices
      .select('answer_choices.*, COUNT(*) AS num_of_responses')
      .joins(:responses)
      .group('answer_choices.id')

    results = {}
    answer_choices.each do |ac|
      results[ac.answer_choice] = ac.num_of_responses
    end

    results
  end

  def results_super_optimized

  end
end
