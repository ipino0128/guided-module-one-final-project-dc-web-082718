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
      system('clear')
      puts "Select a number from the following options:"

      puts "_______________________________________"
      puts "1. Search a serial killer"
      puts "2. Search a victim"
      puts "3. Search by killing method"
      puts "4. View statistics"
      puts "5. Add a serial killer to the database"
      puts "6. Add a victim to the database"
      selected_search
    end


    def selected_search
      input = gets.chomp

      if input == "1"
        puts "Enter a serial killer's name:"
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
      else
        system('clear')
        puts "Invalid entry."
      end
    end


    def search_serial_killer
     input = gets.chomp
     system('clear')
     this_killer = Killer.all.find do |killer|
       input.downcase == killer.first_name.downcase || input.downcase == killer.fullname.downcase
     end
          puts "Name: #{this_killer.fullname}"
          puts "Known as: #{this_killer.nickname}"
          puts "Gender: #{this_killer.gender}"
          puts "Murder Spree: #{this_killer.date_of_murders}"
          puts "Nationality: #{this_killer.nationality}"
          puts "Occupation: #{this_killer.occupation}"
          puts "Relationship Status: #{this_killer.relationship_status}"
          puts "Legal Status: #{this_killer.legal_status}"
          puts "Currently alive: #{this_killer.alive}"
          puts "      \n"
          puts "      \n"
          puts "___________________________________________________"
          puts "Select:"
          puts "1. To go back to main menu."
          puts "2. To search another serial killer."
          puts "3. To see a list of #{this_killer.fullname}'s victims."
                   #display list of victims
                   #to learn more about a victim type in their name
          puts "4. To see a list of #{this_killer.fullname}'s killing methods."
          puts "5. To see a list of #{this_killer.fullname}'s Macdonald Triad statistics."
          puts "6. To read more about #{this_killer.fullname}."
                    # article_url
                    # binding.pry
          killer_menu_options(this_killer)
    end

                def killer_menu_options(this_killer)
                  input = gets.chomp
                  system('clear')
                  if input == "1"
                    menu
                  elsif input == "2"
                    puts "Enter a serial killer's name:"
                    search_serial_killer
                  elsif input == "3"
                    puts this_killer.show_victims
                    puts "___________________________"
                    puts "Press enter to go back to main menu."
                      STDIN.gets
                      print "              \r"
                      menu
                  elsif input == "4"
                    puts this_killer.killer_methods
                    puts "___________________________"
                    puts "Press enter to go back to main menu."
                      STDIN.gets
                      print "              \r"
                      menu
                  elsif input == "5"
                    puts this_killer.macdonald_triad
                    puts "___________________________"
                    puts "Press enter to go back to main menu."
                      STDIN.gets
                      print "              \r"
                      menu
                  elsif input == "6"
                    puts this_killer.article
                    puts "___________________________"
                    puts "Press enter to go back to main menu."
                      STDIN.gets
                      print "              \r"
                      menu
                  end
                end


    def search_victim
      puts "Enter a victim's name:"
      input = gets.chomp
      system('clear')
      this_victim = Victim.all.find do |victim|
        input.downcase == victim.first_name.downcase || input.downcase == victim.fullname.downcase
      end
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
    end

                def victim_menu_options(this_victim)
                  input = gets.chomp
                  system('clear')
                  # binding.pry
                  if input == "1"
                    menu
                  elsif input == "2"
                    search_victim
                  # elsif input == "3"
                  end
                end


    def search_cause_of_death
      puts "Enter a killing method:"
      input = gets.chomp
      system('clear')
      killing_method = DeathCause.all.find do |cause|
        input.downcase == cause.name.downcase
      end
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
