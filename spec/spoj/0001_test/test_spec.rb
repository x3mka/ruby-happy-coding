require 'spec_helper'
require spoj(1, 'test')

describe Test do

  it 'test 1' do
    run_assert_output(%w(13 15 42), %w(13 15))
  end

  it 'test 2' do
    run_assert_output(%w(42), %w())
  end

  it 'test 3' do
    run_assert_output(%w(1 2 88 42 99), %w(1 2 88))
  end

end
