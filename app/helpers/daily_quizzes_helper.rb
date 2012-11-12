module DailyQuizzesHelper
  
  def current_quiz=(quiz)
    @current_quiz = quiz
  end

  def current_quiz
    @current_quiz ||= DailyQuiz.find_by_date(Date.today.to_s)
  end
  
end