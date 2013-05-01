require 'spec_helper'
require spoj('0002_prime1/prime1.rb')

describe Prime1 do

  it 'test 1' do
    run_assert_output(['1', '1 10'], ['2','3','5','7',''])
  end

  it 'test 2' do
    run_assert_output(['2', '1 2', '2 5'], ['2','','2','3','5',''])
    #the same
    #run_assert_output(['2', '1 2', '2 5'], "2\n\n2\n3\n5\n\n")
  end

end
