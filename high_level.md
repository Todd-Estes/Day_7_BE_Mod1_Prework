This was a tough one, but it was pretty cool to learn once I found something on Google! The more I look at this code, the more I like it! I will lay it out upfront and then start the breakdown.
```
puts "Give a number: "
text = gets.chomp.downcase

puts "Give a number: "
n = gets.chomp.to_i

def caesar_cipher(text, n)
    alphabet = ('a'..'z').to_a
    crypto = Hash[alphabet.zip(alphabet.rotate(n))]
    text.each_char.inject("") { |newtext, char| newtext + crypto[char] }
end

puts caesar_cipher(text, n)
```

The keys to this code are:
1. Creating the caesar_ciper method, using two methods
2. Combining two alphabets, using one method argument, and converting them into a hash
3. Using the inject method to run the other caesar_ciper argument through a block with the newly created hash

First, we ask for some letters and how many positions within the alphabet we want to shift them:

```p "Give a word:"
text = gets.chomp.downcase


puts "Give a number:"
n = gets.chomp.to_i
```
Then we create the method we want to use, with which we will input the requested variables as our arguments:
```
def caesar_cipher(text, n)
```
And after we want to create the alphabet in the form of an array:
```
alphabet = ('a'..'z').to_a
```
Then we want to create the crypto alphabet! This is really cool but simple once I figured it out:
```
crypto = Hash[alphabet.zip(alphabet.rotate(n))]
```
Starting from the right, the `rotate` method shifts the `alphabet` array starting at the position in the alphabet given by the ``(n)`` variable. Going to the `alphabet` array on the left, the `zip` method uses the **new** `alphabet` array on the right as a method to join them both. For instance, if `n = 2` the new linked array would look like this:
```
alphabet.zip(crypto_alphabet) = ['a', 'c'], ['b', 'd']
['c', 'e']
```
And finally, the Hash method converts the pairings into hash keys and values:
```
['a' => 'c'], ['b'=> 'd'], ['c'=>'e']
```
Finally...the block! We take the `text` variable and call the `each_char` method which will run each character from it individually through the block. Then we call the `inject` method, which will send the characters through a block in which they will be added together.
```
text.each_char.inject("") { |newtext, char| newtext + key[char] }
```
The blank argument on `inject` ensures a zero value will run through the sum block before any characters.`newtext` will represent the compiling sum, while  `key[char]` will take each new character from `text` and then use that as the key that will correspond with it's value in the `crypto` hash. The new values are added up in the sum block, and then you will have your new code!
