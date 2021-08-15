@echo off
set xv_path=C:\\Xilinx\\Vivado\\2016.3\\bin
call %xv_path%/xelab  -wto 4eff33f1af1f4e31babd7988bc4ccd21 -m64 --debug typical --relax --mt 2 -L xil_defaultlib -L secureip --snapshot tb_behav xil_defaultlib.tb -log elaborate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
