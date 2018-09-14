require "pry"
require 'colorize'

class CommandLineInterface
    ActiveRecord::Base.logger = nil

    def greet_image
      puts "
 ██ ▄█▀ ██▓ ██▓     ██▓    ▓█████  ██▀███        ▄████▄   ▒█████   ███▄ ▄███▓
 ██▄█▒ ▓██▒▓██▒    ▓██▒    ▓█   ▀ ▓██ ▒ ██▒     ▒██▀ ▀█  ▒██▒  ██▒▓██▒▀█▀ ██▒
▓███▄░ ▒██▒▒██░    ▒██░    ▒███   ▓██ ░▄█ ▒     ▒▓█    ▄ ▒██░  ██▒▓██    ▓██░
▓██ █▄ ░██░▒██░    ▒██░    ▒▓█  ▄ ▒██▀▀█▄       ▒▓▓▄ ▄██▒▒██   ██░▒██    ▒██
▒██▒ █▄░██░░██████▒░██████▒░▒████▒░██▓ ▒██▒ ██▓ ▒ ▓███▀ ░░ ████▓▒░▒██▒   ░██▒
▒ ▒▒ ▓▒░▓  ░ ▒░▓  ░░ ▒░▓  ░░░ ▒░ ░░ ▒▓ ░▒▓░ ▒▓▒ ░ ░▒ ▒  ░░ ▒░▒░▒░ ░ ▒░   ░  ░
░ ░▒ ▒░ ▒ ░░ ░ ▒  ░░ ░ ▒  ░ ░ ░  ░  ░▒ ░ ▒░ ░▒    ░  ▒     ░ ▒ ▒░ ░  ░      ░
░ ░░ ░  ▒ ░  ░ ░     ░ ░      ░     ░░   ░  ░   ░        ░ ░ ░ ▒  ░      ░
░  ░    ░      ░  ░    ░  ░   ░  ░   ░       ░  ░ ░          ░ ░         ░
                                             ░  ░

".red

    end

    def greet
      puts "Welcome to the Serial Killer Database!".bold
      puts "We can help you research all of America's most notorious killers.".bold
      puts "Press enter to get started!".bold
      puts "
      @@@@@                                         @@@@@
      @@@@@@@                                     @@@@@@@
      @@@@@@@           @@@@@@@@@@@@@@@         @@@@@@@
      @@@@@@@@       @@@@@@@@@@@@@@@@@@@      @@@@@@@@
        @@@@@@     @@@@@@@@@@@@@@@@@@@@@    @@@@@@
          @@@@@  @@@@@@@@@@@@@@@@@@@@@@@  @@@@@
            @@  @@@@@@@@@@@@@@@@@@@@@@@@@  @@
               @@@@@@@    @@@@@@    @@@@@@
               @@@@@@      @@@@      @@@@@
               @@@@@@      @@@@      @@@@@
                @@@@@@    @@@@@@    @@@@@
                 @@@@@@@@@@@  @@@@@@@@@@
                  @@@@@@@@@@  @@@@@@@@@
                @@  @@@@@@@@@@@@@@@@@  @@
              @@@@  @@@@ @ @ @ @ @@@@  @@@@
             @@@@@   @@@ @ @ @ @ @@@   @@@@@
           @@@@@      @@@@@@@@@@@@@      @@@@@
         @@@@          @@@@@@@@@@@          @@@@
      @@@@@              @@@@@@@              @@@@@
      @@@@@@@                                 @@@@@@@
      @@@@@                                   @@@@@
".red.blink
      STDIN.gets
      print "              \r"

    end

    def menu
      puts "Select a number from the following options:".underline.red
      puts "1. Search a serial killer"
      puts "2. Search a victim"
      puts "3. Search by killing method"
      puts "4. View statistics"
      puts "5. Add a serial killer to the database"
      puts "6. Add a victim to the database"
      puts "7. To exit program."
      selected_search
    end


    def selected_search
      input = gets.chomp
      if input == "1"
        search_serial_killer
      elsif input == "2"
        search_victim
      elsif input == "3"
        search_cause_of_death
      elsif input == "4"
        system('clear')
        statistics_menu
      elsif input == "5"
        add_killer
      elsif input == "6"
        add_victim
      elsif input == "7"
        system('clear')
        exit!
      elsif input == "hannibal"
        system('clear')
        puts "
                    _________
             _    |           |    _
            | |  |             |  | |
            | | | |   _   _   | | | |
            | | |  |_________|  | | |
            | |  |    _____    |  | |
            | |   |   | | |   |   | |
            | |    |  |_|_|  |    | |
           _|_|_____  ----- ______|_|_
           |                         |
           XXXXXXXXXXXXXXXXXXXXXXXXXXX
           |                         |
           |    |              |     |
           |    |              |     |
           |     |             /     |
            |      |__________/____/
             |_                     |
             / |_____________________|
            |____/                 |
              |                    |
              |____________________|
               |                  |
               |                  |
               XXXXXXXXXXXXXXXXXXXX
               |                  |
               |         |        |
               |        | |       |
              |        |   |       |
              |        |   |        |
             |        |     |       |
             |        |     |        |
             |       |       |       |
          __|        |_______|        |__
         |  |_______|         |_______|  |
         |   |     |           |     |   |
         |   |     |           |     |   |
         |   |_____|           |_____|   |
         |_______________________________|
              |  |                |  |
              |__|                |__|
           ".red.bold
           menu
      else
        system('clear')
        puts "Invalid entry."
        puts "      \n"
        puts "      \n"
        menu
      end
    end



    def search_serial_killer(name = nil)
      # binding.pry
      if name != nil
        system('clear')
          puts "Name:".bold + " #{name.fullname}"
          puts "Known as:".bold + " #{name.nickname}"
          puts "Gender:".bold + " #{name.gender}"
          puts "Murder Spree:".bold + " #{name.date_of_murders}"
          puts "Nationality:".bold + " #{name.nationality}"
          puts "Occupation:".bold + " #{name.occupation}"
          puts "Relationship Status:".bold + " #{name.relationship_status}"
          puts "Legal Status:".bold + " #{name.legal_status}"
          puts "Currently alive:".bold + " #{name.alive}"
          puts "      \n"
          puts "
                                       ...
                                     ;::::;
                                   ;::::; :;
                                 ;:::::'   :;
                                ;:::::;     ;.
                               ,:::::'       ;
                               ::::::;
                               ;:::::;       ;         OOOOOOOO
                              ,;::::::;     ;'         / OOOOOOO
                            ;:::::::::`. ,,,;.        /  / DOOOOOO
                          .';:::::::::::::::::;,     /  /     DOOOO
                         ,:::::;::::::#{name.first_name};;;;::::;,            DOOO
                        ;`::::::`'::::::;;;::::: ,#/  /          DOOO
                        :`:::::::`;::::::;;::: ;::#  /            DOOO
                        ::`:::::::`;:::::::: ;::::# /              DOO
                        `:`:::::::`;:::::: ;::::::#/               DOO
                         :::`:::::::`;; ;:::::::::##                OO
                         ::::`:::::::`;::::::::;:::#                OO
                         `:::::`::::::::::::;'`:;::#                O
                          `:::::`::::::::;' /  / `:#
                           ::::::`:::::;'  /  /   `#
                        ".red.bold
          puts "      \n"
          puts "___________________________________________________"
          puts "Select:"
          puts "1. To go back to Main Menu."
          puts "2. To search another serial killer."
          if name.victims != nil
            puts "3. To see a list of #{name.fullname}'s victims."
          end
                   #display list of victims
                   #to learn more about a victim type in their name
          if name.death_causes != nil
            puts "4. To see a list of #{name.fullname}'s killing methods."
          end
          if name.pyromania != nil && name.bed_wetter != nil && name.animal_torturer != nil
            puts "5. To see a list of #{name.fullname}'s Macdonald Triad statistics."
          end
          if name.article_url != nil
            puts "6. To read more about #{name.fullname}."
          end
          puts "7. To exit program."
                    # article_url
                    # binding.pry
          killer_menu_options(name)
        else

          puts "Enter a serial killer's name:".bold.blue
          input = gets.chomp
          system('clear')

          this_killer = Killer.all.select do |killer|
            input.downcase == killer.first_name.downcase || input.downcase == killer.last_name.downcase || input.downcase == killer.fullname.downcase
          end

          if this_killer.length > 1
            puts "Please specify your search by entering the desired fullname from the available killers:".underline
            puts "      \n"
            i = 0
            while i < this_killer.length
              puts this_killer[i].fullname
              i += 1
            end
            input = gets.chomp

            specific_killer = this_killer.find do |killer|
              input.downcase == killer.fullname.downcase
            end

            search_serial_killer(specific_killer)


          elsif Killer.all.include?(this_killer)
            search_serial_killer(this_killer[0])
          else
            system('clear')
            puts "Invalid entry."
            puts "      \n"
            puts "Select from the following list of killers:"
            puts "___________________________________________"
            Killer.all_killers
            puts "      \n"
            search_serial_killer
          end
        end
    end

                def killer_menu_options(name)
                  input = gets.chomp
                  system('clear')
                  if input == "1"
                    menu
                  elsif input == "2"
                    search_serial_killer
                  elsif input == "3"
                    puts name.show_victims
                    puts "___________________________"
                    puts "Enter 1 to go back to Main Menu."
                    puts "Enter 2 to go back to #{name.fullname}'s page."
                    puts "Enter 3 to exit program."
                      next_input = gets.chomp
                      if next_input == "1"
                        menu
                      elsif next_input == "2"
                        system('clear')
                        search_serial_killer(name)
                      elsif next_input == "3"
                        system('clear')
                        exit!
                      end
                  elsif input == "4"
                    puts name.killer_methods
                    puts "___________________________"
                    puts "Enter 1 to go back to Main Menu."
                    puts "Enter 2 to go back to #{name.fullname}'s page."
                    puts "Enter 3 to exit program."
                      next_input = gets.chomp
                      if next_input == "1"
                        menu
                      elsif next_input == "2"
                        system('clear')
                        search_serial_killer(name)
                      elsif next_input == "3"
                        system('clear')
                        exit!
                      end
                  elsif input == "5"
                    puts name.macdonald_triad
                    puts "___________________________"
                    puts "Enter 1 to go back to Main Menu."
                    puts "Enter 2 to go back to #{name.fullname}'s page."
                    puts "Enter 3 to exit program."
                      next_input = gets.chomp
                      if next_input == "1"
                        menu
                      elsif next_input == "2"
                        system('clear')
                        search_serial_killer(name)
                      elsif next_input == "3"
                        system('clear')
                        exit!
                      end
                  elsif input == "6"
                    command = "open #{name.article_url}"
                    system(command)
                    puts "___________________________"
                    puts "Enter 1 to go back to Main Menu."
                    puts "Enter 2 to go back to #{name.fullname}'s page."
                    puts "Enter 3 to exit program."
                      next_input = gets.chomp
                      if next_input == "1"
                        menu
                      elsif next_input == "2"
                        search_serial_killer(name)
                      elsif next_input == "3"
                        system('clear')
                        exit!
                      end
                    elsif input == "7"
                      system('clear')
                      exit!
                    else
                      puts "Invalid entry."
                      search_serial_killer(name)
                  end
                end


    def search_victim(name = nil)
      if name != nil
        puts "Name:".bold + " #{name.fullname}"
        puts "Age:".bold + " #{name.age}"
        puts "Gender:".bold + " #{name.gender}"
        puts "Nationality:".bold + " #{name.nationality}"
        puts "Location of death:".bold + " #{name.location_of_death}"
        if name.killer != nil
          puts "Killed by:".bold + " #{name.show_killer}"
        end
        if name.death_cause != nil
          puts "By means of:".bold + " #{name.show_death_cause}"
        end
        puts "      \n"
        puts "      \n"
        puts "___________________________________________________"
        puts "Select:"
        puts "1. To go back to Main Menu."
        puts "2. To search another victim."
        if name.killer != nil
          puts "3. To learn more about #{name.fullname}'s killer."
        end
        puts "4. To exit program."
        victim_menu_options(name)
      else
          puts "Enter a victim's name:".bold.blue
          input = gets.chomp
          system('clear')

      this_victim = Victim.all.select do |killer|
        input.downcase == killer.first_name.downcase || input.downcase == killer.last_name.downcase || input.downcase == killer.fullname.downcase
      end

      if this_victim.length > 1
        puts "Please specify your search by entering the desired fullname from the available victim:".underline
        puts "      \n"
        i = 0
        while i < this_victim.length
          puts this_victim[i].fullname
          i += 1
        end
        input = gets.chomp

        specific_victim = this_victim.find do |victim|
          input.downcase == victim.fullname.downcase
        end
        system('clear')
        search_victim(specific_victim)

      elsif Victim.all.include?(this_victim)
        search_victim(this_victim)
      else
        system('clear')
        puts "Invalid entry."
        puts "      \n"
        puts "Select from the following list of victims:"
        puts "___________________________________________"
        Victim.all_victims
        puts "      \n"
        search_victim
      end
    end
  end

                def victim_menu_options(this_victim)
                  input = gets.chomp
                  system('clear')
                  # binding.pry
                  if input == "1"
                    menu
                  elsif input == "2"
                    search_victim
                  elsif input == "3"
                    search_serial_killer(this_victim.killer)
                  elsif input == "4"
                    system('clear')
                    exit!
                  end
                end


    def search_cause_of_death
      puts "Enter a killing method:".bold.blue
      input = gets.chomp
      system('clear')
      killing_method = DeathCause.all.find do |cause|
        input.downcase == cause.name.downcase
      end

      if DeathCause.all.include?(killing_method)
        puts "All killers that used #{killing_method.name.downcase}:".underline
        puts killing_method.show_killers
        puts "      \n"
        puts "All victims killed by #{killing_method.name.downcase}:".underline
        puts killing_method.show_victims
        puts "      \n"
        puts "      \n"
        puts "___________________________________________________"
        puts "Select:"
        puts "1. To go back to Main Menu."
        puts "2. To search another killing method."
        puts "3. To exit program."
        killing_method_options(killing_method)
      else
        system('clear')
        puts "Invalid entry."
        puts "      \n"
        puts "Select from the following list of killing methods:"
        puts "___________________________________________"
        DeathCause.all_death_causes
        puts "      \n"
        search_cause_of_death
      end
      end

          def killing_method_options(killing_method)
            input = gets.chomp
            system('clear')
            # binding.pry
            if input == "1"
              menu
            elsif input == "2"
              search_cause_of_death
            elsif input == "3"
              system('clear')
              exit!
            end
          end

    # display menu of options
    # options:

    def add_killer
      puts "Enter a new killer's first name (or nil if unknown):".bold
      firstname = gets.chomp
      puts "Enter last name (or nil if unknown):".bold
      lastname = gets.chomp
      puts "Enter gender (or nil if unknown):".bold
      gen = gets.chomp
      puts "Enter nationality (or nil if unknown):".bold
      nationality = gets.chomp
      puts "Enter nickname (or nil if unknown):".bold
      nickname = gets.chomp
      puts "Enter relationship status (or nil if unknown):".bold
      relationship_status = gets.chomp
      puts "Enter occupation (or nil if unknown):".bold
      occupation = gets.chomp
      puts "Enter legal status (or nil if unknown):".bold
      legal_status = gets.chomp
      puts "Enter true or false for alive (or nil if unknown):".bold
      alive = gets.chomp
      new_killer = Killer.create(first_name: firstname, last_name: lastname, gender: gen, nationality: nationality, nickname: nickname, relationship_status: relationship_status, occupation: occupation, legal_status: legal_status, alive: alive, article_url: nil)
      puts "To see the new killer you created click enter.".bold
      gets.chomp
      system('clear')
      search_serial_killer(new_killer)
    end

    def add_victim
      puts "Enter a new victim's first name (or nil if unknown):".bold
      firstname = gets.chomp
      puts "Enter last name (or nil if unknown):".bold
      lastname = gets.chomp
      puts "Enter age (or nil if unknown):".bold
      age = gets.chomp
      puts "Enter gender (or nil if unknown):".bold
      gen = gets.chomp
      puts "Enter nationality (or nil if unknown):".bold
      nationality = gets.chomp
      puts "Enter location of death (or nil if unknown):".bold
      location_of_death = gets.chomp
      new_victim = Victim.create(first_name: firstname, last_name: lastname, age: age, gender: gen, nationality: nationality, location_of_death: location_of_death, death_cause_id: nil, killer_id: nil)
      puts "To see the new victim you created click enter.".bold
      gets.chomp
      system('clear')
      search_victim(new_victim)
    end

    def statistics_menu
      puts "Select from the following options:".underline
      puts "      \n"
      puts "1. View prevalence of each killing method."
      puts "2. View percent of murders by state."
      puts "3. View average age of victims."
      puts "4. View gender statistics for victims."
      puts "5. Macdonald Triad statistics for killers."
      puts "6. Return to Main Menu."
      puts "7. Exit program."

      statistics_options
    end

    def statistics_options
      input = gets.chomp
      if input == "1"
        system('clear')
        puts "Prevalence of each killing method:".underline
        puts "      \n"
        Victim.death_cause_statistics
        puts "      \n"
        puts "      \n"
        puts "__________________________________"
        puts "Enter 1 to go back to Main Menu."
        puts "Enter 2 to go back to Statistics Menu options."
        puts "Enter 3 to exit program."
          next_input = gets.chomp
          if next_input == "1"
            system('clear')
            menu
          elsif next_input == "2"
            system('clear')
            statistics_menu
          elsif next_input == "3"
            system('clear')
            exit!
          end
        elsif input == "2"
          system('clear')
          puts "Percent of murders by state:".underline
          puts "      \n"
          Victim.location_statistics
          puts "      \n"
          puts "      \n"
          puts "__________________________________"
          puts "Enter 1 to go back to Main Menu."
          puts "Enter 2 to go back to Statistics Menu options."
          puts "Enter 3 to exit program."
            next_input = gets.chomp
            if next_input == "1"
              system('clear')
              menu
            elsif next_input == "2"
              system('clear')
              statistics_menu
            elsif next_input == "3"
              system('clear')
              exit!
            end
        elsif input == "3"
          system('clear')
          puts "Average age of victims".underline
          puts "      \n"
          Victim.age_statistics
          puts "      \n"
          puts "      \n"
          puts "__________________________________"
          puts "Enter 1 to go back to Main Menu."
          puts "Enter 2 to go back to Statistics Menu options."
          puts "Enter 3 to exit program."
            next_input = gets.chomp
            if next_input == "1"
              system('clear')
              menu
            elsif next_input == "2"
              system('clear')
              statistics_menu
            elsif next_input == "3"
              system('clear')
              exit!
            end
        elsif input == "4"
          system('clear')
          puts "Gender statistics for victims".underline
          puts "      \n"
          Victim.gender_statistics
          puts "      \n"
          puts "      \n"
          puts "__________________________________"
          puts "Enter 1 to go back to Main Menu."
          puts "Enter 2 to go back to Statistics Menu options."
          puts "Enter 3 to exit program."
            next_input = gets.chomp
            if next_input == "1"
              system('clear')
              menu
            elsif next_input == "2"
              system('clear')
              statistics_menu
            elsif next_input == "3"
              system('clear')
              exit!
            end
        elsif input == "5"
          system('clear')
          puts "Macdonald Triad statistics for killers".underline
          puts "      \n"
          Killer.macdonald_triad_statistics
          puts "      \n"
          puts "      \n"
          puts "__________________________________"
          puts "Enter 1 to go back to Main Menu."
          puts "Enter 2 to go back to Statistics Menu options."
          puts "Enter 3 to exit program."
            next_input = gets.chomp
            if next_input == "1"
              system('clear')
              menu
            elsif next_input == "2"
              system('clear')
              statistics_menu
            elsif next_input == "3"
              system('clear')
              exit!
            end
        elsif input == "6"
          system('clear')
          menu
        elsif input == "7"
          system('clear')
          exit!
        else
          system('clear')
          puts "Invalid entry."
          puts "      \n"
          statistics_menu
        end
    end
  end
