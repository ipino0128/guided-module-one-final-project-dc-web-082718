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
      else puts "invalid selection"
      end
    end


    def search_serial_killer
      puts "Enter serial killer name:"
      input = gets.chomp

      Killer.all.select do |killer|
        # binding.pry
        if input == killer.fullname || killer.first_name
          puts "Name: #{killer.fullname}"
          puts "Known as: #{killer.nickname}"
          puts "Gender: #{killer.gender}"
          puts "Murder Spree: #{killer.date_of_murders}"
          puts "Nationality: #{killer.nationality}"
          puts "Occupation: #{killer.occupation}"
          puts "Relationship Status: #{killer.relationship_status}"
          puts "Legal Status: #{killer.legal_status}"
          puts "Currently alive? #{killer.alive}"

        end
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
