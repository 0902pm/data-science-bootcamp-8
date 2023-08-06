chatbot_pizza <- function(){
  print("Hello, You can order pizza here!")
  
  #Size
  print("What size of pizza would you like?")
  print("We have small, medium, and large")
  while(TRUE) {
    order_size = readLines("stdin", n = 1) 
    if(order_size == "small" | 
       order_size == "medium" | 
       order_size == "large") {
      print("Well noted!")
      break
    } else {
      print("Please select small or medium or large")
    }
  }
  
  #Flavor
  print("What Flavor of pizza would you like?")
  print("We have seafood cocktail, hawaiian, meat deluxe and chicken trio")
  while(TRUE) {
    order_flavor = readLines("stdin", n = 1) 
    if(order_flavor == "seafood cocktail" | 
       order_flavor == "hawaiian" | 
       order_flavor == "meat deluxe" | 
       order_flavor == "chicken trio") {
      print("Well noted!")
      break
    } else {
      print("Please select seafood cocktail or hawaiian or meat deluxe or chicken trio")
    }
    
  }
  
  #Sauce
  print("What kind of dipping sauce would you like?")
  print("We have ketchup, bbq, and mustard")
  while(TRUE) {
    order_sauce = readLines("stdin", n = 1) 
    if(order_sauce == "ketchup" | 
       order_sauce == "bbq" | 
       order_sauce == "mustard") {
      print("Well noted!")
      break
    } else {
      print("Please select ketchup or bbq or mustard.")
    }
    
  }
  
  #More order?
  print("Would you like to order more? (yes or no)")
  while(TRUE) {
    order_more = readLines("stdin", n = 1) 
    if(order_more == "no") {
      print("Thank you for the order. Please proceed with payment. We hope you enjoy our pizza.")
      break
    } else if(order_more == "yes") {
      chatbot_pizza()
    } else {
      print("Please select yes or no")
    }
    
  }
}

chatbot_pizza()
