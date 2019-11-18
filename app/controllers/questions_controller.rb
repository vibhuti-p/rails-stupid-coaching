class QuestionsController < ApplicationController
  def ask
    params['question']
  end

  def answer
    if params['question'].include?('?')
      @answer = 'Silly question, get dressed and go to work!'
    elsif params['question'] == 'I am going to work right now!'
      @answer = 'Great!'
    else
      @answer = 'I don\'t care, get dressed and go to work!'
    end
  end
end
