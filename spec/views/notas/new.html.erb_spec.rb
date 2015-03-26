require 'rails_helper'

RSpec.describe "notas/new", :type => :view do
  before(:each) do
    assign(:nota, Nota.new(
      :aluno => nil,
      :disciplina => nil,
      :p1 => 1.5,
      :p2 => 1.5,
      :p3 => 1.5
    ))
  end

  it "renders new nota form" do
    render

    assert_select "form[action=?][method=?]", notas_path, "post" do

      assert_select "input#nota_aluno_id[name=?]", "nota[aluno_id]"

      assert_select "input#nota_disciplina_id[name=?]", "nota[disciplina_id]"

      assert_select "input#nota_p1[name=?]", "nota[p1]"

      assert_select "input#nota_p2[name=?]", "nota[p2]"

      assert_select "input#nota_p3[name=?]", "nota[p3]"
    end
  end
end
