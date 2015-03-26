require 'rails_helper'

RSpec.describe "notas/index", :type => :view do
  before(:each) do
    assign(:notas, [
      Nota.create!(
        :aluno => nil,
        :disciplina => nil,
        :p1 => 1.5,
        :p2 => 1.5,
        :p3 => 1.5
      ),
      Nota.create!(
        :aluno => nil,
        :disciplina => nil,
        :p1 => 1.5,
        :p2 => 1.5,
        :p3 => 1.5
      )
    ])
  end

  it "renders a list of notas" do
    render
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
  end
end
