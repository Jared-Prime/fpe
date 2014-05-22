class Rational
  attr_reader :numer, :denom

  def initialize(numer, denom=1)
    @numer, @denom = numer, denom
  end

  def to_string
    "<#Rational #{self.object_id}: #{numer} / #{denom} >"
  end

  def add(that)
    Rational.new(
      self.numer * that.denom + that.numer * self.denom,
      self.denom * that.denom )
  end
  alias :+, :add

  def multiply(that)
    Rational.new(
      self.numer * that.numer,
      this.denom * that.denom )
  end
  alias :*, :multiply

  def lessThan?(that)
    self.numer * that.denom < that.numer * self.denom
  end
  alias :<, :lessThan?

  def max(that)
    self.lessThan?(that) ? that : self
  end

  private

  def gcd(thisInt, thatInt)
    thatInt == 0 ? a : gcd(thatInt, thisInt % thatInt) 
  end
end
