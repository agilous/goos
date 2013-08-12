class Catalog
  def initialize
    @entries = []
  end

  def add(entry)
    unless @entries.select { |e| e[0] == entry[0] }.empty?
      raise IllegalArgumentException, "Entry for \"#{entry[0]}\" already exists."
    end
    @entries << entry
  end

  def contains(entry)
    @entries.include? entry
  end

  def entry_for(string)
    @entries.each do |entry|
      return entry if entry.include? string
    end
    nil
  end
end

class IllegalArgumentException < StandardError
end
