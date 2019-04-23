# encoding: UTF-8
Given("I am on Youtube main page") do
  visit 'https://www.youtube.com/'
end

When("I search Javier Garzas - Errores comunes en agilidad") do
  fill_in 'search', with: 'Javier Garzas - Errores comunes en agilidad'
  click_button 'search-icon-legacy'
end

Then("I can found the video") do
  sleep 2.to_i
  expect(page).to have_content("Errores comunes en agilidad")
end

Given("page of the Javier Garzas - Errores comunes en agilidad video") do 
  visit 'https://www.youtube.com/watch?v=nRiJ84Pr-T4'
end

When("you click Rob Agile") do
  click_link('Rob Agile')
end

Then("you can see the channel") do
  sleep 2.to_i
  expect(page).to have_content("Listas de reproducción creadas")
end

Given("page of the last video") do
  visit 'https://www.youtube.com/watch?v=nRiJ84Pr-T4'
end

When("you push in stop button") do
  find("body").native.send_key("k")
end

Then("the video stop") do
  sleep 2.to_i
end

Given("page of the Javier Garzas video") do
  visit 'https://www.youtube.com/watch?v=nRiJ84Pr-T4'
end

When("click on Youtube") do
  click_link('logo')
end

Then("access to Youtube main page") do
  sleep 2.to_i
  expect(page).to have_content("Tendencias")
end

Given("page of the Garzas video") do
  visit 'https://www.youtube.com/watch?v=nRiJ84Pr-T4'
end

When("push mute") do
  find("body").native.send_key("m")
end

Then("silence") do
  sleep 2.to_i
end
