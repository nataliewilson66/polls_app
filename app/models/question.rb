class Question < ApplicationRecord
  validates :poll_id, presence: true

  belongs_to :poll,
    class_name: 'Poll',
    foreign_key: :poll_id,
    primary_key: :id

  has_many :answer_choices,
    class_name: 'AnswerChoice',
    foreign_key: :question_id,
    primary_key: :id

  has_many :responses, through: :answer_choices, source: :responses

  def results
    q_results = self.answer_choices
        .left_outer_joins(:responses)
        .select('answer_choices.text, COUNT(responses.*) AS count')
        .group('answer_choices.id')
    responses_count = {}
    q_results.each do |choice|
      responses_count[choice.text] = choice.count
    end
    responses_count
  end


# N+1 Query: 

#   def results
#     choices = self.answer_choices
#     results_hash = {}
#     choices.each do |choice|
#       results_hash[choice.text] = choice.responses.count
#     end

#     results_hash
#   end


# Query using includes:

#   def results
#     choices = self.answer_choices.includes(:responses)
#     responses_count = {}
#     choices.each do |choice|
#       responses_count[choice.text] = choice.responses.length
#     end

#     responses_count
#   end
end