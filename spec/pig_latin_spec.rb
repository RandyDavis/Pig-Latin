require 'spec_helper.rb'

describe 'Pig Latin' do

  describe '.check_input' do
    it "checks to make sure that a word has been entered" do
      result = PigLatin.check_input("slip")
      expect(result.class).to eq(TrueClass)
    end
  end

  describe '.first_letter_y' do
    it "checks that the inputed word starts with 'y'" do
      result = PigLatin.first_letter_y("you")
      expect(result).to eq("ouyay")
    end
  end

  describe '.consonant' do
    it "checks to see that the inputed word doesn't start with a vowel and relocates consonant cluster while adding 'ay' to the end" do
      result = PigLatin.first_letter_consonant("slip")
      expect(result).to eq("lipsay")
    end
  end

  describe '.vowel' do
    it "checks to see that the inputed word starts with a vowel and adds 'way' to the end" do
      result = PigLatin.first_letter_vowel("egg")
      expect(result).to eq("eggway")
    end
  end
end