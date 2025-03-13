# dictionary comprehension example, make a new dict from:

# String    
new_dict ={new_key:new_value for item in "string"}

# List  
new_dict ={new_key:new_value for item in list}

# Or with a added condition
new_dict ={new_key:new_value for item in list if a > b}

# Dict
new_dict ={new_key:new_value for (key,value) in dict.items()}

# Or with a added condition
new_dict ={new_key:new_value for (key,value) in dict.items() if value > x}