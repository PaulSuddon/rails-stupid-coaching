class QuestionsController < ApplicationController
  def ask
  end

  def answer
    if params[:question] # checks if the user asked a question
      @response = params[:question] # if asked, it's stored here

      if @response == 'I am going to work'
        @answer = 'Great!'
      elsif @response.end_with?('?')
        @answer = 'Silly question, get dressed and go to work!'
      else
        @answer = "I don't care, get dressed and go to work!"
      end
    end
  end
end
