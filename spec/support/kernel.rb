require 'stringio'

module Kernel

  def capture_stdout
    out = StringIO.new
    $stdout = out
    yield
    return out
  ensure
    $stdout = STDOUT
  end

  def mock_stdin(strings)
    stdin = $stdin
    $stdin = mock = new(strings)
    yield
    mock.read
  ensure
    $stdin = stdin
  end

  def mock_stdout
    stdout = $stdout
    $stdout = mock = StringIO.new
    yield
    mock.rewind
    mock.read
  ensure
    $stdout = stdout
  end

end