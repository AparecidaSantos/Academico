require 'rails_helper'

RSpec.describe "notas/show", :type => :view do
  before(:each) do
    @nota = assign(:nota, Nota.create!(
      :aluno => nil,
      :disciplina => nil,
      :p1 => 1.5,
      :p2 => 1.5,
      :p3 => 1.5
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(//)
    expect(rendered).to match(/1.5/)
    expect(rendered).to match(/1.5/)
    expect(rendered).to match(/1.5/)
  end
end
