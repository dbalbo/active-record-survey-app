require'spec_helper'
describe(Question) do
  describe('#survey') do
  it("tells which survey it belongs to") do
    test_survey = Survey.create({:name => "survey"})
    test_question = Question.create({:name => "question"})
    expect(test_question.survey()).to(eq(test_survey))
    end
  end
end
