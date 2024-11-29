module knight
   use functional
   implicit none
   private

   public :: say_hello, fibonacci
contains
   pure recursive integer function fibonacci(n) result(fib)
      integer,intent(in) :: n
      if (n == 0) then
         fib = 0
      else if (n == 1) then
         fib = 1
      else
         fib = fibonacci(n - 1) + fibonacci(n - 2)
      end if
   end function fibonacci

   subroutine say_hello
      print *, map(fibonacci, [17, 5, 13, 22])
   end subroutine say_hello
end module knight
