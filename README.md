# alnum

Alnum is a generator of alphanumeric code from integers and vice-versa.

## The Long Story Short

Quick examples to hit the road:

### Instantiate your cypher

```ruby
cypher = Alnum::Cypher.new
```

### Get your alphanumeric code

```ruby
cypher.write(32456) => "8ru"
```

### Instantiate your decipher

```ruby
decipher = Alnum::Decipher.new
```

### Get your integer back

```ruby
 decipher.read("8ru") => 32456
```

## Purpose

This gem was created to serve as a parser that can generates alphanumeric tokens as a resultant conversion of integer numbers. It can work backwards too, converting alphanumeric codes back to the previous integer representation. You can only decipher a code that was created by this same module.

This can be used for any kind of tokens, but mainly for shortening URIs or URLs.

## URL Shorteners

When you're using URL shorteners, you are switching your link by an alphanumeric token. The short or tiny URLs are abstrations of the real ones. The original link is stored in some database and you can use the tiny generated code to share among all those social media out there.

Systems can store large URLs in databases and using the ID key generated (integer) can create a short URL. So you can append this little part to your domain like this:

http://www.yourdomain.com/token

The module here doesn’t create the hole functionality, just give you methods for the parsing. This way you’re not bounded to the developer’s perception on how your framework should behave across classes, controllers, views, etc.

## Background

According to the HTTP protocol, an URI can be depicted as follows:

scheme://authority/path?query#fragment

As an example we can figure out how it appears in the real world:

http://github.com/search?utf8=✓&q=gemname

In the example above there’s no fragment, but you got the mood.

As a intended shortener functionality, this code focus on the URI part called “path”. So we need to investigate the characters allowed to be part of this particular slice of the resource.

You can restrict the outcome to just alphanumeric characters or unleash the full amount of symbols in order to have even more small tokens. However, taking punctuation characters or such can result in more gibberished words.

At a glance, when we take a look at the rules applied to the path part we can consider that:

* If the path does not begins with a slash (“/”) character, it should be empty (that’s not our case).
* The path is terminated by the first question mark ("?") – the <query> portion, the number sign ("#") character – the <fragment> – or by the end of the URI.

Path segments like “.” and “..” and so forth, has special meanings, so you should take care of it in your application or restrict your characters just to alphanumeric when parsing.

## Conclusion

The code here just give you symbols from the alphabet and digits. You can expand the classes in differents flavors as you wish.
