# Milestone 1

## Documentation
### Reports
If you want more information about each module you could read (or just try to read, unfortunately at this point are only in greek language) the following report files:
* [Milestone 1](./doc/Milestone-1-Report.pdf)

### Diagrams

Block and timing diagrams are able to be changed:
* For [xml](./doc/schematics/) files (block diagrams) we have used [draw.io](https://www.draw.io/)
* For [json](./doc/timing-diagrams/) files (timing diagrams) we have used [Wavedrom editor](https://wavedrom.com)
 

## Usage 

### Enviroment
This project was developed using [Xilinx Vivado 2017.4](https://www.xilinx.com/support/download/index.html/content/xilinx/en/downloadNav/vivado-design-tools/2017-4.html)

### Import and Run

#### In order to import project:

##### Option 1
1. Open [Vivado 2017.4](https://www.xilinx.com/support/download/index.html/content/xilinx/en/downloadNav/vivado-design-tools/2017-4.html) and using it open reference project

2. Open Block Design

4. From IP Catalog -> Open my_ip in IP Packager editor 

5. Replace myip_v1_1.vhd, myip_v1_1_S00_AXIS.vhd and myip_v1_1_M00_AXIS.vhd with these [files](./src/) (do not forget excepting myip_v1_1_FIFO.vhd if you use copy-paste)

6. From Sources tab select add source -> Add or create design sources -> Add files -> Select this [file](./src/myip_v1_1_FIFO.vhd)

7. Open Package Ip -> Identification -> Change version

8. From Package Ip -> File Groups -> Merge changes from File Groups Wizard

9. From Package Ip -> Review and Package -> Package Ip

10. Completed


##### Option 2
1. Open [Vivado 2017.4](https://www.xilinx.com/support/download/index.html/content/xilinx/en/downloadNav/vivado-design-tools/2017-4.html) and using it open [project](./project_2_17.4)


#### If you want to run simulations:

1. Just select add source from sources tab when you are on IP Packager -> Add or create simulation sources -> Add files -> Select one or more of these test [files](./test/)

2. Run simulation

3. File -> Open Waveform Configuration -> Select the associated waveform [file](./sim) 

(Simulation screenshots are included [here](./doc/sim))
