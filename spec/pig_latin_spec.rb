require 'spec_helper.rb'

describe 'Pig Latin' do

  describe '.translate' do
    it "checks to make sure that a word has been entered" do
      result = PigLatin.translate("slip")
      expect(result.class).to eq(String)
    end
 
    it "checks that the inputed word starts with 'y'" do
      result = PigLatin.translate("you")
      expect(result).to eq("ouyay")
    end
 
    it "checks to see that the inputed word doesn't start with a vowel and relocates consonant cluster while adding 'ay' to the end" do
      result = PigLatin.translate("slip")
      expect(result).to eq("lipsay")
    end
  
    it "checks to see that the inputed word starts with a vowel and adds 'way' to the end" do
      result = PigLatin.translate("egg")
      expect(result).to eq("eggway")
    end
  end
end