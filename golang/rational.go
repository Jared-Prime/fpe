// alot of moving code to Go - examples?
// coming in Go 1.3 contiguous stacks
// coming in Go 1.4 compiler/linker to be rewritten in Go

// how do debuggers debugger? ptrace()

/*
  signals forwarded to tracing process
  
  what happens when you set a breakpoint?
  a few debug registers on the cpu; to open more, send the int 0x3 interrupt

  how to debug with debuggers
  pass to compile `-gcflags "-N -l"`
  prevents inlining functions and registering variables

  if not building a standalone, pass `-c` with flags to `go test` to compile for debugging

  */

package main

import(
  "fmt"
)

func main() {
  a := Rational{1, 2}
  b := Rational{2, 3}
  c := Add(a, b)
  d := Mult(a, b)

  println("\na")
  Print( a )

  println("\nb")
  Print( b )

  println("\na < b")
  println( LessThan( a, b ) )

  println("\nb is the max")
  Print( Max(a, b) )

  println("\na + b = c")
  Print( c )
  println("\na * b = d")
  Print( d )

  println("\na and b are unchanged")
  Print( a )
  Print( b )
}

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
    return a
  } else {
    return b
  }
}

func Print(some Rational) {
  fmt.Printf("Rational: %d/%d\n", some.Numer, some.Denom)
}
