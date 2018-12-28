# constants 
PASS_LEN = 16.freeze
ASCII_START = 33.freeze
ASCII_END = 126.freeze
FILE = "/Users/nishant/Desktop/pass_gen/totally_not_passwords.txt"

# efficiently generates a random password of only printable chars
# by using ascii with a psuedo-random number generator
def generate(password, rng)
    PASS_LEN.times do 
        password << rng.rand(ASCII_START..ASCII_END).chr
    end

    password.split("").shuffle!.join
end

# adds a randomly generated password to a text file with an inline 
# source when called
def add(source)
    if !File.exist?(FILE)
        File.new(FILE, "w:UTF-8")
    end
    
    f = File.open(FILE, 'a') 
    plaintext = "#{source.upcase.ljust(20)}  #{generate("", Random.new)}\n"

    f << plaintext
    f.close()
end

# adds a randomly generated password to a text file with user-provided 
# input for the source
def add_with_input()
    if !File.exist?(FILE)
        File.new(FILE, "w:UTF-8")
    end

    print "Enter Source for Password: "
    source = gets.chomp

    f = File.open(FILE, 'a') 
    plaintext = "#{source.upcase.ljust(20)}  #{generate("", Random.new)}\n"

    f << plaintext
    f.close()
end

# adds multiple randomly generated passwords to a text file with an inline 
# array of sources
def add_multiple(sources)
    sources.each do |source|
        add(source)
    end
end

# adds multiple randomly generated passwords to a text file with user-provided 
# input for the sources
def add_multiple_with_input()
    if !File.exist?(FILE)
        File.new(FILE, "w:UTF-8")
    end

    sources = []

    print "Enter Sources for Passwords (@end to stop): "
    input = gets.chomp

    while input != "@end"
        print "Enter Sources for Passwords (@end to stop): "
        sources << gets.chomp
        input = sources.last
    end
    
    sources.pop

    f = File.open(FILE, 'a') 
    
    sources.each do |source|
        plaintext = "#{source.upcase.ljust(20)}  #{generate("", Random.new)}\n"
        f << plaintext     
    end

    f.close()
end