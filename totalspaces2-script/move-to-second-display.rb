#!/usr/bin/ruby
require 'totalspaces2'

def main()
  displayList = TotalSpaces2.display_list();
  secondDisplayID = displayList[1][:display_id];
  to_space_id = ARGV[0].to_i;
  TotalSpaces2.move_to_space_on_display(to_space_id, secondDisplayID);
end

main
