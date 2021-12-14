require "test_helper"

class PacienteTest < ActiveSupport::TestCase
  test "criar paciente valido" do
    paciente = Paciente.new(nome:"Tonhao", data_nascimento:"09-07-1999", cpf:"704.064.460-67", email:"antoim@gmail.com")
    paciente.endereco = Endereco.new(cep:"55435-000", cidade:"sao joao", bairro:"parque alvorada", logradouro:"numsei", complemento:"passaeu", paciente_id: paciente.id)
    assert paciente.save
  end

  test "criar paciente sem nome" do
    paciente = Paciente.new(nome:"", data_nascimento:"09-07-1999", cpf:"704.064.460-67", email:"antoim@gmail.com")
    paciente.endereco = Endereco.new(cep:"55435-000", cidade:"sao joao", bairro:"parque alvorada", logradouro:"numsei", complemento:"passaeu", paciente_id: paciente.id)
    assert_not paciente.save
  end

  test "criar paciente com nascimento errado" do
    paciente = Paciente.new(nome:"Tonhao", data_nascimento:"09-07-2050", cpf:"704.064.460-67", email:"antoim@gmail.com")
    paciente.endereco = Endereco.new(cep:"55435-000", cidade:"sao joao", bairro:"parque alvorada", logradouro:"numsei", complemento:"passaeu", paciente_id: paciente.id)
    assert_not paciente.save
  end

  test "criar paciente sem email" do
    paciente = Paciente.new(nome:"Tonhao", data_nascimento:"09-07-1999", cpf:"704.064.460-67", email:"")
    paciente.endereco = Endereco.new(cep:"55435-000", cidade:"sao joao", bairro:"parque alvorada", logradouro:"numsei", complemento:"passaeu", paciente_id: paciente.id)
    assert_not paciente.save
  end
end
