class Spoj < Thor::Group
    include Thor::Actions

    # Define arguments and options
    argument :code
    class_option :skip_readme, :default => :false
    class_option :skip_spec, :default => :false

    desc 'import new problem'
    def new_problem
    end


end