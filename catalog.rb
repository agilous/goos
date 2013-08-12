class Catalog
  def initialize
    @entries = []
  end

  def add(entry)
    #raise "IllegalArgumentException" if @entries.select { |e| e.first == entry.first }
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
