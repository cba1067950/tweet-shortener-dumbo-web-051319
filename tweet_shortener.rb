# Write your code here.
def dictionary
  tweet_hash = {
    "hello" => "hi",
    "to" => "2",
    "too" => "2",
    "two" => "2",
    "for" => "4",
    "For" => "4",
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
      #word = word.downcase
      if word.casecmp(compare) == 0
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
  if tweet.length > 140
    word_substituter(tweet)
  else
    tweet
  end
end

def shortened_tweet_truncator(tweet)
  if selective_tweet_shortener(tweet).length > 140
    tweet = tweet[0..136]
    tweet << "..."
  else
    tweet
  end
end
