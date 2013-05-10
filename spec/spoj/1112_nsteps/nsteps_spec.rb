require 'spec_helper'
require spoj(1112, 'nsteps')

describe Nsteps do

  it 'test 1' do
    run_assert_output(['3','4 2','6 6','3 4'], ['6','12','No Number'])
  end


end
