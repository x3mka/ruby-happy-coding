require 'spec_helper'
require spoj(11, 'fctrl')

describe Fctrl do

  it 'test 1' do
    run_assert_output(%w[6 3 60 100 1024 23456 8735373], %w[0 14 24 253 5861 2183837])
  end

end
