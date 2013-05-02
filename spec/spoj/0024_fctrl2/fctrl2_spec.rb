require 'spec_helper'
require spoj('0024_fctrl2/fctrl2.rb')

describe Fctrl2 do

  it 'test 1' do
    run_assert_output(%w[4 1 2 5 3], %w[1 2 120 6])
  end

end

