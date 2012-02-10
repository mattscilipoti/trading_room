FactoryGirl.define  do

  factory :case_study do |f|
    f.studied_at { Time.now }
  end

  factory :ticker do |f|
    #TODO: faker?
    f.name 'Google'
    f.ticker {|ticker| ticker.name[0..3].upcase}
  end
end
