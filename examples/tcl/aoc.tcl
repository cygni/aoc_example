#!tclsh

puts Tcl

proc readfile {myfile} {
  set a [open $myfile]
  set lines [split [string trim [read $a]] "\n"]
  close $a;
  return $lines
}

proc solution_part1 data {
  set total 0
  foreach nxt $data {
    incr total $nxt
  }
  return $total
}

proc solution_part2 data {
    if {![llength $data]} {return 1}
    return [expr [join $data *]]
}

# Alternatively:
# proc solution_part1 {data} {::tcl::mathop::+ {*}$data}
# proc solution_part2 {data} {::tcl::mathop::* {*}$data}

set input [readfile input.txt]

proc get_part {} {
  if {[info exists ::env(part)]} {
    return $::env(part)
  } else {
    return part1
  }
}

if {[get_part] == "part1"} {
  puts [solution_part1 $input]
} else {
  puts [solution_part2 $input]
}
