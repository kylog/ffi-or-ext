require 'ffi'

module StupidFfi
  extend FFI::Library
  ffi_lib "./libstupidffi.so"
  attach_function :do_something_stupid, [], :int
  attach_function :loop_something_stupid, [:int], :int
end
