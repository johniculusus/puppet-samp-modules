require 'spec_helper'
describe 'filetransferbucket' do

  context 'with defaults for all parameters' do
    it { should contain_class('filetransferbucket') }
  end
end
