/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20200925 (64-bit version)
 * Copyright (c) 2000 - 2020 Intel Corporation
 * 
 * Disassembling to symbolic ASL+ operators
 *
 * Disassembly of SSDT-5-TglU_Rvp.aml, Fri Dec 30 23:29:21 2022
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x00005CC6 (23750)
 *     Revision         0x02
 *     Checksum         0xC6
 *     OEM ID           "SECCSD"
 *     OEM Table ID     "TglU_Rvp"
 *     OEM Revision     0x00001000 (4096)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20191018 (538513432)
 */
DefinitionBlock ("", "SSDT", 2, "SECCSD", "TglU_Rvp", 0x00001000)
{
    External (_SB_.CAGS, MethodObj)    // 1 Arguments
    External (_SB_.CSD0, MethodObj)    // 1 Arguments
    External (_SB_.CSD3, MethodObj)    // 1 Arguments
    External (_SB_.GGOV, MethodObj)    // 1 Arguments
    External (_SB_.GHPO, MethodObj)    // 1 Arguments
    External (_SB_.ISME, MethodObj)    // 1 Arguments
    External (_SB_.OSCO, UnknownObj)
    External (_SB_.PC00, DeviceObj)
    External (_SB_.PC00.GLAN, DeviceObj)
    External (_SB_.PC00.HDAS, DeviceObj)
    External (_SB_.PC00.HDAS.VDID, UnknownObj)
    External (_SB_.PC00.I2C0, DeviceObj)
    External (_SB_.PC00.I2C0.TPD0, DeviceObj)
    External (_SB_.PC00.I2C0.TPD0._STA, MethodObj)    // 0 Arguments
    External (_SB_.PC00.I2C0.TPL1, DeviceObj)
    External (_SB_.PC00.I2C0.TPL1._STA, MethodObj)    // 0 Arguments
    External (_SB_.PC00.I2C1, DeviceObj)
    External (_SB_.PC00.I2C1.TPL1, DeviceObj)
    External (_SB_.PC00.I2C1.TPL1._STA, MethodObj)    // 0 Arguments
    External (_SB_.PC00.I2C2, DeviceObj)
    External (_SB_.PC00.I2C2.TPL1, DeviceObj)
    External (_SB_.PC00.I2C2.TPL1._STA, MethodObj)    // 0 Arguments
    External (_SB_.PC00.PEG0, DeviceObj)
    External (_SB_.PC00.PEG0.PEGP, DeviceObj)
    External (_SB_.PC00.PEG0.SLOT, UnknownObj)
    External (_SB_.PC00.PEG0.VDID, UnknownObj)
    External (_SB_.PC00.PEG1, DeviceObj)
    External (_SB_.PC00.PEG1.SLOT, UnknownObj)
    External (_SB_.PC00.PEG1.VDID, UnknownObj)
    External (_SB_.PC00.PEG2, DeviceObj)
    External (_SB_.PC00.PEG2.SLOT, UnknownObj)
    External (_SB_.PC00.PEG2.VDID, UnknownObj)
    External (_SB_.PC00.PEG3, DeviceObj)
    External (_SB_.PC00.PEG3.SLOT, UnknownObj)
    External (_SB_.PC00.PEG3.VDID, UnknownObj)
    External (_SB_.PC00.RP01, DeviceObj)
    External (_SB_.PC00.RP01.SLOT, UnknownObj)
    External (_SB_.PC00.RP01.VDID, UnknownObj)
    External (_SB_.PC00.RP02, DeviceObj)
    External (_SB_.PC00.RP02.DL23, MethodObj)    // 0 Arguments
    External (_SB_.PC00.RP02.L23D, MethodObj)    // 0 Arguments
    External (_SB_.PC00.RP02.LASX, UnknownObj)
    External (_SB_.PC00.RP02.PWRG, UnknownObj)
    External (_SB_.PC00.RP02.PXSX, DeviceObj)
    External (_SB_.PC00.RP02.SCLK, UnknownObj)
    External (_SB_.PC00.RP02.SLOT, UnknownObj)
    External (_SB_.PC00.RP02.TB2F, UnknownObj)
    External (_SB_.PC00.RP02.TB2R, UnknownObj)
    External (_SB_.PC00.RP02.TFDI, UnknownObj)
    External (_SB_.PC00.RP02.TN2B, UnknownObj)
    External (_SB_.PC00.RP02.TR2P, UnknownObj)
    External (_SB_.PC00.RP02.VDID, UnknownObj)
    External (_SB_.PC00.RP02.WAKG, UnknownObj)
    External (_SB_.PC00.RP02.WAKP, UnknownObj)
    External (_SB_.PC00.RP02.WWEN, UnknownObj)
    External (_SB_.PC00.RP03, DeviceObj)
    External (_SB_.PC00.RP03.SLOT, UnknownObj)
    External (_SB_.PC00.RP03.VDID, UnknownObj)
    External (_SB_.PC00.RP04, DeviceObj)
    External (_SB_.PC00.RP04.SLOT, UnknownObj)
    External (_SB_.PC00.RP04.VDID, UnknownObj)
    External (_SB_.PC00.RP05, DeviceObj)
    External (_SB_.PC00.RP05.DL23, MethodObj)    // 0 Arguments
    External (_SB_.PC00.RP05.HBCS, UnknownObj)
    External (_SB_.PC00.RP05.L23D, MethodObj)    // 0 Arguments
    External (_SB_.PC00.RP05.PRMV, UnknownObj)
    External (_SB_.PC00.RP05.PWRG, UnknownObj)
    External (_SB_.PC00.RP05.PXSX, DeviceObj)
    External (_SB_.PC00.RP05.PXSX.PAHC, MethodObj)    // 0 Arguments
    External (_SB_.PC00.RP05.PXSX.SD3E, UnknownObj)
    External (_SB_.PC00.RP05.PXSX.SLTS, UnknownObj)
    External (_SB_.PC00.RP05.SCLK, UnknownObj)
    External (_SB_.PC00.RP05.SLOT, UnknownObj)
    External (_SB_.PC00.RP05.VDID, UnknownObj)
    External (_SB_.PC00.RP05.WAKG, UnknownObj)
    External (_SB_.PC00.RP05.WAKP, UnknownObj)
    External (_SB_.PC00.RP05.WKOT, UnknownObj)
    External (_SB_.PC00.RP06, DeviceObj)
    External (_SB_.PC00.RP06.SLOT, UnknownObj)
    External (_SB_.PC00.RP06.VDID, UnknownObj)
    External (_SB_.PC00.RP07, DeviceObj)
    External (_SB_.PC00.RP07.SLOT, UnknownObj)
    External (_SB_.PC00.RP07.VDID, UnknownObj)
    External (_SB_.PC00.RP08, DeviceObj)
    External (_SB_.PC00.RP08.SLOT, UnknownObj)
    External (_SB_.PC00.RP08.VDID, UnknownObj)
    External (_SB_.PC00.RP09, DeviceObj)
    External (_SB_.PC00.RP09.DL23, MethodObj)    // 0 Arguments
    External (_SB_.PC00.RP09.HBCS, UnknownObj)
    External (_SB_.PC00.RP09.L23D, MethodObj)    // 0 Arguments
    External (_SB_.PC00.RP09.PRMV, UnknownObj)
    External (_SB_.PC00.RP09.PWRG, UnknownObj)
    External (_SB_.PC00.RP09.PXSX, DeviceObj)
    External (_SB_.PC00.RP09.PXSX.PAHC, MethodObj)    // 0 Arguments
    External (_SB_.PC00.RP09.PXSX.SD3E, UnknownObj)
    External (_SB_.PC00.RP09.PXSX.SLTS, UnknownObj)
    External (_SB_.PC00.RP09.SCLK, UnknownObj)
    External (_SB_.PC00.RP09.SLOT, UnknownObj)
    External (_SB_.PC00.RP09.VDID, UnknownObj)
    External (_SB_.PC00.RP09.WAKG, UnknownObj)
    External (_SB_.PC00.RP09.WAKP, UnknownObj)
    External (_SB_.PC00.RP09.WKOT, UnknownObj)
    External (_SB_.PC00.RP10, DeviceObj)
    External (_SB_.PC00.RP10.SLOT, UnknownObj)
    External (_SB_.PC00.RP10.VDID, UnknownObj)
    External (_SB_.PC00.RP11, DeviceObj)
    External (_SB_.PC00.RP11.SLOT, UnknownObj)
    External (_SB_.PC00.RP11.VDID, UnknownObj)
    External (_SB_.PC00.RP12, DeviceObj)
    External (_SB_.PC00.RP12.SLOT, UnknownObj)
    External (_SB_.PC00.RP12.VDID, UnknownObj)
    External (_SB_.PC00.RP13, DeviceObj)
    External (_SB_.PC00.RP13.SLOT, UnknownObj)
    External (_SB_.PC00.RP13.VDID, UnknownObj)
    External (_SB_.PC00.RP14, DeviceObj)
    External (_SB_.PC00.RP14.SLOT, UnknownObj)
    External (_SB_.PC00.RP14.VDID, UnknownObj)
    External (_SB_.PC00.RP15, DeviceObj)
    External (_SB_.PC00.RP15.SLOT, UnknownObj)
    External (_SB_.PC00.RP15.VDID, UnknownObj)
    External (_SB_.PC00.RP16, DeviceObj)
    External (_SB_.PC00.RP16.SLOT, UnknownObj)
    External (_SB_.PC00.RP16.VDID, UnknownObj)
    External (_SB_.PC00.RP17, DeviceObj)
    External (_SB_.PC00.RP17.SLOT, UnknownObj)
    External (_SB_.PC00.RP17.VDID, UnknownObj)
    External (_SB_.PC00.RP18, DeviceObj)
    External (_SB_.PC00.RP18.SLOT, UnknownObj)
    External (_SB_.PC00.RP18.VDID, UnknownObj)
    External (_SB_.PC00.RP19, DeviceObj)
    External (_SB_.PC00.RP19.SLOT, UnknownObj)
    External (_SB_.PC00.RP19.VDID, UnknownObj)
    External (_SB_.PC00.RP20, DeviceObj)
    External (_SB_.PC00.RP20.SLOT, UnknownObj)
    External (_SB_.PC00.RP20.VDID, UnknownObj)
    External (_SB_.PC00.RP21, DeviceObj)
    External (_SB_.PC00.RP21.SLOT, UnknownObj)
    External (_SB_.PC00.RP21.VDID, UnknownObj)
    External (_SB_.PC00.RP22, DeviceObj)
    External (_SB_.PC00.RP22.SLOT, UnknownObj)
    External (_SB_.PC00.RP22.VDID, UnknownObj)
    External (_SB_.PC00.RP23, DeviceObj)
    External (_SB_.PC00.RP23.SLOT, UnknownObj)
    External (_SB_.PC00.RP23.VDID, UnknownObj)
    External (_SB_.PC00.RP24, DeviceObj)
    External (_SB_.PC00.RP24.SLOT, UnknownObj)
    External (_SB_.PC00.RP24.VDID, UnknownObj)
    External (_SB_.PC00.SAT0, DeviceObj)
    External (_SB_.PC00.SAT0.NVM1, DeviceObj)
    External (_SB_.PC00.SAT0.NVM1._ADR, IntObj)
    External (_SB_.PC00.SAT0.NVM1.IR3D, MethodObj)    // 0 Arguments
    External (_SB_.PC00.SAT0.NVM1.RPOF, MethodObj)    // 0 Arguments
    External (_SB_.PC00.SAT0.NVM1.RPON, MethodObj)    // 0 Arguments
    External (_SB_.PC00.SAT0.NVM2, DeviceObj)
    External (_SB_.PC00.SAT0.NVM2._ADR, IntObj)
    External (_SB_.PC00.SAT0.NVM2.IR3D, MethodObj)    // 0 Arguments
    External (_SB_.PC00.SAT0.NVM2.RPOF, MethodObj)    // 0 Arguments
    External (_SB_.PC00.SAT0.NVM2.RPON, MethodObj)    // 0 Arguments
    External (_SB_.PC00.SAT0.NVM3, DeviceObj)
    External (_SB_.PC00.SAT0.NVM3._ADR, IntObj)
    External (_SB_.PC00.SAT0.NVM3.IR3D, MethodObj)    // 0 Arguments
    External (_SB_.PC00.SAT0.NVM3.RPOF, MethodObj)    // 0 Arguments
    External (_SB_.PC00.SAT0.NVM3.RPON, MethodObj)    // 0 Arguments
    External (_SB_.PC00.SAT0.PRT0, DeviceObj)
    External (_SB_.PC00.SAT0.PRT0._ADR, IntObj)
    External (_SB_.PC00.SAT0.PRT0.IR3D, MethodObj)    // 0 Arguments
    External (_SB_.PC00.SAT0.PRT0.PWRG, UnknownObj)
    External (_SB_.PC00.SAT0.PRT1, DeviceObj)
    External (_SB_.PC00.SAT0.PRT1._ADR, IntObj)
    External (_SB_.PC00.SAT0.PRT1.IR3D, MethodObj)    // 0 Arguments
    External (_SB_.PC00.SAT0.PRT1.PWRG, UnknownObj)
    External (_SB_.PC00.SAT0.PRT2, DeviceObj)
    External (_SB_.PC00.SAT0.PRT2._ADR, IntObj)
    External (_SB_.PC00.SAT0.PRT2.IR3D, MethodObj)    // 0 Arguments
    External (_SB_.PC00.SAT0.PRT2.PWRG, UnknownObj)
    External (_SB_.PC00.SAT0.PRT3, DeviceObj)
    External (_SB_.PC00.SAT0.PRT3._ADR, IntObj)
    External (_SB_.PC00.SAT0.PRT3.IR3D, MethodObj)    // 0 Arguments
    External (_SB_.PC00.SAT0.PRT3.PWRG, UnknownObj)
    External (_SB_.PC00.SAT0.PRT4, DeviceObj)
    External (_SB_.PC00.SAT0.PRT4._ADR, IntObj)
    External (_SB_.PC00.SAT0.PRT4.IR3D, MethodObj)    // 0 Arguments
    External (_SB_.PC00.SAT0.PRT4.PWRG, UnknownObj)
    External (_SB_.PC00.SAT0.PRT5, DeviceObj)
    External (_SB_.PC00.SAT0.PRT5._ADR, IntObj)
    External (_SB_.PC00.SAT0.PRT5.IR3D, MethodObj)    // 0 Arguments
    External (_SB_.PC00.SAT0.PRT5.PWRG, UnknownObj)
    External (_SB_.PC00.UA00.BTH0, DeviceObj)
    External (_SB_.PC00.VMD0, DeviceObj)
    External (_SB_.PC00.VMD0.HBSL, UnknownObj)
    External (_SB_.PC00.VMD0.PEG0, DeviceObj)
    External (_SB_.PC00.VMD0.PEG0.VPOF, MethodObj)    // 0 Arguments
    External (_SB_.PC00.VMD0.PEG0.VPON, MethodObj)    // 0 Arguments
    External (_SB_.PC00.VMD0.PEG0.VR3D, MethodObj)    // 0 Arguments
    External (_SB_.PC00.VMD0.PEG1, DeviceObj)
    External (_SB_.PC00.VMD0.PEG1.VPOF, MethodObj)    // 0 Arguments
    External (_SB_.PC00.VMD0.PEG1.VPON, MethodObj)    // 0 Arguments
    External (_SB_.PC00.VMD0.PEG1.VR3D, MethodObj)    // 0 Arguments
    External (_SB_.PC00.VMD0.PEG2, DeviceObj)
    External (_SB_.PC00.VMD0.PEG2.VPOF, MethodObj)    // 0 Arguments
    External (_SB_.PC00.VMD0.PEG2.VPON, MethodObj)    // 0 Arguments
    External (_SB_.PC00.VMD0.PEG2.VR3D, MethodObj)    // 0 Arguments
    External (_SB_.PC00.VMD0.PEG3, DeviceObj)
    External (_SB_.PC00.VMD0.PEG3.VPOF, MethodObj)    // 0 Arguments
    External (_SB_.PC00.VMD0.PEG3.VPON, MethodObj)    // 0 Arguments
    External (_SB_.PC00.VMD0.PEG3.VR3D, MethodObj)    // 0 Arguments
    External (_SB_.PC00.VMD0.PRT0, DeviceObj)
    External (_SB_.PC00.VMD0.PRT0.VS3D, MethodObj)    // 0 Arguments
    External (_SB_.PC00.VMD0.PRT0.VSOF, MethodObj)    // 0 Arguments
    External (_SB_.PC00.VMD0.PRT0.VSON, MethodObj)    // 0 Arguments
    External (_SB_.PC00.VMD0.PRT1, DeviceObj)
    External (_SB_.PC00.VMD0.PRT1.VS3D, MethodObj)    // 0 Arguments
    External (_SB_.PC00.VMD0.PRT1.VSOF, MethodObj)    // 0 Arguments
    External (_SB_.PC00.VMD0.PRT1.VSON, MethodObj)    // 0 Arguments
    External (_SB_.PC00.VMD0.PRT2, DeviceObj)
    External (_SB_.PC00.VMD0.PRT2.VS3D, MethodObj)    // 0 Arguments
    External (_SB_.PC00.VMD0.PRT2.VSOF, MethodObj)    // 0 Arguments
    External (_SB_.PC00.VMD0.PRT2.VSON, MethodObj)    // 0 Arguments
    External (_SB_.PC00.VMD0.PRT3, DeviceObj)
    External (_SB_.PC00.VMD0.PRT3.VS3D, MethodObj)    // 0 Arguments
    External (_SB_.PC00.VMD0.PRT3.VSOF, MethodObj)    // 0 Arguments
    External (_SB_.PC00.VMD0.PRT3.VSON, MethodObj)    // 0 Arguments
    External (_SB_.PC00.VMD0.PRT4, DeviceObj)
    External (_SB_.PC00.VMD0.PRT4.VS3D, MethodObj)    // 0 Arguments
    External (_SB_.PC00.VMD0.PRT4.VSOF, MethodObj)    // 0 Arguments
    External (_SB_.PC00.VMD0.PRT4.VSON, MethodObj)    // 0 Arguments
    External (_SB_.PC00.VMD0.PRT5, DeviceObj)
    External (_SB_.PC00.VMD0.PRT5.VS3D, MethodObj)    // 0 Arguments
    External (_SB_.PC00.VMD0.PRT5.VSOF, MethodObj)    // 0 Arguments
    External (_SB_.PC00.VMD0.PRT5.VSON, MethodObj)    // 0 Arguments
    External (_SB_.PC00.VMD0.PRT6, DeviceObj)
    External (_SB_.PC00.VMD0.PRT6.VS3D, MethodObj)    // 0 Arguments
    External (_SB_.PC00.VMD0.PRT6.VSOF, MethodObj)    // 0 Arguments
    External (_SB_.PC00.VMD0.PRT6.VSON, MethodObj)    // 0 Arguments
    External (_SB_.PC00.VMD0.PRT7, DeviceObj)
    External (_SB_.PC00.VMD0.PRT7.VS3D, MethodObj)    // 0 Arguments
    External (_SB_.PC00.VMD0.PRT7.VSOF, MethodObj)    // 0 Arguments
    External (_SB_.PC00.VMD0.PRT7.VSON, MethodObj)    // 0 Arguments
    External (_SB_.PC00.VMD0.RP01, DeviceObj)
    External (_SB_.PC00.VMD0.RP01.VPOF, MethodObj)    // 0 Arguments
    External (_SB_.PC00.VMD0.RP01.VPON, MethodObj)    // 0 Arguments
    External (_SB_.PC00.VMD0.RP01.VR3D, MethodObj)    // 0 Arguments
    External (_SB_.PC00.VMD0.RP02, DeviceObj)
    External (_SB_.PC00.VMD0.RP02.VPOF, MethodObj)    // 0 Arguments
    External (_SB_.PC00.VMD0.RP02.VPON, MethodObj)    // 0 Arguments
    External (_SB_.PC00.VMD0.RP02.VR3D, MethodObj)    // 0 Arguments
    External (_SB_.PC00.VMD0.RP03, DeviceObj)
    External (_SB_.PC00.VMD0.RP03.VPOF, MethodObj)    // 0 Arguments
    External (_SB_.PC00.VMD0.RP03.VPON, MethodObj)    // 0 Arguments
    External (_SB_.PC00.VMD0.RP03.VR3D, MethodObj)    // 0 Arguments
    External (_SB_.PC00.VMD0.RP04, DeviceObj)
    External (_SB_.PC00.VMD0.RP04.VPOF, MethodObj)    // 0 Arguments
    External (_SB_.PC00.VMD0.RP04.VPON, MethodObj)    // 0 Arguments
    External (_SB_.PC00.VMD0.RP04.VR3D, MethodObj)    // 0 Arguments
    External (_SB_.PC00.VMD0.RP05, DeviceObj)
    External (_SB_.PC00.VMD0.RP05.VPOF, MethodObj)    // 0 Arguments
    External (_SB_.PC00.VMD0.RP05.VPON, MethodObj)    // 0 Arguments
    External (_SB_.PC00.VMD0.RP05.VR3D, MethodObj)    // 0 Arguments
    External (_SB_.PC00.VMD0.RP06, DeviceObj)
    External (_SB_.PC00.VMD0.RP06.VPOF, MethodObj)    // 0 Arguments
    External (_SB_.PC00.VMD0.RP06.VPON, MethodObj)    // 0 Arguments
    External (_SB_.PC00.VMD0.RP06.VR3D, MethodObj)    // 0 Arguments
    External (_SB_.PC00.VMD0.RP07, DeviceObj)
    External (_SB_.PC00.VMD0.RP07.VPOF, MethodObj)    // 0 Arguments
    External (_SB_.PC00.VMD0.RP07.VPON, MethodObj)    // 0 Arguments
    External (_SB_.PC00.VMD0.RP07.VR3D, MethodObj)    // 0 Arguments
    External (_SB_.PC00.VMD0.RP08, DeviceObj)
    External (_SB_.PC00.VMD0.RP08.VPOF, MethodObj)    // 0 Arguments
    External (_SB_.PC00.VMD0.RP08.VPON, MethodObj)    // 0 Arguments
    External (_SB_.PC00.VMD0.RP08.VR3D, MethodObj)    // 0 Arguments
    External (_SB_.PC00.VMD0.RP09, DeviceObj)
    External (_SB_.PC00.VMD0.RP09.VPOF, MethodObj)    // 0 Arguments
    External (_SB_.PC00.VMD0.RP09.VPON, MethodObj)    // 0 Arguments
    External (_SB_.PC00.VMD0.RP09.VR3D, MethodObj)    // 0 Arguments
    External (_SB_.PC00.VMD0.RP10, DeviceObj)
    External (_SB_.PC00.VMD0.RP10.VPOF, MethodObj)    // 0 Arguments
    External (_SB_.PC00.VMD0.RP10.VPON, MethodObj)    // 0 Arguments
    External (_SB_.PC00.VMD0.RP10.VR3D, MethodObj)    // 0 Arguments
    External (_SB_.PC00.VMD0.RP11, DeviceObj)
    External (_SB_.PC00.VMD0.RP11.VPOF, MethodObj)    // 0 Arguments
    External (_SB_.PC00.VMD0.RP11.VPON, MethodObj)    // 0 Arguments
    External (_SB_.PC00.VMD0.RP11.VR3D, MethodObj)    // 0 Arguments
    External (_SB_.PC00.VMD0.RP12, DeviceObj)
    External (_SB_.PC00.VMD0.RP12.VPOF, MethodObj)    // 0 Arguments
    External (_SB_.PC00.VMD0.RP12.VPON, MethodObj)    // 0 Arguments
    External (_SB_.PC00.VMD0.RP12.VR3D, MethodObj)    // 0 Arguments
    External (_SB_.PC00.VMD0.RP13, DeviceObj)
    External (_SB_.PC00.VMD0.RP13.VPOF, MethodObj)    // 0 Arguments
    External (_SB_.PC00.VMD0.RP13.VPON, MethodObj)    // 0 Arguments
    External (_SB_.PC00.VMD0.RP13.VR3D, MethodObj)    // 0 Arguments
    External (_SB_.PC00.VMD0.RP14, DeviceObj)
    External (_SB_.PC00.VMD0.RP14.VPOF, MethodObj)    // 0 Arguments
    External (_SB_.PC00.VMD0.RP14.VPON, MethodObj)    // 0 Arguments
    External (_SB_.PC00.VMD0.RP14.VR3D, MethodObj)    // 0 Arguments
    External (_SB_.PC00.VMD0.RP15, DeviceObj)
    External (_SB_.PC00.VMD0.RP15.VPOF, MethodObj)    // 0 Arguments
    External (_SB_.PC00.VMD0.RP15.VPON, MethodObj)    // 0 Arguments
    External (_SB_.PC00.VMD0.RP15.VR3D, MethodObj)    // 0 Arguments
    External (_SB_.PC00.VMD0.RP16, DeviceObj)
    External (_SB_.PC00.VMD0.RP16.VPOF, MethodObj)    // 0 Arguments
    External (_SB_.PC00.VMD0.RP16.VPON, MethodObj)    // 0 Arguments
    External (_SB_.PC00.VMD0.RP16.VR3D, MethodObj)    // 0 Arguments
    External (_SB_.PC00.VMD0.RP17, DeviceObj)
    External (_SB_.PC00.VMD0.RP17.VPOF, MethodObj)    // 0 Arguments
    External (_SB_.PC00.VMD0.RP17.VPON, MethodObj)    // 0 Arguments
    External (_SB_.PC00.VMD0.RP17.VR3D, MethodObj)    // 0 Arguments
    External (_SB_.PC00.VMD0.RP18, DeviceObj)
    External (_SB_.PC00.VMD0.RP18.VPOF, MethodObj)    // 0 Arguments
    External (_SB_.PC00.VMD0.RP18.VPON, MethodObj)    // 0 Arguments
    External (_SB_.PC00.VMD0.RP18.VR3D, MethodObj)    // 0 Arguments
    External (_SB_.PC00.VMD0.RP19, DeviceObj)
    External (_SB_.PC00.VMD0.RP19.VPOF, MethodObj)    // 0 Arguments
    External (_SB_.PC00.VMD0.RP19.VPON, MethodObj)    // 0 Arguments
    External (_SB_.PC00.VMD0.RP19.VR3D, MethodObj)    // 0 Arguments
    External (_SB_.PC00.VMD0.RP20, DeviceObj)
    External (_SB_.PC00.VMD0.RP20.VPOF, MethodObj)    // 0 Arguments
    External (_SB_.PC00.VMD0.RP20.VPON, MethodObj)    // 0 Arguments
    External (_SB_.PC00.VMD0.RP20.VR3D, MethodObj)    // 0 Arguments
    External (_SB_.PC00.VMD0.RP21, DeviceObj)
    External (_SB_.PC00.VMD0.RP21.VPOF, MethodObj)    // 0 Arguments
    External (_SB_.PC00.VMD0.RP21.VPON, MethodObj)    // 0 Arguments
    External (_SB_.PC00.VMD0.RP21.VR3D, MethodObj)    // 0 Arguments
    External (_SB_.PC00.VMD0.RP22, DeviceObj)
    External (_SB_.PC00.VMD0.RP22.VPOF, MethodObj)    // 0 Arguments
    External (_SB_.PC00.VMD0.RP22.VPON, MethodObj)    // 0 Arguments
    External (_SB_.PC00.VMD0.RP22.VR3D, MethodObj)    // 0 Arguments
    External (_SB_.PC00.VMD0.RP23, DeviceObj)
    External (_SB_.PC00.VMD0.RP23.VPOF, MethodObj)    // 0 Arguments
    External (_SB_.PC00.VMD0.RP23.VPON, MethodObj)    // 0 Arguments
    External (_SB_.PC00.VMD0.RP23.VR3D, MethodObj)    // 0 Arguments
    External (_SB_.PC00.VMD0.RP24, DeviceObj)
    External (_SB_.PC00.VMD0.RP24.VPOF, MethodObj)    // 0 Arguments
    External (_SB_.PC00.VMD0.RP24.VPON, MethodObj)    // 0 Arguments
    External (_SB_.PC00.VMD0.RP24.VR3D, MethodObj)    // 0 Arguments
    External (_SB_.PC00.VMD0.VMCP, UnknownObj)
    External (_SB_.PC00.VMD0.VMR1, UnknownObj)
    External (_SB_.PC00.VMD0.VMR2, UnknownObj)
    External (_SB_.PC00.VMD0.VMR3, UnknownObj)
    External (_SB_.PC00.VMD0.VMS0, UnknownObj)
    External (_SB_.PC00.VMD0.VMS1, UnknownObj)
    External (_SB_.PC00.VMD0.VMS2, UnknownObj)
    External (_SB_.PC00.VMD0.VMS3, UnknownObj)
    External (_SB_.PC00.VMD0.VMS4, UnknownObj)
    External (_SB_.PC00.VMD0.VMS5, UnknownObj)
    External (_SB_.PC00.VMD0.VMS6, UnknownObj)
    External (_SB_.PC00.VMD0.VMS7, UnknownObj)
    External (_SB_.PC00.XDCI, DeviceObj)
    External (_SB_.PC00.XDCI.D0I3, UnknownObj)
    External (_SB_.PC00.XDCI.XDCB, UnknownObj)
    External (_SB_.PC00.XHCI, DeviceObj)
    External (_SB_.PC00.XHCI.MEMB, UnknownObj)
    External (_SB_.PC00.XHCI.RHUB, DeviceObj)
    External (_SB_.PC00.XHCI.RHUB.HS01, DeviceObj)
    External (_SB_.PC00.XHCI.RHUB.HS02, DeviceObj)
    External (_SB_.PC00.XHCI.RHUB.HS10, DeviceObj)
    External (_SB_.PC00.XHCI.RHUB.SS01, DeviceObj)
    External (_SB_.PC00.XHCI.RHUB.SS02, DeviceObj)
    External (_SB_.PEPD, DeviceObj)
    External (_SB_.PSD0, MethodObj)    // 1 Arguments
    External (_SB_.PSD3, MethodObj)    // 1 Arguments
    External (_SB_.SGOV, MethodObj)    // 2 Arguments
    External (_SB_.SGRA, MethodObj)    // 2 Arguments
    External (_SB_.SHPO, MethodObj)    // 2 Arguments
    External (AUDD, FieldUnitObj)
    External (DGBA, UnknownObj)
    External (DGOP, UnknownObj)
    External (DGVP, UnknownObj)
    External (DGVR, UnknownObj)
    External (DVID, UnknownObj)
    External (ECON, IntObj)
    External (GBED, UnknownObj)
    External (GBEP, UnknownObj)
    External (GBES, UnknownObj)
    External (GPDI, UnknownObj)
    External (GPI1, UnknownObj)
    External (GPLI, UnknownObj)
    External (GPLP, UnknownObj)
    External (GPLR, UnknownObj)
    External (HGMD, UnknownObj)
    External (IC0D, FieldUnitObj)
    External (IC1D, FieldUnitObj)
    External (IC1S, FieldUnitObj)
    External (OSYS, UnknownObj)
    External (PBRS, UnknownObj)
    External (PEP0, UnknownObj)
    External (PEPC, UnknownObj)
    External (PFCP, UnknownObj)
    External (PIN_.OFF_, MethodObj)    // 1 Arguments
    External (PIN_.ON__, MethodObj)    // 1 Arguments
    External (PIN_.STA_, MethodObj)    // 1 Arguments
    External (PPDI, UnknownObj)
    External (PPI1, UnknownObj)
    External (PPLI, UnknownObj)
    External (PPLP, UnknownObj)
    External (PPLR, UnknownObj)
    External (PPP1, UnknownObj)
    External (PPR1, UnknownObj)
    External (PPSP, UnknownObj)
    External (PPSR, UnknownObj)
    External (PRES, MethodObj)    // 0 Arguments
    External (PRST, UnknownObj)
    External (PS2P, UnknownObj)
    External (PSP2, UnknownObj)
    External (PSPE, UnknownObj)
    External (PSPR, UnknownObj)
    External (PSR2, UnknownObj)
    External (PSW2, UnknownObj)
    External (PSWP, UnknownObj)
    External (RCG0, IntObj)
    External (RCG1, IntObj)
    External (RPN2, UnknownObj)
    External (RPNB, UnknownObj)
    External (RTD3, IntObj)
    External (S0ID, UnknownObj)
    External (SATP, UnknownObj)
    External (SD2P, UnknownObj)
    External (SD2R, UnknownObj)
    External (SDP1, UnknownObj)
    External (SDPP, UnknownObj)
    External (SDR1, UnknownObj)
    External (SDRP, UnknownObj)
    External (SDS0, FieldUnitObj)
    External (SDS1, FieldUnitObj)
    External (SDS9, UnknownObj)
    External (SHSB, FieldUnitObj)
    External (SLTS, UnknownObj)
    External (SPCO, MethodObj)    // 2 Arguments
    External (SR2P, UnknownObj)
    External (SSDP, UnknownObj)
    External (SSDR, UnknownObj)
    External (STPP, UnknownObj)
    External (TPLS, UnknownObj)
    External (TPP1, UnknownObj)
    External (TPR1, UnknownObj)
    External (UAMS, UnknownObj)
    External (VMDE, UnknownObj)
    External (VRRD, FieldUnitObj)
    External (WBRS, UnknownObj)
    External (WFCP, UnknownObj)
    External (WLWK, UnknownObj)
    External (WPRP, UnknownObj)
    External (WRTO, UnknownObj)
    External (WWKP, UnknownObj)
    External (WWMT, UnknownObj)
    External (XDCE, UnknownObj)
    External (XDST, IntObj)
    External (XHPR, UnknownObj)

    If ((GBES != Zero)){}
    Scope (\_GPE)
    {
        Method (AL6F, 0, NotSerialized)
        {
            If ((HGMD != 0x02))
            {
                If (\_SB.ISME (PSWP))
                {
                    \_SB.SHPO (PSWP, One)
                    If ((\_SB.PC00.PEG0.VDID != 0xFFFFFFFF))
                    {
                        Notify (\_SB.PC00.PEG0, 0x02) // Device Wake
                    }

                    If ((\_SB.PC00.RP05.VDID != 0xFFFFFFFF))
                    {
                        Notify (\_SB.PC00.RP05, 0x02) // Device Wake
                    }

                    \_SB.CAGS (PSWP)
                }
            }

            If (\_SB.ISME (WLWK))
            {
                \_SB.SHPO (WLWK, One)
                Notify (\_SB.PC00.RP03, 0x02) // Device Wake
                \_SB.CAGS (WLWK)
            }

            If (\_SB.ISME (WWKP))
            {
                \_SB.SHPO (WWKP, One)
                Notify (\_SB.PC00.RP02, 0x02) // Device Wake
                \_SB.CAGS (WWKP)
            }

            If (\_SB.ISME (PSW2))
            {
                \_SB.SHPO (PSW2, One)
                Notify (\_SB.PC00.RP08, 0x02) // Device Wake
                \_SB.CAGS (PSW2)
            }
        }
    }

    If ((WRTO != Zero))
    {
        Scope (\_SB.PC00.RP02)
        {
            Name (BRST, Package (0x02)
            {
                Zero, 
                Zero
            })
            BRST [Zero] = WBRS /* External reference */
            BRST [One] = PBRS /* External reference */
            Name (RSTG, Package (0x02)
            {
                Zero, 
                Zero
            })
            RSTG [Zero] = \PRST /* External reference */
            RSTG [One] = WPRP /* External reference */
            Name (PWRG, Package (0x02)
            {
                Zero, 
                Zero
            })
            PWRG [Zero] = WFCP /* External reference */
            PWRG [One] = PFCP /* External reference */
            Name (WAKG, Zero)
            WAKG = WWKP /* External reference */
            Name (SCLK, 0x04)
            Name (WKEN, Zero)
            Name (WOFF, Zero)
            Name (MOL3, One)
            Name (OFEN, One)
            Name (ONEN, Zero)
            Name (FLGN, Zero)
            Name (FLGF, Zero)
            Name (FLGW, Zero)
            Method (_S0W, 0, Serialized)  // _S0W: S0 Device Wake State
            {
                If ((WRTO == 0x03))
                {
                    Return (0x04)
                }
                Else
                {
                    Return (Zero)
                }
            }

            Method (_DSW, 3, NotSerialized)  // _DSW: Device Sleep Wake
            {
                If (Arg1)
                {
                    WKEN = Zero
                }
                ElseIf ((Arg0 && Arg2))
                {
                    WKEN = One
                }
                Else
                {
                    WKEN = Zero
                }

                If ((Arg0 == Zero))
                {
                    MOL3 = One
                }
                Else
                {
                    MOL3 = Zero
                }
            }

            PowerResource (PXP, 0x00, 0x0000)
            {
                Name (WOFF, Zero)
                Method (_STA, 0, Serialized)  // _STA: Status
                {
                    If ((VDID == 0xFFFFFFFF))
                    {
                        Return (Zero)
                    }

                    Return (PSTA ())
                }

                Method (_ON, 0, Serialized)  // _ON_: Power On
                {
                    If ((VDID == 0xFFFFFFFF))
                    {
                        Return (Zero)
                    }

                    If ((ONEN == Zero))
                    {
                        Return (Zero)
                    }

                    \_SB.SHPO (WAKG, One)
                    If (CondRefOf (PWRG))
                    {
                        If (\PIN.STA (PWRG))
                        {
                            FLGN = Zero
                        }
                        Else
                        {
                            FLGN = One
                        }
                    }

                    If (CondRefOf (^WOFF))
                    {
                        If ((^WOFF != Zero))
                        {
                            Local0 = ((Timer - ^WOFF) / 0x2710)
                            If ((Local0 < 0x01F4))
                            {
                                Sleep ((0x01F4 - Local0))
                            }
                        }
                    }

                    PON ()
                    L23D ()
                    If (FLGN)
                    {
                        If (CondRefOf (^WOFF))
                        {
                            If ((^WOFF != Zero))
                            {
                                ^WOFF = Zero
                                Sleep (0x01F4)
                            }
                        }
                    }

                    OFEN = One
                    ONEN = Zero
                }

                Method (_OFF, 0, Serialized)  // _OFF: Power Off
                {
                    If ((VDID == 0xFFFFFFFF))
                    {
                        Return (Zero)
                    }

                    If ((OFEN == Zero))
                    {
                        Return (Zero)
                    }

                    FLGF = MOL3 /* \_SB_.PC00.RP02.MOL3 */
                    FLGW = WKEN /* \_SB_.PC00.RP02.WKEN */
                    DL23 ()
                    POFF ()
                    Sleep (0x14)
                    If (FLGF)
                    {
                        \PIN.ON (BRST)
                        Sleep (0x0A)
                        \PIN.OFF (PWRG)
                        If (CondRefOf (^WOFF))
                        {
                            ^WOFF = Timer
                        }
                    }

                    If (CondRefOf (WAKG))
                    {
                        If (FLGW)
                        {
                            \_SB.SHPO (WAKG, Zero)
                        }
                        Else
                        {
                            \_SB.SHPO (WAKG, One)
                        }
                    }

                    OFEN = Zero
                    ONEN = One
                }
            }

            Method (PSTA, 0, NotSerialized)
            {
                If (CondRefOf (PWRG))
                {
                    If (!\PIN.STA (PWRG))
                    {
                        Return (Zero)
                    }
                }

                If (\PIN.STA (RSTG))
                {
                    Return (Zero)
                }
                Else
                {
                    Return (One)
                }
            }

            Method (PON, 0, NotSerialized)
            {
                \_SB.PSD0 (SLOT)
                If (FLGN)
                {
                    If (CondRefOf (PWRG))
                    {
                        \PIN.ON (PWRG)
                        Sleep (0x14)
                    }

                    \PIN.OFF (BRST)
                    Sleep (0x50)
                }
                Else
                {
                    Stall (0x14)
                }

                If (CondRefOf (SCLK))
                {
                    SPCO (SCLK, One)
                }

                \PIN.OFF (RSTG)
            }

            Method (POFF, 0, NotSerialized)
            {
                \PIN.ON (RSTG)
                \_SB.PSD3 (SLOT)
                If (CondRefOf (SCLK))
                {
                    SPCO (SCLK, Zero)
                    Sleep (0x10)
                }
            }

            Method (_PR0, 0, NotSerialized)  // _PR0: Power Resources for D0
            {
                Return (Package (0x01)
                {
                    PXP
                })
            }

            If ((WRTO == 0x03))
            {
                Method (_PR3, 0, NotSerialized)  // _PR3: Power Resources for D3hot
                {
                    Return (Package (0x01)
                    {
                        PXP
                    })
                }
            }
        }
    }

    Scope (\_SB.PC00.RP05)
    {
        Name (RSTG, Package (0x02)
        {
            Zero, 
            Zero
        })
        RSTG [Zero] = SSDR /* External reference */
        RSTG [One] = SDRP /* External reference */
        Name (PWRG, Package (0x02)
        {
            Zero, 
            Zero
        })
        PWRG [Zero] = SSDP /* External reference */
        PWRG [One] = SDPP /* External reference */
        Name (WAKG, Zero)
        WAKG = PSWP /* External reference */
        Name (WAKP, Zero)
        Name (SCLK, 0x03)
        Name (WKEN, Zero)
        Name (WOFF, Zero)
        Name (_S0W, Zero)  // _S0W: S0 Device Wake State
        Method (_DSW, 3, NotSerialized)  // _DSW: Device Sleep Wake
        {
            If (Arg1)
            {
                WKEN = Zero
                If (CondRefOf (WKOT))
                {
                    If ((WKOT == One))
                    {
                        If ((\_SB.GHPO (WAKG) == One))
                        {
                            \_SB.SHPO (WAKG, Zero)
                            WKOT = Zero
                        }
                    }
                }
            }
            ElseIf ((Arg0 && Arg2))
            {
                WKEN = One
            }
            Else
            {
                WKEN = Zero
                If (CondRefOf (WKOT))
                {
                    If ((WKOT == 0x02))
                    {
                        \_SB.SHPO (WAKG, One)
                        WKOT = One
                    }
                    ElseIf ((WKOT == Zero))
                    {
                        If ((\_SB.GHPO (WAKG) == One)){}
                        Else
                        {
                            \_SB.SHPO (WAKG, One)
                        }

                        WKOT = One
                    }
                }
            }
        }

        PowerResource (PXP, 0x00, 0x0000)
        {
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If ((VDID == 0xFFFFFFFF))
                {
                    Return (Zero)
                }

                If (CondRefOf (HBCS))
                {
                    If ((HBCS == One))
                    {
                        Return (Zero)
                    }
                }

                If (CondRefOf (PRMV))
                {
                    If ((PRMV == One))
                    {
                        Return (Zero)
                    }
                }

                Return (PSTA ())
            }

            Method (_ON, 0, NotSerialized)  // _ON_: Power On
            {
                If ((VDID == 0xFFFFFFFF))
                {
                    Return (Zero)
                }

                If (CondRefOf (HBCS))
                {
                    If ((HBCS == One))
                    {
                        Return (Zero)
                    }
                }

                If (CondRefOf (PRMV))
                {
                    If ((PRMV == One))
                    {
                        Return (Zero)
                    }
                }

                PON ()
                L23D ()
            }

            Method (_OFF, 0, NotSerialized)  // _OFF: Power Off
            {
                If ((VDID == 0xFFFFFFFF))
                {
                    Return (Zero)
                }

                If (CondRefOf (HBCS))
                {
                    If ((HBCS == One))
                    {
                        Return (Zero)
                    }
                }

                If (CondRefOf (PRMV))
                {
                    If ((PRMV == One))
                    {
                        Return (Zero)
                    }
                }

                DL23 ()
                POFF ()
            }
        }

        Method (PSTA, 0, NotSerialized)
        {
            If (\PIN.STA (RSTG))
            {
                Return (Zero)
            }
            Else
            {
                Return (One)
            }
        }

        Method (PON, 0, NotSerialized)
        {
            \_SB.PSD0 (SLOT)
            If (CondRefOf (PWRG))
            {
                If (CondRefOf (WOFF))
                {
                    If ((WOFF != Zero))
                    {
                        Local0 = ((Timer - WOFF) / 0x2710)
                        If ((Local0 < 0xC8))
                        {
                            Sleep ((0xC8 - Local0))
                        }

                        WOFF = Zero
                    }
                }

                \PIN.ON (PWRG)
                Sleep (PEP0)
            }

            If (CondRefOf (SCLK))
            {
                SPCO (SCLK, One)
            }

            \PIN.OFF (RSTG)
        }

        Method (POFF, 0, NotSerialized)
        {
            \PIN.ON (RSTG)
            \_SB.PSD3 (SLOT)
            If (CondRefOf (SCLK))
            {
                SPCO (SCLK, Zero)
            }

            If (CondRefOf (PWRG))
            {
                If (CondRefOf (WAKP))
                {
                    If (((WAKP == Zero) || !WKEN))
                    {
                        \PIN.OFF (PWRG)
                    }
                }
                Else
                {
                    \PIN.OFF (PWRG)
                }

                If (CondRefOf (WOFF))
                {
                    WOFF = Timer
                }
            }

            If (CondRefOf (WAKG))
            {
                If (((WAKG != Zero) && WKEN))
                {
                    \_SB.SHPO (WAKG, Zero)
                }
            }
        }

        Method (_PR0, 0, NotSerialized)  // _PR0: Power Resources for D0
        {
            Return (Package (0x01)
            {
                PXP
            })
        }

        Method (_PR3, 0, NotSerialized)  // _PR3: Power Resources for D3hot
        {
            Return (Package (0x01)
            {
                PXP
            })
        }

        Scope (\_SB.PC00.RP05.PXSX)
        {
            Name (SD3E, One)
            Name (_S0W, 0x04)  // _S0W: S0 Device Wake State
            If ((SLTS == One))
            {
                Method (_PR0, 0, NotSerialized)  // _PR0: Power Resources for D0
                {
                    Return (^^_PR0 ())
                }

                Method (_PR3, 0, NotSerialized)  // _PR3: Power Resources for D3hot
                {
                    Return (^^_PR0 ())
                }
            }

            Method (_PS0, 0, Serialized)  // _PS0: Power State 0
            {
            }

            Method (_PS3, 0, Serialized)  // _PS3: Power State 3
            {
            }

            If (CondRefOf (SD3E))
            {
                If ((SD3E == One))
                {
                    Method (_DSD, 0, NotSerialized)  // _DSD: Device-Specific Data
                    {
                        If (CondRefOf (VDID))
                        {
                            If ((VDID == 0x500915B7))
                            {
                                Return (Package (0x02)
                                {
                                    ToUUID ("5025030f-842f-4ab4-a561-99a5189762d0") /* Unknown UUID */, 
                                    Package (0x01)
                                    {
                                        Package (0x02)
                                        {
                                            "StorageD3Enable", 
                                            Zero
                                        }
                                    }
                                })
                            }
                        }

                        Return (Package (0x02)
                        {
                            ToUUID ("5025030f-842f-4ab4-a561-99a5189762d0") /* Unknown UUID */, 
                            Package (0x01)
                            {
                                Package (0x02)
                                {
                                    "StorageD3Enable", 
                                    One
                                }
                            }
                        })
                    }
                }
            }

            Device (MINI)
            {
                Method (_STA, 0, Serialized)  // _STA: Status
                {
                    If (PAHC ())
                    {
                        Return (0x0F)
                    }
                    Else
                    {
                        Return (Zero)
                    }
                }

                Name (_ADR, 0xFFFF)  // _ADR: Address
                Name (_S0W, 0x04)  // _S0W: S0 Device Wake State
                Method (_PS0, 0, Serialized)  // _PS0: Power State 0
                {
                }

                Method (_PS3, 0, Serialized)  // _PS3: Power State 3
                {
                }

                If (PAHC ())
                {
                    Method (_PR0, 0, NotSerialized)  // _PR0: Power Resources for D0
                    {
                        Return (^^^_PR0 ())
                    }

                    Method (_PR3, 0, NotSerialized)  // _PR3: Power Resources for D3hot
                    {
                        Return (^^^_PR0 ())
                    }
                }
            }
        }
    }

    Scope (\_SB.PC00.RP09)
    {
        Name (RSTG, Package (0x02)
        {
            Zero, 
            Zero
        })
        RSTG [Zero] = PSPR /* External reference */
        RSTG [One] = PPSR /* External reference */
        Name (PWRG, Package (0x02)
        {
            Zero, 
            Zero
        })
        PWRG [Zero] = PSPE /* External reference */
        PWRG [One] = PPSP /* External reference */
        Name (WAKG, Zero)
        Name (WAKP, Zero)
        Name (SCLK, 0x02)
        Name (WKEN, Zero)
        Name (WOFF, Zero)
        Name (_S0W, Zero)  // _S0W: S0 Device Wake State
        Method (_DSW, 3, NotSerialized)  // _DSW: Device Sleep Wake
        {
            If (Arg1)
            {
                WKEN = Zero
                If (CondRefOf (WKOT))
                {
                    If ((WKOT == One))
                    {
                        If ((\_SB.GHPO (WAKG) == One))
                        {
                            \_SB.SHPO (WAKG, Zero)
                            WKOT = Zero
                        }
                    }
                }
            }
            ElseIf ((Arg0 && Arg2))
            {
                WKEN = One
            }
            Else
            {
                WKEN = Zero
                If (CondRefOf (WKOT))
                {
                    If ((WKOT == 0x02))
                    {
                        \_SB.SHPO (WAKG, One)
                        WKOT = One
                    }
                    ElseIf ((WKOT == Zero))
                    {
                        If ((\_SB.GHPO (WAKG) == One)){}
                        Else
                        {
                            \_SB.SHPO (WAKG, One)
                        }

                        WKOT = One
                    }
                }
            }
        }

        PowerResource (PXP, 0x00, 0x0000)
        {
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If ((VDID == 0xFFFFFFFF))
                {
                    Return (Zero)
                }

                If (CondRefOf (HBCS))
                {
                    If ((HBCS == One))
                    {
                        Return (Zero)
                    }
                }

                If (CondRefOf (PRMV))
                {
                    If ((PRMV == One))
                    {
                        Return (Zero)
                    }
                }

                Return (PSTA ())
            }

            Method (_ON, 0, NotSerialized)  // _ON_: Power On
            {
                If ((VDID == 0xFFFFFFFF))
                {
                    Return (Zero)
                }

                If (CondRefOf (HBCS))
                {
                    If ((HBCS == One))
                    {
                        Return (Zero)
                    }
                }

                If (CondRefOf (PRMV))
                {
                    If ((PRMV == One))
                    {
                        Return (Zero)
                    }
                }

                PON ()
                L23D ()
            }

            Method (_OFF, 0, NotSerialized)  // _OFF: Power Off
            {
                If ((VDID == 0xFFFFFFFF))
                {
                    Return (Zero)
                }

                If (CondRefOf (HBCS))
                {
                    If ((HBCS == One))
                    {
                        Return (Zero)
                    }
                }

                If (CondRefOf (PRMV))
                {
                    If ((PRMV == One))
                    {
                        Return (Zero)
                    }
                }

                DL23 ()
                POFF ()
            }
        }

        Method (PSTA, 0, NotSerialized)
        {
            If (\PIN.STA (RSTG))
            {
                Return (Zero)
            }
            Else
            {
                Return (One)
            }
        }

        Method (PON, 0, NotSerialized)
        {
            \_SB.PSD0 (SLOT)
            If (CondRefOf (PWRG))
            {
                If (CondRefOf (WOFF))
                {
                    If ((WOFF != Zero))
                    {
                        Local0 = ((Timer - WOFF) / 0x2710)
                        If ((Local0 < 0xC8))
                        {
                            Sleep ((0xC8 - Local0))
                        }

                        WOFF = Zero
                    }
                }

                \PIN.ON (PWRG)
                Sleep (PEP0)
            }

            If (CondRefOf (SCLK))
            {
                SPCO (SCLK, One)
            }

            \PIN.OFF (RSTG)
        }

        Method (POFF, 0, NotSerialized)
        {
            \PIN.ON (RSTG)
            \_SB.PSD3 (SLOT)
            If (CondRefOf (SCLK))
            {
                SPCO (SCLK, Zero)
            }

            If (CondRefOf (PWRG))
            {
                If (CondRefOf (WAKP))
                {
                    If (((WAKP == Zero) || !WKEN))
                    {
                        \PIN.OFF (PWRG)
                    }
                }
                Else
                {
                    \PIN.OFF (PWRG)
                }

                If (CondRefOf (WOFF))
                {
                    WOFF = Timer
                }
            }

            If (CondRefOf (WAKG))
            {
                If (((WAKG != Zero) && WKEN))
                {
                    \_SB.SHPO (WAKG, Zero)
                }
            }
        }

        Method (_PR0, 0, NotSerialized)  // _PR0: Power Resources for D0
        {
            Return (Package (0x01)
            {
                PXP
            })
        }

        Method (_PR3, 0, NotSerialized)  // _PR3: Power Resources for D3hot
        {
            Return (Package (0x01)
            {
                PXP
            })
        }

        Scope (\_SB.PC00.RP09.PXSX)
        {
            Name (SD3E, One)
            Name (_S0W, 0x04)  // _S0W: S0 Device Wake State
            If ((SLTS == One))
            {
                Method (_PR0, 0, NotSerialized)  // _PR0: Power Resources for D0
                {
                    Return (^^_PR0 ())
                }

                Method (_PR3, 0, NotSerialized)  // _PR3: Power Resources for D3hot
                {
                    Return (^^_PR0 ())
                }
            }

            Method (_PS0, 0, Serialized)  // _PS0: Power State 0
            {
            }

            Method (_PS3, 0, Serialized)  // _PS3: Power State 3
            {
            }

            If (CondRefOf (SD3E))
            {
                If ((SD3E == One))
                {
                    Method (_DSD, 0, NotSerialized)  // _DSD: Device-Specific Data
                    {
                        If (CondRefOf (VDID))
                        {
                            If ((VDID == 0x500915B7))
                            {
                                Return (Package (0x02)
                                {
                                    ToUUID ("5025030f-842f-4ab4-a561-99a5189762d0") /* Unknown UUID */, 
                                    Package (0x01)
                                    {
                                        Package (0x02)
                                        {
                                            "StorageD3Enable", 
                                            Zero
                                        }
                                    }
                                })
                            }
                        }

                        Return (Package (0x02)
                        {
                            ToUUID ("5025030f-842f-4ab4-a561-99a5189762d0") /* Unknown UUID */, 
                            Package (0x01)
                            {
                                Package (0x02)
                                {
                                    "StorageD3Enable", 
                                    One
                                }
                            }
                        })
                    }
                }
            }

            Device (MINI)
            {
                Method (_STA, 0, Serialized)  // _STA: Status
                {
                    If (PAHC ())
                    {
                        Return (0x0F)
                    }
                    Else
                    {
                        Return (Zero)
                    }
                }

                Name (_ADR, 0xFFFF)  // _ADR: Address
                Name (_S0W, 0x04)  // _S0W: S0 Device Wake State
                Method (_PS0, 0, Serialized)  // _PS0: Power State 0
                {
                }

                Method (_PS3, 0, Serialized)  // _PS3: Power State 3
                {
                }

                If (PAHC ())
                {
                    Method (_PR0, 0, NotSerialized)  // _PR0: Power Resources for D0
                    {
                        Return (^^^_PR0 ())
                    }

                    Method (_PR3, 0, NotSerialized)  // _PR3: Power Resources for D3hot
                    {
                        Return (^^^_PR0 ())
                    }
                }
            }
        }
    }

    Scope (\_SB.PC00.SAT0)
    {
        Scope (PRT0)
        {
            If (PRES ())
            {
                Name (PWRG, Package (0x02)
                {
                    Zero, 
                    Zero
                })
                PWRG [Zero] = SATP /* External reference */
                PWRG [One] = STPP /* External reference */
            }
        }

        Scope (\_SB.PC00.SAT0)
        {
            OperationRegion (SMIO, PCI_Config, 0x24, 0x04)
            Field (SMIO, AnyAcc, NoLock, Preserve)
            {
                MBR6,   32
            }

            OperationRegion (PCIR, PCI_Config, Zero, 0x10)
            Field (PCIR, DWordAcc, NoLock, Preserve)
            {
                Offset (0x0A), 
                SUBC,   8
            }

            If ((One & RCG1))
            {
                Scope (PRT0)
                {
                    Name (PBAR, 0x0118)
                    If (CondRefOf (PWRG))
                    {
                        Method (STNC, 0, Serialized)
                        {
                            If ((\_SB.PC00.SAT0.MBR6 == 0xFFFFFFFF))
                            {
                                Return (One)
                            }

                            Local0 = (\_SB.PC00.SAT0.MBR6 + PBAR) /* \_SB_.PC00.SAT0.PRT0.PBAR */
                            OperationRegion (ASTS, SystemMemory, Local0, 0x04)
                            Field (ASTS, DWordAcc, NoLock, Preserve)
                            {
                                AMST,   32
                            }

                            If ((AMST == 0xFFFFFFFF))
                            {
                                Return (One)
                            }

                            Return (Zero)
                        }

                        Method (_PR0, 0, NotSerialized)  // _PR0: Power Resources for D0
                        {
                            Return (Package (0x01)
                            {
                                SPPR
                            })
                        }

                        Method (_PR3, 0, NotSerialized)  // _PR3: Power Resources for D3hot
                        {
                            Return (Package (0x01)
                            {
                                SPPR
                            })
                        }

                        Method (_S0W, 0, NotSerialized)  // _S0W: S0 Device Wake State
                        {
                            Return (0x04)
                        }

                        PowerResource (SPPR, 0x00, 0x0000)
                        {
                            Method (_STA, 0, NotSerialized)  // _STA: Status
                            {
                                If (STNC ())
                                {
                                    Return (Zero)
                                }

                                Return (SPSA ())
                            }

                            Method (_ON, 0, NotSerialized)  // _ON_: Power On
                            {
                                If (STNC ())
                                {
                                    Return (Zero)
                                }

                                If (IR3D ())
                                {
                                    Return (Zero)
                                }

                                SPON ()
                                Sleep (0x10)
                            }

                            Method (_OFF, 0, NotSerialized)  // _OFF: Power Off
                            {
                                If (STNC ())
                                {
                                    Return (Zero)
                                }

                                If (IR3D ())
                                {
                                    Return (Zero)
                                }

                                SPOF ()
                            }
                        }

                        Name (OFTM, Zero)
                        Method (SPSA, 0, NotSerialized)
                        {
                            Return (\PIN.STA (PWRG))
                        }

                        Method (SPON, 0, NotSerialized)
                        {
                            \PIN.ON (PWRG)
                        }

                        Method (SPOF, 0, Serialized)
                        {
                            Local0 = (\_SB.PC00.SAT0.MBR6 + PBAR) /* \_SB_.PC00.SAT0.PRT0.PBAR */
                            If ((S0ID == One))
                            {
                                OperationRegion (PSTS, SystemMemory, Local0, 0x18)
                                Field (PSTS, DWordAcc, NoLock, Preserve)
                                {
                                    CMST,   1, 
                                    CSUD,   1, 
                                        ,   2, 
                                    CFRE,   1, 
                                    Offset (0x10), 
                                    SDET,   4, 
                                    Offset (0x14), 
                                    CDET,   4
                                }

                                If (((\_SB.PC00.SAT0.SUBC == 0x06) && ((SDET == One) || (SDET == 0x03))))
                                {
                                    CMST = Zero
                                    CFRE = Zero
                                    CSUD = Zero
                                    CDET = 0x04
                                    Sleep (0x10)
                                    While ((SDET != 0x04))
                                    {
                                        Sleep (0x10)
                                    }
                                }
                            }

                            \PIN.OFF (PWRG)
                            ^OFTM = Timer
                        }
                    }
                }
            }

            If ((0x02 & RCG1))
            {
                Scope (PRT1)
                {
                    Name (PBAR, 0x0198)
                    If (CondRefOf (PWRG))
                    {
                        Method (STNC, 0, Serialized)
                        {
                            If ((\_SB.PC00.SAT0.MBR6 == 0xFFFFFFFF))
                            {
                                Return (One)
                            }

                            Local0 = (\_SB.PC00.SAT0.MBR6 + PBAR) /* \_SB_.PC00.SAT0.PRT1.PBAR */
                            OperationRegion (ASTS, SystemMemory, Local0, 0x04)
                            Field (ASTS, DWordAcc, NoLock, Preserve)
                            {
                                AMST,   32
                            }

                            If ((AMST == 0xFFFFFFFF))
                            {
                                Return (One)
                            }

                            Return (Zero)
                        }

                        Method (_PR0, 0, NotSerialized)  // _PR0: Power Resources for D0
                        {
                            Return (Package (0x01)
                            {
                                SPPR
                            })
                        }

                        Method (_PR3, 0, NotSerialized)  // _PR3: Power Resources for D3hot
                        {
                            Return (Package (0x01)
                            {
                                SPPR
                            })
                        }

                        Method (_S0W, 0, NotSerialized)  // _S0W: S0 Device Wake State
                        {
                            Return (0x04)
                        }

                        PowerResource (SPPR, 0x00, 0x0000)
                        {
                            Method (_STA, 0, NotSerialized)  // _STA: Status
                            {
                                If (STNC ())
                                {
                                    Return (Zero)
                                }

                                Return (SPSA ())
                            }

                            Method (_ON, 0, NotSerialized)  // _ON_: Power On
                            {
                                If (STNC ())
                                {
                                    Return (Zero)
                                }

                                If (IR3D ())
                                {
                                    Return (Zero)
                                }

                                SPON ()
                                Sleep (0x10)
                            }

                            Method (_OFF, 0, NotSerialized)  // _OFF: Power Off
                            {
                                If (STNC ())
                                {
                                    Return (Zero)
                                }

                                If (IR3D ())
                                {
                                    Return (Zero)
                                }

                                SPOF ()
                            }
                        }

                        Name (OFTM, Zero)
                        Method (SPSA, 0, NotSerialized)
                        {
                            Return (\PIN.STA (PWRG))
                        }

                        Method (SPON, 0, NotSerialized)
                        {
                            \PIN.ON (PWRG)
                        }

                        Method (SPOF, 0, Serialized)
                        {
                            Local0 = (\_SB.PC00.SAT0.MBR6 + PBAR) /* \_SB_.PC00.SAT0.PRT1.PBAR */
                            If ((S0ID == One))
                            {
                                OperationRegion (PSTS, SystemMemory, Local0, 0x18)
                                Field (PSTS, DWordAcc, NoLock, Preserve)
                                {
                                    CMST,   1, 
                                    CSUD,   1, 
                                        ,   2, 
                                    CFRE,   1, 
                                    Offset (0x10), 
                                    SDET,   4, 
                                    Offset (0x14), 
                                    CDET,   4
                                }

                                If (((\_SB.PC00.SAT0.SUBC == 0x06) && ((SDET == One) || (SDET == 0x03))))
                                {
                                    CMST = Zero
                                    CFRE = Zero
                                    CSUD = Zero
                                    CDET = 0x04
                                    Sleep (0x10)
                                    While ((SDET != 0x04))
                                    {
                                        Sleep (0x10)
                                    }
                                }
                            }

                            \PIN.OFF (PWRG)
                            ^OFTM = Timer
                        }
                    }
                }
            }

            If ((0x04 & RCG1))
            {
                Scope (PRT2)
                {
                    Name (PBAR, 0x0218)
                    If (CondRefOf (PWRG))
                    {
                        Method (STNC, 0, Serialized)
                        {
                            If ((\_SB.PC00.SAT0.MBR6 == 0xFFFFFFFF))
                            {
                                Return (One)
                            }

                            Local0 = (\_SB.PC00.SAT0.MBR6 + PBAR) /* \_SB_.PC00.SAT0.PRT2.PBAR */
                            OperationRegion (ASTS, SystemMemory, Local0, 0x04)
                            Field (ASTS, DWordAcc, NoLock, Preserve)
                            {
                                AMST,   32
                            }

                            If ((AMST == 0xFFFFFFFF))
                            {
                                Return (One)
                            }

                            Return (Zero)
                        }

                        Method (_PR0, 0, NotSerialized)  // _PR0: Power Resources for D0
                        {
                            Return (Package (0x01)
                            {
                                SPPR
                            })
                        }

                        Method (_PR3, 0, NotSerialized)  // _PR3: Power Resources for D3hot
                        {
                            Return (Package (0x01)
                            {
                                SPPR
                            })
                        }

                        Method (_S0W, 0, NotSerialized)  // _S0W: S0 Device Wake State
                        {
                            Return (0x04)
                        }

                        PowerResource (SPPR, 0x00, 0x0000)
                        {
                            Method (_STA, 0, NotSerialized)  // _STA: Status
                            {
                                If (STNC ())
                                {
                                    Return (Zero)
                                }

                                Return (SPSA ())
                            }

                            Method (_ON, 0, NotSerialized)  // _ON_: Power On
                            {
                                If (STNC ())
                                {
                                    Return (Zero)
                                }

                                If (IR3D ())
                                {
                                    Return (Zero)
                                }

                                SPON ()
                                Sleep (0x10)
                            }

                            Method (_OFF, 0, NotSerialized)  // _OFF: Power Off
                            {
                                If (STNC ())
                                {
                                    Return (Zero)
                                }

                                If (IR3D ())
                                {
                                    Return (Zero)
                                }

                                SPOF ()
                            }
                        }

                        Name (OFTM, Zero)
                        Method (SPSA, 0, NotSerialized)
                        {
                            Return (\PIN.STA (PWRG))
                        }

                        Method (SPON, 0, NotSerialized)
                        {
                            \PIN.ON (PWRG)
                        }

                        Method (SPOF, 0, Serialized)
                        {
                            Local0 = (\_SB.PC00.SAT0.MBR6 + PBAR) /* \_SB_.PC00.SAT0.PRT2.PBAR */
                            If ((S0ID == One))
                            {
                                OperationRegion (PSTS, SystemMemory, Local0, 0x18)
                                Field (PSTS, DWordAcc, NoLock, Preserve)
                                {
                                    CMST,   1, 
                                    CSUD,   1, 
                                        ,   2, 
                                    CFRE,   1, 
                                    Offset (0x10), 
                                    SDET,   4, 
                                    Offset (0x14), 
                                    CDET,   4
                                }

                                If (((\_SB.PC00.SAT0.SUBC == 0x06) && ((SDET == One) || (SDET == 0x03))))
                                {
                                    CMST = Zero
                                    CFRE = Zero
                                    CSUD = Zero
                                    CDET = 0x04
                                    Sleep (0x10)
                                    While ((SDET != 0x04))
                                    {
                                        Sleep (0x10)
                                    }
                                }
                            }

                            \PIN.OFF (PWRG)
                            ^OFTM = Timer
                        }
                    }
                }
            }

            If ((0x08 & RCG1))
            {
                Scope (PRT3)
                {
                    Name (PBAR, 0x0298)
                    If (CondRefOf (PWRG))
                    {
                        Method (STNC, 0, Serialized)
                        {
                            If ((\_SB.PC00.SAT0.MBR6 == 0xFFFFFFFF))
                            {
                                Return (One)
                            }

                            Local0 = (\_SB.PC00.SAT0.MBR6 + PBAR) /* \_SB_.PC00.SAT0.PRT3.PBAR */
                            OperationRegion (ASTS, SystemMemory, Local0, 0x04)
                            Field (ASTS, DWordAcc, NoLock, Preserve)
                            {
                                AMST,   32
                            }

                            If ((AMST == 0xFFFFFFFF))
                            {
                                Return (One)
                            }

                            Return (Zero)
                        }

                        Method (_PR0, 0, NotSerialized)  // _PR0: Power Resources for D0
                        {
                            Return (Package (0x01)
                            {
                                SPPR
                            })
                        }

                        Method (_PR3, 0, NotSerialized)  // _PR3: Power Resources for D3hot
                        {
                            Return (Package (0x01)
                            {
                                SPPR
                            })
                        }

                        Method (_S0W, 0, NotSerialized)  // _S0W: S0 Device Wake State
                        {
                            Return (0x04)
                        }

                        PowerResource (SPPR, 0x00, 0x0000)
                        {
                            Method (_STA, 0, NotSerialized)  // _STA: Status
                            {
                                If (STNC ())
                                {
                                    Return (Zero)
                                }

                                Return (SPSA ())
                            }

                            Method (_ON, 0, NotSerialized)  // _ON_: Power On
                            {
                                If (STNC ())
                                {
                                    Return (Zero)
                                }

                                If (IR3D ())
                                {
                                    Return (Zero)
                                }

                                SPON ()
                                Sleep (0x10)
                            }

                            Method (_OFF, 0, NotSerialized)  // _OFF: Power Off
                            {
                                If (STNC ())
                                {
                                    Return (Zero)
                                }

                                If (IR3D ())
                                {
                                    Return (Zero)
                                }

                                SPOF ()
                            }
                        }

                        Name (OFTM, Zero)
                        Method (SPSA, 0, NotSerialized)
                        {
                            Return (\PIN.STA (PWRG))
                        }

                        Method (SPON, 0, NotSerialized)
                        {
                            \PIN.ON (PWRG)
                        }

                        Method (SPOF, 0, Serialized)
                        {
                            Local0 = (\_SB.PC00.SAT0.MBR6 + PBAR) /* \_SB_.PC00.SAT0.PRT3.PBAR */
                            If ((S0ID == One))
                            {
                                OperationRegion (PSTS, SystemMemory, Local0, 0x18)
                                Field (PSTS, DWordAcc, NoLock, Preserve)
                                {
                                    CMST,   1, 
                                    CSUD,   1, 
                                        ,   2, 
                                    CFRE,   1, 
                                    Offset (0x10), 
                                    SDET,   4, 
                                    Offset (0x14), 
                                    CDET,   4
                                }

                                If (((\_SB.PC00.SAT0.SUBC == 0x06) && ((SDET == One) || (SDET == 0x03))))
                                {
                                    CMST = Zero
                                    CFRE = Zero
                                    CSUD = Zero
                                    CDET = 0x04
                                    Sleep (0x10)
                                    While ((SDET != 0x04))
                                    {
                                        Sleep (0x10)
                                    }
                                }
                            }

                            \PIN.OFF (PWRG)
                            ^OFTM = Timer
                        }
                    }
                }
            }

            If ((0x10 & RCG1))
            {
                Scope (PRT4)
                {
                    Name (PBAR, 0x0318)
                    If (CondRefOf (PWRG))
                    {
                        Method (STNC, 0, Serialized)
                        {
                            If ((\_SB.PC00.SAT0.MBR6 == 0xFFFFFFFF))
                            {
                                Return (One)
                            }

                            Local0 = (\_SB.PC00.SAT0.MBR6 + PBAR) /* \_SB_.PC00.SAT0.PRT4.PBAR */
                            OperationRegion (ASTS, SystemMemory, Local0, 0x04)
                            Field (ASTS, DWordAcc, NoLock, Preserve)
                            {
                                AMST,   32
                            }

                            If ((AMST == 0xFFFFFFFF))
                            {
                                Return (One)
                            }

                            Return (Zero)
                        }

                        Method (_PR0, 0, NotSerialized)  // _PR0: Power Resources for D0
                        {
                            Return (Package (0x01)
                            {
                                SPPR
                            })
                        }

                        Method (_PR3, 0, NotSerialized)  // _PR3: Power Resources for D3hot
                        {
                            Return (Package (0x01)
                            {
                                SPPR
                            })
                        }

                        Method (_S0W, 0, NotSerialized)  // _S0W: S0 Device Wake State
                        {
                            Return (0x04)
                        }

                        PowerResource (SPPR, 0x00, 0x0000)
                        {
                            Method (_STA, 0, NotSerialized)  // _STA: Status
                            {
                                If (STNC ())
                                {
                                    Return (Zero)
                                }

                                Return (SPSA ())
                            }

                            Method (_ON, 0, NotSerialized)  // _ON_: Power On
                            {
                                If (STNC ())
                                {
                                    Return (Zero)
                                }

                                If (IR3D ())
                                {
                                    Return (Zero)
                                }

                                SPON ()
                                Sleep (0x10)
                            }

                            Method (_OFF, 0, NotSerialized)  // _OFF: Power Off
                            {
                                If (STNC ())
                                {
                                    Return (Zero)
                                }

                                If (IR3D ())
                                {
                                    Return (Zero)
                                }

                                SPOF ()
                            }
                        }

                        Name (OFTM, Zero)
                        Method (SPSA, 0, NotSerialized)
                        {
                            Return (\PIN.STA (PWRG))
                        }

                        Method (SPON, 0, NotSerialized)
                        {
                            \PIN.ON (PWRG)
                        }

                        Method (SPOF, 0, Serialized)
                        {
                            Local0 = (\_SB.PC00.SAT0.MBR6 + PBAR) /* \_SB_.PC00.SAT0.PRT4.PBAR */
                            If ((S0ID == One))
                            {
                                OperationRegion (PSTS, SystemMemory, Local0, 0x18)
                                Field (PSTS, DWordAcc, NoLock, Preserve)
                                {
                                    CMST,   1, 
                                    CSUD,   1, 
                                        ,   2, 
                                    CFRE,   1, 
                                    Offset (0x10), 
                                    SDET,   4, 
                                    Offset (0x14), 
                                    CDET,   4
                                }

                                If (((\_SB.PC00.SAT0.SUBC == 0x06) && ((SDET == One) || (SDET == 0x03))))
                                {
                                    CMST = Zero
                                    CFRE = Zero
                                    CSUD = Zero
                                    CDET = 0x04
                                    Sleep (0x10)
                                    While ((SDET != 0x04))
                                    {
                                        Sleep (0x10)
                                    }
                                }
                            }

                            \PIN.OFF (PWRG)
                            ^OFTM = Timer
                        }
                    }
                }
            }

            If ((0x20 & RCG1))
            {
                Scope (PRT5)
                {
                    Name (PBAR, 0x0398)
                    If (CondRefOf (PWRG))
                    {
                        Method (STNC, 0, Serialized)
                        {
                            If ((\_SB.PC00.SAT0.MBR6 == 0xFFFFFFFF))
                            {
                                Return (One)
                            }

                            Local0 = (\_SB.PC00.SAT0.MBR6 + PBAR) /* \_SB_.PC00.SAT0.PRT5.PBAR */
                            OperationRegion (ASTS, SystemMemory, Local0, 0x04)
                            Field (ASTS, DWordAcc, NoLock, Preserve)
                            {
                                AMST,   32
                            }

                            If ((AMST == 0xFFFFFFFF))
                            {
                                Return (One)
                            }

                            Return (Zero)
                        }

                        Method (_PR0, 0, NotSerialized)  // _PR0: Power Resources for D0
                        {
                            Return (Package (0x01)
                            {
                                SPPR
                            })
                        }

                        Method (_PR3, 0, NotSerialized)  // _PR3: Power Resources for D3hot
                        {
                            Return (Package (0x01)
                            {
                                SPPR
                            })
                        }

                        Method (_S0W, 0, NotSerialized)  // _S0W: S0 Device Wake State
                        {
                            Return (0x04)
                        }

                        PowerResource (SPPR, 0x00, 0x0000)
                        {
                            Method (_STA, 0, NotSerialized)  // _STA: Status
                            {
                                If (STNC ())
                                {
                                    Return (Zero)
                                }

                                Return (SPSA ())
                            }

                            Method (_ON, 0, NotSerialized)  // _ON_: Power On
                            {
                                If (STNC ())
                                {
                                    Return (Zero)
                                }

                                If (IR3D ())
                                {
                                    Return (Zero)
                                }

                                SPON ()
                                Sleep (0x10)
                            }

                            Method (_OFF, 0, NotSerialized)  // _OFF: Power Off
                            {
                                If (STNC ())
                                {
                                    Return (Zero)
                                }

                                If (IR3D ())
                                {
                                    Return (Zero)
                                }

                                SPOF ()
                            }
                        }

                        Name (OFTM, Zero)
                        Method (SPSA, 0, NotSerialized)
                        {
                            Return (\PIN.STA (PWRG))
                        }

                        Method (SPON, 0, NotSerialized)
                        {
                            \PIN.ON (PWRG)
                        }

                        Method (SPOF, 0, Serialized)
                        {
                            Local0 = (\_SB.PC00.SAT0.MBR6 + PBAR) /* \_SB_.PC00.SAT0.PRT5.PBAR */
                            If ((S0ID == One))
                            {
                                OperationRegion (PSTS, SystemMemory, Local0, 0x18)
                                Field (PSTS, DWordAcc, NoLock, Preserve)
                                {
                                    CMST,   1, 
                                    CSUD,   1, 
                                        ,   2, 
                                    CFRE,   1, 
                                    Offset (0x10), 
                                    SDET,   4, 
                                    Offset (0x14), 
                                    CDET,   4
                                }

                                If (((\_SB.PC00.SAT0.SUBC == 0x06) && ((SDET == One) || (SDET == 0x03))))
                                {
                                    CMST = Zero
                                    CFRE = Zero
                                    CSUD = Zero
                                    CDET = 0x04
                                    Sleep (0x10)
                                    While ((SDET != 0x04))
                                    {
                                        Sleep (0x10)
                                    }
                                }
                            }

                            \PIN.OFF (PWRG)
                            ^OFTM = Timer
                        }
                    }
                }
            }

            If ((0x40 & RCG1))
            {
                Scope (NVM1)
                {
                    Method (_S0W, 0, NotSerialized)  // _S0W: S0 Device Wake State
                    {
                        Return (0x04)
                    }

                    Name (_PR0, Package (0x01)  // _PR0: Power Resources for D0
                    {
                        NVPR
                    })
                    Name (_PR3, Package (0x01)  // _PR3: Power Resources for D3hot
                    {
                        NVPR
                    })
                    PowerResource (NVPR, 0x00, 0x0000)
                    {
                        Name (_STA, One)  // _STA: Status
                        Method (_ON, 0, NotSerialized)  // _ON_: Power On
                        {
                            If (IR3D ())
                            {
                                Return (Zero)
                            }

                            RPON ()
                            _STA = One
                        }

                        Method (_OFF, 0, NotSerialized)  // _OFF: Power Off
                        {
                            If (IR3D ())
                            {
                                Return (Zero)
                            }

                            RPOF ()
                            _STA = Zero
                        }
                    }
                }
            }

            If ((0x80 & RCG1))
            {
                Scope (NVM2)
                {
                    Method (_S0W, 0, NotSerialized)  // _S0W: S0 Device Wake State
                    {
                        Return (0x04)
                    }

                    Name (_PR0, Package (0x01)  // _PR0: Power Resources for D0
                    {
                        NVPR
                    })
                    Name (_PR3, Package (0x01)  // _PR3: Power Resources for D3hot
                    {
                        NVPR
                    })
                    PowerResource (NVPR, 0x00, 0x0000)
                    {
                        Name (_STA, One)  // _STA: Status
                        Method (_ON, 0, NotSerialized)  // _ON_: Power On
                        {
                            If (IR3D ())
                            {
                                Return (Zero)
                            }

                            RPON ()
                            _STA = One
                        }

                        Method (_OFF, 0, NotSerialized)  // _OFF: Power Off
                        {
                            If (IR3D ())
                            {
                                Return (Zero)
                            }

                            RPOF ()
                            _STA = Zero
                        }
                    }
                }
            }

            If ((0x0100 & RCG1))
            {
                Scope (NVM3)
                {
                    Method (_S0W, 0, NotSerialized)  // _S0W: S0 Device Wake State
                    {
                        Return (0x04)
                    }

                    Name (_PR0, Package (0x01)  // _PR0: Power Resources for D0
                    {
                        NVPR
                    })
                    Name (_PR3, Package (0x01)  // _PR3: Power Resources for D3hot
                    {
                        NVPR
                    })
                    PowerResource (NVPR, 0x00, 0x0000)
                    {
                        Name (_STA, One)  // _STA: Status
                        Method (_ON, 0, NotSerialized)  // _ON_: Power On
                        {
                            If (IR3D ())
                            {
                                Return (Zero)
                            }

                            RPON ()
                            _STA = One
                        }

                        Method (_OFF, 0, NotSerialized)  // _OFF: Power Off
                        {
                            If (IR3D ())
                            {
                                Return (Zero)
                            }

                            RPOF ()
                            _STA = Zero
                        }
                    }
                }
            }
        }
    }

    If ((CondRefOf (VMDE) && CondRefOf (\_SB.PC00.VMD0)))
    {
        Scope (\_SB.PC00)
        {
            If ((VMDE == One))
            {
                Scope (VMD0)
                {
                    If ((CondRefOf (VMR1) && CondRefOf (HBSL)))
                    {
                        If (((VMR1 & One) && !(HBSL & One)))
                        {
                            Scope (RP01)
                            {
                                Name (_S0W, 0x04)  // _S0W: S0 Device Wake State
                                Name (_PR0, Package (0x01)  // _PR0: Power Resources for D0
                                {
                                    NVPR
                                })
                                Name (_PR3, Package (0x01)  // _PR3: Power Resources for D3hot
                                {
                                    NVPR
                                })
                                PowerResource (NVPR, 0x04, 0x0000)
                                {
                                    Name (_STA, One)  // _STA: Status
                                    Method (_ON, 0, Serialized)  // _ON_: Power On
                                    {
                                        If (!VR3D ())
                                        {
                                            VPON ()
                                            _STA = One
                                        }
                                    }

                                    Method (_OFF, 0, Serialized)  // _OFF: Power Off
                                    {
                                        If (!VR3D ())
                                        {
                                            VPOF ()
                                            _STA = Zero
                                        }
                                    }
                                }
                            }
                        }

                        If (((VMR1 & 0x02) && !(HBSL & One)))
                        {
                            Scope (RP02)
                            {
                                Name (_S0W, 0x04)  // _S0W: S0 Device Wake State
                                Name (_PR0, Package (0x01)  // _PR0: Power Resources for D0
                                {
                                    NVPR
                                })
                                Name (_PR3, Package (0x01)  // _PR3: Power Resources for D3hot
                                {
                                    NVPR
                                })
                                PowerResource (NVPR, 0x04, 0x0000)
                                {
                                    Name (_STA, One)  // _STA: Status
                                    Method (_ON, 0, Serialized)  // _ON_: Power On
                                    {
                                        If (!VR3D ())
                                        {
                                            VPON ()
                                            _STA = One
                                        }
                                    }

                                    Method (_OFF, 0, Serialized)  // _OFF: Power Off
                                    {
                                        If (!VR3D ())
                                        {
                                            VPOF ()
                                            _STA = Zero
                                        }
                                    }
                                }
                            }
                        }

                        If (((VMR1 & 0x04) && !(HBSL & One)))
                        {
                            Scope (RP03)
                            {
                                Name (_S0W, 0x04)  // _S0W: S0 Device Wake State
                                Name (_PR0, Package (0x01)  // _PR0: Power Resources for D0
                                {
                                    NVPR
                                })
                                Name (_PR3, Package (0x01)  // _PR3: Power Resources for D3hot
                                {
                                    NVPR
                                })
                                PowerResource (NVPR, 0x04, 0x0000)
                                {
                                    Name (_STA, One)  // _STA: Status
                                    Method (_ON, 0, Serialized)  // _ON_: Power On
                                    {
                                        If (!VR3D ())
                                        {
                                            VPON ()
                                            _STA = One
                                        }
                                    }

                                    Method (_OFF, 0, Serialized)  // _OFF: Power Off
                                    {
                                        If (!VR3D ())
                                        {
                                            VPOF ()
                                            _STA = Zero
                                        }
                                    }
                                }
                            }
                        }

                        If (((VMR1 & 0x08) && !(HBSL & One)))
                        {
                            Scope (RP04)
                            {
                                Name (_S0W, 0x04)  // _S0W: S0 Device Wake State
                                Name (_PR0, Package (0x01)  // _PR0: Power Resources for D0
                                {
                                    NVPR
                                })
                                Name (_PR3, Package (0x01)  // _PR3: Power Resources for D3hot
                                {
                                    NVPR
                                })
                                PowerResource (NVPR, 0x04, 0x0000)
                                {
                                    Name (_STA, One)  // _STA: Status
                                    Method (_ON, 0, Serialized)  // _ON_: Power On
                                    {
                                        If (!VR3D ())
                                        {
                                            VPON ()
                                            _STA = One
                                        }
                                    }

                                    Method (_OFF, 0, Serialized)  // _OFF: Power Off
                                    {
                                        If (!VR3D ())
                                        {
                                            VPOF ()
                                            _STA = Zero
                                        }
                                    }
                                }
                            }
                        }

                        If (((VMR1 & 0x10) && !(HBSL & 0x02)))
                        {
                            Scope (RP05)
                            {
                                Name (_S0W, 0x04)  // _S0W: S0 Device Wake State
                                Name (_PR0, Package (0x01)  // _PR0: Power Resources for D0
                                {
                                    NVPR
                                })
                                Name (_PR3, Package (0x01)  // _PR3: Power Resources for D3hot
                                {
                                    NVPR
                                })
                                PowerResource (NVPR, 0x04, 0x0000)
                                {
                                    Name (_STA, One)  // _STA: Status
                                    Method (_ON, 0, Serialized)  // _ON_: Power On
                                    {
                                        If (!VR3D ())
                                        {
                                            VPON ()
                                            _STA = One
                                        }
                                    }

                                    Method (_OFF, 0, Serialized)  // _OFF: Power Off
                                    {
                                        If (!VR3D ())
                                        {
                                            VPOF ()
                                            _STA = Zero
                                        }
                                    }
                                }
                            }
                        }

                        If (((VMR1 & 0x20) && !(HBSL & 0x02)))
                        {
                            Scope (RP06)
                            {
                                Name (_S0W, 0x04)  // _S0W: S0 Device Wake State
                                Name (_PR0, Package (0x01)  // _PR0: Power Resources for D0
                                {
                                    NVPR
                                })
                                Name (_PR3, Package (0x01)  // _PR3: Power Resources for D3hot
                                {
                                    NVPR
                                })
                                PowerResource (NVPR, 0x04, 0x0000)
                                {
                                    Name (_STA, One)  // _STA: Status
                                    Method (_ON, 0, Serialized)  // _ON_: Power On
                                    {
                                        If (!VR3D ())
                                        {
                                            VPON ()
                                            _STA = One
                                        }
                                    }

                                    Method (_OFF, 0, Serialized)  // _OFF: Power Off
                                    {
                                        If (!VR3D ())
                                        {
                                            VPOF ()
                                            _STA = Zero
                                        }
                                    }
                                }
                            }
                        }

                        If (((VMR1 & 0x40) && !(HBSL & 0x02)))
                        {
                            Scope (RP07)
                            {
                                Name (_S0W, 0x04)  // _S0W: S0 Device Wake State
                                Name (_PR0, Package (0x01)  // _PR0: Power Resources for D0
                                {
                                    NVPR
                                })
                                Name (_PR3, Package (0x01)  // _PR3: Power Resources for D3hot
                                {
                                    NVPR
                                })
                                PowerResource (NVPR, 0x04, 0x0000)
                                {
                                    Name (_STA, One)  // _STA: Status
                                    Method (_ON, 0, Serialized)  // _ON_: Power On
                                    {
                                        If (!VR3D ())
                                        {
                                            VPON ()
                                            _STA = One
                                        }
                                    }

                                    Method (_OFF, 0, Serialized)  // _OFF: Power Off
                                    {
                                        If (!VR3D ())
                                        {
                                            VPOF ()
                                            _STA = Zero
                                        }
                                    }
                                }
                            }
                        }

                        If (((VMR1 & 0x80) && !(HBSL & 0x02)))
                        {
                            Scope (RP08)
                            {
                                Name (_S0W, 0x04)  // _S0W: S0 Device Wake State
                                Name (_PR0, Package (0x01)  // _PR0: Power Resources for D0
                                {
                                    NVPR
                                })
                                Name (_PR3, Package (0x01)  // _PR3: Power Resources for D3hot
                                {
                                    NVPR
                                })
                                PowerResource (NVPR, 0x04, 0x0000)
                                {
                                    Name (_STA, One)  // _STA: Status
                                    Method (_ON, 0, Serialized)  // _ON_: Power On
                                    {
                                        If (!VR3D ())
                                        {
                                            VPON ()
                                            _STA = One
                                        }
                                    }

                                    Method (_OFF, 0, Serialized)  // _OFF: Power Off
                                    {
                                        If (!VR3D ())
                                        {
                                            VPOF ()
                                            _STA = Zero
                                        }
                                    }
                                }
                            }
                        }
                    }

                    If ((CondRefOf (VMR2) && CondRefOf (HBSL)))
                    {
                        If (((VMR2 & One) && !(HBSL & 0x04)))
                        {
                            Scope (RP09)
                            {
                                Name (_S0W, 0x04)  // _S0W: S0 Device Wake State
                                Name (_PR0, Package (0x01)  // _PR0: Power Resources for D0
                                {
                                    NVPR
                                })
                                Name (_PR3, Package (0x01)  // _PR3: Power Resources for D3hot
                                {
                                    NVPR
                                })
                                PowerResource (NVPR, 0x04, 0x0000)
                                {
                                    Name (_STA, One)  // _STA: Status
                                    Method (_ON, 0, Serialized)  // _ON_: Power On
                                    {
                                        If (!VR3D ())
                                        {
                                            VPON ()
                                            _STA = One
                                        }
                                    }

                                    Method (_OFF, 0, Serialized)  // _OFF: Power Off
                                    {
                                        If (!VR3D ())
                                        {
                                            VPOF ()
                                            _STA = Zero
                                        }
                                    }
                                }
                            }
                        }

                        If (((VMR2 & 0x02) && !(HBSL & 0x04)))
                        {
                            Scope (RP10)
                            {
                                Name (_S0W, 0x04)  // _S0W: S0 Device Wake State
                                Name (_PR0, Package (0x01)  // _PR0: Power Resources for D0
                                {
                                    NVPR
                                })
                                Name (_PR3, Package (0x01)  // _PR3: Power Resources for D3hot
                                {
                                    NVPR
                                })
                                PowerResource (NVPR, 0x04, 0x0000)
                                {
                                    Name (_STA, One)  // _STA: Status
                                    Method (_ON, 0, Serialized)  // _ON_: Power On
                                    {
                                        If (!VR3D ())
                                        {
                                            VPON ()
                                            _STA = One
                                        }
                                    }

                                    Method (_OFF, 0, Serialized)  // _OFF: Power Off
                                    {
                                        If (!VR3D ())
                                        {
                                            VPOF ()
                                            _STA = Zero
                                        }
                                    }
                                }
                            }
                        }

                        If (((VMR2 & 0x04) && !(HBSL & 0x04)))
                        {
                            Scope (RP11)
                            {
                                Name (_S0W, 0x04)  // _S0W: S0 Device Wake State
                                Name (_PR0, Package (0x01)  // _PR0: Power Resources for D0
                                {
                                    NVPR
                                })
                                Name (_PR3, Package (0x01)  // _PR3: Power Resources for D3hot
                                {
                                    NVPR
                                })
                                PowerResource (NVPR, 0x04, 0x0000)
                                {
                                    Name (_STA, One)  // _STA: Status
                                    Method (_ON, 0, Serialized)  // _ON_: Power On
                                    {
                                        If (!VR3D ())
                                        {
                                            VPON ()
                                            _STA = One
                                        }
                                    }

                                    Method (_OFF, 0, Serialized)  // _OFF: Power Off
                                    {
                                        If (!VR3D ())
                                        {
                                            VPOF ()
                                            _STA = Zero
                                        }
                                    }
                                }
                            }
                        }

                        If (((VMR2 & 0x08) && !(HBSL & 0x04)))
                        {
                            Scope (RP12)
                            {
                                Name (_S0W, 0x04)  // _S0W: S0 Device Wake State
                                Name (_PR0, Package (0x01)  // _PR0: Power Resources for D0
                                {
                                    NVPR
                                })
                                Name (_PR3, Package (0x01)  // _PR3: Power Resources for D3hot
                                {
                                    NVPR
                                })
                                PowerResource (NVPR, 0x04, 0x0000)
                                {
                                    Name (_STA, One)  // _STA: Status
                                    Method (_ON, 0, Serialized)  // _ON_: Power On
                                    {
                                        If (!VR3D ())
                                        {
                                            VPON ()
                                            _STA = One
                                        }
                                    }

                                    Method (_OFF, 0, Serialized)  // _OFF: Power Off
                                    {
                                        If (!VR3D ())
                                        {
                                            VPOF ()
                                            _STA = Zero
                                        }
                                    }
                                }
                            }
                        }

                        If (((VMR2 & 0x10) && !(HBSL & 0x08)))
                        {
                            Scope (RP13)
                            {
                                Name (_S0W, 0x04)  // _S0W: S0 Device Wake State
                                Name (_PR0, Package (0x01)  // _PR0: Power Resources for D0
                                {
                                    NVPR
                                })
                                Name (_PR3, Package (0x01)  // _PR3: Power Resources for D3hot
                                {
                                    NVPR
                                })
                                PowerResource (NVPR, 0x04, 0x0000)
                                {
                                    Name (_STA, One)  // _STA: Status
                                    Method (_ON, 0, Serialized)  // _ON_: Power On
                                    {
                                        If (!VR3D ())
                                        {
                                            VPON ()
                                            _STA = One
                                        }
                                    }

                                    Method (_OFF, 0, Serialized)  // _OFF: Power Off
                                    {
                                        If (!VR3D ())
                                        {
                                            VPOF ()
                                            _STA = Zero
                                        }
                                    }
                                }
                            }
                        }

                        If (((VMR2 & 0x20) && !(HBSL & 0x08)))
                        {
                            Scope (RP14)
                            {
                                Name (_S0W, 0x04)  // _S0W: S0 Device Wake State
                                Name (_PR0, Package (0x01)  // _PR0: Power Resources for D0
                                {
                                    NVPR
                                })
                                Name (_PR3, Package (0x01)  // _PR3: Power Resources for D3hot
                                {
                                    NVPR
                                })
                                PowerResource (NVPR, 0x04, 0x0000)
                                {
                                    Name (_STA, One)  // _STA: Status
                                    Method (_ON, 0, Serialized)  // _ON_: Power On
                                    {
                                        If (!VR3D ())
                                        {
                                            VPON ()
                                            _STA = One
                                        }
                                    }

                                    Method (_OFF, 0, Serialized)  // _OFF: Power Off
                                    {
                                        If (!VR3D ())
                                        {
                                            VPOF ()
                                            _STA = Zero
                                        }
                                    }
                                }
                            }
                        }

                        If (((VMR2 & 0x40) && !(HBSL & 0x08)))
                        {
                            Scope (RP15)
                            {
                                Name (_S0W, 0x04)  // _S0W: S0 Device Wake State
                                Name (_PR0, Package (0x01)  // _PR0: Power Resources for D0
                                {
                                    NVPR
                                })
                                Name (_PR3, Package (0x01)  // _PR3: Power Resources for D3hot
                                {
                                    NVPR
                                })
                                PowerResource (NVPR, 0x04, 0x0000)
                                {
                                    Name (_STA, One)  // _STA: Status
                                    Method (_ON, 0, Serialized)  // _ON_: Power On
                                    {
                                        If (!VR3D ())
                                        {
                                            VPON ()
                                            _STA = One
                                        }
                                    }

                                    Method (_OFF, 0, Serialized)  // _OFF: Power Off
                                    {
                                        If (!VR3D ())
                                        {
                                            VPOF ()
                                            _STA = Zero
                                        }
                                    }
                                }
                            }
                        }

                        If (((VMR2 & 0x80) && !(HBSL & 0x08)))
                        {
                            Scope (RP16)
                            {
                                Name (_S0W, 0x04)  // _S0W: S0 Device Wake State
                                Name (_PR0, Package (0x01)  // _PR0: Power Resources for D0
                                {
                                    NVPR
                                })
                                Name (_PR3, Package (0x01)  // _PR3: Power Resources for D3hot
                                {
                                    NVPR
                                })
                                PowerResource (NVPR, 0x04, 0x0000)
                                {
                                    Name (_STA, One)  // _STA: Status
                                    Method (_ON, 0, Serialized)  // _ON_: Power On
                                    {
                                        If (!VR3D ())
                                        {
                                            VPON ()
                                            _STA = One
                                        }
                                    }

                                    Method (_OFF, 0, Serialized)  // _OFF: Power Off
                                    {
                                        If (!VR3D ())
                                        {
                                            VPOF ()
                                            _STA = Zero
                                        }
                                    }
                                }
                            }
                        }
                    }

                    If ((CondRefOf (VMR3) && CondRefOf (HBSL)))
                    {
                        If (((VMR3 & One) && !(HBSL & 0x10)))
                        {
                            Scope (RP17)
                            {
                                Name (_S0W, 0x04)  // _S0W: S0 Device Wake State
                                Name (_PR0, Package (0x01)  // _PR0: Power Resources for D0
                                {
                                    NVPR
                                })
                                Name (_PR3, Package (0x01)  // _PR3: Power Resources for D3hot
                                {
                                    NVPR
                                })
                                PowerResource (NVPR, 0x04, 0x0000)
                                {
                                    Name (_STA, One)  // _STA: Status
                                    Method (_ON, 0, Serialized)  // _ON_: Power On
                                    {
                                        If (!VR3D ())
                                        {
                                            VPON ()
                                            _STA = One
                                        }
                                    }

                                    Method (_OFF, 0, Serialized)  // _OFF: Power Off
                                    {
                                        If (!VR3D ())
                                        {
                                            VPOF ()
                                            _STA = Zero
                                        }
                                    }
                                }
                            }
                        }

                        If (((VMR3 & 0x02) && !(HBSL & 0x10)))
                        {
                            Scope (RP18)
                            {
                                Name (_S0W, 0x04)  // _S0W: S0 Device Wake State
                                Name (_PR0, Package (0x01)  // _PR0: Power Resources for D0
                                {
                                    NVPR
                                })
                                Name (_PR3, Package (0x01)  // _PR3: Power Resources for D3hot
                                {
                                    NVPR
                                })
                                PowerResource (NVPR, 0x04, 0x0000)
                                {
                                    Name (_STA, One)  // _STA: Status
                                    Method (_ON, 0, Serialized)  // _ON_: Power On
                                    {
                                        If (!VR3D ())
                                        {
                                            VPON ()
                                            _STA = One
                                        }
                                    }

                                    Method (_OFF, 0, Serialized)  // _OFF: Power Off
                                    {
                                        If (!VR3D ())
                                        {
                                            VPOF ()
                                            _STA = Zero
                                        }
                                    }
                                }
                            }
                        }

                        If (((VMR3 & 0x04) && !(HBSL & 0x10)))
                        {
                            Scope (RP19)
                            {
                                Name (_S0W, 0x04)  // _S0W: S0 Device Wake State
                                Name (_PR0, Package (0x01)  // _PR0: Power Resources for D0
                                {
                                    NVPR
                                })
                                Name (_PR3, Package (0x01)  // _PR3: Power Resources for D3hot
                                {
                                    NVPR
                                })
                                PowerResource (NVPR, 0x04, 0x0000)
                                {
                                    Name (_STA, One)  // _STA: Status
                                    Method (_ON, 0, Serialized)  // _ON_: Power On
                                    {
                                        If (!VR3D ())
                                        {
                                            VPON ()
                                            _STA = One
                                        }
                                    }

                                    Method (_OFF, 0, Serialized)  // _OFF: Power Off
                                    {
                                        If (!VR3D ())
                                        {
                                            VPOF ()
                                            _STA = Zero
                                        }
                                    }
                                }
                            }
                        }

                        If (((VMR3 & 0x08) && !(HBSL & 0x10)))
                        {
                            Scope (RP20)
                            {
                                Name (_S0W, 0x04)  // _S0W: S0 Device Wake State
                                Name (_PR0, Package (0x01)  // _PR0: Power Resources for D0
                                {
                                    NVPR
                                })
                                Name (_PR3, Package (0x01)  // _PR3: Power Resources for D3hot
                                {
                                    NVPR
                                })
                                PowerResource (NVPR, 0x04, 0x0000)
                                {
                                    Name (_STA, One)  // _STA: Status
                                    Method (_ON, 0, Serialized)  // _ON_: Power On
                                    {
                                        If (!VR3D ())
                                        {
                                            VPON ()
                                            _STA = One
                                        }
                                    }

                                    Method (_OFF, 0, Serialized)  // _OFF: Power Off
                                    {
                                        If (!VR3D ())
                                        {
                                            VPOF ()
                                            _STA = Zero
                                        }
                                    }
                                }
                            }
                        }

                        If (((VMR3 & 0x10) && !(HBSL & 0x20)))
                        {
                            Scope (RP21)
                            {
                                Name (_S0W, 0x04)  // _S0W: S0 Device Wake State
                                Name (_PR0, Package (0x01)  // _PR0: Power Resources for D0
                                {
                                    NVPR
                                })
                                Name (_PR3, Package (0x01)  // _PR3: Power Resources for D3hot
                                {
                                    NVPR
                                })
                                PowerResource (NVPR, 0x04, 0x0000)
                                {
                                    Name (_STA, One)  // _STA: Status
                                    Method (_ON, 0, Serialized)  // _ON_: Power On
                                    {
                                        If (!VR3D ())
                                        {
                                            VPON ()
                                            _STA = One
                                        }
                                    }

                                    Method (_OFF, 0, Serialized)  // _OFF: Power Off
                                    {
                                        If (!VR3D ())
                                        {
                                            VPOF ()
                                            _STA = Zero
                                        }
                                    }
                                }
                            }
                        }

                        If (((VMR3 & 0x20) && !(HBSL & 0x20)))
                        {
                            Scope (RP22)
                            {
                                Name (_S0W, 0x04)  // _S0W: S0 Device Wake State
                                Name (_PR0, Package (0x01)  // _PR0: Power Resources for D0
                                {
                                    NVPR
                                })
                                Name (_PR3, Package (0x01)  // _PR3: Power Resources for D3hot
                                {
                                    NVPR
                                })
                                PowerResource (NVPR, 0x04, 0x0000)
                                {
                                    Name (_STA, One)  // _STA: Status
                                    Method (_ON, 0, Serialized)  // _ON_: Power On
                                    {
                                        If (!VR3D ())
                                        {
                                            VPON ()
                                            _STA = One
                                        }
                                    }

                                    Method (_OFF, 0, Serialized)  // _OFF: Power Off
                                    {
                                        If (!VR3D ())
                                        {
                                            VPOF ()
                                            _STA = Zero
                                        }
                                    }
                                }
                            }
                        }

                        If (((VMR3 & 0x40) && !(HBSL & 0x20)))
                        {
                            Scope (RP23)
                            {
                                Name (_S0W, 0x04)  // _S0W: S0 Device Wake State
                                Name (_PR0, Package (0x01)  // _PR0: Power Resources for D0
                                {
                                    NVPR
                                })
                                Name (_PR3, Package (0x01)  // _PR3: Power Resources for D3hot
                                {
                                    NVPR
                                })
                                PowerResource (NVPR, 0x04, 0x0000)
                                {
                                    Name (_STA, One)  // _STA: Status
                                    Method (_ON, 0, Serialized)  // _ON_: Power On
                                    {
                                        If (!VR3D ())
                                        {
                                            VPON ()
                                            _STA = One
                                        }
                                    }

                                    Method (_OFF, 0, Serialized)  // _OFF: Power Off
                                    {
                                        If (!VR3D ())
                                        {
                                            VPOF ()
                                            _STA = Zero
                                        }
                                    }
                                }
                            }
                        }

                        If (((VMR3 & 0x80) && !(HBSL & 0x20)))
                        {
                            Scope (RP24)
                            {
                                Name (_S0W, 0x04)  // _S0W: S0 Device Wake State
                                Name (_PR0, Package (0x01)  // _PR0: Power Resources for D0
                                {
                                    NVPR
                                })
                                Name (_PR3, Package (0x01)  // _PR3: Power Resources for D3hot
                                {
                                    NVPR
                                })
                                PowerResource (NVPR, 0x04, 0x0000)
                                {
                                    Name (_STA, One)  // _STA: Status
                                    Method (_ON, 0, Serialized)  // _ON_: Power On
                                    {
                                        If (!VR3D ())
                                        {
                                            VPON ()
                                            _STA = One
                                        }
                                    }

                                    Method (_OFF, 0, Serialized)  // _OFF: Power Off
                                    {
                                        If (!VR3D ())
                                        {
                                            VPOF ()
                                            _STA = Zero
                                        }
                                    }
                                }
                            }
                        }
                    }

                    If (CondRefOf (VMCP))
                    {
                        If ((VMCP & One))
                        {
                            Scope (PEG1)
                            {
                                Name (_S0W, 0x04)  // _S0W: S0 Device Wake State
                                Name (_PR0, Package (0x01)  // _PR0: Power Resources for D0
                                {
                                    NVPR
                                })
                                Name (_PR3, Package (0x01)  // _PR3: Power Resources for D3hot
                                {
                                    NVPR
                                })
                                PowerResource (NVPR, 0x04, 0x0000)
                                {
                                    Name (_STA, One)  // _STA: Status
                                    Method (_ON, 0, Serialized)  // _ON_: Power On
                                    {
                                        If (!VR3D ())
                                        {
                                            VPON ()
                                            _STA = One
                                        }
                                    }

                                    Method (_OFF, 0, Serialized)  // _OFF: Power Off
                                    {
                                        If (!VR3D ())
                                        {
                                            VPOF ()
                                            _STA = Zero
                                        }
                                    }
                                }
                            }
                        }

                        If ((VMCP & 0x02))
                        {
                            Scope (PEG2)
                            {
                                Name (_S0W, 0x04)  // _S0W: S0 Device Wake State
                                Name (_PR0, Package (0x01)  // _PR0: Power Resources for D0
                                {
                                    NVPR
                                })
                                Name (_PR3, Package (0x01)  // _PR3: Power Resources for D3hot
                                {
                                    NVPR
                                })
                                PowerResource (NVPR, 0x04, 0x0000)
                                {
                                    Name (_STA, One)  // _STA: Status
                                    Method (_ON, 0, Serialized)  // _ON_: Power On
                                    {
                                        If (!VR3D ())
                                        {
                                            VPON ()
                                            _STA = One
                                        }
                                    }

                                    Method (_OFF, 0, Serialized)  // _OFF: Power Off
                                    {
                                        If (!VR3D ())
                                        {
                                            VPOF ()
                                            _STA = Zero
                                        }
                                    }
                                }
                            }
                        }

                        If ((VMCP & 0x04))
                        {
                            Scope (PEG3)
                            {
                                Name (_S0W, 0x04)  // _S0W: S0 Device Wake State
                                Name (_PR0, Package (0x01)  // _PR0: Power Resources for D0
                                {
                                    NVPR
                                })
                                Name (_PR3, Package (0x01)  // _PR3: Power Resources for D3hot
                                {
                                    NVPR
                                })
                                PowerResource (NVPR, 0x04, 0x0000)
                                {
                                    Name (_STA, One)  // _STA: Status
                                    Method (_ON, 0, Serialized)  // _ON_: Power On
                                    {
                                        If (!VR3D ())
                                        {
                                            VPON ()
                                            _STA = One
                                        }
                                    }

                                    Method (_OFF, 0, Serialized)  // _OFF: Power Off
                                    {
                                        If (!VR3D ())
                                        {
                                            VPOF ()
                                            _STA = Zero
                                        }
                                    }
                                }
                            }
                        }

                        If ((VMCP & 0x08))
                        {
                            Scope (PEG0)
                            {
                                Name (_S0W, 0x04)  // _S0W: S0 Device Wake State
                                Name (_PR0, Package (0x01)  // _PR0: Power Resources for D0
                                {
                                    NVPR
                                })
                                Name (_PR3, Package (0x01)  // _PR3: Power Resources for D3hot
                                {
                                    NVPR
                                })
                                PowerResource (NVPR, 0x04, 0x0000)
                                {
                                    Name (_STA, One)  // _STA: Status
                                    Method (_ON, 0, Serialized)  // _ON_: Power On
                                    {
                                        If (!VR3D ())
                                        {
                                            VPON ()
                                            _STA = One
                                        }
                                    }

                                    Method (_OFF, 0, Serialized)  // _OFF: Power Off
                                    {
                                        If (!VR3D ())
                                        {
                                            VPOF ()
                                            _STA = Zero
                                        }
                                    }
                                }
                            }
                        }
                    }

                    If (CondRefOf (VMS0))
                    {
                        If ((VMS0 == One))
                        {
                            Scope (PRT0)
                            {
                                Name (_S0W, 0x04)  // _S0W: S0 Device Wake State
                                Name (_PR0, Package (0x01)  // _PR0: Power Resources for D0
                                {
                                    NVPR
                                })
                                Name (_PR3, Package (0x01)  // _PR3: Power Resources for D3hot
                                {
                                    NVPR
                                })
                                PowerResource (NVPR, 0x04, 0x0000)
                                {
                                    Name (_STA, One)  // _STA: Status
                                    Method (_ON, 0, Serialized)  // _ON_: Power On
                                    {
                                        If (!VS3D ())
                                        {
                                            VSON ()
                                            _STA = One
                                        }
                                    }

                                    Method (_OFF, 0, Serialized)  // _OFF: Power Off
                                    {
                                        If (!VS3D ())
                                        {
                                            VSOF ()
                                            _STA = Zero
                                        }
                                    }
                                }
                            }
                        }
                    }

                    If (CondRefOf (VMS1))
                    {
                        If ((VMS1 == One))
                        {
                            Scope (PRT1)
                            {
                                Name (_S0W, 0x04)  // _S0W: S0 Device Wake State
                                Name (_PR0, Package (0x01)  // _PR0: Power Resources for D0
                                {
                                    NVPR
                                })
                                Name (_PR3, Package (0x01)  // _PR3: Power Resources for D3hot
                                {
                                    NVPR
                                })
                                PowerResource (NVPR, 0x04, 0x0000)
                                {
                                    Name (_STA, One)  // _STA: Status
                                    Method (_ON, 0, Serialized)  // _ON_: Power On
                                    {
                                        If (!VS3D ())
                                        {
                                            VSON ()
                                            _STA = One
                                        }
                                    }

                                    Method (_OFF, 0, Serialized)  // _OFF: Power Off
                                    {
                                        If (!VS3D ())
                                        {
                                            VSOF ()
                                            _STA = Zero
                                        }
                                    }
                                }
                            }
                        }
                    }

                    If (CondRefOf (VMS2))
                    {
                        If ((VMS2 == One))
                        {
                            Scope (PRT2)
                            {
                                Name (_S0W, 0x04)  // _S0W: S0 Device Wake State
                                Name (_PR0, Package (0x01)  // _PR0: Power Resources for D0
                                {
                                    NVPR
                                })
                                Name (_PR3, Package (0x01)  // _PR3: Power Resources for D3hot
                                {
                                    NVPR
                                })
                                PowerResource (NVPR, 0x04, 0x0000)
                                {
                                    Name (_STA, One)  // _STA: Status
                                    Method (_ON, 0, Serialized)  // _ON_: Power On
                                    {
                                        If (!VS3D ())
                                        {
                                            VSON ()
                                            _STA = One
                                        }
                                    }

                                    Method (_OFF, 0, Serialized)  // _OFF: Power Off
                                    {
                                        If (!VS3D ())
                                        {
                                            VSOF ()
                                            _STA = Zero
                                        }
                                    }
                                }
                            }
                        }
                    }

                    If (CondRefOf (VMS3))
                    {
                        If ((VMS3 == One))
                        {
                            Scope (PRT3)
                            {
                                Name (_S0W, 0x04)  // _S0W: S0 Device Wake State
                                Name (_PR0, Package (0x01)  // _PR0: Power Resources for D0
                                {
                                    NVPR
                                })
                                Name (_PR3, Package (0x01)  // _PR3: Power Resources for D3hot
                                {
                                    NVPR
                                })
                                PowerResource (NVPR, 0x04, 0x0000)
                                {
                                    Name (_STA, One)  // _STA: Status
                                    Method (_ON, 0, Serialized)  // _ON_: Power On
                                    {
                                        If (!VS3D ())
                                        {
                                            VSON ()
                                            _STA = One
                                        }
                                    }

                                    Method (_OFF, 0, Serialized)  // _OFF: Power Off
                                    {
                                        If (!VS3D ())
                                        {
                                            VSOF ()
                                            _STA = Zero
                                        }
                                    }
                                }
                            }
                        }
                    }

                    If (CondRefOf (VMS4))
                    {
                        If ((VMS4 == One))
                        {
                            Scope (PRT4)
                            {
                                Name (_S0W, 0x04)  // _S0W: S0 Device Wake State
                                Name (_PR0, Package (0x01)  // _PR0: Power Resources for D0
                                {
                                    NVPR
                                })
                                Name (_PR3, Package (0x01)  // _PR3: Power Resources for D3hot
                                {
                                    NVPR
                                })
                                PowerResource (NVPR, 0x04, 0x0000)
                                {
                                    Name (_STA, One)  // _STA: Status
                                    Method (_ON, 0, Serialized)  // _ON_: Power On
                                    {
                                        If (!VS3D ())
                                        {
                                            VSON ()
                                            _STA = One
                                        }
                                    }

                                    Method (_OFF, 0, Serialized)  // _OFF: Power Off
                                    {
                                        If (!VS3D ())
                                        {
                                            VSOF ()
                                            _STA = Zero
                                        }
                                    }
                                }
                            }
                        }
                    }

                    If (CondRefOf (VMS5))
                    {
                        If ((VMS5 == One))
                        {
                            Scope (PRT5)
                            {
                                Name (_S0W, 0x04)  // _S0W: S0 Device Wake State
                                Name (_PR0, Package (0x01)  // _PR0: Power Resources for D0
                                {
                                    NVPR
                                })
                                Name (_PR3, Package (0x01)  // _PR3: Power Resources for D3hot
                                {
                                    NVPR
                                })
                                PowerResource (NVPR, 0x04, 0x0000)
                                {
                                    Name (_STA, One)  // _STA: Status
                                    Method (_ON, 0, Serialized)  // _ON_: Power On
                                    {
                                        If (!VS3D ())
                                        {
                                            VSON ()
                                            _STA = One
                                        }
                                    }

                                    Method (_OFF, 0, Serialized)  // _OFF: Power Off
                                    {
                                        If (!VS3D ())
                                        {
                                            VSOF ()
                                            _STA = Zero
                                        }
                                    }
                                }
                            }
                        }
                    }

                    If (CondRefOf (VMS6))
                    {
                        If ((VMS6 == One))
                        {
                            Scope (PRT6)
                            {
                                Name (_S0W, 0x04)  // _S0W: S0 Device Wake State
                                Name (_PR0, Package (0x01)  // _PR0: Power Resources for D0
                                {
                                    NVPR
                                })
                                Name (_PR3, Package (0x01)  // _PR3: Power Resources for D3hot
                                {
                                    NVPR
                                })
                                PowerResource (NVPR, 0x04, 0x0000)
                                {
                                    Name (_STA, One)  // _STA: Status
                                    Method (_ON, 0, Serialized)  // _ON_: Power On
                                    {
                                        If (!VS3D ())
                                        {
                                            VSON ()
                                            _STA = One
                                        }
                                    }

                                    Method (_OFF, 0, Serialized)  // _OFF: Power Off
                                    {
                                        If (!VS3D ())
                                        {
                                            VSOF ()
                                            _STA = Zero
                                        }
                                    }
                                }
                            }
                        }
                    }

                    If (CondRefOf (VMS7))
                    {
                        If ((VMS7 == One))
                        {
                            Scope (PRT7)
                            {
                                Name (_S0W, 0x04)  // _S0W: S0 Device Wake State
                                Name (_PR0, Package (0x01)  // _PR0: Power Resources for D0
                                {
                                    NVPR
                                })
                                Name (_PR3, Package (0x01)  // _PR3: Power Resources for D3hot
                                {
                                    NVPR
                                })
                                PowerResource (NVPR, 0x04, 0x0000)
                                {
                                    Name (_STA, One)  // _STA: Status
                                    Method (_ON, 0, Serialized)  // _ON_: Power On
                                    {
                                        If (!VS3D ())
                                        {
                                            VSON ()
                                            _STA = One
                                        }
                                    }

                                    Method (_OFF, 0, Serialized)  // _OFF: Power Off
                                    {
                                        If (!VS3D ())
                                        {
                                            VSOF ()
                                            _STA = Zero
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
    }

    Scope (\_SB.PC00.XHCI.RHUB)
    {
        Method (PS0X, 0, Serialized)
        {
        }

        Method (PS2X, 0, Serialized)
        {
        }

        Method (PS3X, 0, Serialized)
        {
        }
    }

    If ((XDCE == One))
    {
        Scope (\_SB)
        {
            PowerResource (USBC, 0x00, 0x0000)
            {
                Method (_STA, 0, NotSerialized)  // _STA: Status
                {
                    Return (0x0F)
                }

                Method (_ON, 0, NotSerialized)  // _ON_: Power On
                {
                }

                Method (_OFF, 0, NotSerialized)  // _OFF: Power Off
                {
                }
            }
        }

        Scope (\_SB.PC00.XDCI)
        {
            OperationRegion (GENR, SystemMemory, ((XDCB & 0xFFFFFFFFFFFFFF00) + 0x0010F81C), 0x04)
            Field (GENR, WordAcc, NoLock, Preserve)
            {
                    ,   2, 
                CPME,   1, 
                U3EN,   1, 
                U2EN,   1
            }

            Method (_PS3, 0, NotSerialized)  // _PS3: Power State 3
            {
                CPME = One
                U2EN = One
                U3EN = One
                \_SB.CSD3 (0x17)
            }

            Method (_PS0, 0, NotSerialized)  // _PS0: Power State 0
            {
                CPME = Zero
                U2EN = Zero
                U3EN = Zero
                If ((DVID == 0xFFFF))
                {
                    Return (Zero)
                }

                \_SB.CSD0 (0x17)
            }

            Method (_RMV, 0, NotSerialized)  // _RMV: Removal Status
            {
                Return (Zero)
            }

            Method (_PR3, 0, NotSerialized)  // _PR3: Power Resources for D3hot
            {
                Return (Package (0x01)
                {
                    USBC
                })
            }
        }
    }

    If ((GBES != Zero))
    {
        Scope (\_SB.PC00.GLAN)
        {
            Method (_PS3, 0, NotSerialized)  // _PS3: Power State 3
            {
                \_SB.CSD3 (0x15)
            }

            Method (_PS0, 0, NotSerialized)  // _PS0: Power State 0
            {
                If (!GBED)
                {
                    \_SB.CSD0 (0x15)
                }
            }
        }
    }

    Scope (\_SB.PC00.I2C0)
    {
        Method (PS0X, 0, Serialized)
        {
        }

        Method (PS3X, 0, Serialized)
        {
        }

        PowerResource (PXTC, 0x00, 0x0000)
        {
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                Return (PSTA (Zero))
            }

            Method (_ON, 0, NotSerialized)  // _ON_: Power On
            {
                PON (Zero)
            }

            Method (_OFF, 0, NotSerialized)  // _OFF: Power Off
            {
                POFF (Zero)
            }
        }

        PowerResource (PTPL, 0x00, 0x0000)
        {
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                Return (PSTA (One))
            }

            Method (_ON, 0, NotSerialized)  // _ON_: Power On
            {
                PON (One)
            }

            Method (_OFF, 0, NotSerialized)  // _OFF: Power Off
            {
                POFF (One)
            }
        }

        Name (ONTM, Zero)
        Method (PSTA, 1, Serialized)
        {
            If ((Arg0 == Zero))
            {
                Return (One)
            }

            If ((Arg0 == One))
            {
                If ((\_SB.GGOV (TPP1) == One))
                {
                    Return (One)
                }
                Else
                {
                    Return (Zero)
                }
            }

            Return (Zero)
        }

        Method (PON, 1, Serialized)
        {
            If ((Arg0 == Zero))
            {
                \_SB.SGRA (GPDI, One)
            }
            ElseIf ((Arg0 == One))
            {
                \_SB.SGOV (TPR1, PPR1)
                \_SB.SGOV (TPP1, PPP1)
                ONTM = Timer
                \_SB.SGRA (GPI1, PPI1)
            }
        }

        Method (POFF, 1, Serialized)
        {
            If ((Arg0 == Zero))
            {
                \_SB.SGRA (GPDI, Zero)
            }
            ElseIf ((Arg0 == One))
            {
                Local0 = (PPI1 ^ One)
                \_SB.SGRA (GPI1, Local0)
                Local0 = (PPP1 ^ One)
                \_SB.SGOV (TPP1, Local0)
                Local0 = (PPR1 ^ One)
                \_SB.SGOV (TPR1, Local0)
                ONTM = Zero
            }
        }

        Scope (TPD0)
        {
            Name (TD_P, Package (0x01)
            {
                \_SB.PC00.I2C0.PXTC
            })
            Alias (IC0D, TD_D)
            Alias (\_SB.PC00.I2C0.ONTM, TD_C)
            Method (PS0X, 0, Serialized)
            {
                If ((TD_C == Zero))
                {
                    Return (Zero)
                }

                Local0 = ((Timer - TD_C) / 0x2710)
                Local1 = (TD_D + VRRD) /* External reference */
                If ((Local0 < Local1))
                {
                    Sleep ((Local1 - Local0))
                }
            }

            Method (PS3X, 0, Serialized)
            {
            }

            Method (_PR0, 0, NotSerialized)  // _PR0: Power Resources for D0
            {
                If ((_STA () == 0x0F))
                {
                    Return (TD_P) /* \_SB_.PC00.I2C0.TPD0.TD_P */
                }
                Else
                {
                    Return (Package (0x00){})
                }
            }

            Method (_PR3, 0, NotSerialized)  // _PR3: Power Resources for D3hot
            {
                If ((_STA () == 0x0F))
                {
                    Return (TD_P) /* \_SB_.PC00.I2C0.TPD0.TD_P */
                }
                Else
                {
                    Return (Package (0x00){})
                }
            }

            Method (_PS0, 0, NotSerialized)  // _PS0: Power State 0
            {
                PS0X ()
            }

            Method (_PS3, 0, NotSerialized)  // _PS3: Power State 3
            {
                PS3X ()
            }
        }

        If ((TPLS == One))
        {
            Scope (TPL1)
            {
                Name (TD_P, Package (0x01)
                {
                    \_SB.PC00.I2C0.PTPL
                })
                Alias (IC1D, TD_D)
                Alias (\_SB.PC00.I2C0.ONTM, TD_C)
                Method (PS0X, 0, Serialized)
                {
                    If ((TD_C == Zero))
                    {
                        Return (Zero)
                    }

                    Local0 = ((Timer - TD_C) / 0x2710)
                    Local1 = (TD_D + VRRD) /* External reference */
                    If ((Local0 < Local1))
                    {
                        Sleep ((Local1 - Local0))
                    }
                }

                Method (PS3X, 0, Serialized)
                {
                }

                Method (_PR0, 0, NotSerialized)  // _PR0: Power Resources for D0
                {
                    If ((_STA () == 0x0F))
                    {
                        Return (TD_P) /* \_SB_.PC00.I2C0.TPL1.TD_P */
                    }
                    Else
                    {
                        Return (Package (0x00){})
                    }
                }

                Method (_PR3, 0, NotSerialized)  // _PR3: Power Resources for D3hot
                {
                    If ((_STA () == 0x0F))
                    {
                        Return (TD_P) /* \_SB_.PC00.I2C0.TPL1.TD_P */
                    }
                    Else
                    {
                        Return (Package (0x00){})
                    }
                }

                Method (_PS0, 0, NotSerialized)  // _PS0: Power State 0
                {
                    PS0X ()
                }

                Method (_PS3, 0, NotSerialized)  // _PS3: Power State 3
                {
                    PS3X ()
                }
            }
        }
    }

    Scope (\_SB.PC00.I2C1)
    {
        Method (PS0X, 0, Serialized)
        {
        }

        Method (PS3X, 0, Serialized)
        {
        }

        PowerResource (PXTC, 0x00, 0x0000)
        {
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                Return (PSTA ())
            }

            Method (_ON, 0, NotSerialized)  // _ON_: Power On
            {
                PON ()
            }

            Method (_OFF, 0, NotSerialized)  // _OFF: Power Off
            {
                POFF ()
            }
        }

        Name (ONTM, Zero)
        Method (PSTA, 0, NotSerialized)
        {
            If ((\_SB.GGOV (GPLP) == One))
            {
                Return (One)
            }
            Else
            {
                Return (Zero)
            }
        }

        Method (PON, 0, NotSerialized)
        {
            \_SB.SGOV (GPLR, PPLR)
            \_SB.SGOV (GPLP, PPLP)
            ONTM = Timer
            \_SB.SGRA (GPLI, PPLI)
        }

        Method (POFF, 0, NotSerialized)
        {
            Local0 = (PPLI ^ One)
            \_SB.SGRA (GPLI, Local0)
            Local0 = (PPLP ^ One)
            \_SB.SGOV (GPLP, Local0)
            Local0 = (PPLR ^ One)
            \_SB.SGOV (GPLR, Local0)
            ONTM = Zero
        }

        Scope (TPL1)
        {
            Name (TD_P, Package (0x01)
            {
                \_SB.PC00.I2C1.PXTC
            })
            Alias (IC1D, TD_D)
            Alias (\_SB.PC00.I2C1.ONTM, TD_C)
            Method (PS0X, 0, Serialized)
            {
                If ((TD_C == Zero))
                {
                    Return (Zero)
                }

                Local0 = ((Timer - TD_C) / 0x2710)
                Local1 = (TD_D + VRRD) /* External reference */
                If ((Local0 < Local1))
                {
                    Sleep ((Local1 - Local0))
                }
            }

            Method (PS3X, 0, Serialized)
            {
            }

            Method (_PR0, 0, NotSerialized)  // _PR0: Power Resources for D0
            {
                If ((_STA () == 0x0F))
                {
                    Return (TD_P) /* \_SB_.PC00.I2C1.TPL1.TD_P */
                }
                Else
                {
                    Return (Package (0x00){})
                }
            }

            Method (_PR3, 0, NotSerialized)  // _PR3: Power Resources for D3hot
            {
                If ((_STA () == 0x0F))
                {
                    Return (TD_P) /* \_SB_.PC00.I2C1.TPL1.TD_P */
                }
                Else
                {
                    Return (Package (0x00){})
                }
            }

            Method (_PS0, 0, NotSerialized)  // _PS0: Power State 0
            {
                PS0X ()
            }

            Method (_PS3, 0, NotSerialized)  // _PS3: Power State 3
            {
                PS3X ()
            }
        }
    }

    Scope (\_SB.PC00.I2C2)
    {
        Method (PS0X, 0, Serialized)
        {
        }

        Method (PS3X, 0, Serialized)
        {
        }

        PowerResource (PXTC, 0x00, 0x0000)
        {
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                Return (PSTA ())
            }

            Method (_ON, 0, NotSerialized)  // _ON_: Power On
            {
                PON ()
            }

            Method (_OFF, 0, NotSerialized)  // _OFF: Power Off
            {
                POFF ()
            }
        }

        Name (ONTM, Zero)
        Method (PSTA, 0, NotSerialized)
        {
            If ((\_SB.GGOV (TPP1) == One))
            {
                Return (One)
            }
            Else
            {
                Return (Zero)
            }
        }

        Method (PON, 0, NotSerialized)
        {
            \_SB.SGOV (TPR1, Zero)
            \_SB.SGOV (TPP1, One)
            ONTM = Timer
            \_SB.SGRA (GPI1, One)
        }

        Method (POFF, 0, NotSerialized)
        {
            \_SB.SGRA (GPI1, Zero)
            \_SB.SGOV (TPP1, Zero)
            \_SB.SGOV (TPR1, One)
            ONTM = Zero
        }

        Scope (TPL1)
        {
            Name (TD_P, Package (0x01)
            {
                \_SB.PC00.I2C2.PXTC
            })
            Alias (IC1D, TD_D)
            Alias (\_SB.PC00.I2C2.ONTM, TD_C)
            Method (PS0X, 0, Serialized)
            {
                If ((TD_C == Zero))
                {
                    Return (Zero)
                }

                Local0 = ((Timer - TD_C) / 0x2710)
                Local1 = (TD_D + VRRD) /* External reference */
                If ((Local0 < Local1))
                {
                    Sleep ((Local1 - Local0))
                }
            }

            Method (PS3X, 0, Serialized)
            {
            }

            Method (_PR0, 0, NotSerialized)  // _PR0: Power Resources for D0
            {
                If ((_STA () == 0x0F))
                {
                    Return (TD_P) /* \_SB_.PC00.I2C2.TPL1.TD_P */
                }
                Else
                {
                    Return (Package (0x00){})
                }
            }

            Method (_PR3, 0, NotSerialized)  // _PR3: Power Resources for D3hot
            {
                If ((_STA () == 0x0F))
                {
                    Return (TD_P) /* \_SB_.PC00.I2C2.TPL1.TD_P */
                }
                Else
                {
                    Return (Package (0x00){})
                }
            }

            Method (_PS0, 0, NotSerialized)  // _PS0: Power State 0
            {
                PS0X ()
            }

            Method (_PS3, 0, NotSerialized)  // _PS3: Power State 3
            {
                PS3X ()
            }
        }
    }

    Scope (\_SB.PC00)
    {
        PowerResource (PAUD, 0x00, 0x0000)
        {
            Name (PSTA, One)
            Name (ONTM, Zero)
            Name (_STA, One)  // _STA: Status
            Method (_ON, 0, NotSerialized)  // _ON_: Power On
            {
                _STA = One
                PUAM ()
            }

            Method (_OFF, 0, NotSerialized)  // _OFF: Power Off
            {
                _STA = Zero
                PUAM ()
            }

            Method (PUAM, 0, Serialized)
            {
                If (((^_STA == Zero) && (\UAMS != Zero))){}
                ElseIf ((^PSTA != One))
                {
                    ^PSTA = One
                    ^ONTM = Timer
                }
            }
        }
    }

    If ((\_SB.PC00.HDAS.VDID != 0xFFFFFFFF))
    {
        Scope (\_SB.PC00.HDAS)
        {
            Method (PS0X, 0, Serialized)
            {
                If ((\_SB.PC00.PAUD.ONTM == Zero))
                {
                    Return (Zero)
                }

                Local0 = ((Timer - \_SB.PC00.PAUD.ONTM) / 0x2710)
                Local1 = (AUDD + VRRD) /* External reference */
                If ((Local0 < Local1))
                {
                    Sleep ((Local1 - Local0))
                }
            }

            Name (_PR0, Package (0x01)  // _PR0: Power Resources for D0
            {
                \_SB.PC00.PAUD
            })
        }
    }
}

