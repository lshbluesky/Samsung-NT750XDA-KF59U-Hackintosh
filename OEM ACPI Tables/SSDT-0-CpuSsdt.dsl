/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20200925 (64-bit version)
 * Copyright (c) 2000 - 2020 Intel Corporation
 * 
 * Disassembling to symbolic ASL+ operators
 *
 * Disassembly of SSDT-0-CpuSsdt.aml, Fri Dec 30 23:29:21 2022
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x0000255D (9565)
 *     Revision         0x02
 *     Checksum         0xEA
 *     OEM ID           "CpuRef"
 *     OEM Table ID     "CpuSsdt"
 *     OEM Revision     0x00003000 (12288)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20191018 (538513432)
 */
DefinitionBlock ("", "SSDT", 2, "CpuRef", "CpuSsdt", 0x00003000)
{
    External (_SB_.OSCP, IntObj)
    External (_SB_.PR00, DeviceObj)
    External (_SB_.PR01, DeviceObj)
    External (_SB_.PR02, DeviceObj)
    External (_SB_.PR03, DeviceObj)
    External (_SB_.PR04, DeviceObj)
    External (_SB_.PR05, DeviceObj)
    External (_SB_.PR06, DeviceObj)
    External (_SB_.PR07, DeviceObj)
    External (_SB_.PR08, DeviceObj)
    External (_SB_.PR09, DeviceObj)
    External (_SB_.PR10, DeviceObj)
    External (_SB_.PR11, DeviceObj)
    External (_SB_.PR12, DeviceObj)
    External (_SB_.PR13, DeviceObj)
    External (_SB_.PR14, DeviceObj)
    External (_SB_.PR15, DeviceObj)
    External (_SB_.PR16, DeviceObj)
    External (_SB_.PR17, DeviceObj)
    External (_SB_.PR18, DeviceObj)
    External (_SB_.PR19, DeviceObj)
    External (_SB_.PR20, DeviceObj)
    External (_SB_.PR21, DeviceObj)
    External (_SB_.PR22, DeviceObj)
    External (_SB_.PR23, DeviceObj)
    External (OSYS, UnknownObj)

    Scope (\)
    {
        Name (SSDT, Package (0x1B)
        {
            "CPU0IST ", 
            0x415B1298, 
            0x000005C3, 
            "APIST   ", 
            0x41581418, 
            0x000008E7, 
            "CPU0CST ", 
            0x41580698, 
            0x00000394, 
            "APCST   ", 
            0x4157F018, 
            0x0000048A, 
            "CPU0HWP ", 
            0x41581018, 
            0x0000028B, 
            "APHWP   ", 
            0x4157F698, 
            0x0000048A, 
            "HWPLVT  ", 
            0x80000000, 
            0x80000000, 
            "CPU0PSD ", 
            0x415B1918, 
            0x000001CB, 
            "APPSD   ", 
            0x41580018, 
            0x000004D4
        })
        Name (\PF00, 0x80000000)
        Name (\PF01, 0x80000000)
        Name (\PF02, 0x80000000)
        Name (\PF03, 0x80000000)
        Name (\PF04, 0x80000000)
        Name (\PF05, 0x80000000)
        Name (\PF06, 0x80000000)
        Name (\PF07, 0x80000000)
        Name (\PF08, 0x80000000)
        Name (\PF09, 0x80000000)
        Name (\PF10, 0x80000000)
        Name (\PF11, 0x80000000)
        Name (\PF12, 0x80000000)
        Name (\PF13, 0x80000000)
        Name (\PF14, 0x80000000)
        Name (\PF15, 0x80000000)
        Name (\PF16, 0x80000000)
        Name (\PF17, 0x80000000)
        Name (\PF18, 0x80000000)
        Name (\PF19, 0x80000000)
        Name (\PF20, 0x80000000)
        Name (\PF21, 0x80000000)
        Name (\PF22, 0x80000000)
        Name (\PF23, 0x80000000)
        Name (\SDTL, Zero)
    }

    Scope (\_SB)
    {
        Name (CTPC, Zero)
        OperationRegion (PNVS, SystemMemory, 0x41739000, 0x0065)
        Field (PNVS, AnyAcc, Lock, Preserve)
        {
            PGRV,   8, 
            CFGD,   32, 
            Offset (0x06), 
            ACRT,   8, 
            APSV,   8, 
            AAC0,   8, 
            CPID,   32, 
            CPPC,   8, 
            CLVL,   8, 
            CBMI,   8, 
            PL10,   16, 
            PL11,   16, 
            PL12,   16, 
            PL20,   16, 
            PL21,   16, 
            PL22,   16, 
            PLW0,   8, 
            PLW1,   8, 
            PLW2,   8, 
            CTC0,   8, 
            CTC1,   8, 
            CTC2,   8, 
            TAR0,   8, 
            TAR1,   8, 
            TAR2,   8, 
            PPC0,   8, 
            PPC1,   8, 
            PPC2,   8, 
            Offset (0x29), 
            C6MW,   8, 
            C7MW,   8, 
            CDMW,   8, 
            Offset (0x2E), 
            C6LT,   16, 
            C7LT,   16, 
            CDLT,   16, 
            CDLV,   16, 
            CDPW,   16, 
            MPMF,   8, 
            DTSE,   8, 
            DTSF,   8, 
            PDTS,   8, 
            PKGA,   8, 
            DSIA,   16, 
            DSIL,   8, 
            DSAE,   8, 
            EPCS,   8, 
            EMNA,   64, 
            ELNG,   64, 
            HWPV,   8, 
            HWPI,   8, 
            DTSI,   8, 
            LMPS,   8, 
            ITBM,   8, 
            ITBD,   8, 
            ITBI,   8, 
            ITBS,   8, 
            OBIN,   8, 
            TXTE,   8, 
            HWPE,   8, 
            HTRO,   8, 
            CORE,   32, 
            MDID,   8, 
            SCNT,   8, 
            BCNT,   8
        }

        OperationRegion (BGNV, SystemMemory, 0x41738000, 0x000D)
        Field (BGNV, AnyAcc, Lock, Preserve)
        {
            BGMA,   64, 
            BGMS,   8, 
            BGIA,   16, 
            BGIL,   16
        }

        OperationRegion (IO_D, SystemIO, \_SB.DSIA, \_SB.DSIL)
        Field (IO_D, ByteAcc, NoLock, Preserve)
        {
            TRPD,   8
        }

        If (CondRefOf (\_SB.BGIL))
        {
            If ((\_SB.BGIL != Zero))
            {
                OperationRegion (IO_P, SystemIO, \_SB.BGIA, \_SB.BGIL)
                Field (IO_P, ByteAcc, NoLock, Preserve)
                {
                    TRPF,   8
                }
            }
        }
    }

    Scope (\_SB.PR00)
    {
        Name (HI0, Zero)
        Name (HC0, Zero)
        Name (HW0, Zero)
        Name (HW2, Zero)
        Name (HP0, Zero)
        Method (_PDC, 1, NotSerialized)  // _PDC: Processor Driver Capabilities
        {
            Local0 = CPDC (Arg0)
            GCAP (Local0)
        }

        Method (_OSC, 4, NotSerialized)  // _OSC: Operating System Capabilities
        {
            Local0 = COSC (Arg0, Arg1, Arg2, Arg3)
            GCAP (Local0)
            Return (Local0)
        }

        Method (CPDC, 1, NotSerialized)
        {
            CreateDWordField (Arg0, Zero, REVS)
            CreateDWordField (Arg0, 0x04, SIZE)
            Local0 = SizeOf (Arg0)
            Local1 = (Local0 - 0x08)
            CreateField (Arg0, 0x40, (Local1 * 0x08), TEMP)
            Local3 = Buffer (0x04)
                {
                     0x00, 0x00, 0x00, 0x00                           // ....
                }
            Concatenate (Local3, TEMP, Local2)
            Return (COSC (ToUUID ("4077a616-290c-47be-9ebd-d87058713953") /* Unknown UUID */, REVS, SIZE, Local2))
        }

        Method (COSC, 4, NotSerialized)
        {
            CreateDWordField (Arg3, Zero, STS0)
            CreateDWordField (Arg0, Zero, IID0)
            CreateDWordField (Arg0, 0x04, IID1)
            CreateDWordField (Arg0, 0x08, IID2)
            CreateDWordField (Arg0, 0x0C, IID3)
            Local0 = ToUUID ("4077a616-290c-47be-9ebd-d87058713953") /* Unknown UUID */
            CreateDWordField (Local0, Zero, EID0)
            CreateDWordField (Local0, 0x04, EID1)
            CreateDWordField (Local0, 0x08, EID2)
            CreateDWordField (Local0, 0x0C, EID3)
            If (!(((IID0 == EID0) && (IID1 == EID1)) && ((
                IID2 == EID2) && (IID3 == EID3))))
            {
                STS0 = 0x06
                Return (Arg3)
            }

            If ((Arg1 != One))
            {
                STS0 = 0x0A
                Return (Arg3)
            }

            Return (Arg3)
        }

        Method (GCAP, 1, Serialized)
        {
            CreateDWordField (Arg0, Zero, STS0)
            CreateDWordField (Arg0, 0x04, CAP0)
            If (((STS0 == 0x06) || (STS0 == 0x0A)))
            {
                Return (Zero)
            }

            If ((STS0 & One))
            {
                CAP0 &= 0x0BFF
                Return (Zero)
            }

            PF00 = ((PF00 & 0x7FFFFFFF) | CAP0) /* \_SB_.PR00.GCAP.CAP0 */
            If ((CFGD & 0x72))
            {
                If ((((CFGD & 0x0200) && (PF00 & 0x18)) && !
                    (SDTL & 0x02)))
                {
                    SDTL |= 0x02
                    OperationRegion (CST0, SystemMemory, DerefOf (SSDT [0x07]), DerefOf (SSDT [0x08]))
                    Load (CST0, HC0) /* \_SB_.PR00.HC0_ */
                }
            }

            If (((PF00 & 0x09) == 0x09))
            {
                If (((CFGD & One) && !(SDTL & 0x08)))
                {
                    SDTL |= 0x08
                    OperationRegion (IST0, SystemMemory, DerefOf (SSDT [One]), DerefOf (SSDT [0x02]))
                    Load (IST0, HI0) /* \_SB_.PR00.HI0_ */
                }
            }

            If ((((CFGD & One) || (CFGD & 0x00400000)) && !
                (SDTL & 0x0100)))
            {
                SDTL |= 0x0100
                OperationRegion (PSD0, SystemMemory, DerefOf (SSDT [0x16]), DerefOf (SSDT [0x17]))
                Load (PSD0, HP0) /* \_SB_.PR00.HP0_ */
            }

            If ((OSYS >= 0x07DF))
            {
                If (((CFGD & 0x00400000) && !(SDTL & 0x40)))
                {
                    If ((\_SB.OSCP & 0x40))
                    {
                        SDTL |= 0x40
                        OperationRegion (HWP0, SystemMemory, DerefOf (SSDT [0x0D]), DerefOf (SSDT [0x0E]))
                        Load (HWP0, HW0) /* \_SB_.PR00.HW0_ */
                    }

                    If ((\_SB.OSCP & 0x20))
                    {
                        If (!(\_SB.OSCP & 0x40))
                        {
                            HWPV = Zero
                        }
                    }

                    If ((\_SB.OSCP & 0x40))
                    {
                        HWPV = 0x02
                    }
                }
            }

            Return (Zero)
        }
    }

    Scope (\_SB.PR01)
    {
        Name (HI1, Zero)
        Name (HC1, Zero)
        Name (HW1, Zero)
        Name (HP1, Zero)
        Method (_PDC, 1, NotSerialized)  // _PDC: Processor Driver Capabilities
        {
            Local0 = \_SB.PR00.CPDC (Arg0)
            GCAP (Local0)
        }

        Method (_OSC, 4, NotSerialized)  // _OSC: Operating System Capabilities
        {
            Local0 = \_SB.PR00.COSC (Arg0, Arg1, Arg2, Arg3)
            GCAP (Local0)
            Return (Local0)
        }

        Method (GCAP, 1, NotSerialized)
        {
            CreateDWordField (Arg0, Zero, ST01)
            CreateDWordField (Arg0, 0x04, CP01)
            If (((ST01 == 0x06) || (ST01 == 0x0A)))
            {
                Return (Zero)
            }

            If ((ST01 & One))
            {
                CP01 &= 0x0BFF
                Return (Zero)
            }

            PF01 = ((PF01 & 0x7FFFFFFF) | CP01) /* \_SB_.PR01.GCAP.CP01 */
            If (((PF01 & 0x09) == 0x09))
            {
                APPT ()
            }

            If ((\_SB.OSCP & 0x20))
            {
                HWPT ()
            }

            If ((((PF01 & 0x09) == 0x09) || (\_SB.OSCP & 0x20)))
            {
                APPS ()
            }

            If ((PF01 & 0x18))
            {
                APCT ()
            }

            PF00 = PF01 /* \PF01 */
            Return (Zero)
        }

        Method (APCT, 0, Serialized)
        {
            If (((CFGD & 0x72) && !(SDTL & 0x20)))
            {
                SDTL |= 0x20
                OperationRegion (CST1, SystemMemory, DerefOf (SSDT [0x0A]), DerefOf (SSDT [0x0B]))
                Load (CST1, HC1) /* \_SB_.PR01.HC1_ */
            }
        }

        Method (APPT, 0, Serialized)
        {
            If (((CFGD & One) && !(SDTL & 0x10)))
            {
                SDTL |= 0x10
                OperationRegion (IST1, SystemMemory, DerefOf (SSDT [0x04]), DerefOf (SSDT [0x05]))
                Load (IST1, HI1) /* \_SB_.PR01.HI1_ */
            }
        }

        Method (APPS, 0, Serialized)
        {
            If ((((CFGD & One) || (CFGD & 0x00400000)) && !
                (SDTL & 0x0200)))
            {
                SDTL |= 0x0200
                OperationRegion (PSD1, SystemMemory, DerefOf (SSDT [0x19]), DerefOf (SSDT [0x1A]))
                Load (PSD1, HP1) /* \_SB_.PR01.HP1_ */
            }
        }

        Method (HWPT, 0, Serialized)
        {
            If ((OSYS >= 0x07DF))
            {
                If (((CFGD & 0x00400000) && !(SDTL & 0x80)))
                {
                    SDTL |= 0x80
                    OperationRegion (HWP1, SystemMemory, DerefOf (SSDT [0x10]), DerefOf (SSDT [0x11]))
                    Load (HWP1, HW1) /* \_SB_.PR01.HW1_ */
                }
            }
        }
    }

    Scope (\_SB.PR02)
    {
        Method (_PDC, 1, NotSerialized)  // _PDC: Processor Driver Capabilities
        {
            Local0 = \_SB.PR00.CPDC (Arg0)
            GCAP (Local0)
        }

        Method (_OSC, 4, NotSerialized)  // _OSC: Operating System Capabilities
        {
            Local0 = \_SB.PR00.COSC (Arg0, Arg1, Arg2, Arg3)
            GCAP (Local0)
            Return (Local0)
        }

        Method (GCAP, 1, NotSerialized)
        {
            CreateDWordField (Arg0, Zero, ST02)
            CreateDWordField (Arg0, 0x04, CP02)
            If (((ST02 == 0x06) || (ST02 == 0x0A)))
            {
                Return (Zero)
            }

            If ((ST02 & One))
            {
                CP02 &= 0x0BFF
                Return (Zero)
            }

            PF02 = ((PF02 & 0x7FFFFFFF) | CP02) /* \_SB_.PR02.GCAP.CP02 */
            If (((PF02 & 0x09) == 0x09))
            {
                \_SB.PR01.APPT ()
            }

            If ((\_SB.OSCP & 0x20))
            {
                \_SB.PR01.HWPT ()
            }

            If ((((PF02 & 0x09) == 0x09) || (\_SB.OSCP & 0x20)))
            {
                \_SB.PR01.APPS ()
            }

            If ((PF02 & 0x18))
            {
                \_SB.PR01.APCT ()
            }

            PF00 = PF02 /* \PF02 */
            Return (Zero)
        }
    }

    Scope (\_SB.PR03)
    {
        Method (_PDC, 1, NotSerialized)  // _PDC: Processor Driver Capabilities
        {
            Local0 = \_SB.PR00.CPDC (Arg0)
            GCAP (Local0)
        }

        Method (_OSC, 4, NotSerialized)  // _OSC: Operating System Capabilities
        {
            Local0 = \_SB.PR00.COSC (Arg0, Arg1, Arg2, Arg3)
            GCAP (Local0)
            Return (Local0)
        }

        Method (GCAP, 1, NotSerialized)
        {
            CreateDWordField (Arg0, Zero, ST03)
            CreateDWordField (Arg0, 0x04, CP03)
            If (((ST03 == 0x06) || (ST03 == 0x0A)))
            {
                Return (Zero)
            }

            If ((ST03 & One))
            {
                CP03 &= 0x0BFF
                Return (Zero)
            }

            PF03 = ((PF03 & 0x7FFFFFFF) | CP03) /* \_SB_.PR03.GCAP.CP03 */
            If (((PF03 & 0x09) == 0x09))
            {
                \_SB.PR01.APPT ()
            }

            If ((\_SB.OSCP & 0x20))
            {
                \_SB.PR01.HWPT ()
            }

            If ((((PF03 & 0x09) == 0x09) || (\_SB.OSCP & 0x20)))
            {
                \_SB.PR01.APPS ()
            }

            If ((PF03 & 0x18))
            {
                \_SB.PR01.APCT ()
            }

            PF00 = PF03 /* \PF03 */
            Return (Zero)
        }
    }

    Scope (\_SB.PR04)
    {
        Method (_PDC, 1, NotSerialized)  // _PDC: Processor Driver Capabilities
        {
            Local0 = \_SB.PR00.CPDC (Arg0)
            GCAP (Local0)
        }

        Method (_OSC, 4, NotSerialized)  // _OSC: Operating System Capabilities
        {
            Local0 = \_SB.PR00.COSC (Arg0, Arg1, Arg2, Arg3)
            GCAP (Local0)
            Return (Local0)
        }

        Method (GCAP, 1, NotSerialized)
        {
            CreateDWordField (Arg0, Zero, ST04)
            CreateDWordField (Arg0, 0x04, CP04)
            If (((ST04 == 0x06) || (ST04 == 0x0A)))
            {
                Return (Zero)
            }

            If ((ST04 & One))
            {
                CP04 &= 0x0BFF
                Return (Zero)
            }

            PF04 = ((PF04 & 0x7FFFFFFF) | CP04) /* \_SB_.PR04.GCAP.CP04 */
            If (((PF04 & 0x09) == 0x09))
            {
                \_SB.PR01.APPT ()
            }

            If ((\_SB.OSCP & 0x20))
            {
                \_SB.PR01.HWPT ()
            }

            If ((((PF04 & 0x09) == 0x09) || (\_SB.OSCP & 0x20)))
            {
                \_SB.PR01.APPS ()
            }

            If ((PF04 & 0x18))
            {
                \_SB.PR01.APCT ()
            }

            PF00 = PF04 /* \PF04 */
            Return (Zero)
        }
    }

    Scope (\_SB.PR05)
    {
        Method (_PDC, 1, NotSerialized)  // _PDC: Processor Driver Capabilities
        {
            Local0 = \_SB.PR00.CPDC (Arg0)
            GCAP (Local0)
        }

        Method (_OSC, 4, NotSerialized)  // _OSC: Operating System Capabilities
        {
            Local0 = \_SB.PR00.COSC (Arg0, Arg1, Arg2, Arg3)
            GCAP (Local0)
            Return (Local0)
        }

        Method (GCAP, 1, NotSerialized)
        {
            CreateDWordField (Arg0, Zero, ST05)
            CreateDWordField (Arg0, 0x04, CP05)
            If (((ST05 == 0x06) || (ST05 == 0x0A)))
            {
                Return (Zero)
            }

            If ((ST05 & One))
            {
                CP05 &= 0x0BFF
                Return (Zero)
            }

            PF05 = ((PF05 & 0x7FFFFFFF) | CP05) /* \_SB_.PR05.GCAP.CP05 */
            If (((PF05 & 0x09) == 0x09))
            {
                \_SB.PR01.APPT ()
            }

            If ((\_SB.OSCP & 0x20))
            {
                \_SB.PR01.HWPT ()
            }

            If ((((PF05 & 0x09) == 0x09) || (\_SB.OSCP & 0x20)))
            {
                \_SB.PR01.APPS ()
            }

            If ((PF05 & 0x18))
            {
                \_SB.PR01.APCT ()
            }

            PF00 = PF05 /* \PF05 */
            Return (Zero)
        }
    }

    Scope (\_SB.PR06)
    {
        Method (_PDC, 1, NotSerialized)  // _PDC: Processor Driver Capabilities
        {
            Local0 = \_SB.PR00.CPDC (Arg0)
            GCAP (Local0)
        }

        Method (_OSC, 4, NotSerialized)  // _OSC: Operating System Capabilities
        {
            Local0 = \_SB.PR00.COSC (Arg0, Arg1, Arg2, Arg3)
            GCAP (Local0)
            Return (Local0)
        }

        Method (GCAP, 1, NotSerialized)
        {
            CreateDWordField (Arg0, Zero, ST06)
            CreateDWordField (Arg0, 0x04, CP06)
            If (((ST06 == 0x06) || (ST06 == 0x0A)))
            {
                Return (Zero)
            }

            If ((ST06 & One))
            {
                CP06 &= 0x0BFF
                Return (Zero)
            }

            PF06 = ((PF06 & 0x7FFFFFFF) | CP06) /* \_SB_.PR06.GCAP.CP06 */
            If (((PF06 & 0x09) == 0x09))
            {
                \_SB.PR01.APPT ()
            }

            If ((\_SB.OSCP & 0x20))
            {
                \_SB.PR01.HWPT ()
            }

            If ((((PF06 & 0x09) == 0x09) || (\_SB.OSCP & 0x20)))
            {
                \_SB.PR01.APPS ()
            }

            If ((PF06 & 0x18))
            {
                \_SB.PR01.APCT ()
            }

            PF00 = PF06 /* \PF06 */
            Return (Zero)
        }
    }

    Scope (\_SB.PR07)
    {
        Method (_PDC, 1, NotSerialized)  // _PDC: Processor Driver Capabilities
        {
            Local0 = \_SB.PR00.CPDC (Arg0)
            GCAP (Local0)
        }

        Method (_OSC, 4, NotSerialized)  // _OSC: Operating System Capabilities
        {
            Local0 = \_SB.PR00.COSC (Arg0, Arg1, Arg2, Arg3)
            GCAP (Local0)
            Return (Local0)
        }

        Method (GCAP, 1, NotSerialized)
        {
            CreateDWordField (Arg0, Zero, ST07)
            CreateDWordField (Arg0, 0x04, CP07)
            If (((ST07 == 0x06) || (ST07 == 0x0A)))
            {
                Return (Zero)
            }

            If ((ST07 & One))
            {
                CP07 &= 0x0BFF
                Return (Zero)
            }

            PF07 = ((PF07 & 0x7FFFFFFF) | CP07) /* \_SB_.PR07.GCAP.CP07 */
            If (((PF07 & 0x09) == 0x09))
            {
                \_SB.PR01.APPT ()
            }

            If ((\_SB.OSCP & 0x20))
            {
                \_SB.PR01.HWPT ()
            }

            If ((((PF07 & 0x09) == 0x09) || (\_SB.OSCP & 0x20)))
            {
                \_SB.PR01.APPS ()
            }

            If ((PF07 & 0x18))
            {
                \_SB.PR01.APCT ()
            }

            PF00 = PF07 /* \PF07 */
            Return (Zero)
        }
    }

    Scope (\_SB.PR08)
    {
        Method (_PDC, 1, NotSerialized)  // _PDC: Processor Driver Capabilities
        {
            Local0 = \_SB.PR00.CPDC (Arg0)
            GCAP (Local0)
        }

        Method (_OSC, 4, NotSerialized)  // _OSC: Operating System Capabilities
        {
            Local0 = \_SB.PR00.COSC (Arg0, Arg1, Arg2, Arg3)
            GCAP (Local0)
            Return (Local0)
        }

        Method (GCAP, 1, NotSerialized)
        {
            CreateDWordField (Arg0, Zero, ST08)
            CreateDWordField (Arg0, 0x04, CP08)
            If (((ST08 == 0x06) || (ST08 == 0x0A)))
            {
                Return (Zero)
            }

            If ((ST08 & One))
            {
                CP08 &= 0x0BFF
                Return (Zero)
            }

            PF08 = ((PF08 & 0x7FFFFFFF) | CP08) /* \_SB_.PR08.GCAP.CP08 */
            If (((PF08 & 0x09) == 0x09))
            {
                \_SB.PR01.APPT ()
            }

            If ((\_SB.OSCP & 0x20))
            {
                \_SB.PR01.HWPT ()
            }

            If ((((PF08 & 0x09) == 0x09) || (\_SB.OSCP & 0x20)))
            {
                \_SB.PR01.APPS ()
            }

            If ((PF08 & 0x18))
            {
                \_SB.PR01.APCT ()
            }

            PF00 = PF08 /* \PF08 */
            Return (Zero)
        }
    }

    Scope (\_SB.PR09)
    {
        Method (_PDC, 1, NotSerialized)  // _PDC: Processor Driver Capabilities
        {
            Local0 = \_SB.PR00.CPDC (Arg0)
            GCAP (Local0)
        }

        Method (_OSC, 4, NotSerialized)  // _OSC: Operating System Capabilities
        {
            Local0 = \_SB.PR00.COSC (Arg0, Arg1, Arg2, Arg3)
            GCAP (Local0)
            Return (Local0)
        }

        Method (GCAP, 1, NotSerialized)
        {
            CreateDWordField (Arg0, Zero, ST09)
            CreateDWordField (Arg0, 0x04, CP09)
            If (((ST09 == 0x06) || (ST09 == 0x0A)))
            {
                Return (Zero)
            }

            If ((ST09 & One))
            {
                CP09 &= 0x0BFF
                Return (Zero)
            }

            PF09 = ((PF09 & 0x7FFFFFFF) | CP09) /* \_SB_.PR09.GCAP.CP09 */
            If (((PF09 & 0x09) == 0x09))
            {
                \_SB.PR01.APPT ()
            }

            If ((\_SB.OSCP & 0x20))
            {
                \_SB.PR01.HWPT ()
            }

            If ((((PF09 & 0x09) == 0x09) || (\_SB.OSCP & 0x20)))
            {
                \_SB.PR01.APPS ()
            }

            If ((PF09 & 0x18))
            {
                \_SB.PR01.APCT ()
            }

            PF00 = PF09 /* \PF09 */
            Return (Zero)
        }
    }

    Scope (\_SB.PR10)
    {
        Method (_PDC, 1, NotSerialized)  // _PDC: Processor Driver Capabilities
        {
            Local0 = \_SB.PR00.CPDC (Arg0)
            GCAP (Local0)
        }

        Method (_OSC, 4, NotSerialized)  // _OSC: Operating System Capabilities
        {
            Local0 = \_SB.PR00.COSC (Arg0, Arg1, Arg2, Arg3)
            GCAP (Local0)
            Return (Local0)
        }

        Method (GCAP, 1, NotSerialized)
        {
            CreateDWordField (Arg0, Zero, ST10)
            CreateDWordField (Arg0, 0x04, CP10)
            If (((ST10 == 0x06) || (ST10 == 0x0A)))
            {
                Return (Zero)
            }

            If ((ST10 & One))
            {
                CP10 = (ST10 & 0x0BFF)
                Return (Zero)
            }

            PF10 = ((PF10 & 0x7FFFFFFF) | CP10) /* \_SB_.PR10.GCAP.CP10 */
            If (((PF10 & 0x09) == 0x09))
            {
                \_SB.PR01.APPT ()
            }

            If ((\_SB.OSCP & 0x20))
            {
                \_SB.PR01.HWPT ()
            }

            If ((((PF10 & 0x09) == 0x09) || (\_SB.OSCP & 0x20)))
            {
                \_SB.PR01.APPS ()
            }

            If ((PF10 & 0x18))
            {
                \_SB.PR01.APCT ()
            }

            PF00 = PF10 /* \PF10 */
            Return (Zero)
        }
    }

    Scope (\_SB.PR11)
    {
        Method (_PDC, 1, NotSerialized)  // _PDC: Processor Driver Capabilities
        {
            Local0 = \_SB.PR00.CPDC (Arg0)
            GCAP (Local0)
        }

        Method (_OSC, 4, NotSerialized)  // _OSC: Operating System Capabilities
        {
            Local0 = \_SB.PR00.COSC (Arg0, Arg1, Arg2, Arg3)
            GCAP (Local0)
            Return (Local0)
        }

        Method (GCAP, 1, NotSerialized)
        {
            CreateDWordField (Arg0, Zero, ST11)
            CreateDWordField (Arg0, 0x04, CP11)
            If (((ST11 == 0x06) || (ST11 == 0x0A)))
            {
                Return (Zero)
            }

            If ((ST11 & One))
            {
                CP11 = (ST11 & 0x0BFF)
                Return (Zero)
            }

            PF11 = ((PF11 & 0x7FFFFFFF) | CP11) /* \_SB_.PR11.GCAP.CP11 */
            If (((PF11 & 0x09) == 0x09))
            {
                \_SB.PR01.APPT ()
            }

            If ((\_SB.OSCP & 0x20))
            {
                \_SB.PR01.HWPT ()
            }

            If ((((PF11 & 0x09) == 0x09) || (\_SB.OSCP & 0x20)))
            {
                \_SB.PR01.APPS ()
            }

            If ((PF11 & 0x18))
            {
                \_SB.PR01.APCT ()
            }

            PF00 = PF11 /* \PF11 */
            Return (Zero)
        }
    }

    Scope (\_SB.PR12)
    {
        Method (_PDC, 1, NotSerialized)  // _PDC: Processor Driver Capabilities
        {
            Local0 = \_SB.PR00.CPDC (Arg0)
            GCAP (Local0)
        }

        Method (_OSC, 4, NotSerialized)  // _OSC: Operating System Capabilities
        {
            Local0 = \_SB.PR00.COSC (Arg0, Arg1, Arg2, Arg3)
            GCAP (Local0)
            Return (Local0)
        }

        Method (GCAP, 1, NotSerialized)
        {
            CreateDWordField (Arg0, Zero, ST12)
            CreateDWordField (Arg0, 0x04, CP12)
            If (((ST12 == 0x06) || (ST12 == 0x0A)))
            {
                Return (Zero)
            }

            If ((ST12 & One))
            {
                CP12 = (ST12 & 0x0BFF)
                Return (Zero)
            }

            PF12 = ((PF12 & 0x7FFFFFFF) | CP12) /* \_SB_.PR12.GCAP.CP12 */
            If (((PF12 & 0x09) == 0x09))
            {
                \_SB.PR01.APPT ()
            }

            If ((\_SB.OSCP & 0x20))
            {
                \_SB.PR01.HWPT ()
            }

            If ((((PF12 & 0x09) == 0x09) || (\_SB.OSCP & 0x20)))
            {
                \_SB.PR01.APPS ()
            }

            If ((PF12 & 0x18))
            {
                \_SB.PR01.APCT ()
            }

            PF00 = PF12 /* \PF12 */
            Return (Zero)
        }
    }

    Scope (\_SB.PR13)
    {
        Method (_PDC, 1, NotSerialized)  // _PDC: Processor Driver Capabilities
        {
            Local0 = \_SB.PR00.CPDC (Arg0)
            GCAP (Local0)
        }

        Method (_OSC, 4, NotSerialized)  // _OSC: Operating System Capabilities
        {
            Local0 = \_SB.PR00.COSC (Arg0, Arg1, Arg2, Arg3)
            GCAP (Local0)
            Return (Local0)
        }

        Method (GCAP, 1, NotSerialized)
        {
            CreateDWordField (Arg0, Zero, ST13)
            CreateDWordField (Arg0, 0x04, CP13)
            If (((ST13 == 0x06) || (ST13 == 0x0A)))
            {
                Return (Zero)
            }

            If ((ST13 & One))
            {
                CP13 = (ST13 & 0x0BFF)
                Return (Zero)
            }

            PF13 = ((PF13 & 0x7FFFFFFF) | CP13) /* \_SB_.PR13.GCAP.CP13 */
            If (((PF13 & 0x09) == 0x09))
            {
                \_SB.PR01.APPT ()
            }

            If ((\_SB.OSCP & 0x20))
            {
                \_SB.PR01.HWPT ()
            }

            If ((((PF13 & 0x09) == 0x09) || (\_SB.OSCP & 0x20)))
            {
                \_SB.PR01.APPS ()
            }

            If ((PF13 & 0x18))
            {
                \_SB.PR01.APCT ()
            }

            PF00 = PF13 /* \PF13 */
            Return (Zero)
        }
    }

    Scope (\_SB.PR14)
    {
        Method (_PDC, 1, NotSerialized)  // _PDC: Processor Driver Capabilities
        {
            Local0 = \_SB.PR00.CPDC (Arg0)
            GCAP (Local0)
        }

        Method (_OSC, 4, NotSerialized)  // _OSC: Operating System Capabilities
        {
            Local0 = \_SB.PR00.COSC (Arg0, Arg1, Arg2, Arg3)
            GCAP (Local0)
            Return (Local0)
        }

        Method (GCAP, 1, NotSerialized)
        {
            CreateDWordField (Arg0, Zero, ST14)
            CreateDWordField (Arg0, 0x04, CP14)
            If (((ST14 == 0x06) || (ST14 == 0x0A)))
            {
                Return (Zero)
            }

            If ((ST14 & One))
            {
                CP14 = (ST14 & 0x0BFF)
                Return (Zero)
            }

            PF14 = ((PF14 & 0x7FFFFFFF) | CP14) /* \_SB_.PR14.GCAP.CP14 */
            If (((PF14 & 0x09) == 0x09))
            {
                \_SB.PR01.APPT ()
            }

            If ((\_SB.OSCP & 0x20))
            {
                \_SB.PR01.HWPT ()
            }

            If ((((PF14 & 0x09) == 0x09) || (\_SB.OSCP & 0x20)))
            {
                \_SB.PR01.APPS ()
            }

            If ((PF14 & 0x18))
            {
                \_SB.PR01.APCT ()
            }

            PF00 = PF14 /* \PF14 */
            Return (Zero)
        }
    }

    Scope (\_SB.PR15)
    {
        Method (_PDC, 1, NotSerialized)  // _PDC: Processor Driver Capabilities
        {
            Local0 = \_SB.PR00.CPDC (Arg0)
            GCAP (Local0)
        }

        Method (_OSC, 4, NotSerialized)  // _OSC: Operating System Capabilities
        {
            Local0 = \_SB.PR00.COSC (Arg0, Arg1, Arg2, Arg3)
            GCAP (Local0)
            Return (Local0)
        }

        Method (GCAP, 1, NotSerialized)
        {
            CreateDWordField (Arg0, Zero, ST15)
            CreateDWordField (Arg0, 0x04, CP15)
            If (((ST15 == 0x06) || (ST15 == 0x0A)))
            {
                Return (Zero)
            }

            If ((ST15 & One))
            {
                CP15 = (ST15 & 0x0BFF)
                Return (Zero)
            }

            PF15 = ((PF15 & 0x7FFFFFFF) | CP15) /* \_SB_.PR15.GCAP.CP15 */
            If (((PF15 & 0x09) == 0x09))
            {
                \_SB.PR01.APPT ()
            }

            If ((\_SB.OSCP & 0x20))
            {
                \_SB.PR01.HWPT ()
            }

            If ((((PF15 & 0x09) == 0x09) || (\_SB.OSCP & 0x20)))
            {
                \_SB.PR01.APPS ()
            }

            If ((PF15 & 0x18))
            {
                \_SB.PR01.APCT ()
            }

            PF00 = PF15 /* \PF15 */
            Return (Zero)
        }
    }

    Scope (\_SB.PR16)
    {
        Method (_PDC, 1, NotSerialized)  // _PDC: Processor Driver Capabilities
        {
            Local0 = \_SB.PR00.CPDC (Arg0)
            GCAP (Local0)
        }

        Method (_OSC, 4, NotSerialized)  // _OSC: Operating System Capabilities
        {
            Local0 = \_SB.PR00.COSC (Arg0, Arg1, Arg2, Arg3)
            GCAP (Local0)
            Return (Local0)
        }

        Method (GCAP, 1, NotSerialized)
        {
            CreateDWordField (Arg0, Zero, ST16)
            CreateDWordField (Arg0, 0x04, CP16)
            If (((ST16 == 0x06) || (ST16 == 0x0A)))
            {
                Return (Zero)
            }

            If ((ST16 & One))
            {
                CP16 = (ST16 & 0x0BFF)
                Return (Zero)
            }

            PF16 = ((PF15 & 0x7FFFFFFF) | CP16) /* \_SB_.PR16.GCAP.CP16 */
            If (((PF16 & 0x09) == 0x09))
            {
                \_SB.PR01.APPT ()
            }

            If ((\_SB.OSCP & 0x20))
            {
                \_SB.PR01.HWPT ()
            }

            If ((((PF16 & 0x09) == 0x09) || (\_SB.OSCP & 0x20)))
            {
                \_SB.PR01.APPS ()
            }

            If ((PF16 & 0x18))
            {
                \_SB.PR01.APCT ()
            }

            PF00 = PF16 /* \PF16 */
            Return (Zero)
        }
    }

    Scope (\_SB.PR17)
    {
        Method (_PDC, 1, NotSerialized)  // _PDC: Processor Driver Capabilities
        {
            Local0 = \_SB.PR00.CPDC (Arg0)
            GCAP (Local0)
        }

        Method (_OSC, 4, NotSerialized)  // _OSC: Operating System Capabilities
        {
            Local0 = \_SB.PR00.COSC (Arg0, Arg1, Arg2, Arg3)
            GCAP (Local0)
            Return (Local0)
        }

        Method (GCAP, 1, NotSerialized)
        {
            CreateDWordField (Arg0, Zero, ST17)
            CreateDWordField (Arg0, 0x04, CP17)
            If (((ST17 == 0x06) || (ST17 == 0x0A)))
            {
                Return (Zero)
            }

            If ((ST17 & One))
            {
                CP17 = (ST17 & 0x0BFF)
                Return (Zero)
            }

            PF17 = ((PF17 & 0x7FFFFFFF) | CP17) /* \_SB_.PR17.GCAP.CP17 */
            If (((PF17 & 0x09) == 0x09))
            {
                \_SB.PR01.APPT ()
            }

            If ((\_SB.OSCP & 0x20))
            {
                \_SB.PR01.HWPT ()
            }

            If ((((PF17 & 0x09) == 0x09) || (\_SB.OSCP & 0x20)))
            {
                \_SB.PR01.APPS ()
            }

            If ((PF17 & 0x18))
            {
                \_SB.PR01.APCT ()
            }

            PF00 = PF17 /* \PF17 */
            Return (Zero)
        }
    }

    Scope (\_SB.PR18)
    {
        Method (_PDC, 1, NotSerialized)  // _PDC: Processor Driver Capabilities
        {
            Local0 = \_SB.PR00.CPDC (Arg0)
            GCAP (Local0)
        }

        Method (_OSC, 4, NotSerialized)  // _OSC: Operating System Capabilities
        {
            Local0 = \_SB.PR00.COSC (Arg0, Arg1, Arg2, Arg3)
            GCAP (Local0)
            Return (Local0)
        }

        Method (GCAP, 1, NotSerialized)
        {
            CreateDWordField (Arg0, Zero, ST18)
            CreateDWordField (Arg0, 0x04, CP18)
            If (((ST18 == 0x06) || (ST18 == 0x0A)))
            {
                Return (Zero)
            }

            If ((ST18 & One))
            {
                CP18 = (ST18 & 0x0BFF)
                Return (Zero)
            }

            PF18 = ((PF18 & 0x7FFFFFFF) | CP18) /* \_SB_.PR18.GCAP.CP18 */
            If (((PF18 & 0x09) == 0x09))
            {
                \_SB.PR01.APPT ()
            }

            If ((\_SB.OSCP & 0x20))
            {
                \_SB.PR01.HWPT ()
            }

            If ((((PF18 & 0x09) == 0x09) || (\_SB.OSCP & 0x20)))
            {
                \_SB.PR01.APPS ()
            }

            If ((PF18 & 0x18))
            {
                \_SB.PR01.APCT ()
            }

            PF00 = PF18 /* \PF18 */
            Return (Zero)
        }
    }

    Scope (\_SB.PR19)
    {
        Method (_PDC, 1, NotSerialized)  // _PDC: Processor Driver Capabilities
        {
            Local0 = \_SB.PR00.CPDC (Arg0)
            GCAP (Local0)
        }

        Method (_OSC, 4, NotSerialized)  // _OSC: Operating System Capabilities
        {
            Local0 = \_SB.PR00.COSC (Arg0, Arg1, Arg2, Arg3)
            GCAP (Local0)
            Return (Local0)
        }

        Method (GCAP, 1, NotSerialized)
        {
            CreateDWordField (Arg0, Zero, ST19)
            CreateDWordField (Arg0, 0x04, CP19)
            If (((ST19 == 0x06) || (ST19 == 0x0A)))
            {
                Return (Zero)
            }

            If ((ST19 & One))
            {
                CP19 = (ST19 & 0x0BFF)
                Return (Zero)
            }

            PF19 = ((PF19 & 0x7FFFFFFF) | CP19) /* \_SB_.PR19.GCAP.CP19 */
            If (((PF19 & 0x09) == 0x09))
            {
                \_SB.PR01.APPT ()
            }

            If ((\_SB.OSCP & 0x20))
            {
                \_SB.PR01.HWPT ()
            }

            If ((((PF19 & 0x09) == 0x09) || (\_SB.OSCP & 0x20)))
            {
                \_SB.PR01.APPS ()
            }

            If ((PF19 & 0x18))
            {
                \_SB.PR01.APCT ()
            }

            PF00 = PF19 /* \PF19 */
            Return (Zero)
        }
    }

    Scope (\_SB.PR20)
    {
        Method (_PDC, 1, NotSerialized)  // _PDC: Processor Driver Capabilities
        {
            Local0 = \_SB.PR00.CPDC (Arg0)
            GCAP (Local0)
        }

        Method (_OSC, 4, NotSerialized)  // _OSC: Operating System Capabilities
        {
            Local0 = \_SB.PR00.COSC (Arg0, Arg1, Arg2, Arg3)
            GCAP (Local0)
            Return (Local0)
        }

        Method (GCAP, 1, NotSerialized)
        {
            CreateDWordField (Arg0, Zero, ST20)
            CreateDWordField (Arg0, 0x04, CP20)
            If (((ST20 == 0x06) || (ST20 == 0x0A)))
            {
                Return (Zero)
            }

            If ((ST20 & One))
            {
                CP20 = (ST20 & 0x0BFF)
                Return (Zero)
            }

            PF20 = ((PF20 & 0x7FFFFFFF) | CP20) /* \_SB_.PR20.GCAP.CP20 */
            If (((PF20 & 0x09) == 0x09))
            {
                \_SB.PR01.APPT ()
            }

            If ((\_SB.OSCP & 0x20))
            {
                \_SB.PR01.HWPT ()
            }

            If ((((PF20 & 0x09) == 0x09) || (\_SB.OSCP & 0x20)))
            {
                \_SB.PR01.APPS ()
            }

            If ((PF20 & 0x18))
            {
                \_SB.PR01.APCT ()
            }

            PF00 = PF20 /* \PF20 */
            Return (Zero)
        }
    }

    Scope (\_SB.PR21)
    {
        Method (_PDC, 1, NotSerialized)  // _PDC: Processor Driver Capabilities
        {
            Local0 = \_SB.PR00.CPDC (Arg0)
            GCAP (Local0)
        }

        Method (_OSC, 4, NotSerialized)  // _OSC: Operating System Capabilities
        {
            Local0 = \_SB.PR00.COSC (Arg0, Arg1, Arg2, Arg3)
            GCAP (Local0)
            Return (Local0)
        }

        Method (GCAP, 1, NotSerialized)
        {
            CreateDWordField (Arg0, Zero, ST21)
            CreateDWordField (Arg0, 0x04, CP21)
            If (((ST21 == 0x06) || (ST21 == 0x0A)))
            {
                Return (Zero)
            }

            If ((ST21 & One))
            {
                CP21 = (ST21 & 0x0BFF)
                Return (Zero)
            }

            PF21 = ((PF21 & 0x7FFFFFFF) | CP21) /* \_SB_.PR21.GCAP.CP21 */
            If (((PF21 & 0x09) == 0x09))
            {
                \_SB.PR01.APPT ()
            }

            If ((\_SB.OSCP & 0x21))
            {
                \_SB.PR01.HWPT ()
            }

            If ((((PF21 & 0x09) == 0x09) || (\_SB.OSCP & 0x20)))
            {
                \_SB.PR01.APPS ()
            }

            If ((PF21 & 0x18))
            {
                \_SB.PR01.APCT ()
            }

            PF00 = PF21 /* \PF21 */
            Return (Zero)
        }
    }

    Scope (\_SB.PR22)
    {
        Method (_PDC, 1, NotSerialized)  // _PDC: Processor Driver Capabilities
        {
            Local0 = \_SB.PR00.CPDC (Arg0)
            GCAP (Local0)
        }

        Method (_OSC, 4, NotSerialized)  // _OSC: Operating System Capabilities
        {
            Local0 = \_SB.PR00.COSC (Arg0, Arg1, Arg2, Arg3)
            GCAP (Local0)
            Return (Local0)
        }

        Method (GCAP, 1, NotSerialized)
        {
            CreateDWordField (Arg0, Zero, ST22)
            CreateDWordField (Arg0, 0x04, CP22)
            If (((ST22 == 0x06) || (ST22 == 0x0A)))
            {
                Return (Zero)
            }

            If ((ST22 & One))
            {
                CP22 = (ST22 & 0x0BFF)
                Return (Zero)
            }

            PF22 = ((PF22 & 0x7FFFFFFF) | CP22) /* \_SB_.PR22.GCAP.CP22 */
            If (((PF22 & 0x09) == 0x09))
            {
                \_SB.PR01.APPT ()
            }

            If ((\_SB.OSCP & 0x20))
            {
                \_SB.PR01.HWPT ()
            }

            If ((((PF22 & 0x09) == 0x09) || (\_SB.OSCP & 0x20)))
            {
                \_SB.PR01.APPS ()
            }

            If ((PF22 & 0x18))
            {
                \_SB.PR01.APCT ()
            }

            PF00 = PF22 /* \PF22 */
            Return (Zero)
        }
    }

    Scope (\_SB.PR23)
    {
        Method (_PDC, 1, NotSerialized)  // _PDC: Processor Driver Capabilities
        {
            Local0 = \_SB.PR00.CPDC (Arg0)
            GCAP (Local0)
        }

        Method (_OSC, 4, NotSerialized)  // _OSC: Operating System Capabilities
        {
            Local0 = \_SB.PR00.COSC (Arg0, Arg1, Arg2, Arg3)
            GCAP (Local0)
            Return (Local0)
        }

        Method (GCAP, 1, NotSerialized)
        {
            CreateDWordField (Arg0, Zero, ST23)
            CreateDWordField (Arg0, 0x04, CP23)
            If (((ST23 == 0x06) || (ST23 == 0x0A)))
            {
                Return (Zero)
            }

            If ((ST23 & One))
            {
                CP23 = (ST23 & 0x0BFF)
                Return (Zero)
            }

            PF23 = ((PF23 & 0x7FFFFFFF) | CP23) /* \_SB_.PR23.GCAP.CP23 */
            If (((PF23 & 0x09) == 0x09))
            {
                \_SB.PR01.APPT ()
            }

            If ((\_SB.OSCP & 0x20))
            {
                \_SB.PR01.HWPT ()
            }

            If ((((PF23 & 0x09) == 0x09) || (\_SB.OSCP & 0x20)))
            {
                \_SB.PR01.APPS ()
            }

            If ((PF23 & 0x18))
            {
                \_SB.PR01.APCT ()
            }

            PF00 = PF23 /* \PF23 */
            Return (Zero)
        }
    }

    Scope (\_SB)
    {
        If ((TXTE == One))
        {
            Device (ACM)
            {
                Name (_HID, "INTC1025")  // _HID: Hardware ID
                Method (_CID, 0, NotSerialized)  // _CID: Compatible ID
                {
                    Local0 = (CPID & 0xFFFFFFF0)
                    If (((Local0 == 0x000806C0) || (Local0 == 0x000806D0)))
                    {
                        Return ("INT_TGL_SINIT")
                    }

                    If (((Local0 == 0x000A0680) || (Local0 == 0x000A0670)))
                    {
                        Return ("INT_RKL_SINIT")
                    }

                    Return ("INT_UNK_SINIT")
                }
            }
        }
    }
}

