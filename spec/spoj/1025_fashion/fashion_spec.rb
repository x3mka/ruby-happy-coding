require 'spec_helper'
require spoj(1025, 'fashion')

describe Fashion do

  it 'test 1' do
    run_assert_output(['2',
                       '2', '1 1', '3 2',
                       '3', '2 3 2', '1 3 2'],
                      ['5','15'])
  end

end
