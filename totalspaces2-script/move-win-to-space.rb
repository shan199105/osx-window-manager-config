#!/usr/bin/ruby
require 'totalspaces2'

def front_windows?()
  windows = TotalSpaces2.window_list
  return !windows.empty?
end

def get_front_window_id(current_space, main_display_id)
  windows = TotalSpaces2.window_list
  current_space_windows = windows.select {|window| window[:display_id] == main_display_id && window[:space_number] == current_space}
  front_window = current_space_windows[0]
  return front_window[:window_id]
end

def main()
  to_space = ARGV[0].to_i
  current_space = TotalSpaces2.current_space
  main_display_id = TotalSpaces2.main_display[:display_id]
  
  if front_windows?
    window_id = get_front_window_id(current_space, main_display_id)
    TotalSpaces2.move_window_to_space(window_id, to_space)
  end

  if front_windows?
    window_id = get_front_window_id(current_space, main_display_id)
    TotalSpaces2.set_front_window(window_id)
  end
end

main
