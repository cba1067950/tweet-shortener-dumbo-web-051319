# Write your code here.
def dictionary
  tweet_hash = {
    "hello" => "hi",
    "to" => "2",
    "too" => "2",
    "two" => "2",
    "for" => "4",
    "four" => "4",
    "be" => "b",
    "you" => "u",
    "at" => "@",
    "and" => "&"
  }
end

def word_substituter(tweet)
  hash = dictionary
  keys = dictionary.keys
  tweet_array = tweet.split

  tweet_array.each do |word|
    keys.each do |compare|
      if word.downcase == compare
        tweet = tweet.gsub(/\b#{word}\b/, hash[word])
      end
    end
  end
  tweet
end

def bulk_tweet_shortener(tweets)
  tweets.each do |element|
    puts word_substituter(element)
  end
end

def selective_tweet_shortener(tweet)
  
end

def shortened_tweet_truncator(tweet)

end
