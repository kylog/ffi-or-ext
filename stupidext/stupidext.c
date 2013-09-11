// Include the Ruby headers and goodies
#include "ruby.h"

// Defining a space for information and references about the module to be stored internally
VALUE StupidExt = Qnil;

// Prototype for the initialization method - Ruby calls this, not you
void Init_stupidext();

// Prototype for our method 'do_something_stupid'
// - methods are prefixed by 'method_' here
VALUE method_do_something_stupid(VALUE self);

// The initialization method for this module
void Init_stupidext() {
	StupidExt = rb_define_module("StupidExt");
	rb_define_method(StupidExt, "do_something_stupid", method_do_something_stupid, 0);	
}

// Our stupid method.. it simply returns a value of '42' for now.
VALUE method_do_something_stupid(VALUE self) {
	int x = 42;
	return INT2NUM(x);
}
