# Author: Chase Tran
# Date: July 25, 2016
#
# Description: Write a class called Foobar, that helps
#   implements the following requirement.
#
# For each number between 1 and 100, your code needs to print
# - “<number>: foo” if it’s divisible by 3 - e.g. “9: foo"
# - “<number>: bar” if it’s divisible by 5 - e.g. “10: bar"
# - “<number>: foobar” if it’s divisible by both 3 and 5 - e.g. “15: foobar"
#
# To Run Main: "ruby foobar.rb"

class Foobar
  def start
    number = prompt_user.chomp.to_i
    print_result(number)
  end

  def one_to_100
    (1..100).each do |number|
      print_result(number)
    end
  end

  def print_result(number)
    if !number.is_a?(Integer)
      raise "Not an Integer"
    elsif number % 15 == 0
      puts "#{number}: foobar"
    elsif number % 3 == 0
      puts "#{number}: foo"
    elsif number % 5 == 0
      puts "#{number}: bar"
    end
  end

  private

  def prompt_user
    print "Please enter a number: "
    gets
  end
end

## Main
# Execute only when run by command line,
# and not through 'require'. $0 is the command
# that was executed by the shell (excluding 'ruby')
if __FILE__ == $0
  Foobar.new.one_to_100
end
