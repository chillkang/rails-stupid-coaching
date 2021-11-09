class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @question = params[:question]
    @answer =
      if params[:question] == 'I am going to work'
        'Great'
      elsif params[:question][-1] == '?'
        'Silly question, get dressed and go to work!'
      else
        "I don't care, get dressed and go to work!"
      end
  end
end

#   def answer
#     @question = params[:question]
#     if @question.blank?
#       @answer = "I can't hear you!"
#     elsif @question =~ /i am going to work/i
#       @answer = "Great!"
#     elsif @question.ends_with?("?")
#       @answer = "Silly question, get dressed and go to work!"
#     else
#       @answer = "I don't care, get dressed and go to work!"
#     end
#   end
# end
