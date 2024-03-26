# new.function <- function(a) {
#     for(i in 1:a){
#         print(i^2)
#     }
# }
# new.function(10)

fun <- function(a) {
    for(i in 1:a){
        print(i^2)
    }
}
fun(10)



fun1 <- function(a,b,c) {
  print(a*b+c)
}

fun1(10,20,30)
fun1(a=30,c=10,b=20)

fun2 = function(a,b){
  print(a^2)
  print(a)
  print(b)
}
fun2(10,20)
fun2(10," ")

even=function(a){
  if(a %% 2 == 0){
    print("even")
  }
  else{
    print("odd")
  }
}
even(10)

area=function(r){
  print(3.1415*r*r)
}
area(14)

rectangle=function(l,b){
  cat("area:",2*(l+b),"\n")
  
  cat("perimeter:",l*b)
}
rectangle(2,4)


