require "spec_helper"
require_relative "../functions.rb"


describe "convertWord" do
  it "takes the word and makes only the first character uppercase" do
  	name = upcaseWord("SoMeWoRD")
    expect(name).to eq("Someword")
  end
end

describe "convertNumber" do
	it "takes a number and changes it to a float with zeros after the decimal" do
		number = convertNum(52.0000)
		expect(number).to eq(52.00)
	end
end

describe "combineString" do
	it "takes six seperate strings and puts them together" do
		one = "hello"
		two = "darkness"
		three = "my"
		four = "old"
		five = "friend"
		six = "bar"
		combine = comString(one, two, three, four, five, six)
		expect(combine).to eq("hello darkness my old friend bar")
	end
end

describe "formatString" do
	it "takes the string, and replaces spaces with commas" do
		str = "hello darkness my old friend bar"
		commaStr = formatString(str)
		expect(commaStr).to eq("hello,darkness,my,old,friend,bar")
	end
end
