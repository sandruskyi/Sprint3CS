# encoding: UTF-8

Given("I am on Renfe in English") do
  visit 'http://www.renfe.com/EN/viajeros/index.html'
end

When("you click on Bienvenido") do
  click_link('Bienvenido')
end

Then("page language changes to Spanish") do
  expect(page).to have_content("ORIGEN")
end

Given("page in Spanish") do
  visit 'http://www.renfe.com/index.html'
end

When("you click Atencion al cliente") do 
  click_link('Atención al cliente')
end


Then("the page goes to customer service") do
  expect(page).to have_content('Ayuda a la Venta')
end

Given("the main page") do
  visit 'http://www.renfe.com/index.html'
end

When("you click Cambios") do
  click_link('Cambios')
end

Then("the page goes to changes") do
   expect(page).to have_content('MD')
end

Given("the login page") do
  visit 'https://venta.renfe.com/vol/login.do?Idioma=es&Pais=ES&inirenfe=SI'
end

When("click on Inicio renfe") do 
  click_link('Inicio Renfe')
end

Then("access to main page") do
  expect(page).to have_content("ORIGEN")
end

Given("the Renfe page") do
  visit 'http://www.renfe.com/index.html'
end

When("find Madrid-Dos Hermanas trains") do
  fill_in 'IdOrigen', with: 'MADRID (TODAS)'
  fill_in 'IdDestino', with: 'DOS HERMANAS'
  click_button 'Comprar'
end

Then("return trains") do
  expect(page).to have_content("A")
end
