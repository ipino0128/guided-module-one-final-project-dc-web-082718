require_relative '../config/environment'

new_cli = CommandLineInterface.new
new_cli.greet_image
new_cli.greet

new_cli.menu
new_cli.selected_search
new_cli.search_serial_killer
new_cli.search_victim
new_cli.search_cause_of_death
