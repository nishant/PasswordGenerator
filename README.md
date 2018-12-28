# Ruby Password Generator

This is a simple ruby script that generates strong random passwords of a provided length.
The passwords are stored in a text file of your choosing with along with the source (whatever the
password logs you into). Methods are provided to generate both single and multiple passwords. 
The methods can be called with a passed in arguement or user input for the source(s) 

## Getting Started

These instructions will get you a copy of the project up and running on your local machine for development and testing purposes. 

### Prerequisites

```
Ruby v2.6.0
```

### Installing

Have [Ruby v2.6.0](https://www.ruby-lang.org/en/documentation/installation/) installed on your machine 

Clone this repository to a directory of your choosing via either command:

```
git clone https://github.com/nishant/pass_gen.git

git clone git@github.com:nishant/pass_gen.git
```

## Running the Script

Navigate to the cloned directory.

Run the script with `ruby pass_gen.rb`


## Available Methods

View the [source code](https://github.com/nishant/PasswordGenerator/blob/master/pass_gen.rb) for comments with more detailed explanation.

* Create a random password with `generate(password, rng)`

* Add a password and source to a text file with `add(source)`

* Add multiple passwords and sources to a text file with `add_multiple(sources)`

* Add a password with a user provided source to a text file with `add_with_input()`

* Add multiple passwords with user provided sources to a text file with `add_multiple_with_input()`

## Example File

An example of the output file in which the passwords are stored looks like this:

```
NETFLIX               a&1}PuteG#R@$ris
GMAIL                 {Ozuw]&tN8Rd%fRK
SPOTIFY               ;\m;>A<HX3"F>&ast;c8
HULU                  o,G]@TbZ9YtKLCk{
EPIC GAMES            vF^dbUUcFLL]/K)r
REDDIT                go@kXZg'"KO'/E@+
.....                 .....
```

## Built With

* [Ruby](https://www.ruby-lang.org/en/) - A Programmer's Best Friend

## Authors

* **Nishant Arora** - [nishant](https://github.com/nishant)
