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
  "./rational"
)

func main() {
  // create a pair of rational numbers, `a` and `b`
  a := rational.Rational{1, 2}
  b := rational.Rational{2, 3}
  // print them
  println("given `a` and `b`")
  a.Print()
  b.Print()


  // add `a` and `b`, yielding new rational `c`
  c := rational.Add(a, b)
  // print `c`
  println("\n`a + b = c`")
  c.Print()
  println("\na and b are unchanged")
  a.Print()
  b.Print()

  // add `a` and `b`, yielding new rational `d`
  d := rational.Mult(a, b)
  // print `d`
  println("\n`a * b = d`")
  d.Print()
  println("\na and b are unchanged")
  a.Print()
  b.Print()


  println("\n`a < b` is `true`")
  println( rational.LessThan( a, b ) )

  println("\n`b` is the `max`")
  rational.Max(a, b).Print()
}
