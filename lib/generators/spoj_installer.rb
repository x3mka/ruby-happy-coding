require 'thor'

module Generators
  class SpojInstaller
    include Thor::Actions

    def install (problem)
      @problem = problem
      code = problem[:code]
      problem_path = 'spoj/#{problem[:number]}_#{code}/#{code}.rb'
    end

  end
end