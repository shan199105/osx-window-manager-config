#!/usr/bin/ruby
require 'totalspaces2'

def main()
  to_space_id = ARGV[0].to_i
  TotalSpaces2.move_to_space(to_space_id)
end

main
