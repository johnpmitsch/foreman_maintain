module Procedures::Sandwich
  class Assemble < ForemanMaintain::Procedure
    metadata do
      description 'Assemble best sandwich ever'
      tags :sandwich
      param :ingredients, 'ingredients', :required => true
      param :sandwich_name, 'sandwich_name', :required => true
    end

    def run
      @ingredients = @ingredients.split(",") if @ingredients.class == String
      with_spinner('Preparing ingredients') do |spinner|
        sleep 2
        spinner.update("Your sandwich artist is assembling your sandwich now")
        sleep 2
        spinner.update("Viola! #{@sandwich_name} assembled")
        puts "\n\nSandwich with #{@ingredients.join(', ')} made. Enjoy!"
        print_sandwich
      end
    end

    def print_sandwich
        sandwich_art = <<-SANDWICH

                                                                 _
                                                                //
                                                               //
                                               _______________//__
                                             .(______________//___).
                                             |              /      |
                                             |. . . . . . . / . . .|
                                             \\ . . . . . ./. . . . /
                                              |           / ___   |
                          _.---._             |::......./../...\.:|
                      _.-~       ~-._         |::::/::\::/:\::::::|
                  _.-~               ~-._     |::::\::/::::::X:/::|
              _.-~                       ~---.;:::::::/::\::/:::::|
          _.-~                                 ~\::::::n::::::::::|
       .-~                                    _.;::/::::a::::::::/
       :-._                               _.-~ ./::::::::d:::::::|
       `-._~-._                   _..__.-~ _.-~|::/::::::::::::::|
        /  ~-._~-._              / .__..--~----.YWWWWWWWWWWWWWWWP'
       \_____(_;-._\.        _.-~_/       ~).. . \\
          /(_____  \`--...--~_.-~______..-+_______)
        .(_________/`--...--~/    _/           gc
       /-._     \_     (___./_..-~__.....__..-~.\/
       `-._~-._   ~\--------~  .-~_..__.-~ _.-~
           ~-._~-._ ~---------'  / .__..--~
               ~-._\.        _.-~_/
                   \`--...--~_.-~
                    `--...--~
      SANDWICH
      puts sandwich_art
    end
  end
end
