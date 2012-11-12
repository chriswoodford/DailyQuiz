module QuizDefinitionsHelper
  
  def current_quiz=(quiz)
    @current_quiz = quiz
  end

  def current_quiz
    @current_quiz ||= QuizDefinition.first
  end
  
end
