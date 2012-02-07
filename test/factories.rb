Factory.define :ticker do |f|
  #TODO: faker?
  f.name 'Google'
  f.ticker {|ticker| ticker.name[0..3].upcase}
end
