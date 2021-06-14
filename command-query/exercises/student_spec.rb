require 'rspec'
require_relative 'student'

RSpec.describe Student do
  it 'has a mediocre grade' do
    student = Student.new

    expect(student.grade).to eq('C')
  end

  it 'can improve its grade' do
    student = Student.new

    student.study
    expect(student.grade).to eq('B')

    student.study
    expect(student.grade).to eq('A')
  end

  it 'can only get so good' do
    student = Student.new

    3.times { student.study }

    expect(student.grade).to eq('A')
  end

  it 'can get worse' do
    student = Student.new

    student.slack_off
    expect(student.grade).to eq('D')

    student.slack_off
    expect(student.grade).to eq('E')
  end

  it 'can only get so worse' do
    student = Student.new

    100.times { student.slack_off }
    expect(student.grade).to eq('F')
  end

  it 'slacking off is immediately noticable' do
    student = Student.new

    100.times { student.study }
    student.slack_off

    expect(student.grade).to eq('B')
  end

  it 'however, so is studying' do
    student = Student.new

    100.times { student.slack_off }
    student.study

    expect(student.grade).to eq('E')

  end
end
