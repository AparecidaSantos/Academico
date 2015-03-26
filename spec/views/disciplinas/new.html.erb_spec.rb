require 'rails_helper'

RSpec.describe "disciplinas/new", :type => :view do
  before(:each) do
    assign(:disciplina, Disciplina.new(
      :nome => "MyString",
      :periodo => 1
    ))
  end

  it "renders new disciplina form" do
    render

    assert_select "form[action=?][method=?]", disciplinas_path, "post" do

      assert_select "input#disciplina_nome[name=?]", "disciplina[nome]"

      assert_select "input#disciplina_periodo[name=?]", "disciplina[periodo]"
    end
  end
end
