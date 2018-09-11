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
    end


    # display menu of options
    # options:
    #   1. Search for serial killers
    #   2. Search for victims
    #   3. Search for causes of death
    #   4. Add a serial killer to the database
    #   5. Add a victim to the database
    #   6. Add a cause of death to the database



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
