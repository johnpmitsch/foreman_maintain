module Checks
  module Sandwich
    class Ingredients < ForemanMaintain::Check
      metadata do
        description 'Check sandwich ingredients'
        label :sandwich_ingredient_check
        param :ingredients, 'Ingredients'
        param :sandwich_name, 'Sandwich Name'

        #confine do
        #  feature(:sandwich)
        #end
      end

      def run
        with_spinner('Performing thorough ingredient check') do
          sleep 2
          assert @ingredients.length > 1, "Need more ingredients for a good sandwich"
        end
      end
    end
  end
end

 
