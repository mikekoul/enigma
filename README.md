
```
\\===== |=  /| ======    //===  ==\    /==  ==\
 \\     |  / |   ??     // __   || \  / ||  ||_\
 //     | /  |   ??    //   ||  ||  \/  ||  ||  \
//===== |/  =| ====== //======  ==      ==  ==   \
```
            :Welcome to THE MACHINE:

  The goal of this project was to use the CLI to encrypt a message file using two keys. ONe randomly generated and the other using todays date in DDMMYY format. Finally the program using the generated key and date-key will decrypt the message and make it readable again.

  ## Technologies
    - Ruby
    - Rspec

  ## Install + Setup
  	- On the command line run ruby ./lib/encrypt.rb message.txt encrypted.txt
      This opens the message.txt and encrypts it, printing the output in the encrypted.txt
      The message 'Created encrypted.txt with the key 58285 and date 140622' will appear.
      Your encrypted.txt file will contain encrypted message
    - Next run ./lib/decrypt.rb encrypted.txt decrypted.txt 58285 140622 making sure to type
      the key and date from the message above at the end.
      Your decrtypted.txt file will now contain the original message.

  ## Wins
  	- Putting together the key shifts and offset shifts went really smoothly. Also proud that  encrypt.rb was doing its job from the beginning.

  ## Challenges + Improvements
    - Getting the decrypted.txt so show the decrypted text took some time to get running properly. It was generating random keys and printing out exactly the scrabbled message in the encrypted.txt file. I had to do some major refactoring, but I am proud I got it working to have a fully functioning machine.
