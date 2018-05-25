module ForemanMaintain
  module Cli
    class SandwichCommand < Base
      parameter 'SANDWICH_NAME', 'Name your sandwich',
                :attribute_name => :sandwich_name

      # based on clamp cli gem
      option ['-i', '--ingredient'],  'INGREDIENT', 'Add ingredient',
             :attribute_name => :ingredients, :multivalued => true

      def execute
        scenario = Scenarios::MakeSandwich.new(
          :sandwich_name => @sandwich_name,
          :ingredients => @ingredients
        )
        run_scenario(scenario)
        exit runner.exit_code
      end
    end
  end
end
 
