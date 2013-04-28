require 'spec_helper'

describe 'tests' do
  it 'all tests should pass' do
    TestHelper.run!(spoj('0001_test/test.rb'))
  end
end
