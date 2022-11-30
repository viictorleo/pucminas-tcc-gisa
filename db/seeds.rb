# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

user_admin = User.create(nome:'Admin', email:'admin@boasaude.com.br', password:'123456', password_confirmation:'123456', perfil:'Administrador', status: 'Ativo')
user_associado = User.create(nome:'João Associado', email:'joão_associado@dummy.com.br', password:'123456', password_confirmation:'123456', perfil:'Associado', status: 'Ativo')
user_associado2 = User.create(nome:'Associado Dois', email:'associado2@gdummy.com.br', password:'123456', password_confirmation:'123456', perfil:'Associado', status: 'Ativo')
user_conveniado = User.create(nome:'Clinica Dummy', email:'clinica_conveniada@ortodummy.com.br', password:'123456', password_confirmation:'123456', perfil:'Conveniado', status: 'Ativo')
user_financeiro = User.create(nome:'Maria Financ.', email:'maria@boasaude.com.br', password:'123456', password_confirmation:'123456', perfil:'Financeiro', status: 'Ativo')

health_wallet = HealthWallet.create(paciente:'João Associado', numero:'158200148320003', status:'Ativo')

authorization_request = AuthorizationRequest.create(carteirinha: "158200148320003", paciente: "João Associado", procedimento: "Consulta", status: "Autorizado")

plan1 = Plan.create(nome:'Individual ou Familiar', codigo:'101010', descricao:'Plano destinado a contratos diretamente com pessoa física de 18 a 28 anos de idade.', valor:'R$ 400,00', data_fim:'31/12/2024', coparticipacao: true)
plan2 = Plan.create(nome:'Empresarial', codigo:'202020', descricao:'Plano destinado a contratos diretamente firmados com pessoa jurídica.', valor:'R$ 220,00', data_fim:'31/12/2026', coparticipacao: false)
plan3 = Plan.create(nome:'Coletivo Adesão', codigo:'303030', descricao:'Plano destinado a contratos diretamente firmados com pessoa jurídica, porém boletado por beneficiários.', valor:'R$ 310,00', data_fim:'31/12/2024', coparticipacao: true)


