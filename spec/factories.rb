FactoryGirl.define do
  factory :word do
    text 'smile'
  end

  factory :excuse, class: Sentence do
    text "I'm one of the boys"
    excuse true
  end
end