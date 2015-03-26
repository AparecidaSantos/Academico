class Aluno < ActiveRecord::Base
  validates_presence_of :nome, message: "deve ser preenchido" 
  validates_presence_of :endereco, message: "deve ser preenchido" 
  validates_presence_of :telefone, message: "deve ser preenchido"
  validates_uniqueness_of :nome, message: "Nome já cadastrado"
  validates_size_of :nome, :minimum => 3, :maximun=>50, message: "Tamanho Inválido minino 3 maximo 50."
  validates_numericality_of :renda, message: "deve ser numérico"
  
end
