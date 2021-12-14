Given('eu estou na pagina de criar paciente') do
  visit '/pacientes/new'
end

Given('eu estou na pagina de criar medico') do
  visit '/medicos/new'
end


When('eu preencho nome {string}, nascimento {string}, cpf {string}, email {string}, cep {string}, cidade {string}, bairro {string}, logradouro {string}, complemento {string}') do |nome, nascimento, cpf, email, cep, cidade, bairro, logradouro, complemento|
  fill_in 'paciente[nome]', :with => nome
  fill_in 'paciente[data_nascimento]', :with => nascimento
  fill_in 'paciente[cpf]', :with => cpf
  fill_in 'paciente[email]', :with => email
  fill_in 'paciente[endereco_attributes][cep]', :with => cep
  fill_in 'paciente[endereco_attributes][cidade]', :with => cidade
  fill_in 'paciente[endereco_attributes][bairro]', :with => bairro
  fill_in 'paciente[endereco_attributes][logradouro]', :with => logradouro
  fill_in 'paciente[endereco_attributes][complemento]', :with => complemento

end

When('eu preencho nome {string}, cpf {string}, email {string}, especialidade {string}, crm {string}') do |nome, cpf, email, especialidade, crm|
  fill_in 'medico[nome]', :with => nome
  fill_in 'medico[cpf]', :with => cpf
  fill_in 'medico[email]', :with => email
  fill_in 'medico[especialidade]', :with => especialidade
  fill_in 'medico[crm]', :with => crm
end


When('clico em criar paciente') do
  click_button 'Create Paciente'
end

When('clico em criar medico') do
  click_button 'Create Medico'
end

Then('vejo o paciente de nome {string} e cpf {string}') do |nome, cpf|
  page.has_content?(nome)
  page.has_content?(cpf)
end

Then('vejo o medico de nome {string} e cpf {string}') do |nome, cpf|
  page.has_content?(nome)
  page.has_content?(cpf)
end

Then('vejo a mensagem de erro {string}') do |erro|
  page.has_content?(erro)
end
