require 'spec_helper'

describe 'Lowdown' do

  let(:lowdown) { Lowdown.new }

  it 'detects kernel name' do
    expect(lowdown.kernel.name).to be_a String
  end

  it 'detects kernel version' do
    expect(lowdown.kernel.version).to be_a String
  end

  it 'detects kernel arch' do
    expect(lowdown.kernel.arch).to be_a String
  end

  it 'detects operating system name' do
    os_name = lowdown.os.name
    expect(os_name).to be_a Symbol
    expect(os_name.to_s).to match(/bsd|os_x|linux|solaris|windows/)
  end

  it 'detects operating system version' do
    expect(lowdown.os.version).to be_a String
  end
end
