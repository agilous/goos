class Entry
  def initialize(*entry)
    @entry = entry
  end

  def include?(string)
    @entry.include? string
  end

  def [](index)
    @entry[index]
  end
end
