require 'spec_helper'
require spoj(5, 'palin')

describe Palin do

  it 'test 1' do
    run_assert_output(['2', '808', '2133'], ['818','2222'])
  end

end
