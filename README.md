# AES-encryption-and-decryption
This is an implementation of the AES algorithm using verilog. The algorithm supports key sizes of 128, 192, 256 bits and the goal of the project is to put this code on an FPGA (DE1-SOC) as part of my Logic-Design 2 project. The code also has an SPI module where a master which has the inputs (text and key) sends this data to a slave (encryption or decryption module) over multiple clock cycles and they process this data and send it back to the master.
Here are screenshots of the waveforms for verification:

![Capture](https://github.com/yehiatarek63/AES-encryption-and-decryption/assets/94568731/ac1d46b3-3258-488c-acfe-a09605c4bcef)


More info: AES is a popular encryption algorithm which uses many modules like mixcolumns, subbytes, shiftrows, addroundkey. Here is its documentation: [AES Dicumentation]()
