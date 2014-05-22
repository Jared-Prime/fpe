package rational

import(
  "fmt"
)

type Rational struct {
  Numer int
  Denom int
}

func Add(this Rational, that Rational) Rational {
  return Rational{
    (this.Numer * that.Denom) + (this.Denom * that.Numer),
    this.Denom * that.Denom }
}

func Mult(this Rational, that Rational) Rational {
  return Rational{
    this.Numer * that.Numer,
    this.Denom * that.Denom }
}

func LessThan(this Rational, that Rational) bool {
  return this.Numer * that.Denom < that.Numer * this.Denom
}

func Max(a Rational, b Rational) Rational {
  if (LessThan( a, b )) {
    return b
  } else {
    return a
  }
}

func (some Rational) Print() {
  fmt.Printf("Rational: %d/%d\n", some.Numer, some.Denom)
}
