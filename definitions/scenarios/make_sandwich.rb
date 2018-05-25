module ForemanMaintain::Scenarios
  class MakeSandwich < ForemanMaintain::Scenario
    metadata do
      description 'Make a yummy sandwich'
      param :ingredients, 'List of ingredients'
      param :sandwich_name, 'Name of Sandwich'
      manual_detection
    end

    def compose
      add_steps_with_context(Checks::Sandwich::Ingredients,
                             Procedures::Sandwich::Assemble)
    end

    def set_context_mapping
      context.map(:ingredients, 
                  Checks::Sandwich::Ingredients => :ingredients,
                  Procedures::Sandwich::Assemble => :ingredients)

      context.map(:sandwich_name,
                  Checks::Sandwich::Ingredients => :sandwich_name,
                  Procedures::Sandwich::Assemble => :sandwich_name)
    end
  end
end
