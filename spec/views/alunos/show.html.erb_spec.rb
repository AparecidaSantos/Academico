require 'rails_helper'

RSpec.describe "alunos/show", :type => :view do
  before(:each) do
    @aluno = assign(:aluno, Aluno.create!(
      :nome => "Nome",
      :endereco => "Endereco",
      :telefone => "Telefone",
      :renda => 1.5
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Nome/)
    expect(rendered).to match(/Endereco/)
    expect(rendered).to match(/Telefone/)
    expect(rendered).to match(/1.5/)
  end
end
