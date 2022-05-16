class QuestionsController < ApplicationController

  def ask
  end

  def answer
    @answers = ["Silly question, get dressed and go to work!", "I don't care, get dressed and go to work!"]

    if params[:question].include?("?")
      @answers = @answers[0]
    else
      @answers = @answers[1]
    end
  end

end
