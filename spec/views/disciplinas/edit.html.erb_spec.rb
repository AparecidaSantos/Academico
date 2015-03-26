require 'rails_helper'

RSpec.describe "disciplinas/edit", :type => :view do
  before(:each) do
    @disciplina = assign(:disciplina, Disciplina.create!(
      :nome => "MyString",
      :periodo => 1
    ))
  end

  it "renders the edit disciplina form" do
    render

    assert_select "form[action=?][method=?]", disciplina_path(@disciplina), "post" do

      assert_select "input#disciplina_nome[name=?]", "disciplina[nome]"

      assert_select "input#disciplina_periodo[name=?]", "disciplina[periodo]"
    end
  end
end
