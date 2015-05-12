require'spec_helper'

describe(Survey) do
  describe(#questions) do
  it("tells which questions are in the survey") do
    test_survey = Survey.create({:name => "survey"})
    test_question1 = Question.create({:name => "question1", :q_id => test_q.id})
    test_question2 = Question.create({:name => "question2", :q_id => test_q.id})
    expect(test_survey.questions()).to(eq([test_question1, test_question2]))
    end
  end
end
