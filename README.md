# Only-RISC Instructions Computing System - ORICS
Only-RISC Instructions Computing System (ORICS). Hardware description and codea of the computing system created by me during Computer Engineering graduation.

## Instruction Set Description

### Arithmetic

| Code   | Opcode  | Instruction Name         | Description                      | Format |
| ------ | ------- |------------------------- | -------------------------------- | ------ |
| INS    | 0000001 | Insert                   | $1 <= IM (20bits)                | RI     |
| INC    | 0000010 | Increment                | $1 <= $1 + 1                     | RR     |
| DEC    | 0000011 | Decrement                | $1 <= $1 - 1                     | RR     |
| SUBI   | 0000100 | Subtraction Im           | $1 <= $1 - IM (20bits)           | RI     |
| ADD    | 1100001 | Add                      | $3 <= $1 + $2                    | RRR    |
| SUB    | 1100010 | Subtraction Im           | $3 <= $1 - $2                    | RRR    |
| MUL    | 1100011 | Multiply                 | $3 <= $1 * $2                    | RRR    |
| DIV    | 1100100 | Divide                   | $3 <= $1 / $2                    | RRR    |
| ------ | ------- |------------------------- | -------------------------------- | ------ |

### Flow Control

| Code   | Opcode  | Instruction Name         | Description                     | Format |
| ------ | ------- |------------------------- | ------------------------------- | ------ |
| JPI    | 0010001 | Jump Immediate           | PC <= IM (20bits)               | RI     |
| JPO    | 0010010 | Jump Offset              | PC <= PC + offset               | RO     |
| JPR    | 0010011 | Jump Register            | PC <= $1                        | RR     |
| JPE    | 0010100 | Jump if Equal            | if $1 == $2, PC <= PC + offset  | RRO    |
| JPNE   | 0010101 | Jump if Not Equal        | if $1 != $2, PC <= PC + offset  | RRO    |
| JPA    | 0010110 | Jump if Above            | if $1 > $2, PC <= PC + offset   | RRO    |
| JPNA   | 0010111 | Jump if Not Above        | if $1 =< $2, PC <= PC + offset  | RRO    |
| ------ | ------- |------------------------- | ------------------------------- | ------ |

### Data and Memory

| Code   | Opcode  | Instruction Name         | Description                     | Format |
| ------ | ------- |------------------------- | ------------------------------- | ------ |
| LOAD   | 1010000 | Load from Memory         | $1 <= ram[$2]                   | RM     |
| STORE  | 1010001 | Store to Memory          | ram[$2] <= $1                   | RM     |
| MOVE   | 1010010 | Jump Register            | $1 <= $2                        | RR     |
| WRTIM  | 1010011 | Write Instruction Memory | IR[$2] <= $1                    | RR     |
| STSM   | 1010100 | Store Secondary Memory   | sm[$2] <= $1                    | RR     |
| LDSM   | 1010101 | Load Secondary Memory    | $1 <= sm[$2]                    | RR     |
| ------ | ------- |------------------------- | ------------------------------- | ------ |

### Input/Output

| Code   | Opcode  | Instruction Name         | Description                     | Format |
| ------ | ------- |------------------------- | ------------------------------- | ------ |
| IN     | 1010110 | Load from Memory         | $1 <= dim                       | RM     |
| OUT    | 1010111 | Store to Memory          | dom[$2] <= $1                   | RM     |
| SETC   | 1011000 | Set Int. Counter Trigger | Sets interruption timer trigger | R      |
| RSTC   | 1011001 | Reset Int. Counter       | Resets interruption timer       | RR     |
| ------ | ------- |------------------------- | ------------------------------- | ------ |

### General Control

| Code   | Opcode  | Instruction Name         | Description                     | Format |
| ------ | ------- |------------------------- | ------------------------------- | ------ |
| RSTOUT | 1111100 | Reset Data Output Module | dom reset                       | ZR     |
| PCRST  | 1111101 | Reset Program Counter    | PC <= 0                         | ZR     |
| NOP    | 0000000 | Jump Register            | $1 <= $2                        | ZR     |
| SVPC   | 1111110 | Save Program Counter     | $1 <= PC                        | R      |
| LDPC   | 1111001 | Load Program Counter     | PC <= $1                        | R      |
| ------ | ------- |------------------------- | ------------------------------- | ------ |