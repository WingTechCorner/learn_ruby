# # Topics
#
# * modules
# * strings
#
# # Pig Latin
#
# Pig Latin is a made-up children's language that's intended to be confusing. It obeys a few simple rules (below) but when it's spoken quickly it's really difficult for non-children (and non-native speakers) to understand.
#
# Rule 1: If a word begins with a vowel sound, add an "ay" sound to the end of the word.
#
# Rule 2: If a word begins with a consonant sound, move it to the end of the word, and then add an "ay" sound to the end of the word.
#
# (There are a few more rules for edge cases, and there are regional variants too, but that should be enough to understand the tests.)
#
# See <http://en.wikipedia.org/wiki/Pig_latin> for more details.
#
#

def translate(t)
  vowels=["a","i","e","o","u"]
  extra=["qu"]
  tail="ay"
  buf=[]
  m=""
  for w in t.split(" ") do
    if vowels.include?(w[0])
      # First letter is a vowel
      w = w + tail
      buf.append(w)
    elsif extra.include?(w[0..1])
      w = w[2..-1] + w[0..1] + tail
      buf.append(w)
    elsif extra.include?(w[1..2]) & !vowels.include?(w[0])
      w = w[3..-1] + w[0..2] + tail
      buf.append(w)
    else
      aa=""
      bb=""
      pos=0
      for z in w.split('') do
        if vowels.include?(z)
          aa=w[0..pos-1]
          bb=w[pos..-1]
          break
        end
        pos=pos+1
      end
      w=bb + aa + tail
      buf.append(w)
    end
  end
  return buf.join(" ")
end
#
#
#    s = translate("apple")
#    s.should == "appleay"
#  end
#
#  it "translates a word beginning with a consonant" do
#    s = translate("banana")
#    s.should == "ananabay"
#  end
#
#  it "translates a word beginning with two consonants" do
#    s = translate("cherry")
#    s.should == "errychay"
#  end
#
#  it "translates two words" do
#    s = translate("eat pie")
#    s.should == "eatay iepay"
#  end
#
#  it "translates a word beginning with three consonants" do
#    translate("three").should == "eethray"
#  end
#
#  it "counts 'sch' as a single phoneme" do
#    s = translate("school")
#    s.should == "oolschay"
#  end
#
#  it "counts 'qu' as a single phoneme" do
#    s = translate("quiet")
#    s.should == "ietquay"
#  end
#
#  it "counts 'qu' as a consonant even when it's preceded by a consonant" do
#    s = translate("square")
#    s.should == "aresquay"
#  end
#
#  it "translates many words" do
#    s = translate("the quick brown fox")
#    s.should == "ethay ickquay ownbray oxfay"
#  end
#
#  # Test-driving bonus:
#  # * write a test asserting that capitalized words are still capitalized (but with a different initial capital letter, of course)
#  # * retain the punctuation from the original phrase
#
#end
