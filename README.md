# 16bit-ALU-with-6-functions--Building-a-modern-computer-from-nand-to-tetris-
## The ALU (Arithmetic Logic Unit).
 * Computes one of the following functions:
 * x+y, x-y, y-x, 0, 1, -1, x, y, -x, -y, !x, !y,
 * x+1, y+1, x-1, y-1, x&y, x|y on two 16-bit inputs, 
 * according to 6 input bits denoted zx,nx,zy,ny,f,no.
 * In addition, the ALU computes two 1-bit outputs:
 * if the ALU output == 0, zr is set to 1; otherwise zr is set to 0;
 * if the ALU output < 0, ng is set to 1; otherwise ng is set to 0
![Screenshot 2025-04-14 131256](https://github.com/user-attachments/assets/4a0a1427-dfcf-49d0-81af-89d65489d73c)

## **if (zx == 1) set x = 0**
Zeroes the x input.

Used when you want to ignore x and only work with y or a constant.

## **if (nx == 1) set x = !x**

Bitwise NOT of x after possible zeroing.

Used to invert x, enabling subtraction or logical negation.

## **if (zy == 1) set y = 0**

Zeroes the y input.

Same as zx but for y.

## **if (ny == 1) set y = !y**

Bitwise NOT of y after possible zeroing.

Helps in subtraction and negation logic involving y.

## **if (f == 1) set out = x + y**

Performs 2’s complement addition on the modified x and y.

This is your default arithmetic mode.

## **if (f == 0) set out = x & y**

Performs bitwise AND between x and y.

Used for logical operations (AND gates, masking, etc.).

## **if (no == 1) set out = !out**

Final bitwise NOT of the output.

This can flip all bits of the result, useful for negation or logic design.

✅ Output Flags

## **if (out == 0) set zr = 1**

zr (zero flag) becomes 1 if the output is all zeroes.

Helps in checking for equality or halting in control logic.

## **if (out < 0) set ng = 1**

ng (negative flag) becomes 1 if the output is negative.

Since this is 16-bit 2's complement, check if MSB (out[15]) is 1.

![image](https://github.com/user-attachments/assets/011976d5-04fd-4ec7-bfb5-b8a86c62093d)

![Screenshot 2025-04-14 131438](https://github.com/user-attachments/assets/1206534c-e540-4e19-85e7-6860dfc4d7f0)
![Screenshot 2025-04-14 133507](https://github.com/user-attachments/assets/9dd48fe3-6c3b-4445-8cfc-0d0be06f82bb)
![Screenshot 2025-04-14 131209](https://github.com/user-attachments/assets/62091788-5632-442e-bc3a-a38d0b6b036d)
![Screenshot 2025-04-14 131224](https://github.com/user-attachments/assets/f4661b1f-a96a-4a7e-9598-ae4ab3c3bb03)

![Screenshot 2025-04-14 133156](https://github.com/user-attachments/assets/2617cd7e-37c7-4348-ad55-386714d91a9d)
![Screenshot 2025-04-14 133347](https://github.com/user-attachments/assets/a8bcaf4e-9bee-4a8a-b140-06b8a4bfb49a)
![Screenshot 2025-04-14 133406](https://github.com/user-attachments/assets/f79d3173-161e-47c2-8e96-555932cf91c2)
![Screenshot 2025-04-14 133451](https://github.com/user-attachments/assets/b87e05e9-cca1-4637-aeb3-69ccaf7314d7)
