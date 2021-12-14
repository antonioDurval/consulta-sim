require "test_helper"

class MedicoTest < ActiveSupport::TestCase
  test "criar medico valido" do
    medico = Medico.new(nome:"Dr. Antoim", cpf:"752.187.800-06", email:"antoim@gmail.com", especialidade:"cardiologista", crm:"87897879")
    assert medico.save
  end

  test "criar medico invalido" do
    medico = Medico.new(nome:"", cpf:"752.187.800-06", email:"antoim@gmail.com", especialidade:"cardiologista", crm:"87897879")
    assert_not medico.save
  end

  test "criar medico sem email" do
    medico = Medico.new(nome:"Antoimm", cpf:"752.187.800-06", email:"", especialidade:"cardiologista", crm:"87897879")
    assert_not medico.save
  end

  test "criar medico sem crm" do
    medico = Medico.new(nome:"Antoimm", cpf:"752.187.800-06", email:"antoim@gmail.com", especialidade:"cardiologista", crm:"")
    assert_not medico.save
  end
end
