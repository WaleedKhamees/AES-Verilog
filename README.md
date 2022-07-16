# AES in Verilog 
## Summary 
AES or Advanced Encryption Standard is used for Encryption and Decryption, the encryption and decryption each had 5 algorithms: subBytes, shiftRow, mixColumns, addRoundKey and keyExpansion, these algorithms were also inverted during the decryption process. the project was a requirement of the Advanced Logic Design course. Verilog was used to develop this project and it was Simulated using ModelSim virtually and physically using DE1-SOC

## Introduction 
AES encrypt a 128 bit data with a key, the key could be 128, 192, 256 bit the difference in security application between the key sizes is minimal, using 128bit key requires 10 rounds 192bit requires 12 rounds and 256bit 14 rounds.

a round is the steps taken in each stage.  
in the beginning the data is organized in matrix 4x4 each cell contains a byte of data beginning with the most significant byte at the top right and descending downward until all cells are filled.  

![4x4 matrix](/imgs/4x4-matrix.png)

## SubByte 
SubByte or Substitute byte is an algorithm which replaces each byte in the matrix with another byte from a pre-computed 16x16 matrix according to the value in the data cell.   

![SubByte](/imgs/subByte.png)

## ShiftRows 
ShiftRow the process of shifting each row according to its number for example the first row never gets shifted the second row gets shift by 1 byte to the left, the third get shift by 2 bytes to the left and so on. 

![ShiftRows](/imgs/shiftRows.png)

## MixColumns 
MixColumns is the third step carried out in each round, MixColumns multiply the resulting matrix from ShiftRow by a matrix, the multiplication is a modular multiplication which means that each type you multiply you may have to use a modulus 1b, other than that it's a normal matrix multiplication.

![MixColumns](/imgs/Mixcolumns.png)