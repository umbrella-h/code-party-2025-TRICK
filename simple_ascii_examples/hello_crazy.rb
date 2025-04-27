loop {
  print "\e[#{rand(1..10)};#{rand(1..40)}H"
  print "\e[2j"
  print "\e[#{rand(31..37)}m"
  print "Hello"
  sleep 0.01
}