loop{
  print "\e[48;5;0m"
  print "\e[1;1H]"
  print "\e[2J"
  print "\e[48;5;#{rand(31..37)}m"
  # print "Hello"
  print "\e[1;1HHello"
  # print "\e[0m"
  sleep 0.5
}