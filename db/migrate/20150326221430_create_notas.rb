class CreateNotas < ActiveRecord::Migration
  def change
    create_table :notas do |t|
      t.references :aluno, index: true
      t.references :disciplina, index: true
      t.float :p1
      t.float :p2
      t.float :p3

      t.timestamps null: false
    end
    add_foreign_key :notas, :alunos
    add_foreign_key :notas, :disciplinas
  end
end
