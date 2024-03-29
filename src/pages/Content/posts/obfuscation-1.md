Obfuscation often seems like a go to security tool for many companies.
With this in mind, I recently did some research to see if obfuscation should even be morally accepted.
The results were surprising, even to me.

## Act Utilitarianism

Act utilitarianism is a good framework for judging something as morally good or bad.
So, how does it work?
Well, if you take the Benefits of something and compare it to the disadvantages, you are already taking the Act Utilitarianism approach.
You may wonder why am I bringing this up. Obfuscation is a technique that we could pretty easily divide into pros and cons.
So, lets do that with!

## Benefits

Obfuscations benefits are can be easily summed up into the following list:

- More secure code
- Slower reverse engineering time
- Protected code from the public's eye

## Disadvantages

Obfuscation's disadvantages are more complex, and require longer explanations.

### False Sense of Security

Obfuscation's ability to secure a program, is not really there.
Obfuscation's security, though powerful is often thought of as significantly better than it actually is.
If you use obfuscation as a sole way to secure anything, you are just deterring the inevitable decompilation of it.
There are many alternatives to obfuscation but the most obvious one to fix this would be encryption.

### Dip in productivity

Although obfuscation gives reverse engineers a hard time, it can also, at times, give the developers a hard time as well.
There are 2 major approaches to implementing obfuscation: manually obfuscating, and writing a tool to automatically do it.
If you manually obfuscate, the time it takes to read your own code will be increased substantially.
And If you automatically obfuscate, it will take a while to write the obfuscator, forcing you to debug the obfuscator when you could be working on your actual codebase.

### Performance Dip

Along side the productivity dip, the overall performance of your programs is also substantially effected.
If you obfuscate your code, CPU cache misses often times will be magnified.
Along these lines, obfuscation can also use alternative control flows which end up being slower in the long run.

### Supports Closed Source

Finally, you may know I'm a big supporter of [Open Source Software](http://github.com/bob16795).
A major issue with obfuscation is its obvious promotion of closed source software. 
Though you may argue that the competition gained by proprietary software is beneficial, I found no substantial research to support this.

## So What

You may wonder what these issues even have to do with any programmer who doesn't directly write obfuscators.
Well, if obfuscation isn't even a moral practice, why not frown upon its use and advocate more research on other security measures.
