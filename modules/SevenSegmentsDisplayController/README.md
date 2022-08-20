# Seven-Segments Display Controller (SSDC)

This module controls a single seven-segment display to show hexadecimal numbers.
It is initialized with "-". This value is showed again when reseted.

## DE1-SoC Pinout

### Slide Switches

| Signal Name | FPGA Pin No. | Description     | I/O Standard | Assignment   |
| ----------- | ------------ | --------------- | ------------ | ------------ |
| SW[0]       | PIN_AB12     | Slide Switch[0] | 3.3V         | dataInput[0] |
| SW[1]       | PIN_AC12     | Slide Switch[1] | 3.3V         | dataInput[1] |
| SW[2]       | PIN_AF9      | Slide Switch[2] | 3.3V         | dataInput[2] |
| SW[3]       | PIN_AF10     | Slide Switch[3] | 3.3V         | dataInput[3] |
| SW[4]       | PIN_AD11     | Slide Switch[4] | 3.3V         |              |
| SW[5]       | PIN_AD12     | Slide Switch[5] | 3.3V         |              |
| SW[6]       | PIN_AE11     | Slide Switch[6] | 3.3V         |              |
| SW[7]       | PIN_AC9      | Slide Switch[7] | 3.3V         |              |
| SW[8]       | PIN_AD10     | Slide Switch[8] | 3.3V         |              |
| SW[9]       | PIN_AE12     | Slide Switch[9] | 3.3V         |              |

### Keys

| Signal Name  | FPGA Pin No. | Description    | I/O Standard | Assignment |
| ------------ | ------------ | -------------- | ------------ | ---------- |
| KEY[0]       | PIN_AA14     | Push-button[0] | 3.3V         | reset      |
| KEY[1]       | PIN_AA15     | Push-button[1] | 3.3V         |            |
| KEY[2]       | PIN_W15      | Push-button[2] | 3.3V         |            |
| KEY[3]       | PIN_Y16      | Push-button[3] | 3.3V         |            |


### Display outputs

| Signal Name  | FPGA Pin No. | Description              | I/O Standard | Assignment      |
| ------------ | ------------ | ------------------------ | ------------ | --------------- |
| HEX0[0]      | PIN_AE26     | Seven Segment Digit 0[0] | 3.3V         | controlOutput[0] |
| HEX0[1]      | PIN_AE27     | Seven Segment Digit 0[1] | 3.3V         | controlOutput[1] |
| HEX0[2]      | PIN_AE28     | Seven Segment Digit 0[2] | 3.3V         | controlOutput[2] |
| HEX0[3]      | PIN_AG27     | Seven Segment Digit 0[3] | 3.3V         | controlOutput[3] |
| HEX0[4]      | PIN_AF28     | Seven Segment Digit 0[4] | 3.3V         | controlOutput[4] |
| HEX0[5]      | PIN_AG28     | Seven Segment Digit 0[5] | 3.3V         | controlOutput[5] |
| HEX0[6]      | PIN_AH28     | Seven Segment Digit 0[6] | 3.3V         | controlOutput[6] |
| HEX1[0]      | PIN_AJ29     | Seven Segment Digit 1[0] | 3.3V         |                  |
| HEX1[1]      | PIN_AH29     | Seven Segment Digit 1[1] | 3.3V         |                  |
| HEX1[2]      | PIN_AH30     | Seven Segment Digit 1[2] | 3.3V         |                  |
| HEX1[3]      | PIN_AG30     | Seven Segment Digit 1[3] | 3.3V         |                  |
| HEX1[4]      | PIN_AF29     | Seven Segment Digit 1[4] | 3.3V         |                  |
| HEX1[5]      | PIN_AF30     | Seven Segment Digit 1[5] | 3.3V         |                  |
| HEX1[6]      | PIN_AD27     | Seven Segment Digit 1[6] | 3.3V         |                  |
| HEX2[0]      | PIN_AB23     | Seven Segment Digit 2[0] | 3.3V         |                  |
| HEX2[1]      | PIN_AE29     | Seven Segment Digit 2[1] | 3.3V         |                  |
| HEX2[2]      | PIN_AD29     | Seven Segment Digit 2[2] | 3.3V         |                  |
| HEX2[3]      | PIN_AC28     | Seven Segment Digit 2[3] | 3.3V         |                  |
| HEX2[4]      | PIN_AD30     | Seven Segment Digit 2[4] | 3.3V         |                  |
| HEX2[5]      | PIN_AC29     | Seven Segment Digit 2[5] | 3.3V         |                  |
| HEX2[6]      | PIN_AC30     | Seven Segment Digit 2[6] | 3.3V         |                  |
| HEX3[0]      | PIN_AD26     | Seven Segment Digit 3[0] | 3.3V         |                  |
| HEX3[1]      | PIN_AC27     | Seven Segment Digit 3[1] | 3.3V         |                  |
| HEX3[2]      | PIN_AD25     | Seven Segment Digit 3[2] | 3.3V         |                  |
| HEX3[3]      | PIN_AC25     | Seven Segment Digit 3[3] | 3.3V         |                  |
| HEX3[4]      | PIN_AB28     | Seven Segment Digit 3[4] | 3.3V         |                  |
| HEX3[5]      | PIN_AB25     | Seven Segment Digit 3[5] | 3.3V         |                  |
| HEX3[6]      | PIN_AB22     | Seven Segment Digit 3[6] | 3.3V         |                  |
| HEX4[0]      | PIN_AA24     | Seven Segment Digit 4[0] | 3.3V         |                  |
| HEX4[1]      | PIN_Y23      | Seven Segment Digit 4[1] | 3.3V         |                  |
| HEX4[2]      | PIN_Y24      | Seven Segment Digit 4[2] | 3.3V         |                  |
| HEX4[3]      | PIN_W22      | Seven Segment Digit 4[3] | 3.3V         |                  |
| HEX4[4]      | PIN_W24      | Seven Segment Digit 4[4] | 3.3V         |                  |
| HEX4[5]      | PIN_V23      | Seven Segment Digit 4[5] | 3.3V         |                  |
| HEX4[6]      | PIN_W25      | Seven Segment Digit 4[6] | 3.3V         |                  |
| HEX5[0]      | PIN_V25      | Seven Segment Digit 5[0] | 3.3V         |                  |
| HEX5[1]      | PIN_AA28     | Seven Segment Digit 5[1] | 3.3V         |                  |
| HEX5[2]      | PIN_Y27      | Seven Segment Digit 5[2] | 3.3V         |                  |
| HEX5[3]      | PIN_AB27     | Seven Segment Digit 5[3] | 3.3V         |                  |
| HEX5[4]      | PIN_AB26     | Seven Segment Digit 5[4] | 3.3V         |                  |
| HEX5[5]      | PIN_AA26     | Seven Segment Digit 5[5] | 3.3V         |                  |
| HEX5[6]      | PIN_AA25     | Seven Segment Digit 5[6] | 3.3V         |                  |