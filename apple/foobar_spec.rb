# Author: Chase Tran
# Date: July 25, 2016
#
# To Run Test: "rspec foobar_spec.rb"

require "./foobar"

describe "Foobar" do
  subject { Foobar }
  let(:error_msg) { "Not an Integer" }

  context "when inputs are bad" do 
    it "raise RuntimeError for input 'str'" do 
      expect { subject.print_result('str') }.
        to raise_error(error_msg)
    end

    it "raise RuntimeError for input 6.2" do 
      expect { subject.print_result(6.2) }.
        to raise_error(error_msg)
    end
  end

  context "when inputs are good" do 
    describe "Divisible by 3" do
      it "outputs foo for input 3" do 
        expect { subject.print_result(3) }.
          to output("3: foo\n").to_stdout
      end

      it "outputs foo for input 9" do 
        expect { subject.print_result(9) }.
          to output("9: foo\n").to_stdout
      end
    end

    describe "Divisible by 5" do
      it "outputs bar for input 5" do 
        expect { subject.print_result(5) }.
          to output("5: bar\n").to_stdout
      end

      it "outputs bar for input 25" do 
        expect { subject.print_result(25) }.
          to output("25: bar\n").to_stdout
      end
    end

    describe "Divisible by 3 and 5" do
      it "outputs foobar for input 15" do 
        expect { subject.print_result(15) }.
          to output("15: foobar\n").to_stdout
      end

      it "outputs foobar for input 30" do 
        expect { subject.print_result(30) }.
          to output("30: foobar\n").to_stdout
      end
    end
  end
end
