# ruby-collection

## A set of classes to store collections of values.

* FLList

Store a list and let you make operations over your Lists. Lists can have values in duplicity.

* FLSet

Store a set and let you make operations over your Sets. Set do not have values in duplicity.

Sets return are not ordered.

If you need it ordered use call the sort method from the array returned by to_a method. 

Example:

    st = FLSet.new
    st.insert(2)
    st.insert(1)
    st.insert(3)
    puts st.to_a.sort  # will print [1, 2, 3]

** Both classes can store any type of value from integers to complex objects. **
