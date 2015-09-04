class PalindromeToTheDome

  def self.call(filename)
    filename.gsub!(/\W+/, '')
    if filename.length < 2
      return true
    end
    if filename[0] != filename[-1]
      return false
    end
    filename.slice!(0)
    filename.slice!(-1)
    return self.call(filename)
  end

end

