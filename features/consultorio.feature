Feature: consultorio


  Scenario: novo paciente
    Given eu estou na pagina de criar paciente
    When eu preencho nome 'Antonio', nascimento '09-07-1999', cpf '820.523.760-38', email 'antoim77@gmail.com', cep '55435-000', cidade 'sao joao', bairro 'parque alvorada', logradouro 'seila', complemento 'triteza'
    And clico em criar paciente
    Then vejo o paciente de nome 'Antonio' e cpf '820.523.760-38'

  Scenario: novo paciente data invalida
    Given eu estou na pagina de criar paciente
    When eu preencho nome 'Antoim', nascimento '09-07-2022', cpf '820.523.760-38', email 'antoim77@gmail.com', cep '55435-000', cidade 'sao joao', bairro 'parque alvorada', logradouro 'seila', complemento 'triteza'
    And clico em criar paciente
    Then vejo a mensagem de erro 'Data nao pode ser no futuro'

  Scenario: novo medico
    Given eu estou na pagina de criar medico
    When eu preencho nome 'Dr. Teste', cpf '685.538.010-71', email 'medico@gmail.com', especialidade 'cardiologista', crm '87897879'
    And clico em criar medico
    Then vejo o medico de nome 'Dr. Teste' e cpf '685.538.010-71'


