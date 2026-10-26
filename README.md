# Multiplexers and Demultiplexers

In this lab you have learned about multiplexers and demultiplexers.

## Rubric

| Item | Description | Value |
| ---- | ----------- | ----- |
| Summary Answers | Your writings about what you learned in this lab. | 25% |
| Question 1 | Your answers to the question | 25% |
| Question 2 | Your answers to the question | 25% |
| Question 3 | Your answers to the question | 25% |

## Names
Section 2 Group 6 - Gabe and Everett

## Summary
In this lab, we used multiplexers and demultiplexers to act as an ISP to share
data from different users to different destinations. We created selector bits
from the on-board buttons for both the source and destination, which were 
plugged into the multiplexer and demultiplexer respectively. Then the correct
subset of data (from the full set of switches) is routed to the correct output
(a subset of the LEDs from the full set of LEDs available on the board).

## Lab Questions

### In plain English describe the function and use of a multiplexer.
The function of a multiplexer is to select one stream of data from
a collection of multiple streams of data. It is used to choose a
specific input as your output.

### In plain English describe the function and use of a demultiplexer.
The function of a demultiplexer is to redirect where the input data 
goes. It's use is to pick the destination of data, rather than pick
the source of the data like a multiplexer.

### What other uses might these circuits have? (Think Shannon’s)
You can use a multiplexer-type circuit in cases like Shannon's expansion theorem
which states that there is some function $F$ for when $A=0$ and when $A=1$, 
there is a function $F=\bar{A}F(A=0)+AF(A=1)$. This is the idea that you can
recreate any logic gate or logical function by breaking it down into "IF"
statements, or multiplexers.
