Before do |scenario|
  puts "Eu vou executar antes de cada teste"
end

Before('@traduzir')do |scenario|
  puts "Eu vou executar antes de cada teste que tenha essa tag"
end

AfterStep do |scenario|
  puts "Eu vou executar depois de cada passo do BDD"
end

After do |scenario|
  puts "Eu vou executar depois de cada teste"
end