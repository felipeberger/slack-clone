FactoryBot.define do
  factory :message do
    content { 'test content' }
    user
  end
end