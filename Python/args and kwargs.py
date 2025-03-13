"""
*args en **kwargs are like a blank check for functions to receive any type of argument and process them. 

*args (Non Keyword Arguments) 
call_args(3,5)

**kwargs (Keyword Arguments)
call_kwargs(Firstname="Sita", Lastname="Kastelijn")
"""


def blank_check(*args, **kwargs):
    """This functions does not care at all about the arguments it receives, it accepts all!"""
    for arg in args:
        age = f"en ik ben {arg} jaar oud."
    for keyword, arg in kwargs.items():
        name = f"Ik ben een {keyword} en heet {arg}"
    print(name, age)

blank_check(3, teefje="Sita")
 