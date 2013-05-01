require 'spec_helper'
require spoj('0042_addrev/addrev.rb')

describe Addrev do

  it 'test 1' do
    run_assert_output(['3', '24 1', '4358 754', '305 794'], %w[34 1998 1])
  end

end
