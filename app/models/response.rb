class Response < ApplicationRecord
  validates :user_id, :answer_choice_id, presence: true
  validate :respondent_already_answered?
  validate :respondent_is_poll_author?

  belongs_to :answer_choice,
    class_name: 'AnswerChoice',
    foreign_key: :answer_choice_id,
    primary_key: :id

  belongs_to :respondent,
    class_name: 'User',
    foreign_key: :user_id,
    primary_key: :id

  has_one :question, through: :answer_choice, source: :question

  def sibling_responses
    responses = self.question.responses.where.not(id: self.id)
    return nil unless responses.length > 0

    sib_responses = {}
    responses.map { |resp| sib_responses[resp.user_id] = answer_choice_id }
    sib_responses
  end

  def respondent_already_answered?
    existing_responses = self.sibling_responses
    if !existing_responses.nil? && existing_responses.has_key?(self.user_id) 
      errors.add :user, 'can\'t create multiple responses to the same question'
    end
  end

  def respondent_is_poll_author?
    author = self.question.poll.author
    if author.id == self.user_id
      errors.add :author, 'can\'t respond to own poll'
    end
  end
end