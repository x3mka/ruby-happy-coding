require_relative 'support/input_faker'
require_relative 'support/kernel'

RSpec.configure do |config|
  config.treat_symbols_as_metadata_keys_with_true_values = true
  config.run_all_when_everything_filtered = true
  config.filter_run :focus
end

APP_ROOT = File.expand_path('../../', __FILE__)
SPOJ_ROOT = File.join(APP_ROOT, 'spoj')
END_OF_LINE = "\n"

def spoj (task)
  File.join(SPOJ_ROOT, task)
end

def run(input)
  out = capture_stdout do
    InputFaker.with_fake_input(input) do
      subject.run($stdin)
    end
  end
  out

end

def run_assert_output(input, output)
  out = run input
  if output.is_a? Array
    output_has_lines = output.length > 0
    output = output.join(END_OF_LINE)
    output += END_OF_LINE if output_has_lines
  end
  out.string.should == output
end


