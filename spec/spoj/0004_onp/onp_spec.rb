require 'spec_helper'
require spoj('0004_onp/onp.rb')

describe Onp do

  it 'test 1' do
    run_assert_output(['3', '(a+(b*c))', '((a+b)*(z+x))', '((a+t)*((b+(a+c))^(c+d)))'], ['abc*+','ab+zx+*','at+bac++cd+^*'])
  end

end

