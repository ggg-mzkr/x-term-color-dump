class XTermColorDump

  def dump_system_colors
    (0..15).each do |i|
      printf "\x1b[48;05;#{i}m　"
      print_br if ((i + 1) % 8).zero?
    end
  end

  def dump_color_cube
    (1..6).each do |row|
      (1..6).each do |table|
        (1..6).each do |column|
          plot(table, row, column)
        end
        print_sp
      end
      print_br
    end
  end

  def dump_gray_scale
    (232..255).each do |i|
      printf "\x1b[48;05;#{i}m　"
    end
  end

  def print_br
    printf "\x1b[48;05;0m\n"
  end

  def print_sp
    printf "\x1b[48;05;0m "
  end

  def plot(table, row, column)
    index = 36 * (table - 1) + 6 * (row - 1) + column + 15
    printf "\x1b[48;05;#{index}m　"
  end

end
