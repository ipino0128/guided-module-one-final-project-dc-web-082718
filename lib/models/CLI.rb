require "pry"

class CommandLineInterface
    ActiveRecord::Base.logger = nil

    def greet_image
      puts "
  ██████ ▓█████  ██▀███   ██▓ ▄▄▄       ██▓        ██ ▄█▀ ██▓ ██▓     ██▓    ▓█████  ██▀███   ██▓███  ▓█████ ▓█████▄  ██▓ ▄▄▄
▒██    ▒ ▓█   ▀ ▓██ ▒ ██▒▓██▒▒████▄    ▓██▒        ██▄█▒ ▓██▒▓██▒    ▓██▒    ▓█   ▀ ▓██ ▒ ██▒▓██░  ██▒▓█   ▀ ▒██▀ ██▌▓██▒▒████▄
░ ▓██▄   ▒███   ▓██ ░▄█ ▒▒██▒▒██  ▀█▄  ▒██░       ▓███▄░ ▒██▒▒██░    ▒██░    ▒███   ▓██ ░▄█ ▒▓██░ ██▓▒▒███   ░██   █▌▒██▒▒██  ▀█▄
  ▒   ██▒▒▓█  ▄ ▒██▀▀█▄  ░██░░██▄▄▄▄██ ▒██░       ▓██ █▄ ░██░▒██░    ▒██░    ▒▓█  ▄ ▒██▀▀█▄  ▒██▄█▓▒ ▒▒▓█  ▄ ░▓█▄   ▌░██░░██▄▄▄▄██
▒██████▒▒░▒████▒░██▓ ▒██▒░██░ ▓█   ▓██▒░██████▒   ▒██▒ █▄░██░░██████▒░██████▒░▒████▒░██▓ ▒██▒▒██▒ ░  ░░▒████▒░▒████▓ ░██░ ▓█   ▓██▒
▒ ▒▓▒ ▒ ░░░ ▒░ ░░ ▒▓ ░▒▓░░▓   ▒▒   ▓▒█░░ ▒░▓  ░   ▒ ▒▒ ▓▒░▓  ░ ▒░▓  ░░ ▒░▓  ░░░ ▒░ ░░ ▒▓ ░▒▓░▒▓▒░ ░  ░░░ ▒░ ░ ▒▒▓  ▒ ░▓   ▒▒   ▓▒█░
░ ░▒  ░ ░ ░ ░  ░  ░▒ ░ ▒░ ▒ ░  ▒   ▒▒ ░░ ░ ▒  ░   ░ ░▒ ▒░ ▒ ░░ ░ ▒  ░░ ░ ▒  ░ ░ ░  ░  ░▒ ░ ▒░░▒ ░      ░ ░  ░ ░ ▒  ▒  ▒ ░  ▒   ▒▒ ░
░  ░  ░     ░     ░░   ░  ▒ ░  ░   ▒     ░ ░      ░ ░░ ░  ▒ ░  ░ ░     ░ ░      ░     ░░   ░ ░░          ░    ░ ░  ░  ▒ ░  ░   ▒
      ░     ░  ░   ░      ░        ░  ░    ░  ░   ░  ░    ░      ░  ░    ░  ░   ░  ░   ░                 ░  ░   ░     ░        ░  ░
                                                                                                              ░
"
    end


    def greet
      puts "Welcome to the Serial Killer Database!"
      puts "We can help you research all your favorite serial killers."
      puts "Press enter to get started!"
      STDIN.gets
      print "              \r"

    end

    def menu
      puts "Select a number from the following options:"

      puts "_______________________________________"
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
        puts "2 bitch"
      elsif input == "5"
        puts "2 bitch"
      elsif input == "6"
        puts "2 bitch"
      elsif input == "7"
        system('clear')
        exit!
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
          puts "Name: #{name.fullname}"
          puts "Known as: #{name.nickname}"
          puts "Gender: #{name.gender}"
          puts "Murder Spree: #{name.date_of_murders}"
          puts "Nationality: #{name.nationality}"
          puts "Occupation: #{name.occupation}"
          puts "Relationship Status: #{name.relationship_status}"
          puts "Legal Status: #{name.legal_status}"
          puts "Currently alive: #{name.alive}"
          puts "      \n"
          puts "      \n"
          puts "___________________________________________________"
          puts "Select:"
          puts "1. To go back to main menu."
          puts "2. To search another serial killer."
          puts "3. To see a list of #{name.fullname}'s victims."
                   #display list of victims
                   #to learn more about a victim type in their name
          puts "4. To see a list of #{name.fullname}'s killing methods."
          puts "5. To see a list of #{name.fullname}'s Macdonald Triad statistics."
          puts "6. To read more about #{name.fullname}."
          puts "7. To go back to #{name.fullname}'s main page.'"
          puts "8. To exit program."
                    # article_url
                    # binding.pry
          killer_menu_options(name)
        else

          puts "Enter a serial killer's name:"
          input = gets.chomp


          this_killer = Killer.all.find do |killer|
            input.downcase == killer.first_name.downcase || input.downcase == killer.fullname.downcase
          end

          if Killer.all.include?(this_killer)
            search_serial_killer(this_killer)
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
                    puts "Enter 1 to go back to main menu."
                    puts "Enter 2 to go back to #{name.fullname}'s page."
                      next_input = gets.chomp
                      if next_input == "1"
                        menu
                      elsif next_input == "2"
                        search_serial_killer(name)
                      end
                  elsif input == "4"
                    puts name.killer_methods
                    puts "___________________________"
                    puts "Enter 1 to go back to main menu."
                    puts "Enter 2 to go back to #{name.fullname}'s page."
                      next_input = gets.chomp
                      if next_input == "1"
                        menu
                      elsif next_input == "2"
                        search_serial_killer(name)
                      end
                  elsif input == "5"
                    puts name.macdonald_triad
                    puts "___________________________"
                    puts "Enter 1 to go back to main menu."
                    puts "Enter 2 to go back to #{name.fullname}'s page."
                      next_input = gets.chomp
                      if next_input == "1"
                        menu
                      elsif next_input == "2"
                        search_serial_killer(name)
                      end
                  elsif input == "6"
                    puts name.article
                    puts "___________________________"
                    puts "Enter 1 to go back to main menu."
                    puts "Enter 2 to go back to #{name.fullname}'s page."
                      next_input = gets.chomp
                      if next_input == "1"
                        menu
                      elsif next_input == "2"
                        search_serial_killer(name)
                      end
                    elsif input == "7"
                      search_serial_killer(name)
                    elsif input == "8"
                      exit!
                    else
                      puts "Invalid entry."
                      search_serial_killer(name)
                  end
                end


    def search_victim
      puts "Enter a victim's name:"
      input = gets.chomp
      system('clear')

      this_victim = Victim.all.find do |victim|
        input.downcase == victim.first_name.downcase || input.downcase == victim.fullname.downcase
      end

      if Victim.all.include?(this_victim)
        puts "Name: #{this_victim.fullname}"
        puts "Age: #{this_victim.age}"
        puts "Gender: #{this_victim.gender}"
        puts "Nationality: #{this_victim.nationality}"
        puts "Location of death: #{this_victim.location_of_death}"
        puts "Killed by: #{this_victim.show_killer}"
        puts "By means of: #{this_victim.show_death_cause}"
        puts "      \n"
        puts "      \n"
        puts "___________________________________________________"
        puts "Select:"
        puts "1. To go back to main menu."
        puts "2. To search another victim."
        puts "3. To learn more about #{this_victim.fullname}'s killer."
        victim_menu_options(this_victim)
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
                  end
                end


    def search_cause_of_death
      puts "Enter a killing method:"
      input = gets.chomp
      system('clear')
      killing_method = DeathCause.all.find do |cause|
        input.downcase == cause.name.downcase
      end

      if DeathCause.all.include?(killing_method)

        puts "All killers that used #{killing_method.name.downcase}:"
        puts "__________________________________"
        puts killing_method.show_killers
        puts "      \n"
        puts "All victims killed by #{killing_method.name.downcase}:"
        puts "__________________________________"
        puts killing_method.show_victims
        puts "      \n"
        puts "      \n"
        puts "___________________________________________________"
        puts "Select:"
        puts "1. To go back to main menu."
        puts "2. To search another killing method."
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
            end
          end

    # display menu of options
    # options:


#******** CLEAR = system('clear')


  #if clicked 1:
  #    Would you like to:
  #    1. Search by name? Ted bundy
              #first_name, last_name
              #nick_name
              #gender
              #date_of_murders
              #nationality
              #occupation
              #relationship_status
              #legal_status
              #alive

                    # 1. to go back to main menu
                    # 2. to search another serial killer
                    # 3. to see a list of ted bundy's victims
                             #display list of victims
                             #to learn more about a victim type in their name
                    #  4. to see a list of ted bundy's killing techniques

                    #  5. to see a list of ted bundy's childhood psycopathic indicators
                    #  6. to read more about Ted bundy.. article_url

    #    2. Search by state? Wisconsin
    #     a list of all serial killers in wisconsin
    #   % of serial killers in wisconsin

    # 3. See serial killer statistics
                # 3.to  see gender statistics
                #2. to see state statistics
              #  1. to go back to main menu
                # 2. to search another serial killer



  end
