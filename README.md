# **The Odin Project - Ruby Programming**

### **Project: [Bubble Sort](bubble_sort.rb)**

### **Introduction:**

One of the simpler (but more processor-intensive) ways of sorting a group of items in an array is bubble sort, where each element is compared to the one next to it and they are swapped if the one on the left is larger than the one on the right. This continues until the array is eventually sorted.

![](bubble-sort-example.gif)

Build a method `#bubble_sort` that takes an array and returns a sorted array. It must use the bubble sort methodology (using `#sort` would be pretty pointless, wouldn’t it?).

```irb
> bubble_sort([4,3,78,2,0,2])
=> [0,2,2,3,4,78]
```

### **Solution:**

    • The function is called with one argument, an array
    with random numbers.
    • Use the function `downto` to go from array size minus two to zero, this function iterates the given block, passing in decreasing values from int down to and including limit. #=> `int.downto(limit)`
    • So, to go from (array.size - 2) to zero and I declare the parameter `i` in the callback, we need it to be like this so as not to exceed the size of the array in the tour, we will explain in more detail later.
    • In the next line, use the function `upto` to go from zero to `i`, this function iterates the given block, passing in integer values from int up to and including limit, #=> `int.upto(limit)`
    • Taking `i` as the limit of the` upto` function, we ensure the last ordered value.
    • And I declare the parameter `j` in the callback, which we will use as the array index for our algorithm.
    • At this point, we have consecutive elements, let's see:
      - We have an array => array = [5,4,3]
      - So array[j] is equal to array[0] = 5
      - And array[j+1] is equal to array[1] = 4
    • Then asking if first value greater than the second value, if true the following will happen:
      - Save to first value in the varible `temp` #=> temp = array[j]
      - Replace the value of the first for the second #=> array[j] = array[j+1]
      - Then change the value of the second for the temp #=> array[j+1] = temp
      - Our array would be like this, in the first iteration inside `upto` function #=> [4,5,3]
    • So our algorithm will advance in pairs of two ordering it until it reaches the position `i`, 
    • When done it would be like this. #=> [4,3,5]
    • I'm still inside the `downto` block so I repeat the process, but this time the last element is ignored because it is already ordered.
    • And that is what is known as the bubble sort.

### **References:**

* [downto (Integer)](https://ruby-doc.org/core-2.5.0/Integer.html#method-i-downto)
* [upto (Integer)](https://ruby-doc.org/core-2.5.0/Integer.html#method-i-upto)