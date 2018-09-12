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
      puts "3. Search by cause of death"
      puts "4. View statistics"
      puts "5. Add a serial killer to the database"
      puts "6. Add a victim to the database"
    end


    def selected_search
      input = gets.chomp

      if input == "1"
        search_serial_killer
      elsif input == "2"
        puts "2 bitch"
      elsif input == "3"
        puts "2 bitch"
      elsif input == "4"
        puts "2 bitch"
      elsif input == "5"
        puts "2 bitch"
      elsif input == "6"
        puts "2 bitch"
      else
        system('clear')
        puts "Invalid entry."
        menu
      end
    end


    def search_serial_killer
      puts "Enter serial killer name:"
      input = gets.chomp
      system('clear')
      this_killer = Killer.all.find do |killer|
       input.downcase == killer.fullname.downcase || killer.first_name.downcase
     end
     # binding.pry
          puts "Name: #{this_killer.fullname}"
          # binding.pry
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
      # binding.pry

      if input == "1"
        menu
        selected_search
      elsif input == "2"
        search_serial_killer
      elsif input == "3"
        puts this_killer.show_victims
      elsif input == "4"
        puts this_killer.killer_methods
      elsif input == "5"
        puts this_killer.macdonald_triad
      elsif input == "6"
        puts this_killer.article




        # binding.pry
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
