require 'benchmark'
require 'ffi'
require './stupidffi'
require './stupid'

require './stupidext/stupidext'
include StupidExt

# for the native ruby one, construct once
s = Stupid.new

n = 1000000
Benchmark.bm(10) do |x|
  x.report("ffi: ")  { n.times do; StupidFfi.do_something_stupid; end }
  x.report("ext: ")  { n.times do; StupidExt.do_something_stupid; end }
  x.report("ruby_v1: ")  { n.times do; Stupid.new.do_something_stupid; end }
  x.report("ruby_v2: ")  { n.times do; s.do_something_stupid; end }
  x.report("c: ")  { StupidFfi.loop_something_stupid n }
end
