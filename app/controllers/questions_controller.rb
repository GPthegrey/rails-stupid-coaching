class QuestionsController < ApplicationController

  def home
  end

  def ask
  end

  def answer
      if params[:question].present?
        if params[:question].end_with?("?")
          if params[:question] == params[:question].upcase
            @reply = "I can feel your motivation! Silly question, get dressed and go to work!"
          else
            @reply = "Silly question, get dressed and go to work!"
          end
        elsif params[:question].upcase == "I AM GOING TO WORK RIGHT NOW!"
          @reply =  ""
        elsif params[:question] == params[:question].upcase
          @reply =  "I can feel your motivation! I don't care, get dressed and go to work!"
        else
          @reply =  "I don't care, get dressed and go to work!"
        end
      end
  end





end
