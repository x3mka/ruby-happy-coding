require 'spec_helper'
require spoj(2123, 'candy')

describe Candy do

  it 'test 1' do
    run_assert_output(['5',
                       '1', '1', '1', '1', '6',
                       '2',
                       '3', '4',
                      '-1'],
                      ['4','-1'])
  end

end
