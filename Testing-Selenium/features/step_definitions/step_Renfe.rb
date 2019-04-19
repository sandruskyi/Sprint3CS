# encoding: UTF-8
Given("I am on Renfe in English") do
  visit 'http://www.renfe.com/EN/viajeros/index.html'
end

When("you click on {string}") do |string|
  click_button('Spanish')
end

Then("page language changes to Spanish") do
  puts page.inspect
  page.should have_content 'ORIGEN'
end

Given("the main page") do
  visit 'http://www.renfe.com/index.html'
end

When("you click {string}") do |string|
  click_button('Atencion al cliente')
end

Then("the page goes to customer service") do
  puts page.inspect
  page.should have_content 'Departamento'
end

Given("the main page") do
  visit 'http://www.renfe.com/index.html'
end

When("you click {string}") do |string|
  click_button('opc4')
end

Then("the page goes to changes") do
   puts page.inspect
   page.should have_content 'Buscar'
end

Given("the login page") do
  visit 'https://venta.renfe.com/vol/login.do?Idioma=es&Pais=ES&inirenfe=SI'
end

When("click on {string}") do |string|
  click_button('homerenfeventa')
end

Then("access to main page") do
  puts page.inspect
  page.should have_content 'ORIGEN'
end

Given("the Cercanias Madrid page") do
  visit 'http://www.renfe.com/viajeros/cercanias/madrid/'
end

When("choose origin and destiny, and click {string}") do |string|
  fill_in 'o', with: 'Atocha'
  fill_in 'd', with: 'Mostoles el Soto'
  
  click_button('Buscar')
end

Then("trains timeline appears") do
  puts page.inspect
  page.should have_content 'Solicitados'
end
