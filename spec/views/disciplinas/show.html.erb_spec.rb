require 'rails_helper'

RSpec.describe "disciplinas/show", :type => :view do
  before(:each) do
    @disciplina = assign(:disciplina, Disciplina.create!(
      :nome => "Nome",
      :periodo => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Nome/)
    expect(rendered).to match(/1/)
  end
end
