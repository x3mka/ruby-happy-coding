require_relative 'kernel'
require 'stringio'
require 'rspec'

module TestHelper

  class << self

    def run! (code_file)
      tests = get_tests code_file
      tests.each do |test|
        run_test!(code_file, test)
      end
    end

    def get_tests (code_file)
      tests_location = File.dirname(code_file)
      tests = []
      (1..9).each do |test|
        t = {}
        in_file = File.join(tests_location, test.to_s + '.in')
        out_file = File.join(tests_location, test.to_s + '.out')
        t[:in] = in_file if File.exists? in_file
        t[:out] = out_file if File.exists? out_file
        tests << t
      end
      tests
    end

    def run_test! (code_file, test)
      stdout = mock_stdout do
        InputFaker.with_fake_input(File.readlines test[:in]) do
          #load code_file
          a = STDIN.gets
          b = STDIN.gets
          c = STDIN.gets
          puts 'test'
          puts 'xxx'
        end
      end
      stdout.should eql (File.read(test[:out])) if test.has_key? :out
    end

  end

end