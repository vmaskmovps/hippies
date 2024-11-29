module knight
   implicit none
   private

   public :: say_hello
contains
   subroutine say_hello
      print *, "Hello, knight!"
   end subroutine say_hello
end module knight
