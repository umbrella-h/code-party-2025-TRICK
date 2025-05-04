system("stty sane") # Reset terminal settings to defaults

# ________  
#   ____  | 
#  |    | | 
#  |  ¯¯  | 
#   ¯¯¯¯¯¯   

n = 1

cake_color_sets = {
  "🍊 Mikan": [220, 221, 222, 223], # Orange shades
  "🍵 Matcha": [70, 71, 106, 107], # Green tea shades
  "🌸 Sakura": [210, 216, 217, 218], # Pink cherry blossom shades
  "🍫 Choco": [130, 172, 173, 174], # Brown chocolate shades
}

adzuki_colors = [95, 96, 131, 132]
kuri_color = 178
symbols = ["▄▄", "█ ", "▀▀", " █", "▟█", "█▙", "█▛", "▜█", "██"] # Added corner triangle symbols for turning points

# Define the grid size
rows = 5
cols = 5

# Initialize the grid and fill order
grid = Array.new(rows) { Array.new(cols) }
fill_order = Array.new(rows) { Array.new(cols) } # To track the order of filling

# Spiral logic
x, y = 0, 0
dx, dy = 0, 1 # Start moving right

cake_color_keys = cake_color_sets.keys # Get the keys of the color sets
color_index = 0 # Start with the first color set

loop {
  cake_colors = cake_color_sets[cake_color_keys[color_index]] # Cycle through color sets
  current_color_set = cake_color_keys[color_index] # Get the current color set key
  color_index = (color_index + 1) % cake_color_keys.size # Move to the next color set

  # Reset the grid and fill order for the new loop
  grid = Array.new(rows) { Array.new(cols) }
  fill_order = Array.new(rows) { Array.new(cols) }
  x, y = 0, 0
  dx, dy = 0, 1
  n = 1

  loop {
    # Check if the current position is a turning point
    nx, ny = x + dx, y + dy

    if n == rows * cols # If it's the last position, place the kuri symbol
      grid[x][y] = symbols[8] # "██"
      fill_order[x][y] = n
    elsif nx < 0 || nx >= rows || ny < 0 || ny >= cols || !grid[nx][ny].nil?
      # Place a corner triangle symbol based on the direction of the turn
      if dx == 0 && dy == 1 # Turning from right to down
        grid[x][y] = symbols[5] # "█▙"
      elsif dx == 1 && dy == 0 # Turning from down to left
        grid[x][y] = symbols[6] # "█▛"
      elsif dx == 0 && dy == -1 # Turning from left to up
        grid[x][y] = symbols[7] # "▜█"
      elsif dx == -1 && dy == 0 # Turning from up to right
        grid[x][y] = symbols[4] # "▟█"
      end
      fill_order[x][y] = n
      dx, dy = dy, -dx # Turn clockwise
      nx, ny = x + dx, y + dy
    else
      # Place the current symbol in the grid based on direction
      if dx == 0 && dy == 1 # Moving right
        grid[x][y] = symbols[0] # "▄▄"
      elsif dx == 1 && dy == 0 # Moving down
        grid[x][y] = symbols[1] # "█ "
      elsif dx == 0 && dy == -1 # Moving left
        grid[x][y] = symbols[2] # "▀▀"
      elsif dx == -1 && dy == 0 # Moving up
        grid[x][y] = symbols[3] # " █"
      end
      fill_order[x][y] = n
    end

    # Update position
    x, y = nx, ny

    # Print the current color set key above the grid
    print "\e[2J" # Clear the screen
    puts "\e[1m\e[38;5;#{cake_colors[0]}m#{current_color_set}\e[0m" # Print the color set key in bold with the first color
    print "\n"

    # Print the grid with colors
    grid.each_with_index do |row, i|
      row.each_with_index do |cell, j|
        order = fill_order[i][j] || 0 # Get the fill order for the cell
        if order > 0
          bg_color = cake_colors[(order - 1) % cake_colors.size] # Use fill order for background
          text_color = adzuki_colors[(order - 1) % adzuki_colors.size] # Use fill order for text
          # Check if the cell is a full square symbol
          if cell == symbols[8]
            print "\e[48;5;#{bg_color}m\e[38;5;#{kuri_color}m\e[1m#{cell || "  "}\e[0m"
          # Check if the cell is a triangle symbol
          elsif symbols[4..7].include?(cell)
            # Print triangle symbols with no background color
            print "\e[38;5;#{bg_color}m\e[1m#{cell}\e[0m"
          else
            # Print other symbols with background color
            print "\e[48;5;#{bg_color}m\e[38;5;#{text_color}m\e[1m#{cell || "  "}\e[0m"
          end
        else
          # Print empty cells with no background color
          print "  "
        end
      end
      print "\n"
    end

    # Break the inner loop if the spiral is complete
    break if n > rows * cols

    n += 1
    sleep 0.1
  }
}