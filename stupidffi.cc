#include "stupidffi.h"

int do_something_stupid()
{
    return 42;
}

int loop_something_stupid(int n)
{
  while (--n)
    do_something_stupid();

  return do_something_stupid();
}
