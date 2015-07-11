class Hamming
  def self.compute(first_strand, second_strand)
    raise ArgumentError unless first_strand.length == second_strand.length
    first_strand
      .chars
      .zip(second_strand.chars)
      .map(&:uniq)
      .reject(&:one?)
      .length
  end
end