package rational

import (
	"fmt"
)

type Rational struct {
	Numer int
	Denom int
}

func Add(this Rational, that Rational) Rational {
	result := Rational{
		(this.Numer * that.Denom) + (this.Denom * that.Numer),
		this.Denom * that.Denom}

	result.reduce()

	return result
}

func Mult(this Rational, that Rational) Rational {
	result := Rational{
		this.Numer * that.Numer,
		this.Denom * that.Denom}

	result.reduce()

	return result
}

func LessThan(this Rational, that Rational) bool {
	return this.Numer*that.Denom < that.Numer*this.Denom
}

func Max(a Rational, b Rational) Rational {
	if LessThan(a, b) {
		return b
	} else {
		return a
	}
}

func (some Rational) Print() {
	fmt.Printf("Rational: %d/%d\n", some.Numer, some.Denom)
}

// private methods
func (this *Rational) reduce() {
	if this.Numer == this.Denom {
		this.Numer = 1
		this.Denom = 1
	} else if this.Numer%this.Denom == 0 {
		this.Numer = 0
		this.Denom = 0
	}
}
