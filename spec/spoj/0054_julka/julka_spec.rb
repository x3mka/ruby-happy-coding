require 'spec_helper'
require spoj(54, 'julka')

describe Julka do

  it 'test 1' do
    run_assert_output(['10', '2',
                       '10', '2',
                       '10', '2',
                       '10', '2',
                       '10', '2',
                       '10', '2',
                       '10', '2',
                       '10', '2',
                       '10', '2',
                       '10', '2'],
                      ['6','4',
                       '6','4',
                       '6','4',
                       '6','4',
                       '6','4',
                       '6','4',
                       '6','4',
                       '6','4',
                       '6','4',
                       '6','4'])
  end

end
