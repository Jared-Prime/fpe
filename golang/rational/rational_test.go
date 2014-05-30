package rational

import "testing"

type context struct {
	desc string
	test func()
}

func (this *context) runTest() {
	this.test()
}

func TestAddition(t *testing.T) {
	this := new(context)

	this.test = func() {
		this.desc = "\nAdding two Rationals should yield a Rational with reduced base"
		var expect Rational
		var result Rational

		a := Rational{1, 2}
		b := Rational{1, 1}

		expect = Rational{1, 1}
		result = Add(a, a)
		if expect != result {
			t.Error(this.desc + "\nexpected: 1/1\ngot: not that")
		}

		expect = Rational{3, 2}
		result = Add(a, b)
		if expect != result {
			t.Error(this.desc + "\nexpected: 3/2\ngot: not that")
		}
	}
	this.runTest()
}

func TestMultiplication(t *testing.T) {
	this := new(context)
	this.test = func() {
		this.desc = "\nMultiplying two Rationals should yield a Rational with reduced base\n"
		var expect Rational
		var result Rational

		a := Rational{1, 2}
		b := Rational{2, 3}

		expect = Rational{1, 3}
		result = Mult(a, b)
		if expect != result {
			t.Error(this.desc + "expected: " + "1/3" + "\ngot: " + "something")
		}

	}
	this.runTest()
}
