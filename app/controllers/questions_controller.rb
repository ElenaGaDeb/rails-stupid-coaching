class QuestionsController < ApplicationController
  def answer
    @query = params[:query]
    @answer = coach_answer(@query)
  end

  def ask
  end

  def coach_answer(your_message)
    message = your_message.to_s
    if message == "I am going to work right now!"
     return ""
    elsif message.include?("?")
     return "Silly question, get dressed and go to work!"
    else
     return "I don't care, get dressed and go to work!"
    end
  end

end
