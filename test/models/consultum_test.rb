require "test_helper"

class ConsultumTest < ActiveSupport::TestCase
  test "criar consulta valida" do
    paciente = Paciente.new(nome:"Tonhao", data_nascimento:"09-07-1999", cpf:"704.064.460-67", email:"antoim@gmail.com")
    paciente.endereco = Endereco.new(cep:"55435-000", cidade:"sao joao", bairro:"parque alvorada", logradouro:"numsei", complemento:"passaeu", paciente_id: paciente.id)
    assert paciente.save

    medico = Medico.new(nome:"Dr. Antoim", cpf:"752.187.800-06", email:"antoim@gmail.com", especialidade:"cardiologista", crm:"87897879")
    assert medico.save

    consulta = Consulta.new(data:"25-12-2021", horario:"08:00", medico_id: medico.id, paciente_id: paciente.id)
    assert consulta.save
  end

  test "criar consulta invalida" do
    paciente = Paciente.new(nome:"Tonhao", data_nascimento:"09-07-1999", cpf:"704.064.460-67", email:"antoim@gmail.com")
    paciente.endereco = Endereco.new(cep:"55435-000", cidade:"sao joao", bairro:"parque alvorada", logradouro:"numsei", complemento:"passaeu", paciente_id: paciente.id)
    assert paciente.save

    medico = Medico.new(nome:"Dr. Antoim", cpf:"752.187.800-06", email:"antoim@gmail.com", especialidade:"cardiologista", crm:"87897879")
    assert medico.save

    consulta = Consulta.new(data:"25-12-1999", horario:"08:00", medico_id: medico.id, paciente_id: paciente.id)
    assert_not consulta.save
  end

end
