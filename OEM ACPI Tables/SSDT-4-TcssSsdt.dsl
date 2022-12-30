/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20200925 (64-bit version)
 * Copyright (c) 2000 - 2020 Intel Corporation
 * 
 * Disassembling to symbolic ASL+ operators
 *
 * Disassembly of SSDT-4-TcssSsdt.aml, Fri Dec 30 23:29:21 2022
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x0000B392 (45970)
 *     Revision         0x02
 *     Checksum         0x46
 *     OEM ID           "INTEL "
 *     OEM Table ID     "TcssSsdt"
 *     OEM Revision     0x00001000 (4096)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20191018 (538513432)
 */
DefinitionBlock ("", "SSDT", 2, "INTEL ", "TcssSsdt", 0x00001000)
{
    External (_SB_.PC00, DeviceObj)
    External (_SB_.PC00.GFX0, DeviceObj)
    External (_SB_.PC00.GMHB, MethodObj)    // 0 Arguments
    External (_SB_.PC00.GPCB, MethodObj)    // 0 Arguments
    External (_SB_.PC00.PCIC, MethodObj)    // 1 Arguments
    External (_SB_.PC00.PCID, MethodObj)    // 4 Arguments
    External (_SB_.PC01, DeviceObj)
    External (ADBG, MethodObj)    // 1 Arguments
    External (CPWE, UnknownObj)
    External (CPWS, UnknownObj)
    External (CSFR, UnknownObj)
    External (DME0, UnknownObj)
    External (DME1, UnknownObj)
    External (DUWS, UnknownObj)
    External (ECR1, UnknownObj)
    External (GPRW, MethodObj)    // 2 Arguments
    External (IMRY, UnknownObj)
    External (ITM0, UnknownObj)
    External (ITM1, UnknownObj)
    External (LTE0, UnknownObj)
    External (LTE1, UnknownObj)
    External (LTE2, UnknownObj)
    External (LTE3, UnknownObj)
    External (OTHC, UnknownObj)
    External (P2PS, UnknownObj)
    External (PCIC, MethodObj)    // 1 Arguments
    External (PCID, MethodObj)    // 4 Arguments
    External (PDI0, UnknownObj)
    External (PDI1, UnknownObj)
    External (PICM, UnknownObj)
    External (PNS0, UnknownObj)
    External (PNS1, UnknownObj)
    External (PNS2, UnknownObj)
    External (PNS3, UnknownObj)
    External (PSL0, UnknownObj)
    External (PSL1, UnknownObj)
    External (PSL2, UnknownObj)
    External (PSL3, UnknownObj)
    External (TCDS, UnknownObj)
    External (TCIR, UnknownObj)
    External (TCIT, UnknownObj)
    External (TDCE, UnknownObj)
    External (THCE, UnknownObj)
    External (TIVS, UnknownObj)
    External (TPA0, UnknownObj)
    External (TPA1, UnknownObj)
    External (TPA2, UnknownObj)
    External (TPA3, UnknownObj)
    External (TRE0, UnknownObj)
    External (TRE1, UnknownObj)
    External (TRE2, UnknownObj)
    External (TRE3, UnknownObj)
    External (TRTD, UnknownObj)
    External (XDAT, MethodObj)    // 0 Arguments

    Name (ITNB, 0xFFFF0000)
    Name (ITNL, 0xAA55)
    OperationRegion (ITNV, SystemMemory, ITNB, ITNL)
    Field (ITNV, AnyAcc, Lock, Preserve)
    {
        ITSP,   8, 
        IDM0,   8, 
        IDM1,   8, 
        ITCP,   8, 
        IT0E,   8, 
        IT1E,   8, 
        IT2E,   8, 
        IT3E,   8, 
        IORB,   8, 
        ITRT,   8, 
        ITRE,   16, 
        ITIM,   8, 
        ITFP,   16, 
        ITCT,   16, 
        ITVD,   8
    }

    If (ITRT)
    {
        Scope (\_SB.PC00.GFX0)
        {
            Name (_S3D, 0x03)  // _S3D: S3 Device State
            Method (_PS0, 0, Serialized)  // _PS0: Power State 0
            {
            }

            Method (_PS3, 0, Serialized)  // _PS3: Power State 3
            {
            }
        }
    }

    Scope (\_SB)
    {
        Name (C2PW, Zero)
        Method (C2PM, 4, Serialized)
        {
            Switch (ToInteger (Arg3))
            {
                Case (Zero)
                {
                    Local0 = "Tcss iTbt Pcie 0 RP 0"
                }
                Case (One)
                {
                    Local0 = "Tcss iTbt Pcie 0 RP 1"
                }
                Case (0x02)
                {
                    Local0 = "Tcss iTbt Pcie 0 RP 2"
                }
                Case (0x03)
                {
                    Local0 = "Tcss iTbt Pcie 0 RP 3"
                }
                Case (0x04)
                {
                    Local0 = "Tcss xHci"
                }
                Case (0x05)
                {
                    Local0 = "Tcss xDci"
                }
                Case (0x06)
                {
                    Local0 = "Tcss Dma 0"
                }
                Case (0x07)
                {
                    Local0 = "Tcss Dma 1"
                }
                Case (0x08)
                {
                    Local0 = "Tcss iTbt Pcie 1 RP 0"
                }
                Case (0x09)
                {
                    Local0 = "Tcss iTbt Pcie 1 RP 1"
                }
                Case (0x0A)
                {
                    Local0 = "Tcss iTbt Pcie 1 RP 2"
                }
                Case (0x0B)
                {
                    Local0 = "Tcss iTbt Pcie 1 RP 3"
                }
                Default
                {
                    Return (Zero)
                }

            }

            Local1 = Zero
            Local1 = (One << ToInteger (Arg3))
            ADBG (Concatenate ("Local1 = ", ToHexString (Local1)))
            ADBG (Concatenate ("Before CPU to PCH Wake capability configuration Start from ", Local0))
            ADBG (Concatenate (Local0, Concatenate (" Cpu Wake Status = ", ToHexString (CPWS))))
            ADBG (Concatenate (Local0, Concatenate (" Cpu Wake Enable = ", ToHexString (CPWE))))
            ADBG (Concatenate (Local0, Concatenate (" Cpu To Pch Wake Value = ", ToHexString (C2PW))))
            ADBG (Concatenate ("C2PM ", Local0))
            If ((Arg0 && Arg1))
            {
                If ((CPWE == Zero))
                {
                    If (CPWS)
                    {
                        CPWS = One
                    }

                    CPWE = One
                }

                If (((C2PW & Local1) == Zero))
                {
                    C2PW |= Local1
                }

                ADBG (Concatenate (Local0, " Sx EnWak"))
            }
            ElseIf ((Arg0 || Arg2))
            {
                If ((CPWE == Zero))
                {
                    If (CPWS)
                    {
                        CPWS = One
                    }

                    CPWE = One
                }

                If (((C2PW & Local1) == Zero))
                {
                    C2PW |= Local1
                }

                ADBG (Concatenate (Local0, " D3 En Wak"))
            }
            Else
            {
                If (((C2PW & Local1) != Zero))
                {
                    C2PW &= ~Local1
                }

                If (((CPWE != Zero) && (C2PW == Zero)))
                {
                    CPWE = Zero
                }

                ADBG (Concatenate (Local0, " DisWak"))
            }

            ADBG (Concatenate ("After CPU to PCH Wake capability configuration End from ", Local0))
            ADBG (Concatenate (Local0, Concatenate (" Cpu Wake Status = ", ToHexString (CPWS))))
            ADBG (Concatenate (Local0, Concatenate (" Cpu Wake Enable = ", ToHexString (CPWE))))
            ADBG (Concatenate (Local0, Concatenate (" Cpu To Pch Wake Value = ", ToHexString (C2PW))))
            Return (Zero)
        }
    }

    Scope (\_SB.PC00)
    {
        OperationRegion (MBAR, SystemMemory, (\_SB.PC00.GMHB () + 0x7100), 0x1000)
        Field (MBAR, ByteAcc, NoLock, Preserve)
        {
            Offset (0x10), 
            RBAR,   64
        }

        OperationRegion (PBAR, SystemMemory, (\_SB.PC00.GMHB () + 0x5DA0), 0x08)
        Field (PBAR, DWordAcc, NoLock, Preserve)
        {
            PMBD,   32, 
            PMBC,   8, 
            PSCM,   8, 
                ,   15, 
            PMBR,   1
        }

        Method (PMBY, 0, NotSerialized)
        {
            Local0 = Zero
            While ((PMBR && (Local0 < 0x03E8)))
            {
                Local0++
                Stall (One)
            }

            If ((Local0 == 0x03E8))
            {
                Return (0xFF)
            }

            Return (Zero)
        }

        Method (DSGS, 0, NotSerialized)
        {
            If ((PMBY () == Zero))
            {
                PMBC = 0x15
                PSCM = Zero
                PMBR = One
                If ((PMBY () == Zero))
                {
                    Local0 = PMBD /* \_SB_.PC00.PMBD */
                    Local1 = PMBC /* \_SB_.PC00.PMBC */
                    Stall (0x0A)
                    If (((Local0 != PMBD) || (Local1 != PMBC)))
                    {
                        Return (0xFF)
                    }

                    Return (Local0)
                }
                Else
                {
                    Return (0xFE)
                }
            }
            Else
            {
                Return (0xFE)
            }
        }

        Method (DSCR, 1, NotSerialized)
        {
            If ((Arg0 > One))
            {
                Return (0xFD)
            }

            If ((PMBY () == Zero))
            {
                PMBC = 0x15
                PSCM = One
                PMBD = Arg0
                PMBR = One
                If ((PMBY () == Zero))
                {
                    Local0 = PMBD /* \_SB_.PC00.PMBD */
                    Local1 = PMBC /* \_SB_.PC00.PMBC */
                    Stall (0x0A)
                    If (((Local0 != PMBD) || (Local1 != PMBC)))
                    {
                        Return (0xFF)
                    }

                    Local0 = Zero
                    While (((DSGS () & 0x02) && (Local0 < 0x64)))
                    {
                        Stall (0x64)
                        Local0++
                    }

                    If ((Local0 == 0x64))
                    {
                        Return (0xFE)
                    }
                    Else
                    {
                        Return (Zero)
                    }
                }
                Else
                {
                    Return (0xFE)
                }
            }
            Else
            {
                Return (0xFE)
            }
        }

        Method (IOMA, 0, NotSerialized)
        {
            Return ((^RBAR & 0xFFFFFFFFFFFFFFFE))
        }

        Method (PIDS, 0, NotSerialized)
        {
            Return (0x00C10000)
        }

        OperationRegion (IOMR, SystemMemory, (IOMA () + PIDS ()), 0x0100)
        Field (IOMR, DWordAcc, NoLock, Preserve)
        {
            Offset (0x40), 
                ,   15, 
            TD3C,   1, 
            TACK,   1, 
            DPOF,   1, 
            Offset (0x70), 
            IMCD,   32, 
            IMDA,   32
        }

        Method (IMMD, 1, NotSerialized)
        {
            IMDA = Arg0
            ADBG (Concatenate ("IMMD :: ", ToHexString (IMDA)))
            Return (Zero)
        }

        Method (IMMC, 5, Serialized)
        {
            Name (OPTS, Buffer (0x04)
            {
                 0x00, 0x00, 0x00, 0x00                           // ....
            })
            CreateByteField (OPTS, Zero, CMST)
            CreateByteField (OPTS, One, RTB1)
            IMMD (Arg4)
            Local1 = Arg3
            Local1 <<= 0x08
            Local1 += Arg2
            Local1 <<= 0x08
            Local1 += Arg0
            IMCD = Local1
            ADBG (Concatenate ("Set IMMC Command ", ToHexString (IMCD)))
            IMCD |= 0x80000000
            ADBG (Concatenate ("Set IMMC Run Bit ", ToHexString (IMCD)))
            Local0 = Arg1
            ADBG (Concatenate ("IMMC Delay ", ToHexString (Local0)))
            While ((((IMCD & 0x80000000) != Zero) && (Local0 != 
                Zero)))
            {
                Sleep (One)
                Local0--
            }

            Switch (ToInteger (Arg0))
            {
                Case (0x02)
                {
                    ADBG ("GEM_SB_TRAN_CMD")
                    Return (Zero)
                }
                Case (0x03)
                {
                    ADBG ("IOM_BIOS_MBX_GET_HPD_COUNT")
                    If (((IMCD & 0x80000000) != Zero))
                    {
                        ADBG ("Timeout!")
                        ADBG (Concatenate ("IOM MB CMD Reg ", ToHexString (IMCD)))
                        ADBG (Concatenate ("IOM MB DATA Reg ", ToHexString (IMDA)))
                        CMST = One
                        Return (OPTS) /* \_SB_.PC00.IMMC.OPTS */
                    }
                    ElseIf (((IMCD & 0xFF) != Zero))
                    {
                        ADBG ("Completion Code Fail")
                        ADBG (Concatenate ("IOM MB CMD Reg ", ToHexString (IMCD)))
                        CMST = One
                    }
                    Else
                    {
                        ADBG ("Passed")
                        ADBG (Concatenate ("IOM MB CMD Reg :: ", ToHexString (IMCD)))
                        ADBG (Concatenate ("IOM MB DATA Reg :: ", ToHexString (IMDA)))
                        ADBG (Concatenate ("Arg2 is Port Number :: ", ToHexString (Arg2)))
                        CMST = Zero
                        RTB1 = IMDA /* \_SB_.PC00.IMDA */
                    }

                    Return (OPTS) /* \_SB_.PC00.IMMC.OPTS */
                }
                Case (Package (0x02)
                    {
                        0x06, 
                        0x08
                    }

)
                {
                    Switch (ToInteger (Arg0))
                    {
                        Case (0x06)
                        {
                            ADBG ("IOM_BIOS_MBX_DEC_HPD_COUNT:")
                        }
                        Case (0x08)
                        {
                            ADBG ("IOM_BIOS_DPIN_SWITCH_CMD:")
                        }
                        Default
                        {
                            ADBG ("UnKnownType")
                            CMST = One
                            Return (OPTS) /* \_SB_.PC00.IMMC.OPTS */
                        }

                    }

                    RTB1 = Zero
                    If (((IMCD & 0x80000000) != Zero))
                    {
                        ADBG ("Timeout!")
                        CMST = One
                    }
                    ElseIf (((IMCD & 0xFF) != Zero))
                    {
                        ADBG ("Completion Code Fail")
                        ADBG (Concatenate ("IOM MB CMD Reg ", ToHexString (IMCD)))
                        CMST = One
                        RTB1 = IMDA /* \_SB_.PC00.IMDA */
                    }
                    Else
                    {
                        ADBG ("Passed")
                        CMST = Zero
                    }

                    Return (OPTS) /* \_SB_.PC00.IMMC.OPTS */
                }
                Default
                {
                    ADBG ("UnKnownType")
                    CMST = One
                    Return (OPTS) /* \_SB_.PC00.IMMC.OPTS */
                }

            }
        }

        Method (DPFC, 0, NotSerialized)
        {
            Name (OPTS, Buffer (0x04)
            {
                 0x00, 0x00, 0x00, 0x00                           // ....
            })
            CreateByteField (OPTS, Zero, CMST)
            CreateByteField (OPTS, One, RTB1)
            Sleep (PDI0)
            OPTS = \_SB.PC00.IMMC (0x08, PDI1, Zero, Zero, Zero)
            Return (OPTS) /* \_SB_.PC00.DPFC.OPTS */
        }

        Name (CTP0, Zero)
        Name (CTP1, Zero)
        Method (TG0N, 0, NotSerialized)
        {
            ADBG ("TG0N Start")
            ADBG (Concatenate ("DMA0 VDID -", ToHexString (\_SB.PC00.TDM0.VDID)))
            ADBG (Concatenate ("DMA0 PMST -", ToHexString (\_SB.PC00.TDM0.PMST)))
            ADBG (Concatenate ("DMA0 PMEE -", ToHexString (\_SB.PC00.TDM0.PMEE)))
            ADBG (Concatenate ("DMA0 PMES -", ToHexString (\_SB.PC00.TDM0.PMES)))
            ADBG (Concatenate ("DMA0 STAT -", ToHexString (\_SB.PC00.TDM0.STAT)))
            If ((\_SB.PC00.TDM0.VDID != 0xFFFFFFFF))
            {
                If ((\_SB.PC00.TDM0.STAT == Zero))
                {
                    \_SB.PC00.TDM0.D3CX ()
                    ADBG ("Let\'s bring TBT RPs out of D3Cold")
                    If (CondRefOf (\_SB.PC01))
                    {
                        If ((\_SB.PC01.TRP0.VDID != 0xFFFFFFFF))
                        {
                            \_SB.PC01.TRP0.D3CX ()
                        }

                        If ((\_SB.PC01.TRP1.VDID != 0xFFFFFFFF))
                        {
                            \_SB.PC01.TRP1.D3CX ()
                        }
                    }
                    Else
                    {
                        If ((\_SB.PC00.TRP0.VDID != 0xFFFFFFFF))
                        {
                            \_SB.PC00.TRP0.D3CX ()
                        }

                        If ((\_SB.PC00.TRP1.VDID != 0xFFFFFFFF))
                        {
                            \_SB.PC00.TRP1.D3CX ()
                            Local0 = One
                        }
                    }

                    If ((\_SB.PC00.TDM0.ALCT == One))
                    {
                        If ((CTP0 == One))
                        {
                            If ((ITCT != Zero))
                            {
                                \_SB.PC00.TDM0.CNTP ()
                                \_SB.PC00.TDM0.WACT = One
                                CTP0 = Zero
                            }
                        }

                        \_SB.PC00.TDM0.ALCT = Zero
                    }
                }
                Else
                {
                    ADBG ("Drop TG0N due to it is already exit D3 cold")
                }

                Sleep (ITRE)
            }

            ADBG ("TG0N End")
        }

        Method (TG0F, 0, NotSerialized)
        {
            ADBG ("TG0F Start")
            ADBG (Concatenate ("DMA0 VDID -", ToHexString (\_SB.PC00.TDM0.VDID)))
            ADBG (Concatenate ("DMA0 PMST -", ToHexString (\_SB.PC00.TDM0.PMST)))
            ADBG (Concatenate ("DMA0 PMEE -", ToHexString (\_SB.PC00.TDM0.PMEE)))
            ADBG (Concatenate ("DMA0 PMES -", ToHexString (\_SB.PC00.TDM0.PMES)))
            ADBG (Concatenate ("DMA0 STAT -", ToHexString (\_SB.PC00.TDM0.STAT)))
            If ((\_SB.PC00.TDM0.VDID != 0xFFFFFFFF))
            {
                If ((\_SB.PC00.TDM0.STAT == One))
                {
                    \_SB.PC00.TDM0.D3CE ()
                    ADBG ("Let\'s push TBT RPs to D3Cold together")
                    If (CondRefOf (\_SB.PC01))
                    {
                        If ((\_SB.PC01.TRP0.VDID != 0xFFFFFFFF))
                        {
                            ADBG (Concatenate ("PC01.TRP0.PDSX -", ToHexString (\_SB.PC01.TRP0.PDSX)))
                            If ((\_SB.PC01.TRP0.PDSX == One))
                            {
                                CTP0 = One
                            }

                            \_SB.PC01.TRP0.D3CE ()
                        }

                        If ((\_SB.PC01.TRP1.VDID != 0xFFFFFFFF))
                        {
                            ADBG (Concatenate ("PC01.TRP1.PDSX -", ToHexString (\_SB.PC01.TRP1.PDSX)))
                            If ((\_SB.PC01.TRP1.PDSX == One))
                            {
                                CTP0 = One
                            }

                            \_SB.PC01.TRP1.D3CE ()
                        }
                    }
                    Else
                    {
                        If ((\_SB.PC00.TRP0.VDID != 0xFFFFFFFF))
                        {
                            ADBG (Concatenate ("PC00.TRP0.PDSX -", ToHexString (\_SB.PC00.TRP0.PDSX)))
                            If ((\_SB.PC00.TRP0.PDSX == One))
                            {
                                CTP0 = One
                            }

                            \_SB.PC00.TRP0.D3CE ()
                        }

                        If ((\_SB.PC00.TRP1.VDID != 0xFFFFFFFF))
                        {
                            ADBG (Concatenate ("PC00.TRP1.PDSX -", ToHexString (\_SB.PC00.TRP1.PDSX)))
                            If ((\_SB.PC00.TRP1.PDSX == One))
                            {
                                CTP0 = One
                            }

                            \_SB.PC00.TRP1.D3CE ()
                        }
                    }
                }
            }

            ADBG ("TG0F End")
        }

        Method (TG1N, 0, NotSerialized)
        {
            ADBG ("TG1N Start")
            ADBG (Concatenate ("DMA1 VDID -", ToHexString (\_SB.PC00.TDM1.VDID)))
            ADBG (Concatenate ("DMA1 PMST -", ToHexString (\_SB.PC00.TDM1.PMST)))
            ADBG (Concatenate ("DMA1 PMEE -", ToHexString (\_SB.PC00.TDM1.PMEE)))
            ADBG (Concatenate ("DMA1 PMES -", ToHexString (\_SB.PC00.TDM1.PMES)))
            ADBG (Concatenate ("DMA1 STAT -", ToHexString (\_SB.PC00.TDM1.STAT)))
            If ((\_SB.PC00.TDM1.VDID != 0xFFFFFFFF))
            {
                If ((\_SB.PC00.TDM1.STAT == Zero))
                {
                    \_SB.PC00.TDM1.D3CX ()
                    ADBG ("Let\'s bring TBT RPs out of D3Cold")
                    If (CondRefOf (\_SB.PC01))
                    {
                        If ((\_SB.PC01.TRP2.VDID != 0xFFFFFFFF))
                        {
                            \_SB.PC01.TRP2.D3CX ()
                        }

                        If ((\_SB.PC01.TRP3.VDID != 0xFFFFFFFF))
                        {
                            \_SB.PC01.TRP3.D3CX ()
                        }
                    }
                    Else
                    {
                        If ((\_SB.PC00.TRP2.VDID != 0xFFFFFFFF))
                        {
                            \_SB.PC00.TRP2.D3CX ()
                        }

                        If ((\_SB.PC00.TRP3.VDID != 0xFFFFFFFF))
                        {
                            \_SB.PC00.TRP3.D3CX ()
                        }
                    }

                    If ((\_SB.PC00.TDM1.ALCT == One))
                    {
                        If ((CTP1 == One))
                        {
                            If ((ITCT != Zero))
                            {
                                \_SB.PC00.TDM1.CNTP ()
                                \_SB.PC00.TDM1.WACT = One
                                CTP1 = Zero
                            }
                        }

                        \_SB.PC00.TDM1.ALCT = Zero
                    }
                }
                Else
                {
                    ADBG ("Drop TG1N due to it is already exit D3 cold")
                }

                Sleep (ITRE)
            }

            ADBG ("TG1N End")
        }

        Method (TG1F, 0, NotSerialized)
        {
            ADBG ("TG1F Start")
            ADBG (Concatenate ("DMA1 VDID -", ToHexString (\_SB.PC00.TDM1.VDID)))
            ADBG (Concatenate ("DMA1 PMST -", ToHexString (\_SB.PC00.TDM1.PMST)))
            ADBG (Concatenate ("DMA1 PMEE -", ToHexString (\_SB.PC00.TDM1.PMEE)))
            ADBG (Concatenate ("DMA1 PMES -", ToHexString (\_SB.PC00.TDM1.PMES)))
            ADBG (Concatenate ("DMA1 STAT -", ToHexString (\_SB.PC00.TDM1.STAT)))
            If ((\_SB.PC00.TDM1.VDID != 0xFFFFFFFF))
            {
                If ((\_SB.PC00.TDM1.STAT == One))
                {
                    \_SB.PC00.TDM1.D3CE ()
                    ADBG ("Let\'s push TBT RPs to D3Cold together")
                    If (CondRefOf (\_SB.PC01))
                    {
                        If ((\_SB.PC01.TRP2.VDID != 0xFFFFFFFF))
                        {
                            ADBG (Concatenate ("PC01.TRP2.PDSX -", ToHexString (\_SB.PC01.TRP2.PDSX)))
                            If ((\_SB.PC01.TRP2.PDSX == One))
                            {
                                CTP1 = One
                            }

                            \_SB.PC01.TRP2.D3CE ()
                        }

                        If ((\_SB.PC01.TRP3.VDID != 0xFFFFFFFF))
                        {
                            ADBG (Concatenate ("PC01.TRP3.PDSX -", ToHexString (\_SB.PC01.TRP3.PDSX)))
                            If ((\_SB.PC01.TRP3.PDSX == One))
                            {
                                CTP1 = One
                            }

                            \_SB.PC01.TRP3.D3CE ()
                        }
                    }
                    Else
                    {
                        If ((\_SB.PC00.TRP2.VDID != 0xFFFFFFFF))
                        {
                            ADBG (Concatenate ("PC00.TRP2.PDSX -", ToHexString (\_SB.PC00.TRP2.PDSX)))
                            If ((\_SB.PC00.TRP2.PDSX == One))
                            {
                                CTP1 = One
                            }

                            \_SB.PC00.TRP2.D3CE ()
                        }

                        If ((\_SB.PC00.TRP3.VDID != 0xFFFFFFFF))
                        {
                            ADBG (Concatenate ("PC00.TRP3.PDSX -", ToHexString (\_SB.PC00.TRP3.PDSX)))
                            If ((\_SB.PC00.TRP3.PDSX == One))
                            {
                                CTP1 = One
                            }

                            \_SB.PC00.TRP3.D3CE ()
                        }
                    }
                }
            }

            ADBG ("TG1F End")
        }

        If (ITRT)
        {
            PowerResource (TBT0, 0x05, 0x0001)
            {
                Method (_STA, 0, NotSerialized)  // _STA: Status
                {
                    ADBG (Concatenate ("DMA0 D3C STAT -", ToHexString (\_SB.PC00.TDM0.STAT)))
                    Return (\_SB.PC00.TDM0.STAT)
                }

                Method (_ON, 0, NotSerialized)  // _ON_: Power On
                {
                    ADBG ("TBT0 Group ON Start")
                    If (ITIM)
                    {
                        TG0N ()
                    }
                    Else
                    {
                        ADBG ("TBT IMR is not valid")
                    }

                    ADBG ("TBT0 Group ON End")
                }

                Method (_OFF, 0, NotSerialized)  // _OFF: Power Off
                {
                    ADBG ("TBT0 Group OFF Start")
                    If (ITIM)
                    {
                        ADBG (Concatenate ("Skip D3C entry? ", ToHexString (\_SB.PC00.TDM0.SD3C)))
                        If ((\_SB.PC00.TDM0.SD3C == Zero))
                        {
                            TG0F ()
                        }
                    }
                    Else
                    {
                        ADBG ("TBT IMR is not valid")
                    }

                    ADBG ("TBT0 Group OFF End")
                }
            }

            PowerResource (TBT1, 0x05, 0x0001)
            {
                Method (_STA, 0, NotSerialized)  // _STA: Status
                {
                    ADBG (Concatenate ("DMA1 D3C STAT -", ToHexString (\_SB.PC00.TDM1.STAT)))
                    Return (\_SB.PC00.TDM1.STAT)
                }

                Method (_ON, 0, NotSerialized)  // _ON_: Power On
                {
                    ADBG ("TBT1 Group ON Start")
                    If (ITIM)
                    {
                        TG1N ()
                    }
                    Else
                    {
                        ADBG ("TBT IMR is not valid")
                    }

                    ADBG ("TBT1 Group ON End")
                }

                Method (_OFF, 0, NotSerialized)  // _OFF: Power Off
                {
                    ADBG ("TBT1 Group OFF Start")
                    If (ITIM)
                    {
                        ADBG (Concatenate ("Skip D3C entry? ", ToHexString (\_SB.PC00.TDM1.SD3C)))
                        If ((\_SB.PC00.TDM1.SD3C == Zero))
                        {
                            TG1F ()
                        }
                    }
                    Else
                    {
                        ADBG ("TBT IMR is not valid")
                    }

                    ADBG ("TBT1 Group OFF End")
                }
            }
        }

        If (TRTD)
        {
            Method (TCON, 0, NotSerialized)
            {
                ADBG ("TCSS ON")
                ADBG ("TCON")
                If ((TD3C == One))
                {
                    ADBG (Concatenate ("TACK before D3 cold exit -", ToHexString (TACK)))
                    TD3C = Zero
                    Local0 = Zero
                    While (((TACK != Zero) && (Local0 < 0x64)))
                    {
                        Sleep (One)
                        Local0++
                    }

                    ADBG (Concatenate ("TACK after D3 cold exit -", ToHexString (TACK)))
                    ADBG (Concatenate ("Time for wait TACK - ", ToHexString (Local0)))
                    If ((Local0 == 0x64))
                    {
                        ADBG ("Error: Timeout occurred")
                    }
                    Else
                    {
                        ADBG ("D3Cold Exit")
                        Local0 = Zero
                        While ((\_SB.PC00.TXHC.VDID == 0xFFFFFFFF))
                        {
                            If ((DSGS () == One))
                            {
                                DSCR (Zero)
                            }

                            ADBG (Concatenate ("TXHC VDID -", ToHexString (\_SB.PC00.TXHC.VDID)))
                            Local0++
                            If ((Local0 == 0x05))
                            {
                                ADBG ("pCode mailbox command failed")
                                Break
                            }
                        }

                        If (((TDCE == One) && (IMRY == One)))
                        {
                            ADBG ("IOM.D3.TDCE")
                            \_SB.PC00.TXDC.SINT (TCIT, TCIR)
                            ADBG ("IOM.D3.TDCE Done")
                        }
                    }
                }
                Else
                {
                    ADBG ("Drop TCON due to it is already exit D3 cold")
                    Return (Zero)
                }

                ADBG ("TCSS ON End")
            }

            Method (TCOF, 0, NotSerialized)
            {
                ADBG ("TCSS OFF Start")
                ADBG ("TCOF")
                ADBG (Concatenate ("DMA0 Skip D3C entry? ", ToHexString (\_SB.PC00.TDM0.SD3C)))
                ADBG (Concatenate ("DMA1 Skip D3C entry? ", ToHexString (\_SB.PC00.TDM1.SD3C)))
                ADBG (Concatenate ("XHCI Skip D3C entry? ", ToHexString (\_SB.PC00.TXHC.SD3C)))
                If (((\_SB.PC00.TXHC.SD3C != Zero) || ((\_SB.PC00.TDM0.SD3C != Zero) || 
                    (\_SB.PC00.TDM1.SD3C != Zero))))
                {
                    Return (Zero)
                }

                Local0 = Zero
                While ((\_SB.PC00.TXHC.VDID != 0xFFFFFFFF))
                {
                    If ((DSGS () == Zero))
                    {
                        DSCR (One)
                    }

                    ADBG (Concatenate ("TXHC VDID -", ToHexString (\_SB.PC00.TXHC.VDID)))
                    Local0++
                    If ((Local0 == 0x05))
                    {
                        ADBG ("pCode mailbox command failed")
                        Break
                    }
                }

                ADBG ("D3Cold Entry")
                TD3C = One
                ADBG (Concatenate ("IOM D3Cold -", ToHexString (TD3C)))
                ADBG ("TCSS OFF End")
            }

            PowerResource (D3C, 0x05, 0x0000)
            {
                Name (STAT, One)
                Method (_STA, 0, NotSerialized)  // _STA: Status
                {
                    ADBG (Concatenate ("TCSS D3C STAT -", ToHexString (STAT)))
                    Return (STAT) /* \_SB_.PC00.D3C_.STAT */
                }

                Method (_ON, 0, NotSerialized)  // _ON_: Power On
                {
                    \_SB.PC00.TCON ()
                    STAT = One
                }

                Method (_OFF, 0, NotSerialized)  // _OFF: Power Off
                {
                    \_SB.PC00.TCOF ()
                    STAT = Zero
                }
            }
        }

        Device (TXHC)
        {
            Name (_ADR, 0x000D0000)  // _ADR: Address
            Name (_DDN, "ICL North XHCI controller")  // _DDN: DOS Device Name
            Name (_STR, Unicode ("ICL North XHCI controller"))  // _STR: Description String
            Name (DCPM, 0x04)
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                ADBG (Concatenate ("TCSS xHCI _STA", ToHexString (THCE)))
                If ((THCE == One))
                {
                    Return (0x0F)
                }

                Return (Zero)
            }

            Method (BASE, 0, NotSerialized)
            {
                Local0 = (_ADR & 0x07)
                Local1 = ((_ADR >> 0x10) & 0x1F)
                Local2 = ((Local0 << 0x0C) + (Local1 << 0x0F))
                Local3 = (\_SB.PC00.GPCB () + Local2)
                ADBG (Concatenate ("CPU XHCI PCIe MMIO Address", ToHexString (Local3)))
                Return (Local3)
            }

            Method (_PS0, 0, Serialized)  // _PS0: Power State 0
            {
                ADBG ("CPU XHCI _PS0 Start")
                If ((\_SB.PC00.TXHC.PMEE == One))
                {
                    ADBG ("Clear PME_EN of CPU XHCI")
                    \_SB.PC00.TXHC.PMEE = Zero
                }

                ADBG ("CPU XHCI _PS0 End")
            }

            Method (_PS3, 0, Serialized)  // _PS3: Power State 3
            {
                ADBG ("CPU XHCI _PS3 Start")
                If ((\_SB.PC00.TXHC.PMEE == Zero))
                {
                    ADBG ("PME_EN was not set. Set PME_EN of CPU XHCI")
                    \_SB.PC00.TXHC.PMEE = One
                }

                ADBG ("CPU XHCI _PS3 End")
            }

            Method (_S0W, 0, NotSerialized)  // _S0W: S0 Device Wake State
            {
                If (TRTD)
                {
                    Return (0x04)
                }
                Else
                {
                    Return (0x03)
                }
            }

            Name (SD3C, Zero)
            If (TRTD)
            {
                Method (_PR0, 0, NotSerialized)  // _PR0: Power Resources for D0
                {
                    Return (Package (0x01)
                    {
                        \_SB.PC00.D3C
                    })
                }

                Method (_PR3, 0, NotSerialized)  // _PR3: Power Resources for D3hot
                {
                    Return (Package (0x01)
                    {
                        \_SB.PC00.D3C
                    })
                }
            }

            OperationRegion (XPRT, SystemMemory, BASE (), 0x0100)
            Field (XPRT, ByteAcc, NoLock, Preserve)
            {
                VDID,   32, 
                Offset (0x74), 
                D0D3,   2, 
                Offset (0x75), 
                PMEE,   1, 
                    ,   6, 
                PMES,   1
            }

            Name (XFLT, Zero)
            Method (_DSM, 4, Serialized)  // _DSM: Device-Specific Method
            {
                ADBG ("XHCI _DSM")
                If (PCIC (Arg0))
                {
                    Return (PCID (Arg0, Arg1, Arg2, Arg3))
                }

                Return (Buffer (One)
                {
                     0x00                                             // .
                })
            }

            Method (_S3D, 0, NotSerialized)  // _S3D: S3 Device State
            {
                Return (0x03)
            }

            Method (_S4D, 0, NotSerialized)  // _S4D: S4 Device State
            {
                Return (0x03)
            }

            Method (_S3W, 0, NotSerialized)  // _S3W: S3 Device Wake State
            {
                Return (0x03)
            }

            Method (_S4W, 0, NotSerialized)  // _S4W: S4 Device Wake State
            {
                Return (0x03)
            }

            Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
            {
                If (CondRefOf (DUWS))
                {
                    Return (GPRW (0x6D, DUWS))
                }
                Else
                {
                    Return (GPRW (0x6D, 0x04))
                }
            }

            Method (_DSW, 3, NotSerialized)  // _DSW: Device Sleep Wake
            {
                ADBG ("TCSS XHCI _DSW")
                ADBG (Concatenate ("Arg0 -", ToHexString (Arg0)))
                ADBG (Concatenate ("Arg1 -", ToHexString (Arg1)))
                ADBG (Concatenate ("Arg2 -", ToHexString (Arg2)))
                C2PM (Arg0, Arg1, Arg2, DCPM)
                SD3C = Arg1
                ADBG (Concatenate ("SD3C -", ToHexString (SD3C)))
            }

            Device (RHUB)
            {
                Name (_ADR, Zero)  // _ADR: Address
                Method (TPLD, 2, Serialized)
                {
                    Name (PCKG, Package (0x01)
                    {
                        Buffer (0x10){}
                    })
                    CreateField (DerefOf (PCKG [Zero]), Zero, 0x07, REV)
                    REV = One
                    CreateField (DerefOf (PCKG [Zero]), 0x40, One, VISI)
                    VISI = Arg0
                    CreateField (DerefOf (PCKG [Zero]), 0x57, 0x08, GPOS)
                    GPOS = Arg1
                    CreateField (DerefOf (PCKG [Zero]), 0x4A, 0x04, SHAP)
                    SHAP = One
                    CreateField (DerefOf (PCKG [Zero]), 0x20, 0x10, WID)
                    WID = 0x08
                    CreateField (DerefOf (PCKG [Zero]), 0x30, 0x10, HGT)
                    HGT = 0x03
                    Return (PCKG) /* \_SB_.PC00.TXHC.RHUB.TPLD.PCKG */
                }

                Method (TUPC, 2, Serialized)
                {
                    Name (PCKG, Package (0x04)
                    {
                        One, 
                        Zero, 
                        Zero, 
                        Zero
                    })
                    PCKG [Zero] = Arg0
                    PCKG [One] = Arg1
                    Return (PCKG) /* \_SB_.PC00.TXHC.RHUB.TUPC.PCKG */
                }

                Device (HS01)
                {
                    Name (_ADR, One)  // _ADR: Address
                }

                Device (SS01)
                {
                    Name (_ADR, 0x02)  // _ADR: Address
                }

                Device (SS02)
                {
                    Name (_ADR, 0x03)  // _ADR: Address
                }

                Device (SS03)
                {
                    Name (_ADR, 0x04)  // _ADR: Address
                }

                Device (SS04)
                {
                    Name (_ADR, 0x05)  // _ADR: Address
                }

                Method (_PS0, 0, Serialized)  // _PS0: Power State 0
                {
                    ADBG ("TCSS RHUB XHCI PS0")
                }

                Method (_PS2, 0, Serialized)  // _PS2: Power State 2
                {
                    ADBG ("TCSS RHUB XHCI PS2")
                }

                Method (_PS3, 0, Serialized)  // _PS3: Power State 3
                {
                    ADBG ("TCSS RHUB XHCI PS3")
                }
            }
        }

        If ((TDCE == One))
        {
            Device (TXDC)
            {
                Name (_ADR, 0x000D0001)  // _ADR: Address
                Name (_DDN, "ICL North XDCI controller")  // _DDN: DOS Device Name
                Name (_STR, Unicode ("ICL North XDCI controller"))  // _STR: Description String
                Name (DCPM, 0x05)
                Method (_STA, 0, NotSerialized)  // _STA: Status
                {
                    ADBG (Concatenate ("TCSS xDCI _STA", ToHexString (TDCE)))
                    If ((TDCE == One))
                    {
                        Return (0x0F)
                    }

                    Return (Zero)
                }

                Method (SINT, 2, Serialized)
                {
                    ADBG ("xDCI.SINT")
                    If ((IMRY == One))
                    {
                        Local0 = (Arg0 << 0x08)
                        Local1 = (Arg1 << 0x14)
                        Local0 += Local1
                        ADBG (Concatenate ("TCSS xDCI SINT", ToHexString (Local0)))
                        IMMC (0x02, Zero, One, Zero, Local0)
                    }
                    Else
                    {
                        ADBG ("IOM not ready")
                    }

                    ADBG ("xDCI.SINT Done")
                }

                Method (_S0W, 0, NotSerialized)  // _S0W: S0 Device Wake State
                {
                    Return (0x03)
                }

                OperationRegion (XDCS, PCI_Config, Zero, 0x0100)
                Field (XDCS, DWordAcc, NoLock, Preserve)
                {
                    DVID,   16, 
                    Offset (0x10), 
                    XDCB,   64
                }

                Field (XDCS, ByteAcc, NoLock, Preserve)
                {
                    Offset (0x84), 
                    D0I3,   2
                }

                Method (XDBA, 0, NotSerialized)
                {
                    Return ((^XDCB & 0xFFFFFFFFFFFFFF00))
                }

                OperationRegion (XDMM, SystemMemory, XDBA (), 0x00110000)
                Field (XDMM, WordAcc, NoLock, Preserve)
                {
                    Offset (0xC110), 
                    GCTL,   32, 
                    Offset (0x10F810), 
                    Offset (0x10F811), 
                    U2CP,   2, 
                    U3CP,   2, 
                    Offset (0x10F818), 
                    PUPS,   2, 
                        ,   1, 
                    PURC,   1, 
                    Offset (0x10F81A), 
                    Offset (0x10F81C), 
                        ,   3, 
                    UXPE,   2, 
                    Offset (0x10F81E)
                }

                Method (_DSM, 4, Serialized)  // _DSM: Device-Specific Method
                {
                    If (PCIC (Arg0))
                    {
                        Return (PCID (Arg0, Arg1, Arg2, Arg3))
                    }

                    ADBG ("TXDC DSM")
                    If ((Arg0 == ToUUID ("732b85d5-b7a7-4a1b-9ba0-4bbd00ffd511") /* Unknown UUID */))
                    {
                        If ((Arg1 == One))
                        {
                            Method (SPPT, 2, Serialized)
                            {
                                ADBG ("TXDC Set PMU Power State")
                                Local1 = Arg0
                                Local2 = Arg1
                                If ((Local1 == Zero))
                                {
                                    ADBG ("TXDC PMU D0")
                                    UXPE = Zero
                                    Local0 = Zero
                                    While ((Local0 < 0x0A))
                                    {
                                        Stall (0x64)
                                        Local0++
                                    }

                                    PUPS = Zero
                                    Local0 = Zero
                                    While ((Local0 < 0x07D0))
                                    {
                                        Stall (0x64)
                                        If (((U2CP == Zero) && (U3CP == Zero)))
                                        {
                                            Break
                                        }

                                        Local0++
                                    }

                                    If ((U2CP != Zero))
                                    {
                                        ADBG ("TXDC U2 not in D0")
                                    }

                                    If ((U3CP != Zero))
                                    {
                                        ADBG ("TXDC U3 not in D0")
                                    }

                                    Return (Zero)
                                }

                                If ((Local1 == 0x03))
                                {
                                    ADBG ("TXDC PMU D3")
                                    If ((U2CP != Zero))
                                    {
                                        ADBG ("TXDC U2 not in D0")
                                    }

                                    If ((U3CP != Zero))
                                    {
                                        ADBG ("TXDC U3 not in D0")
                                    }

                                    PUPS = 0x03
                                    Local0 = Zero
                                    While ((Local0 < 0x07D0))
                                    {
                                        Stall (0x64)
                                        If (((U2CP == 0x03) && (U3CP == 0x03)))
                                        {
                                            Break
                                        }

                                        Local0++
                                    }

                                    If ((U2CP != 0x03))
                                    {
                                        ADBG ("TXDC U2 not in D3")
                                    }

                                    If ((U3CP != 0x03))
                                    {
                                        ADBG ("TXDC U3 not in D3")
                                    }

                                    UXPE = Local2
                                    Return (Zero)
                                }

                                Return (Zero)
                            }

                            Switch (ToInteger (Arg2))
                            {
                                Case (Zero)
                                {
                                    ADBG ("TXDC Fn0")
                                    Return (Buffer (0x02)
                                    {
                                         0xF3, 0x03                                       // ..
                                    })
                                }
                                Case (One)
                                {
                                    ADBG ("TXDC Fn1")
                                    Return (One)
                                }
                                Case (0x04)
                                {
                                    ADBG ("TXDC Fn4")
                                    Local1 = DerefOf (Arg3 [Zero])
                                    ADBG (Local1)
                                    SPPT (Local1, Zero)
                                }
                                Case (0x05)
                                {
                                    ADBG ("TXDC Fn5")
                                    If (CondRefOf (XDAT))
                                    {
                                        If ((XDAT () == One))
                                        {
                                            ADBG ("USB Attach")
                                            Notify (\_SB.PC00.TXDC, 0x80) // Status Change
                                        }
                                        Else
                                        {
                                            ADBG ("USB Detach")
                                            Notify (\_SB.PC00.TXDC, 0x81) // Information Change
                                        }
                                    }

                                    Return (Zero)
                                }
                                Case (0x06)
                                {
                                    ADBG ("TXDC Fn6")
                                    If ((OTHC == Zero))
                                    {
                                        CSFR = One
                                        Local0 = Zero
                                        While ((Local0 < 0x64))
                                        {
                                            If ((CSFR == Zero))
                                            {
                                                Break
                                            }

                                            Sleep (One)
                                        }
                                    }

                                    Return (Zero)
                                }
                                Case (0x07)
                                {
                                    ADBG ("TXDC Fn7")
                                    Local0 = PUPS /* \_SB_.PC00.TXDC.PUPS */
                                    Return (Local0)
                                }
                                Case (0x08)
                                {
                                    ADBG ("TXDC Fn8")
                                    Return (One)
                                }
                                Case (0x09)
                                {
                                    ADBG ("TXDC Fn9")
                                    Local1 = (TCDS & 0xFFF80000)
                                    Local1 >>= 0x13
                                    ADBG (Concatenate ("CPU XDCI: Func9 Return Val = ", ToHexString (Local1)))
                                    Return (Local1)
                                }

                            }
                        }
                    }

                    Return (Buffer (One)
                    {
                         0x00                                             // .
                    })
                }

                Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
                {
                    Return (GPRW (0x6D, 0x04))
                }

                Method (_DSW, 3, NotSerialized)  // _DSW: Device Sleep Wake
                {
                    C2PM (Arg0, Arg1, Arg2, DCPM)
                }
            }
        }

        Device (TDM0)
        {
            Name (_ADR, 0x000D0002)  // _ADR: Address
            Name (_DDN, "ICL TBT DMA0 controller")  // _DDN: DOS Device Name
            Name (_STR, Unicode ("ICL TBT DMA0 controller"))  // _STR: Description String
            Name (DUID, Zero)
            Name (DCPM, 0x06)
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                ADBG (Concatenate ("TCSS DMA0 _STA", ToHexString (DME0)))
                If ((DME0 == One))
                {
                    Return (0x0F)
                }

                Return (Zero)
            }

            Method (BASE, 0, NotSerialized)
            {
                Local0 = (\_SB.PC00.GPCB () + 0x0006A000)
                ADBG (Concatenate ("TDM0 MMIO Address", ToHexString (Local0)))
                Return (Local0)
            }

            OperationRegion (DPME, SystemMemory, BASE (), 0x0100)
            Field (DPME, AnyAcc, NoLock, Preserve)
            {
                VDID,   32, 
                Offset (0x84), 
                PMST,   2, 
                Offset (0x85), 
                PMEE,   1, 
                    ,   6, 
                PMES,   1, 
                Offset (0xFC), 
                DD3E,   1, 
                DFPE,   1, 
                Offset (0xFF), 
                DMAD,   8
            }

            Name (STAT, One)
            Name (ALCT, Zero)
            Name (WACT, Zero)
            Method (_PS0, 0, Serialized)  // _PS0: Power State 0
            {
                ADBG (Concatenate ("TBT DMA PS0 Start, DUID -", ToHexString (DUID)))
                ADBG (Concatenate ("DMA VDID -", ToHexString (VDID)))
                ADBG (Concatenate ("PMST -", ToHexString (PMST)))
                ADBG (Concatenate ("PMEE -", ToHexString (PMEE)))
                ADBG (Concatenate ("PMES -", ToHexString (PMES)))
                If ((WACT == One))
                {
                    WACT = 0x02
                    WFCC (ITCT)
                    WACT = Zero
                }
                ElseIf ((WACT == 0x02))
                {
                    ADBG ("Wait until other _PS0 get response")
                    While ((WACT != Zero))
                    {
                        Sleep (0x05)
                    }

                    ADBG ("Other _PS0 got response")
                }

                ADBG (Concatenate ("TBT DMA PS0 End, DUID -", ToHexString (DUID)))
            }

            Method (_PS3, 0, Serialized)  // _PS3: Power State 3
            {
                ADBG (Concatenate ("TBT DMA PS3 Start, DUID -", ToHexString (DUID)))
                ADBG (Concatenate ("DMA VDID -", ToHexString (VDID)))
                ADBG (Concatenate ("PMST -", ToHexString (PMST)))
                ADBG (Concatenate ("PMEE -", ToHexString (PMEE)))
                ADBG (Concatenate ("PMES -", ToHexString (PMES)))
                ADBG (Concatenate ("TBT DMA PS3 End, DUID -", ToHexString (DUID)))
            }

            Method (_S0W, 0, NotSerialized)  // _S0W: S0 Device Wake State
            {
                ADBG ("TDMA S0W")
                If (ITRT)
                {
                    Return (0x04)
                }
                Else
                {
                    Return (0x03)
                }
            }

            If (ITRT)
            {
                Method (_PR0, 0, NotSerialized)  // _PR0: Power Resources for D0
                {
                    If (TRTD)
                    {
                        If ((DUID == Zero))
                        {
                            Return (Package (0x02)
                            {
                                \_SB.PC00.D3C, 
                                \_SB.PC00.TBT0
                            })
                        }
                        Else
                        {
                            Return (Package (0x02)
                            {
                                \_SB.PC00.D3C, 
                                \_SB.PC00.TBT1
                            })
                        }
                    }

                    If ((DUID == Zero))
                    {
                        Return (Package (0x01)
                        {
                            \_SB.PC00.TBT0
                        })
                    }

                    Return (Package (0x01)
                    {
                        \_SB.PC00.TBT1
                    })
                }

                Method (_PR3, 0, NotSerialized)  // _PR3: Power Resources for D3hot
                {
                    If (TRTD)
                    {
                        If ((DUID == Zero))
                        {
                            Return (Package (0x02)
                            {
                                \_SB.PC00.D3C, 
                                \_SB.PC00.TBT0
                            })
                        }
                        Else
                        {
                            Return (Package (0x02)
                            {
                                \_SB.PC00.D3C, 
                                \_SB.PC00.TBT1
                            })
                        }
                    }

                    If ((DUID == Zero))
                    {
                        Return (Package (0x01)
                        {
                            \_SB.PC00.TBT0
                        })
                    }

                    Return (Package (0x01)
                    {
                        \_SB.PC00.TBT1
                    })
                }
            }

            Method (D3CX, 0, Serialized)
            {
                ADBG ("Disable DMA RTD3 bit")
                ADBG (Concatenate ("DUID -", ToHexString (DUID)))
                DD3E = Zero
                STAT = One
            }

            Method (D3CE, 0, Serialized)
            {
                ADBG ("Enable DMA RTD3 bit")
                ADBG (Concatenate ("DUID -", ToHexString (DUID)))
                DD3E = One
                STAT = Zero
                ALCT = One
            }

            Name (SD3C, Zero)
            Method (_DSW, 3, NotSerialized)  // _DSW: Device Sleep Wake
            {
                ADBG (Concatenate ("TCSS DMA _DSW DUID -", ToHexString (DUID)))
                ADBG (Concatenate ("Arg0 -", ToHexString (Arg0)))
                ADBG (Concatenate ("Arg1 -", ToHexString (Arg1)))
                SD3C = Arg1
                ADBG (Concatenate ("SD3C -", ToHexString (SD3C)))
            }

            Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
            {
                Return (GPRW (0x6D, 0x04))
            }

            Method (_DSD, 0, NotSerialized)  // _DSD: Device-Specific Data
            {
                ADBG (Concatenate ("TBT _DSD IMR_VALID =", ToHexString (ITIM)))
                ADBG (Concatenate ("TBT _DSD WAKE_SUPPORTED =", ToHexString (TIVS)))
                If (ITIM)
                {
                    If (TIVS)
                    {
                        Return (Package (0x04)
                        {
                            ToUUID ("c44d002f-69f9-4e7d-a904-a7baabdf43f7") /* Unknown UUID */, 
                            Package (0x01)
                            {
                                Package (0x02)
                                {
                                    "IMR_VALID", 
                                    One
                                }
                            }, 

                            ToUUID ("6c501103-c189-4296-ba72-9bf5a26ebe5d") /* Unknown UUID */, 
                            Package (0x01)
                            {
                                Package (0x02)
                                {
                                    "WAKE_SUPPORTED", 
                                    One
                                }
                            }
                        })
                    }
                    Else
                    {
                        Return (Package (0x04)
                        {
                            ToUUID ("c44d002f-69f9-4e7d-a904-a7baabdf43f7") /* Unknown UUID */, 
                            Package (0x01)
                            {
                                Package (0x02)
                                {
                                    "IMR_VALID", 
                                    One
                                }
                            }, 

                            ToUUID ("6c501103-c189-4296-ba72-9bf5a26ebe5d") /* Unknown UUID */, 
                            Package (0x01)
                            {
                                Package (0x02)
                                {
                                    "WAKE_SUPPORTED", 
                                    Zero
                                }
                            }
                        })
                    }
                }
                ElseIf (TIVS)
                {
                    Return (Package (0x04)
                    {
                        ToUUID ("c44d002f-69f9-4e7d-a904-a7baabdf43f7") /* Unknown UUID */, 
                        Package (0x01)
                        {
                            Package (0x02)
                            {
                                "IMR_VALID", 
                                Zero
                            }
                        }, 

                        ToUUID ("6c501103-c189-4296-ba72-9bf5a26ebe5d") /* Unknown UUID */, 
                        Package (0x01)
                        {
                            Package (0x02)
                            {
                                "WAKE_SUPPORTED", 
                                One
                            }
                        }
                    })
                }
                Else
                {
                    Return (Package (0x04)
                    {
                        ToUUID ("c44d002f-69f9-4e7d-a904-a7baabdf43f7") /* Unknown UUID */, 
                        Package (0x01)
                        {
                            Package (0x02)
                            {
                                "IMR_VALID", 
                                Zero
                            }
                        }, 

                        ToUUID ("6c501103-c189-4296-ba72-9bf5a26ebe5d") /* Unknown UUID */, 
                        Package (0x01)
                        {
                            Package (0x02)
                            {
                                "WAKE_SUPPORTED", 
                                Zero
                            }
                        }
                    })
                }
            }

            Method (_DSM, 4, Serialized)  // _DSM: Device-Specific Method
            {
                If ((Arg0 == ToUUID ("197db5e0-f095-4f33-b915-71dd70833e55") /* Unknown UUID */))
                {
                    If ((Arg2 == Zero))
                    {
                        If ((Arg1 == One))
                        {
                            Return (Buffer (One)
                            {
                                 0x07                                             // .
                            })
                        }
                        Else
                        {
                            Return (Buffer (One)
                            {
                                 0x01                                             // .
                            })
                        }
                    }

                    If ((Arg2 == One))
                    {
                        Name (PCPN, Buffer (One)
                        {
                             0x00                                             // .
                        })
                        CreateBitField (PCPN, Zero, PCP0)
                        CreateBitField (PCPN, One, PCP1)
                        If ((DUID == Zero))
                        {
                            If ((TRE0 == One))
                            {
                                PCP0 = One
                            }

                            If ((TRE1 == One))
                            {
                                PCP1 = One
                            }
                        }
                        Else
                        {
                            If ((TRE2 == One))
                            {
                                PCP0 = One
                            }

                            If ((TRE3 == One))
                            {
                                PCP1 = One
                            }
                        }

                        Return (PCPN) /* \_SB_.PC00.TDM0._DSM.PCPN */
                    }

                    If ((Arg2 == 0x02))
                    {
                        Name (TCAP, Buffer (One)
                        {
                             0x00                                             // .
                        })
                        CreateBitField (TCAP, Zero, IMRV)
                        CreateBitField (TCAP, One, WAKE)
                        CreateBitField (TCAP, 0x02, TVDS)
                        If (ITIM)
                        {
                            IMRV = One
                        }

                        If (TIVS)
                        {
                            WAKE = One
                        }

                        If (ITVD)
                        {
                            TVDS = One
                        }

                        Return (TCAP) /* \_SB_.PC00.TDM0._DSM.TCAP */
                    }
                }
                ElseIf ((Arg0 == Buffer (0x10)
                        {
                            /* 0000 */  0x32, 0x52, 0x42, 0x1B, 0x4C, 0x15, 0x34, 0x4F,  // 2RB.L.4O
                            /* 0008 */  0x7B, 0x9E, 0xB6, 0x5C, 0x94, 0x64, 0x94, 0xA3   // {..\.d..
                        }))
                {
                    Switch (ToInteger (Arg2))
                    {
                        Case (Zero)
                        {
                            ADBG (Concatenate ("TBT DMA _DSM DUID:", ToHexString (DUID)))
                            Switch (Arg1)
                            {
                                Case (One)
                                {
                                    Return (Buffer (One)
                                    {
                                         0x03                                             // .
                                    })
                                }

                            }

                            ADBG ("return buffer 0x00")
                            Return (Buffer (One)
                            {
                                 0x00                                             // .
                            })
                        }
                        Case (One)
                        {
                            ADBG (Concatenate ("TBT DMA _DSM Func 1 DUID:", ToHexString (DUID)))
                            If ((DUID == One))
                            {
                                ADBG (Concatenate ("ITM1:", ToHexString (ITM1)))
                                Return (ITM1) /* External reference */
                            }
                            Else
                            {
                                ADBG (Concatenate ("ITM0:", ToHexString (ITM0)))
                                Return (ITM0) /* External reference */
                            }
                        }

                    }
                }

                Return (Buffer (One)
                {
                     0x00                                             // .
                })
            }

            Field (DPME, DWordAcc, NoLock, Preserve)
            {
                Offset (0xC8), 
                    ,   31, 
                INFR,   1, 
                Offset (0xEC), 
                TB2P,   32, 
                P2TB,   32
            }

            Method (ITMB, 1, Serialized)
            {
                Local0 = (Arg0 | One)
                P2TB = Local0
            }

            Method (WFCC, 1, Serialized)
            {
                WTBS (Arg0)
                P2TB = Zero
                WTBC (Arg0)
            }

            Method (WTBS, 1, Serialized)
            {
                Local0 = Arg0
                While ((Local0 > Zero))
                {
                    If ((TB2P & One))
                    {
                        Break
                    }

                    Local0--
                    Sleep (One)
                }
            }

            Method (WTBC, 1, Serialized)
            {
                Local0 = Arg0
                While ((Local0 > Zero))
                {
                    If (((TB2P & One) != One))
                    {
                        Break
                    }

                    Local0--
                    Sleep (One)
                }
            }

            Method (CNTP, 0, Serialized)
            {
                Local0 = Zero
                If ((DFPE == Zero))
                {
                    DMAD = 0x22
                    DFPE = One
                    While (((INFR == Zero) && (Local0 < ITFP)))
                    {
                        Sleep (One)
                        Local0++
                    }
                }

                If ((Local0 != ITFP))
                {
                    ITMB (0x3E)
                }
            }
        }

        Device (TDM1)
        {
            Name (_ADR, 0x000D0003)  // _ADR: Address
            Name (_DDN, "ICL TBT DMA1 controller")  // _DDN: DOS Device Name
            Name (_STR, Unicode ("ICL TBT DMA1 controller"))  // _STR: Description String
            Name (DUID, One)
            Name (DCPM, 0x07)
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                ADBG (Concatenate ("TCSS DMA1 _STA", ToHexString (DME1)))
                If ((DME1 == One))
                {
                    Return (0x0F)
                }

                Return (Zero)
            }

            Method (BASE, 0, NotSerialized)
            {
                Local0 = (\_SB.PC00.GPCB () + 0x0006B000)
                ADBG (Concatenate ("TDM1 MMIO Address", ToHexString (Local0)))
                Return (Local0)
            }

            OperationRegion (DPME, SystemMemory, BASE (), 0x0100)
            Field (DPME, AnyAcc, NoLock, Preserve)
            {
                VDID,   32, 
                Offset (0x84), 
                PMST,   2, 
                Offset (0x85), 
                PMEE,   1, 
                    ,   6, 
                PMES,   1, 
                Offset (0xFC), 
                DD3E,   1, 
                DFPE,   1, 
                Offset (0xFF), 
                DMAD,   8
            }

            Name (STAT, One)
            Name (ALCT, Zero)
            Name (WACT, Zero)
            Method (_PS0, 0, Serialized)  // _PS0: Power State 0
            {
                ADBG (Concatenate ("TBT DMA PS0 Start, DUID -", ToHexString (DUID)))
                ADBG (Concatenate ("DMA VDID -", ToHexString (VDID)))
                ADBG (Concatenate ("PMST -", ToHexString (PMST)))
                ADBG (Concatenate ("PMEE -", ToHexString (PMEE)))
                ADBG (Concatenate ("PMES -", ToHexString (PMES)))
                If ((WACT == One))
                {
                    WACT = 0x02
                    WFCC (ITCT)
                    WACT = Zero
                }
                ElseIf ((WACT == 0x02))
                {
                    ADBG ("Wait until other _PS0 get response")
                    While ((WACT != Zero))
                    {
                        Sleep (0x05)
                    }

                    ADBG ("Other _PS0 got response")
                }

                ADBG (Concatenate ("TBT DMA PS0 End, DUID -", ToHexString (DUID)))
            }

            Method (_PS3, 0, Serialized)  // _PS3: Power State 3
            {
                ADBG (Concatenate ("TBT DMA PS3 Start, DUID -", ToHexString (DUID)))
                ADBG (Concatenate ("DMA VDID -", ToHexString (VDID)))
                ADBG (Concatenate ("PMST -", ToHexString (PMST)))
                ADBG (Concatenate ("PMEE -", ToHexString (PMEE)))
                ADBG (Concatenate ("PMES -", ToHexString (PMES)))
                ADBG (Concatenate ("TBT DMA PS3 End, DUID -", ToHexString (DUID)))
            }

            Method (_S0W, 0, NotSerialized)  // _S0W: S0 Device Wake State
            {
                ADBG ("TDMA S0W")
                If (ITRT)
                {
                    Return (0x04)
                }
                Else
                {
                    Return (0x03)
                }
            }

            If (ITRT)
            {
                Method (_PR0, 0, NotSerialized)  // _PR0: Power Resources for D0
                {
                    If (TRTD)
                    {
                        If ((DUID == Zero))
                        {
                            Return (Package (0x02)
                            {
                                \_SB.PC00.D3C, 
                                \_SB.PC00.TBT0
                            })
                        }
                        Else
                        {
                            Return (Package (0x02)
                            {
                                \_SB.PC00.D3C, 
                                \_SB.PC00.TBT1
                            })
                        }
                    }

                    If ((DUID == Zero))
                    {
                        Return (Package (0x01)
                        {
                            \_SB.PC00.TBT0
                        })
                    }

                    Return (Package (0x01)
                    {
                        \_SB.PC00.TBT1
                    })
                }

                Method (_PR3, 0, NotSerialized)  // _PR3: Power Resources for D3hot
                {
                    If (TRTD)
                    {
                        If ((DUID == Zero))
                        {
                            Return (Package (0x02)
                            {
                                \_SB.PC00.D3C, 
                                \_SB.PC00.TBT0
                            })
                        }
                        Else
                        {
                            Return (Package (0x02)
                            {
                                \_SB.PC00.D3C, 
                                \_SB.PC00.TBT1
                            })
                        }
                    }

                    If ((DUID == Zero))
                    {
                        Return (Package (0x01)
                        {
                            \_SB.PC00.TBT0
                        })
                    }

                    Return (Package (0x01)
                    {
                        \_SB.PC00.TBT1
                    })
                }
            }

            Method (D3CX, 0, Serialized)
            {
                ADBG ("Disable DMA RTD3 bit")
                ADBG (Concatenate ("DUID -", ToHexString (DUID)))
                DD3E = Zero
                STAT = One
            }

            Method (D3CE, 0, Serialized)
            {
                ADBG ("Enable DMA RTD3 bit")
                ADBG (Concatenate ("DUID -", ToHexString (DUID)))
                DD3E = One
                STAT = Zero
                ALCT = One
            }

            Name (SD3C, Zero)
            Method (_DSW, 3, NotSerialized)  // _DSW: Device Sleep Wake
            {
                ADBG (Concatenate ("TCSS DMA _DSW DUID -", ToHexString (DUID)))
                ADBG (Concatenate ("Arg0 -", ToHexString (Arg0)))
                ADBG (Concatenate ("Arg1 -", ToHexString (Arg1)))
                SD3C = Arg1
                ADBG (Concatenate ("SD3C -", ToHexString (SD3C)))
            }

            Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
            {
                Return (GPRW (0x6D, 0x04))
            }

            Method (_DSD, 0, NotSerialized)  // _DSD: Device-Specific Data
            {
                ADBG (Concatenate ("TBT _DSD IMR_VALID =", ToHexString (ITIM)))
                ADBG (Concatenate ("TBT _DSD WAKE_SUPPORTED =", ToHexString (TIVS)))
                If (ITIM)
                {
                    If (TIVS)
                    {
                        Return (Package (0x04)
                        {
                            ToUUID ("c44d002f-69f9-4e7d-a904-a7baabdf43f7") /* Unknown UUID */, 
                            Package (0x01)
                            {
                                Package (0x02)
                                {
                                    "IMR_VALID", 
                                    One
                                }
                            }, 

                            ToUUID ("6c501103-c189-4296-ba72-9bf5a26ebe5d") /* Unknown UUID */, 
                            Package (0x01)
                            {
                                Package (0x02)
                                {
                                    "WAKE_SUPPORTED", 
                                    One
                                }
                            }
                        })
                    }
                    Else
                    {
                        Return (Package (0x04)
                        {
                            ToUUID ("c44d002f-69f9-4e7d-a904-a7baabdf43f7") /* Unknown UUID */, 
                            Package (0x01)
                            {
                                Package (0x02)
                                {
                                    "IMR_VALID", 
                                    One
                                }
                            }, 

                            ToUUID ("6c501103-c189-4296-ba72-9bf5a26ebe5d") /* Unknown UUID */, 
                            Package (0x01)
                            {
                                Package (0x02)
                                {
                                    "WAKE_SUPPORTED", 
                                    Zero
                                }
                            }
                        })
                    }
                }
                ElseIf (TIVS)
                {
                    Return (Package (0x04)
                    {
                        ToUUID ("c44d002f-69f9-4e7d-a904-a7baabdf43f7") /* Unknown UUID */, 
                        Package (0x01)
                        {
                            Package (0x02)
                            {
                                "IMR_VALID", 
                                Zero
                            }
                        }, 

                        ToUUID ("6c501103-c189-4296-ba72-9bf5a26ebe5d") /* Unknown UUID */, 
                        Package (0x01)
                        {
                            Package (0x02)
                            {
                                "WAKE_SUPPORTED", 
                                One
                            }
                        }
                    })
                }
                Else
                {
                    Return (Package (0x04)
                    {
                        ToUUID ("c44d002f-69f9-4e7d-a904-a7baabdf43f7") /* Unknown UUID */, 
                        Package (0x01)
                        {
                            Package (0x02)
                            {
                                "IMR_VALID", 
                                Zero
                            }
                        }, 

                        ToUUID ("6c501103-c189-4296-ba72-9bf5a26ebe5d") /* Unknown UUID */, 
                        Package (0x01)
                        {
                            Package (0x02)
                            {
                                "WAKE_SUPPORTED", 
                                Zero
                            }
                        }
                    })
                }
            }

            Method (_DSM, 4, Serialized)  // _DSM: Device-Specific Method
            {
                If ((Arg0 == ToUUID ("197db5e0-f095-4f33-b915-71dd70833e55") /* Unknown UUID */))
                {
                    If ((Arg2 == Zero))
                    {
                        If ((Arg1 == One))
                        {
                            Return (Buffer (One)
                            {
                                 0x07                                             // .
                            })
                        }
                        Else
                        {
                            Return (Buffer (One)
                            {
                                 0x01                                             // .
                            })
                        }
                    }

                    If ((Arg2 == One))
                    {
                        Name (PCPN, Buffer (One)
                        {
                             0x00                                             // .
                        })
                        CreateBitField (PCPN, Zero, PCP0)
                        CreateBitField (PCPN, One, PCP1)
                        If ((DUID == Zero))
                        {
                            If ((TRE0 == One))
                            {
                                PCP0 = One
                            }

                            If ((TRE1 == One))
                            {
                                PCP1 = One
                            }
                        }
                        Else
                        {
                            If ((TRE2 == One))
                            {
                                PCP0 = One
                            }

                            If ((TRE3 == One))
                            {
                                PCP1 = One
                            }
                        }

                        Return (PCPN) /* \_SB_.PC00.TDM1._DSM.PCPN */
                    }

                    If ((Arg2 == 0x02))
                    {
                        Name (TCAP, Buffer (One)
                        {
                             0x00                                             // .
                        })
                        CreateBitField (TCAP, Zero, IMRV)
                        CreateBitField (TCAP, One, WAKE)
                        CreateBitField (TCAP, 0x02, TVDS)
                        If (ITIM)
                        {
                            IMRV = One
                        }

                        If (TIVS)
                        {
                            WAKE = One
                        }

                        If (ITVD)
                        {
                            TVDS = One
                        }

                        Return (TCAP) /* \_SB_.PC00.TDM1._DSM.TCAP */
                    }
                }
                ElseIf ((Arg0 == Buffer (0x10)
                        {
                            /* 0000 */  0x32, 0x52, 0x42, 0x1B, 0x4C, 0x15, 0x34, 0x4F,  // 2RB.L.4O
                            /* 0008 */  0x7B, 0x9E, 0xB6, 0x5C, 0x94, 0x64, 0x94, 0xA3   // {..\.d..
                        }))
                {
                    Switch (ToInteger (Arg2))
                    {
                        Case (Zero)
                        {
                            ADBG (Concatenate ("TBT DMA _DSM DUID:", ToHexString (DUID)))
                            Switch (Arg1)
                            {
                                Case (One)
                                {
                                    Return (Buffer (One)
                                    {
                                         0x03                                             // .
                                    })
                                }

                            }

                            ADBG ("return buffer 0x00")
                            Return (Buffer (One)
                            {
                                 0x00                                             // .
                            })
                        }
                        Case (One)
                        {
                            ADBG (Concatenate ("TBT DMA _DSM Func 1 DUID:", ToHexString (DUID)))
                            If ((DUID == One))
                            {
                                ADBG (Concatenate ("ITM1:", ToHexString (ITM1)))
                                Return (ITM1) /* External reference */
                            }
                            Else
                            {
                                ADBG (Concatenate ("ITM0:", ToHexString (ITM0)))
                                Return (ITM0) /* External reference */
                            }
                        }

                    }
                }

                Return (Buffer (One)
                {
                     0x00                                             // .
                })
            }

            Field (DPME, DWordAcc, NoLock, Preserve)
            {
                Offset (0xC8), 
                    ,   31, 
                INFR,   1, 
                Offset (0xEC), 
                TB2P,   32, 
                P2TB,   32
            }

            Method (ITMB, 1, Serialized)
            {
                Local0 = (Arg0 | One)
                P2TB = Local0
            }

            Method (WFCC, 1, Serialized)
            {
                WTBS (Arg0)
                P2TB = Zero
                WTBC (Arg0)
            }

            Method (WTBS, 1, Serialized)
            {
                Local0 = Arg0
                While ((Local0 > Zero))
                {
                    If ((TB2P & One))
                    {
                        Break
                    }

                    Local0--
                    Sleep (One)
                }
            }

            Method (WTBC, 1, Serialized)
            {
                Local0 = Arg0
                While ((Local0 > Zero))
                {
                    If (((TB2P & One) != One))
                    {
                        Break
                    }

                    Local0--
                    Sleep (One)
                }
            }

            Method (CNTP, 0, Serialized)
            {
                Local0 = Zero
                If ((DFPE == Zero))
                {
                    DMAD = 0x22
                    DFPE = One
                    While (((INFR == Zero) && (Local0 < ITFP)))
                    {
                        Sleep (One)
                        Local0++
                    }
                }

                If ((Local0 != ITFP))
                {
                    ITMB (0x3E)
                }
            }
        }
    }

    If (CondRefOf (\_SB.PC01))
    {
        Scope (\_SB.PC01)
        {
            Device (TRP0)
            {
                Method (_ADR, 0, NotSerialized)  // _ADR: Address
                {
                    If ((TPA0 != Zero))
                    {
                        Return (TPA0) /* External reference */
                    }
                    Else
                    {
                        Return (0x00070000)
                    }
                }

                Name (TUID, Zero)
                Name (LTEN, Zero)
                Name (LMSL, 0x88C8)
                Name (LNSL, 0x88C8)
                Name (DCPM, 0x08)
                Method (_STA, 0, NotSerialized)  // _STA: Status
                {
                    ADBG (Concatenate ("TCSS RP0 _STA", ToHexString (TRE0)))
                    If ((TRE0 == One))
                    {
                        Return (0x0F)
                    }

                    Return (Zero)
                }

                Method (_INI, 0, NotSerialized)  // _INI: Initialize
                {
                    LTEN = LTE0 /* External reference */
                    LMSL = PSL0 /* External reference */
                    LNSL = PNS0 /* External reference */
                }

                Method (BASE, 0, NotSerialized)
                {
                    Local0 = (_ADR () & 0x07)
                    Local1 = ((_ADR () >> 0x10) & 0x1F)
                    ADBG (Concatenate ("BASE of ITBT Port", ToHexString (TUID)))
                    Local2 = ((Local0 << 0x0C) + (Local1 << 0x0F))
                    If (CondRefOf (\_SB.PC01))
                    {
                        Local3 = (\_SB.PC00.GPCB () + 0x10000000)
                        Local3 += Local2
                    }
                    Else
                    {
                        Local3 = (\_SB.PC00.GPCB () + Local2)
                    }

                    ADBG (Concatenate ("PCIe MMIO Address", ToHexString (Local3)))
                    Return (Local3)
                }

                OperationRegion (PXCS, SystemMemory, BASE (), 0x0800)
                Field (PXCS, AnyAcc, NoLock, Preserve)
                {
                    VDID,   32, 
                    Offset (0x50), 
                    L0SE,   1, 
                        ,   3, 
                    LDIS,   1, 
                    Offset (0x51), 
                    Offset (0x52), 
                        ,   13, 
                    LASX,   1, 
                    Offset (0x5A), 
                    ABPX,   1, 
                        ,   2, 
                    PDCX,   1, 
                        ,   2, 
                    PDSX,   1, 
                    Offset (0x5B), 
                    DLSC,   1, 
                    Offset (0x60), 
                    Offset (0x62), 
                    PSPX,   1, 
                    Offset (0xA4), 
                    D3HT,   2, 
                    Offset (0xD8), 
                        ,   30, 
                    HPEX,   1, 
                    PMEX,   1, 
                    Offset (0xE2), 
                        ,   2, 
                    L23E,   1, 
                    L23R,   1, 
                    Offset (0x420), 
                        ,   30, 
                    DPGE,   1, 
                    Offset (0x5BC), 
                        ,   3, 
                    RPER,   1, 
                    RPFE,   1
                }

                Field (PXCS, AnyAcc, NoLock, WriteAsZeros)
                {
                    Offset (0xDC), 
                        ,   30, 
                    HPSX,   1, 
                    PMSX,   1
                }

                Name (LTRV, Package (0x04)
                {
                    Zero, 
                    Zero, 
                    Zero, 
                    Zero
                })
                Method (_DSM, 4, Serialized)  // _DSM: Device-Specific Method
                {
                    If ((Arg0 == ToUUID ("e5c937d0-3553-4d7a-9117-ea4d19c3434d") /* Device Labeling Interface */))
                    {
                        Switch (ToInteger (Arg2))
                        {
                            Case (Zero)
                            {
                                Name (OPTS, Buffer (0x02)
                                {
                                     0x00, 0x00                                       // ..
                                })
                                CreateBitField (OPTS, Zero, FUN0)
                                CreateBitField (OPTS, 0x05, FUN5)
                                CreateBitField (OPTS, 0x06, FUN6)
                                CreateBitField (OPTS, 0x08, FUN8)
                                CreateBitField (OPTS, 0x09, FUN9)
                                FUN0 = One
                                FUN5 = IORB /* \IORB */
                                If ((LTEN == One))
                                {
                                    FUN6 = One
                                }

                                If ((Arg1 >= 0x02))
                                {
                                    If (CondRefOf (ECR1))
                                    {
                                        If ((ECR1 == One))
                                        {
                                            If ((Arg1 >= 0x03))
                                            {
                                                FUN8 = One
                                                FUN9 = One
                                            }
                                        }
                                    }
                                }

                                ADBG (Concatenate ("TBT RP OPTS -", ToHexString (OPTS)))
                                Return (OPTS) /* \_SB_.PC01.TRP0._DSM.OPTS */
                            }
                            Case (0x05)
                            {
                                If ((Arg1 >= One))
                                {
                                    Return (One)
                                }
                            }
                            Case (0x06)
                            {
                                If ((Arg1 >= 0x02))
                                {
                                    LTRV [Zero] = ((LMSL >> 0x0A) & 0x07)
                                    LTRV [One] = (LMSL & 0x03FF)
                                    LTRV [0x02] = ((LNSL >> 0x0A) & 0x07)
                                    LTRV [0x03] = (LNSL & 0x03FF)
                                    Return (LTRV) /* \_SB_.PC01.TRP0.LTRV */
                                }
                            }
                            Case (0x08)
                            {
                                If (CondRefOf (ECR1))
                                {
                                    If ((ECR1 == One))
                                    {
                                        If ((Arg1 >= 0x03))
                                        {
                                            Return (One)
                                        }
                                    }
                                }
                            }
                            Case (0x09)
                            {
                                If (CondRefOf (ECR1))
                                {
                                    If ((ECR1 == One))
                                    {
                                        If ((Arg1 >= 0x03))
                                        {
                                            Return (Package (0x05)
                                            {
                                                0xC350, 
                                                Ones, 
                                                Ones, 
                                                0xC350, 
                                                Ones
                                            })
                                        }
                                    }
                                }
                            }

                        }
                    }

                    Return (Buffer (One)
                    {
                         0x00                                             // .
                    })
                }

                Device (PXSX)
                {
                    Name (_ADR, Zero)  // _ADR: Address
                    Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
                    {
                        Return (GPRW (0x69, 0x04))
                    }
                }

                Method (_DSW, 3, NotSerialized)  // _DSW: Device Sleep Wake
                {
                    ADBG (Concatenate ("TCSS RP _DSW TUID -", ToHexString (TUID)))
                    ADBG (Concatenate ("Arg0 -", ToHexString (Arg0)))
                    ADBG (Concatenate ("Arg1 -", ToHexString (Arg1)))
                    \_SB.PC00.TDM0.SD3C = Arg1
                    \_SB.PC00.TDM1.SD3C = Arg1
                    ADBG (Concatenate ("TDM0 SD3C -", ToHexString (\_SB.PC00.TDM0.SD3C)))
                    ADBG (Concatenate ("TDM1 SD3C -", ToHexString (\_SB.PC00.TDM1.SD3C)))
                    C2PM (Arg0, Arg1, Arg2, DCPM)
                }

                Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
                {
                    If (CondRefOf (DUWS))
                    {
                        Return (GPRW (0x69, DUWS))
                    }
                    Else
                    {
                        Return (GPRW (0x69, 0x04))
                    }
                }

                Method (HPEV, 0, Serialized)
                {
                    If (((VDID != 0xFFFFFFFF) && HPSX))
                    {
                        ADBG (Concatenate ("HotPlug Event Start for ITBT Port - ", ToHexString (TUID)))
                        If (((PDCX == One) && (DLSC == One)))
                        {
                            PDCX = One
                            HPSX = One
                            Notify (^, Zero) // Bus Check
                        }
                        Else
                        {
                            HPSX = One
                        }

                        ADBG (Concatenate ("HotPlug Event End for ITBT Port - ", ToHexString (TUID)))
                    }
                }

                Name (STAT, One)
                Method (D3CX, 0, Serialized)
                {
                    ADBG (Concatenate ("TBT RP D3ColdExit Start TUID -", ToHexString (TUID)))
                    ADBG (Concatenate ("RP STAT -", ToHexString (STAT)))
                    ADBG (Concatenate ("TBT RP VDID -", ToHexString (VDID)))
                    ADBG (Concatenate ("VDID -", ToHexString (VDID)))
                    If ((STAT == One))
                    {
                        Return (Zero)
                    }

                    ADBG (Concatenate ("Original RPFE -", ToHexString (RPFE)))
                    RPFE = Zero
                    ADBG (Concatenate ("RPFE -", ToHexString (RPFE)))
                    ADBG (Concatenate ("Original RPER -", ToHexString (RPER)))
                    RPER = Zero
                    ADBG (Concatenate ("RPER -", ToHexString (RPER)))
                    L23R = One
                    Local0 = Zero
                    Local1 = L23R /* \_SB_.PC01.TRP0.L23R */
                    While (Local1)
                    {
                        If ((Local0 > 0x14))
                        {
                            Break
                        }

                        Sleep (0x05)
                        Local0++
                        Local1 = L23R /* \_SB_.PC01.TRP0.L23R */
                    }

                    ADBG (Concatenate ("L23R -", ToHexString (L23R)))
                    ADBG (Concatenate ("Loop -", ToHexString (Local0)))
                    STAT = One
                    Local0 = Zero
                    Local1 = LASX /* \_SB_.PC01.TRP0.LASX */
                    While ((Local1 == Zero))
                    {
                        If ((Local0 > 0x14))
                        {
                            Break
                        }

                        Sleep (0x05)
                        Local0++
                        Local1 = LASX /* \_SB_.PC01.TRP0.LASX */
                    }

                    ADBG (Concatenate ("LASX -", ToHexString (LASX)))
                    ADBG (Concatenate ("Loop -", ToHexString (Local0)))
                    ADBG ("TBT RP D3ColdExit End")
                }

                Method (D3CE, 0, Serialized)
                {
                    ADBG (Concatenate ("TBT RP D3ColdEntry Start TUID -", ToHexString (TUID)))
                    ADBG (Concatenate ("RP STAT -", ToHexString (STAT)))
                    ADBG (Concatenate ("TBT RP VDID -", ToHexString (VDID)))
                    If ((STAT == Zero))
                    {
                        Return (Zero)
                    }

                    L23E = One
                    Local0 = Zero
                    Local1 = L23E /* \_SB_.PC01.TRP0.L23E */
                    While (Local1)
                    {
                        If ((Local0 > 0x14))
                        {
                            Break
                        }

                        Sleep (0x05)
                        Local0++
                        Local1 = L23E /* \_SB_.PC01.TRP0.L23E */
                    }

                    ADBG (Concatenate ("L23E -", ToHexString (L23E)))
                    ADBG (Concatenate ("Loop -", ToHexString (Local0)))
                    STAT = Zero
                    ADBG (Concatenate ("Original RPFE -", ToHexString (RPFE)))
                    RPFE = One
                    ADBG (Concatenate ("RPFE -", ToHexString (RPFE)))
                    ADBG (Concatenate ("Original RPER -", ToHexString (RPER)))
                    RPER = One
                    ADBG (Concatenate ("RPER -", ToHexString (RPER)))
                    ADBG (Concatenate ("TBT RP D3ColdEntry End TUID -", ToHexString (TUID)))
                }

                Method (_PS0, 0, Serialized)  // _PS0: Power State 0
                {
                    ADBG (Concatenate ("TBT _PS0 Start RP ", ToHexString (TUID)))
                    ADBG (Concatenate ("TBT RP VDID -", ToHexString (VDID)))
                    HPEV ()
                    If ((HPEX == One))
                    {
                        ADBG ("Disable Hot Plug SCI")
                        HPEX = Zero
                    }

                    HPME ()
                    If ((PMEX == One))
                    {
                        ADBG ("Disable PME SCI")
                        PMEX = Zero
                    }

                    Sleep (0x64)
                    If (((TUID == Zero) || (TUID == One)))
                    {
                        If ((\_SB.PC00.TDM0.WACT == One))
                        {
                            \_SB.PC00.TDM0.WACT = 0x02
                            \_SB.PC00.TDM0.WFCC (ITCT)
                            \_SB.PC00.TDM0.WACT = Zero
                        }
                        ElseIf ((\_SB.PC00.TDM0.WACT == 0x02))
                        {
                            ADBG ("Wait until other _PS0 get response")
                            While ((\_SB.PC00.TDM0.WACT != Zero))
                            {
                                Sleep (0x05)
                            }

                            ADBG ("Other _PS0 got response")
                        }
                    }
                    ElseIf ((\_SB.PC00.TDM1.WACT == One))
                    {
                        \_SB.PC00.TDM1.WACT = 0x02
                        \_SB.PC00.TDM1.WFCC (ITCT)
                        \_SB.PC00.TDM1.WACT = Zero
                    }
                    ElseIf ((\_SB.PC00.TDM1.WACT == 0x02))
                    {
                        ADBG ("Wait until other _PS0 get response")
                        While ((\_SB.PC00.TDM1.WACT != Zero))
                        {
                            Sleep (0x05)
                        }

                        ADBG ("Other _PS0 got response")
                    }

                    ADBG (Concatenate ("TBT _PS0 End RP ", ToHexString (TUID)))
                }

                Method (_PS3, 0, Serialized)  // _PS3: Power State 3
                {
                    ADBG (Concatenate ("TBT _PS3 Start RP ", ToHexString (TUID)))
                    ADBG (Concatenate ("TBT RP VDID -", ToHexString (VDID)))
                    CHKH ()
                    If ((HPEX == Zero))
                    {
                        ADBG ("Enable Hot Plug SCI")
                        HPEX = One
                        HPEV ()
                    }

                    If ((PMEX == Zero))
                    {
                        ADBG ("Enable PME SCI")
                        PMEX = One
                        HPME ()
                    }

                    ADBG (Concatenate ("TBT _PS3 End RP ", ToHexString (TUID)))
                }

                Method (CHKH, 0, NotSerialized)
                {
                    If ((PDCX == One))
                    {
                        If ((DLSC == Zero))
                        {
                            PDCX = One
                        }
                    }
                }

                Method (_DSD, 0, NotSerialized)  // _DSD: Device-Specific Data
                {
                    ADBG ("TBT RP _DSD")
                    Return (Package (0x04)
                    {
                        ToUUID ("6211e2c0-58a3-4af3-90e1-927a4e0c55a4") /* Unknown UUID */, 
                        Package (0x01)
                        {
                            Package (0x02)
                            {
                                "HotPlugSupportInD3", 
                                One
                            }
                        }, 

                        ToUUID ("efcc06cc-73ac-4bc3-bff0-76143807c389") /* Unknown UUID */, 
                        Package (0x02)
                        {
                            Package (0x02)
                            {
                                "ExternalFacingPort", 
                                One
                            }, 

                            Package (0x02)
                            {
                                "UID", 
                                TUID
                            }
                        }
                    })
                }

                Method (_S0W, 0, NotSerialized)  // _S0W: S0 Device Wake State
                {
                    If (ITRT)
                    {
                        Return (0x04)
                    }
                    Else
                    {
                        Return (0x03)
                    }
                }

                If (ITRT)
                {
                    Method (_PR0, 0, NotSerialized)  // _PR0: Power Resources for D0
                    {
                        If (TRTD)
                        {
                            If (((TUID == Zero) || (TUID == One)))
                            {
                                Return (Package (0x02)
                                {
                                    \_SB.PC00.D3C, 
                                    \_SB.PC00.TBT0
                                })
                            }
                            Else
                            {
                                Return (Package (0x02)
                                {
                                    \_SB.PC00.D3C, 
                                    \_SB.PC00.TBT1
                                })
                            }
                        }

                        If (((TUID == Zero) || (TUID == One)))
                        {
                            Return (Package (0x01)
                            {
                                \_SB.PC00.TBT0
                            })
                        }

                        Return (Package (0x01)
                        {
                            \_SB.PC00.TBT1
                        })
                    }

                    Method (_PR3, 0, NotSerialized)  // _PR3: Power Resources for D3hot
                    {
                        If (TRTD)
                        {
                            If (((TUID == Zero) || (TUID == One)))
                            {
                                Return (Package (0x02)
                                {
                                    \_SB.PC00.D3C, 
                                    \_SB.PC00.TBT0
                                })
                            }
                            Else
                            {
                                Return (Package (0x02)
                                {
                                    \_SB.PC00.D3C, 
                                    \_SB.PC00.TBT1
                                })
                            }
                        }

                        If (((TUID == Zero) || (TUID == One)))
                        {
                            Return (Package (0x01)
                            {
                                \_SB.PC00.TBT0
                            })
                        }

                        Return (Package (0x01)
                        {
                            \_SB.PC00.TBT1
                        })
                    }
                }

                Method (HPME, 0, Serialized)
                {
                    ADBG ("TBT HPME")
                    If (((VDID != 0xFFFFFFFF) && (PMSX == One)))
                    {
                        ADBG ("TBT RP exists")
                        Notify (PXSX, 0x02) // Device Wake
                        PMSX = One
                        PSPX = One
                        Return (One)
                    }

                    Return (Zero)
                }

                Name (PD01, Package (0x04)
                {
                    Package (0x04)
                    {
                        0xFFFF, 
                        Zero, 
                        Zero, 
                        0x0B
                    }, 

                    Package (0x04)
                    {
                        0xFFFF, 
                        One, 
                        Zero, 
                        0x0A
                    }, 

                    Package (0x04)
                    {
                        0xFFFF, 
                        0x02, 
                        Zero, 
                        0x0B
                    }, 

                    Package (0x04)
                    {
                        0xFFFF, 
                        0x03, 
                        Zero, 
                        0x0B
                    }
                })
                Name (AR01, Package (0x04)
                {
                    Package (0x04)
                    {
                        0xFFFF, 
                        Zero, 
                        Zero, 
                        0x10
                    }, 

                    Package (0x04)
                    {
                        0xFFFF, 
                        One, 
                        Zero, 
                        0x11
                    }, 

                    Package (0x04)
                    {
                        0xFFFF, 
                        0x02, 
                        Zero, 
                        0x12
                    }, 

                    Package (0x04)
                    {
                        0xFFFF, 
                        0x03, 
                        Zero, 
                        0x13
                    }
                })
                Method (_PRT, 0, NotSerialized)  // _PRT: PCI Routing Table
                {
                    If (CondRefOf (PICM))
                    {
                        If (PICM)
                        {
                            Return (AR01) /* \_SB_.PC01.TRP0.AR01 */
                        }
                    }

                    Return (PD01) /* \_SB_.PC01.TRP0.PD01 */
                }
            }

            Device (TRP1)
            {
                Method (_ADR, 0, NotSerialized)  // _ADR: Address
                {
                    If ((TPA1 != Zero))
                    {
                        Return (TPA1) /* External reference */
                    }
                    Else
                    {
                        Return (0x00070001)
                    }
                }

                Name (TUID, One)
                Name (LTEN, Zero)
                Name (LMSL, 0x88C8)
                Name (LNSL, 0x88C8)
                Name (DCPM, 0x09)
                Method (_STA, 0, NotSerialized)  // _STA: Status
                {
                    ADBG (Concatenate ("TCSS RP1 _STA", ToHexString (TRE1)))
                    If ((TRE1 == One))
                    {
                        Return (0x0F)
                    }

                    Return (Zero)
                }

                Method (_INI, 0, NotSerialized)  // _INI: Initialize
                {
                    LTEN = LTE1 /* External reference */
                    LMSL = PSL1 /* External reference */
                    LNSL = PNS1 /* External reference */
                }

                Method (BASE, 0, NotSerialized)
                {
                    Local0 = (_ADR () & 0x07)
                    Local1 = ((_ADR () >> 0x10) & 0x1F)
                    ADBG (Concatenate ("BASE of ITBT Port", ToHexString (TUID)))
                    Local2 = ((Local0 << 0x0C) + (Local1 << 0x0F))
                    If (CondRefOf (\_SB.PC01))
                    {
                        Local3 = (\_SB.PC00.GPCB () + 0x10000000)
                        Local3 += Local2
                    }
                    Else
                    {
                        Local3 = (\_SB.PC00.GPCB () + Local2)
                    }

                    ADBG (Concatenate ("PCIe MMIO Address", ToHexString (Local3)))
                    Return (Local3)
                }

                OperationRegion (PXCS, SystemMemory, BASE (), 0x0800)
                Field (PXCS, AnyAcc, NoLock, Preserve)
                {
                    VDID,   32, 
                    Offset (0x50), 
                    L0SE,   1, 
                        ,   3, 
                    LDIS,   1, 
                    Offset (0x51), 
                    Offset (0x52), 
                        ,   13, 
                    LASX,   1, 
                    Offset (0x5A), 
                    ABPX,   1, 
                        ,   2, 
                    PDCX,   1, 
                        ,   2, 
                    PDSX,   1, 
                    Offset (0x5B), 
                    DLSC,   1, 
                    Offset (0x60), 
                    Offset (0x62), 
                    PSPX,   1, 
                    Offset (0xA4), 
                    D3HT,   2, 
                    Offset (0xD8), 
                        ,   30, 
                    HPEX,   1, 
                    PMEX,   1, 
                    Offset (0xE2), 
                        ,   2, 
                    L23E,   1, 
                    L23R,   1, 
                    Offset (0x420), 
                        ,   30, 
                    DPGE,   1, 
                    Offset (0x5BC), 
                        ,   3, 
                    RPER,   1, 
                    RPFE,   1
                }

                Field (PXCS, AnyAcc, NoLock, WriteAsZeros)
                {
                    Offset (0xDC), 
                        ,   30, 
                    HPSX,   1, 
                    PMSX,   1
                }

                Name (LTRV, Package (0x04)
                {
                    Zero, 
                    Zero, 
                    Zero, 
                    Zero
                })
                Method (_DSM, 4, Serialized)  // _DSM: Device-Specific Method
                {
                    If ((Arg0 == ToUUID ("e5c937d0-3553-4d7a-9117-ea4d19c3434d") /* Device Labeling Interface */))
                    {
                        Switch (ToInteger (Arg2))
                        {
                            Case (Zero)
                            {
                                Name (OPTS, Buffer (0x02)
                                {
                                     0x00, 0x00                                       // ..
                                })
                                CreateBitField (OPTS, Zero, FUN0)
                                CreateBitField (OPTS, 0x05, FUN5)
                                CreateBitField (OPTS, 0x06, FUN6)
                                CreateBitField (OPTS, 0x08, FUN8)
                                CreateBitField (OPTS, 0x09, FUN9)
                                FUN0 = One
                                FUN5 = IORB /* \IORB */
                                If ((LTEN == One))
                                {
                                    FUN6 = One
                                }

                                If ((Arg1 >= 0x02))
                                {
                                    If (CondRefOf (ECR1))
                                    {
                                        If ((ECR1 == One))
                                        {
                                            If ((Arg1 >= 0x03))
                                            {
                                                FUN8 = One
                                                FUN9 = One
                                            }
                                        }
                                    }
                                }

                                ADBG (Concatenate ("TBT RP OPTS -", ToHexString (OPTS)))
                                Return (OPTS) /* \_SB_.PC01.TRP1._DSM.OPTS */
                            }
                            Case (0x05)
                            {
                                If ((Arg1 >= One))
                                {
                                    Return (One)
                                }
                            }
                            Case (0x06)
                            {
                                If ((Arg1 >= 0x02))
                                {
                                    LTRV [Zero] = ((LMSL >> 0x0A) & 0x07)
                                    LTRV [One] = (LMSL & 0x03FF)
                                    LTRV [0x02] = ((LNSL >> 0x0A) & 0x07)
                                    LTRV [0x03] = (LNSL & 0x03FF)
                                    Return (LTRV) /* \_SB_.PC01.TRP1.LTRV */
                                }
                            }
                            Case (0x08)
                            {
                                If (CondRefOf (ECR1))
                                {
                                    If ((ECR1 == One))
                                    {
                                        If ((Arg1 >= 0x03))
                                        {
                                            Return (One)
                                        }
                                    }
                                }
                            }
                            Case (0x09)
                            {
                                If (CondRefOf (ECR1))
                                {
                                    If ((ECR1 == One))
                                    {
                                        If ((Arg1 >= 0x03))
                                        {
                                            Return (Package (0x05)
                                            {
                                                0xC350, 
                                                Ones, 
                                                Ones, 
                                                0xC350, 
                                                Ones
                                            })
                                        }
                                    }
                                }
                            }

                        }
                    }

                    Return (Buffer (One)
                    {
                         0x00                                             // .
                    })
                }

                Device (PXSX)
                {
                    Name (_ADR, Zero)  // _ADR: Address
                    Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
                    {
                        Return (GPRW (0x69, 0x04))
                    }
                }

                Method (_DSW, 3, NotSerialized)  // _DSW: Device Sleep Wake
                {
                    ADBG (Concatenate ("TCSS RP _DSW TUID -", ToHexString (TUID)))
                    ADBG (Concatenate ("Arg0 -", ToHexString (Arg0)))
                    ADBG (Concatenate ("Arg1 -", ToHexString (Arg1)))
                    \_SB.PC00.TDM0.SD3C = Arg1
                    \_SB.PC00.TDM1.SD3C = Arg1
                    ADBG (Concatenate ("TDM0 SD3C -", ToHexString (\_SB.PC00.TDM0.SD3C)))
                    ADBG (Concatenate ("TDM1 SD3C -", ToHexString (\_SB.PC00.TDM1.SD3C)))
                    C2PM (Arg0, Arg1, Arg2, DCPM)
                }

                Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
                {
                    If (CondRefOf (DUWS))
                    {
                        Return (GPRW (0x69, DUWS))
                    }
                    Else
                    {
                        Return (GPRW (0x69, 0x04))
                    }
                }

                Method (HPEV, 0, Serialized)
                {
                    If (((VDID != 0xFFFFFFFF) && HPSX))
                    {
                        ADBG (Concatenate ("HotPlug Event Start for ITBT Port - ", ToHexString (TUID)))
                        If (((PDCX == One) && (DLSC == One)))
                        {
                            PDCX = One
                            HPSX = One
                            Notify (^, Zero) // Bus Check
                        }
                        Else
                        {
                            HPSX = One
                        }

                        ADBG (Concatenate ("HotPlug Event End for ITBT Port - ", ToHexString (TUID)))
                    }
                }

                Name (STAT, One)
                Method (D3CX, 0, Serialized)
                {
                    ADBG (Concatenate ("TBT RP D3ColdExit Start TUID -", ToHexString (TUID)))
                    ADBG (Concatenate ("RP STAT -", ToHexString (STAT)))
                    ADBG (Concatenate ("TBT RP VDID -", ToHexString (VDID)))
                    ADBG (Concatenate ("VDID -", ToHexString (VDID)))
                    If ((STAT == One))
                    {
                        Return (Zero)
                    }

                    ADBG (Concatenate ("Original RPFE -", ToHexString (RPFE)))
                    RPFE = Zero
                    ADBG (Concatenate ("RPFE -", ToHexString (RPFE)))
                    ADBG (Concatenate ("Original RPER -", ToHexString (RPER)))
                    RPER = Zero
                    ADBG (Concatenate ("RPER -", ToHexString (RPER)))
                    L23R = One
                    Local0 = Zero
                    Local1 = L23R /* \_SB_.PC01.TRP1.L23R */
                    While (Local1)
                    {
                        If ((Local0 > 0x14))
                        {
                            Break
                        }

                        Sleep (0x05)
                        Local0++
                        Local1 = L23R /* \_SB_.PC01.TRP1.L23R */
                    }

                    ADBG (Concatenate ("L23R -", ToHexString (L23R)))
                    ADBG (Concatenate ("Loop -", ToHexString (Local0)))
                    STAT = One
                    Local0 = Zero
                    Local1 = LASX /* \_SB_.PC01.TRP1.LASX */
                    While ((Local1 == Zero))
                    {
                        If ((Local0 > 0x14))
                        {
                            Break
                        }

                        Sleep (0x05)
                        Local0++
                        Local1 = LASX /* \_SB_.PC01.TRP1.LASX */
                    }

                    ADBG (Concatenate ("LASX -", ToHexString (LASX)))
                    ADBG (Concatenate ("Loop -", ToHexString (Local0)))
                    ADBG ("TBT RP D3ColdExit End")
                }

                Method (D3CE, 0, Serialized)
                {
                    ADBG (Concatenate ("TBT RP D3ColdEntry Start TUID -", ToHexString (TUID)))
                    ADBG (Concatenate ("RP STAT -", ToHexString (STAT)))
                    ADBG (Concatenate ("TBT RP VDID -", ToHexString (VDID)))
                    If ((STAT == Zero))
                    {
                        Return (Zero)
                    }

                    L23E = One
                    Local0 = Zero
                    Local1 = L23E /* \_SB_.PC01.TRP1.L23E */
                    While (Local1)
                    {
                        If ((Local0 > 0x14))
                        {
                            Break
                        }

                        Sleep (0x05)
                        Local0++
                        Local1 = L23E /* \_SB_.PC01.TRP1.L23E */
                    }

                    ADBG (Concatenate ("L23E -", ToHexString (L23E)))
                    ADBG (Concatenate ("Loop -", ToHexString (Local0)))
                    STAT = Zero
                    ADBG (Concatenate ("Original RPFE -", ToHexString (RPFE)))
                    RPFE = One
                    ADBG (Concatenate ("RPFE -", ToHexString (RPFE)))
                    ADBG (Concatenate ("Original RPER -", ToHexString (RPER)))
                    RPER = One
                    ADBG (Concatenate ("RPER -", ToHexString (RPER)))
                    ADBG (Concatenate ("TBT RP D3ColdEntry End TUID -", ToHexString (TUID)))
                }

                Method (_PS0, 0, Serialized)  // _PS0: Power State 0
                {
                    ADBG (Concatenate ("TBT _PS0 Start RP ", ToHexString (TUID)))
                    ADBG (Concatenate ("TBT RP VDID -", ToHexString (VDID)))
                    HPEV ()
                    If ((HPEX == One))
                    {
                        ADBG ("Disable Hot Plug SCI")
                        HPEX = Zero
                    }

                    HPME ()
                    If ((PMEX == One))
                    {
                        ADBG ("Disable PME SCI")
                        PMEX = Zero
                    }

                    Sleep (0x64)
                    If (((TUID == Zero) || (TUID == One)))
                    {
                        If ((\_SB.PC00.TDM0.WACT == One))
                        {
                            \_SB.PC00.TDM0.WACT = 0x02
                            \_SB.PC00.TDM0.WFCC (ITCT)
                            \_SB.PC00.TDM0.WACT = Zero
                        }
                        ElseIf ((\_SB.PC00.TDM0.WACT == 0x02))
                        {
                            ADBG ("Wait until other _PS0 get response")
                            While ((\_SB.PC00.TDM0.WACT != Zero))
                            {
                                Sleep (0x05)
                            }

                            ADBG ("Other _PS0 got response")
                        }
                    }
                    ElseIf ((\_SB.PC00.TDM1.WACT == One))
                    {
                        \_SB.PC00.TDM1.WACT = 0x02
                        \_SB.PC00.TDM1.WFCC (ITCT)
                        \_SB.PC00.TDM1.WACT = Zero
                    }
                    ElseIf ((\_SB.PC00.TDM1.WACT == 0x02))
                    {
                        ADBG ("Wait until other _PS0 get response")
                        While ((\_SB.PC00.TDM1.WACT != Zero))
                        {
                            Sleep (0x05)
                        }

                        ADBG ("Other _PS0 got response")
                    }

                    ADBG (Concatenate ("TBT _PS0 End RP ", ToHexString (TUID)))
                }

                Method (_PS3, 0, Serialized)  // _PS3: Power State 3
                {
                    ADBG (Concatenate ("TBT _PS3 Start RP ", ToHexString (TUID)))
                    ADBG (Concatenate ("TBT RP VDID -", ToHexString (VDID)))
                    CHKH ()
                    If ((HPEX == Zero))
                    {
                        ADBG ("Enable Hot Plug SCI")
                        HPEX = One
                        HPEV ()
                    }

                    If ((PMEX == Zero))
                    {
                        ADBG ("Enable PME SCI")
                        PMEX = One
                        HPME ()
                    }

                    ADBG (Concatenate ("TBT _PS3 End RP ", ToHexString (TUID)))
                }

                Method (CHKH, 0, NotSerialized)
                {
                    If ((PDCX == One))
                    {
                        If ((DLSC == Zero))
                        {
                            PDCX = One
                        }
                    }
                }

                Method (_DSD, 0, NotSerialized)  // _DSD: Device-Specific Data
                {
                    ADBG ("TBT RP _DSD")
                    Return (Package (0x04)
                    {
                        ToUUID ("6211e2c0-58a3-4af3-90e1-927a4e0c55a4") /* Unknown UUID */, 
                        Package (0x01)
                        {
                            Package (0x02)
                            {
                                "HotPlugSupportInD3", 
                                One
                            }
                        }, 

                        ToUUID ("efcc06cc-73ac-4bc3-bff0-76143807c389") /* Unknown UUID */, 
                        Package (0x02)
                        {
                            Package (0x02)
                            {
                                "ExternalFacingPort", 
                                One
                            }, 

                            Package (0x02)
                            {
                                "UID", 
                                TUID
                            }
                        }
                    })
                }

                Method (_S0W, 0, NotSerialized)  // _S0W: S0 Device Wake State
                {
                    If (ITRT)
                    {
                        Return (0x04)
                    }
                    Else
                    {
                        Return (0x03)
                    }
                }

                If (ITRT)
                {
                    Method (_PR0, 0, NotSerialized)  // _PR0: Power Resources for D0
                    {
                        If (TRTD)
                        {
                            If (((TUID == Zero) || (TUID == One)))
                            {
                                Return (Package (0x02)
                                {
                                    \_SB.PC00.D3C, 
                                    \_SB.PC00.TBT0
                                })
                            }
                            Else
                            {
                                Return (Package (0x02)
                                {
                                    \_SB.PC00.D3C, 
                                    \_SB.PC00.TBT1
                                })
                            }
                        }

                        If (((TUID == Zero) || (TUID == One)))
                        {
                            Return (Package (0x01)
                            {
                                \_SB.PC00.TBT0
                            })
                        }

                        Return (Package (0x01)
                        {
                            \_SB.PC00.TBT1
                        })
                    }

                    Method (_PR3, 0, NotSerialized)  // _PR3: Power Resources for D3hot
                    {
                        If (TRTD)
                        {
                            If (((TUID == Zero) || (TUID == One)))
                            {
                                Return (Package (0x02)
                                {
                                    \_SB.PC00.D3C, 
                                    \_SB.PC00.TBT0
                                })
                            }
                            Else
                            {
                                Return (Package (0x02)
                                {
                                    \_SB.PC00.D3C, 
                                    \_SB.PC00.TBT1
                                })
                            }
                        }

                        If (((TUID == Zero) || (TUID == One)))
                        {
                            Return (Package (0x01)
                            {
                                \_SB.PC00.TBT0
                            })
                        }

                        Return (Package (0x01)
                        {
                            \_SB.PC00.TBT1
                        })
                    }
                }

                Method (HPME, 0, Serialized)
                {
                    ADBG ("TBT HPME")
                    If (((VDID != 0xFFFFFFFF) && (PMSX == One)))
                    {
                        ADBG ("TBT RP exists")
                        Notify (PXSX, 0x02) // Device Wake
                        PMSX = One
                        PSPX = One
                        Return (One)
                    }

                    Return (Zero)
                }

                Name (PD01, Package (0x04)
                {
                    Package (0x04)
                    {
                        0xFFFF, 
                        Zero, 
                        Zero, 
                        0x0B
                    }, 

                    Package (0x04)
                    {
                        0xFFFF, 
                        One, 
                        Zero, 
                        0x0A
                    }, 

                    Package (0x04)
                    {
                        0xFFFF, 
                        0x02, 
                        Zero, 
                        0x0B
                    }, 

                    Package (0x04)
                    {
                        0xFFFF, 
                        0x03, 
                        Zero, 
                        0x0B
                    }
                })
                Name (AR01, Package (0x04)
                {
                    Package (0x04)
                    {
                        0xFFFF, 
                        Zero, 
                        Zero, 
                        0x10
                    }, 

                    Package (0x04)
                    {
                        0xFFFF, 
                        One, 
                        Zero, 
                        0x11
                    }, 

                    Package (0x04)
                    {
                        0xFFFF, 
                        0x02, 
                        Zero, 
                        0x12
                    }, 

                    Package (0x04)
                    {
                        0xFFFF, 
                        0x03, 
                        Zero, 
                        0x13
                    }
                })
                Method (_PRT, 0, NotSerialized)  // _PRT: PCI Routing Table
                {
                    If (CondRefOf (PICM))
                    {
                        If (PICM)
                        {
                            Return (AR01) /* \_SB_.PC01.TRP1.AR01 */
                        }
                    }

                    Return (PD01) /* \_SB_.PC01.TRP1.PD01 */
                }
            }

            Device (TRP2)
            {
                Method (_ADR, 0, NotSerialized)  // _ADR: Address
                {
                    If ((TPA2 != Zero))
                    {
                        Return (TPA2) /* External reference */
                    }
                    Else
                    {
                        Return (0x00070002)
                    }
                }

                Name (TUID, 0x02)
                Name (LTEN, Zero)
                Name (LMSL, 0x88C8)
                Name (LNSL, 0x88C8)
                Name (DCPM, 0x0A)
                Method (_STA, 0, NotSerialized)  // _STA: Status
                {
                    ADBG (Concatenate ("TCSS RP2 _STA", ToHexString (TRE2)))
                    If ((TRE2 == One))
                    {
                        Return (0x0F)
                    }

                    Return (Zero)
                }

                Method (_INI, 0, NotSerialized)  // _INI: Initialize
                {
                    LTEN = LTE2 /* External reference */
                    LMSL = PSL2 /* External reference */
                    LNSL = PNS2 /* External reference */
                }

                Method (BASE, 0, NotSerialized)
                {
                    Local0 = (_ADR () & 0x07)
                    Local1 = ((_ADR () >> 0x10) & 0x1F)
                    ADBG (Concatenate ("BASE of ITBT Port", ToHexString (TUID)))
                    Local2 = ((Local0 << 0x0C) + (Local1 << 0x0F))
                    If (CondRefOf (\_SB.PC01))
                    {
                        Local3 = (\_SB.PC00.GPCB () + 0x10000000)
                        Local3 += Local2
                    }
                    Else
                    {
                        Local3 = (\_SB.PC00.GPCB () + Local2)
                    }

                    ADBG (Concatenate ("PCIe MMIO Address", ToHexString (Local3)))
                    Return (Local3)
                }

                OperationRegion (PXCS, SystemMemory, BASE (), 0x0800)
                Field (PXCS, AnyAcc, NoLock, Preserve)
                {
                    VDID,   32, 
                    Offset (0x50), 
                    L0SE,   1, 
                        ,   3, 
                    LDIS,   1, 
                    Offset (0x51), 
                    Offset (0x52), 
                        ,   13, 
                    LASX,   1, 
                    Offset (0x5A), 
                    ABPX,   1, 
                        ,   2, 
                    PDCX,   1, 
                        ,   2, 
                    PDSX,   1, 
                    Offset (0x5B), 
                    DLSC,   1, 
                    Offset (0x60), 
                    Offset (0x62), 
                    PSPX,   1, 
                    Offset (0xA4), 
                    D3HT,   2, 
                    Offset (0xD8), 
                        ,   30, 
                    HPEX,   1, 
                    PMEX,   1, 
                    Offset (0xE2), 
                        ,   2, 
                    L23E,   1, 
                    L23R,   1, 
                    Offset (0x420), 
                        ,   30, 
                    DPGE,   1, 
                    Offset (0x5BC), 
                        ,   3, 
                    RPER,   1, 
                    RPFE,   1
                }

                Field (PXCS, AnyAcc, NoLock, WriteAsZeros)
                {
                    Offset (0xDC), 
                        ,   30, 
                    HPSX,   1, 
                    PMSX,   1
                }

                Name (LTRV, Package (0x04)
                {
                    Zero, 
                    Zero, 
                    Zero, 
                    Zero
                })
                Method (_DSM, 4, Serialized)  // _DSM: Device-Specific Method
                {
                    If ((Arg0 == ToUUID ("e5c937d0-3553-4d7a-9117-ea4d19c3434d") /* Device Labeling Interface */))
                    {
                        Switch (ToInteger (Arg2))
                        {
                            Case (Zero)
                            {
                                Name (OPTS, Buffer (0x02)
                                {
                                     0x00, 0x00                                       // ..
                                })
                                CreateBitField (OPTS, Zero, FUN0)
                                CreateBitField (OPTS, 0x05, FUN5)
                                CreateBitField (OPTS, 0x06, FUN6)
                                CreateBitField (OPTS, 0x08, FUN8)
                                CreateBitField (OPTS, 0x09, FUN9)
                                FUN0 = One
                                FUN5 = IORB /* \IORB */
                                If ((LTEN == One))
                                {
                                    FUN6 = One
                                }

                                If ((Arg1 >= 0x02))
                                {
                                    If (CondRefOf (ECR1))
                                    {
                                        If ((ECR1 == One))
                                        {
                                            If ((Arg1 >= 0x03))
                                            {
                                                FUN8 = One
                                                FUN9 = One
                                            }
                                        }
                                    }
                                }

                                ADBG (Concatenate ("TBT RP OPTS -", ToHexString (OPTS)))
                                Return (OPTS) /* \_SB_.PC01.TRP2._DSM.OPTS */
                            }
                            Case (0x05)
                            {
                                If ((Arg1 >= One))
                                {
                                    Return (One)
                                }
                            }
                            Case (0x06)
                            {
                                If ((Arg1 >= 0x02))
                                {
                                    LTRV [Zero] = ((LMSL >> 0x0A) & 0x07)
                                    LTRV [One] = (LMSL & 0x03FF)
                                    LTRV [0x02] = ((LNSL >> 0x0A) & 0x07)
                                    LTRV [0x03] = (LNSL & 0x03FF)
                                    Return (LTRV) /* \_SB_.PC01.TRP2.LTRV */
                                }
                            }
                            Case (0x08)
                            {
                                If (CondRefOf (ECR1))
                                {
                                    If ((ECR1 == One))
                                    {
                                        If ((Arg1 >= 0x03))
                                        {
                                            Return (One)
                                        }
                                    }
                                }
                            }
                            Case (0x09)
                            {
                                If (CondRefOf (ECR1))
                                {
                                    If ((ECR1 == One))
                                    {
                                        If ((Arg1 >= 0x03))
                                        {
                                            Return (Package (0x05)
                                            {
                                                0xC350, 
                                                Ones, 
                                                Ones, 
                                                0xC350, 
                                                Ones
                                            })
                                        }
                                    }
                                }
                            }

                        }
                    }

                    Return (Buffer (One)
                    {
                         0x00                                             // .
                    })
                }

                Device (PXSX)
                {
                    Name (_ADR, Zero)  // _ADR: Address
                    Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
                    {
                        Return (GPRW (0x69, 0x04))
                    }
                }

                Method (_DSW, 3, NotSerialized)  // _DSW: Device Sleep Wake
                {
                    ADBG (Concatenate ("TCSS RP _DSW TUID -", ToHexString (TUID)))
                    ADBG (Concatenate ("Arg0 -", ToHexString (Arg0)))
                    ADBG (Concatenate ("Arg1 -", ToHexString (Arg1)))
                    \_SB.PC00.TDM0.SD3C = Arg1
                    \_SB.PC00.TDM1.SD3C = Arg1
                    ADBG (Concatenate ("TDM0 SD3C -", ToHexString (\_SB.PC00.TDM0.SD3C)))
                    ADBG (Concatenate ("TDM1 SD3C -", ToHexString (\_SB.PC00.TDM1.SD3C)))
                    C2PM (Arg0, Arg1, Arg2, DCPM)
                }

                Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
                {
                    If (CondRefOf (DUWS))
                    {
                        Return (GPRW (0x69, DUWS))
                    }
                    Else
                    {
                        Return (GPRW (0x69, 0x04))
                    }
                }

                Method (HPEV, 0, Serialized)
                {
                    If (((VDID != 0xFFFFFFFF) && HPSX))
                    {
                        ADBG (Concatenate ("HotPlug Event Start for ITBT Port - ", ToHexString (TUID)))
                        If (((PDCX == One) && (DLSC == One)))
                        {
                            PDCX = One
                            HPSX = One
                            Notify (^, Zero) // Bus Check
                        }
                        Else
                        {
                            HPSX = One
                        }

                        ADBG (Concatenate ("HotPlug Event End for ITBT Port - ", ToHexString (TUID)))
                    }
                }

                Name (STAT, One)
                Method (D3CX, 0, Serialized)
                {
                    ADBG (Concatenate ("TBT RP D3ColdExit Start TUID -", ToHexString (TUID)))
                    ADBG (Concatenate ("RP STAT -", ToHexString (STAT)))
                    ADBG (Concatenate ("TBT RP VDID -", ToHexString (VDID)))
                    ADBG (Concatenate ("VDID -", ToHexString (VDID)))
                    If ((STAT == One))
                    {
                        Return (Zero)
                    }

                    ADBG (Concatenate ("Original RPFE -", ToHexString (RPFE)))
                    RPFE = Zero
                    ADBG (Concatenate ("RPFE -", ToHexString (RPFE)))
                    ADBG (Concatenate ("Original RPER -", ToHexString (RPER)))
                    RPER = Zero
                    ADBG (Concatenate ("RPER -", ToHexString (RPER)))
                    L23R = One
                    Local0 = Zero
                    Local1 = L23R /* \_SB_.PC01.TRP2.L23R */
                    While (Local1)
                    {
                        If ((Local0 > 0x14))
                        {
                            Break
                        }

                        Sleep (0x05)
                        Local0++
                        Local1 = L23R /* \_SB_.PC01.TRP2.L23R */
                    }

                    ADBG (Concatenate ("L23R -", ToHexString (L23R)))
                    ADBG (Concatenate ("Loop -", ToHexString (Local0)))
                    STAT = One
                    Local0 = Zero
                    Local1 = LASX /* \_SB_.PC01.TRP2.LASX */
                    While ((Local1 == Zero))
                    {
                        If ((Local0 > 0x14))
                        {
                            Break
                        }

                        Sleep (0x05)
                        Local0++
                        Local1 = LASX /* \_SB_.PC01.TRP2.LASX */
                    }

                    ADBG (Concatenate ("LASX -", ToHexString (LASX)))
                    ADBG (Concatenate ("Loop -", ToHexString (Local0)))
                    ADBG ("TBT RP D3ColdExit End")
                }

                Method (D3CE, 0, Serialized)
                {
                    ADBG (Concatenate ("TBT RP D3ColdEntry Start TUID -", ToHexString (TUID)))
                    ADBG (Concatenate ("RP STAT -", ToHexString (STAT)))
                    ADBG (Concatenate ("TBT RP VDID -", ToHexString (VDID)))
                    If ((STAT == Zero))
                    {
                        Return (Zero)
                    }

                    L23E = One
                    Local0 = Zero
                    Local1 = L23E /* \_SB_.PC01.TRP2.L23E */
                    While (Local1)
                    {
                        If ((Local0 > 0x14))
                        {
                            Break
                        }

                        Sleep (0x05)
                        Local0++
                        Local1 = L23E /* \_SB_.PC01.TRP2.L23E */
                    }

                    ADBG (Concatenate ("L23E -", ToHexString (L23E)))
                    ADBG (Concatenate ("Loop -", ToHexString (Local0)))
                    STAT = Zero
                    ADBG (Concatenate ("Original RPFE -", ToHexString (RPFE)))
                    RPFE = One
                    ADBG (Concatenate ("RPFE -", ToHexString (RPFE)))
                    ADBG (Concatenate ("Original RPER -", ToHexString (RPER)))
                    RPER = One
                    ADBG (Concatenate ("RPER -", ToHexString (RPER)))
                    ADBG (Concatenate ("TBT RP D3ColdEntry End TUID -", ToHexString (TUID)))
                }

                Method (_PS0, 0, Serialized)  // _PS0: Power State 0
                {
                    ADBG (Concatenate ("TBT _PS0 Start RP ", ToHexString (TUID)))
                    ADBG (Concatenate ("TBT RP VDID -", ToHexString (VDID)))
                    HPEV ()
                    If ((HPEX == One))
                    {
                        ADBG ("Disable Hot Plug SCI")
                        HPEX = Zero
                    }

                    HPME ()
                    If ((PMEX == One))
                    {
                        ADBG ("Disable PME SCI")
                        PMEX = Zero
                    }

                    Sleep (0x64)
                    If (((TUID == Zero) || (TUID == One)))
                    {
                        If ((\_SB.PC00.TDM0.WACT == One))
                        {
                            \_SB.PC00.TDM0.WACT = 0x02
                            \_SB.PC00.TDM0.WFCC (ITCT)
                            \_SB.PC00.TDM0.WACT = Zero
                        }
                        ElseIf ((\_SB.PC00.TDM0.WACT == 0x02))
                        {
                            ADBG ("Wait until other _PS0 get response")
                            While ((\_SB.PC00.TDM0.WACT != Zero))
                            {
                                Sleep (0x05)
                            }

                            ADBG ("Other _PS0 got response")
                        }
                    }
                    ElseIf ((\_SB.PC00.TDM1.WACT == One))
                    {
                        \_SB.PC00.TDM1.WACT = 0x02
                        \_SB.PC00.TDM1.WFCC (ITCT)
                        \_SB.PC00.TDM1.WACT = Zero
                    }
                    ElseIf ((\_SB.PC00.TDM1.WACT == 0x02))
                    {
                        ADBG ("Wait until other _PS0 get response")
                        While ((\_SB.PC00.TDM1.WACT != Zero))
                        {
                            Sleep (0x05)
                        }

                        ADBG ("Other _PS0 got response")
                    }

                    ADBG (Concatenate ("TBT _PS0 End RP ", ToHexString (TUID)))
                }

                Method (_PS3, 0, Serialized)  // _PS3: Power State 3
                {
                    ADBG (Concatenate ("TBT _PS3 Start RP ", ToHexString (TUID)))
                    ADBG (Concatenate ("TBT RP VDID -", ToHexString (VDID)))
                    CHKH ()
                    If ((HPEX == Zero))
                    {
                        ADBG ("Enable Hot Plug SCI")
                        HPEX = One
                        HPEV ()
                    }

                    If ((PMEX == Zero))
                    {
                        ADBG ("Enable PME SCI")
                        PMEX = One
                        HPME ()
                    }

                    ADBG (Concatenate ("TBT _PS3 End RP ", ToHexString (TUID)))
                }

                Method (CHKH, 0, NotSerialized)
                {
                    If ((PDCX == One))
                    {
                        If ((DLSC == Zero))
                        {
                            PDCX = One
                        }
                    }
                }

                Method (_DSD, 0, NotSerialized)  // _DSD: Device-Specific Data
                {
                    ADBG ("TBT RP _DSD")
                    Return (Package (0x04)
                    {
                        ToUUID ("6211e2c0-58a3-4af3-90e1-927a4e0c55a4") /* Unknown UUID */, 
                        Package (0x01)
                        {
                            Package (0x02)
                            {
                                "HotPlugSupportInD3", 
                                One
                            }
                        }, 

                        ToUUID ("efcc06cc-73ac-4bc3-bff0-76143807c389") /* Unknown UUID */, 
                        Package (0x02)
                        {
                            Package (0x02)
                            {
                                "ExternalFacingPort", 
                                One
                            }, 

                            Package (0x02)
                            {
                                "UID", 
                                TUID
                            }
                        }
                    })
                }

                Method (_S0W, 0, NotSerialized)  // _S0W: S0 Device Wake State
                {
                    If (ITRT)
                    {
                        Return (0x04)
                    }
                    Else
                    {
                        Return (0x03)
                    }
                }

                If (ITRT)
                {
                    Method (_PR0, 0, NotSerialized)  // _PR0: Power Resources for D0
                    {
                        If (TRTD)
                        {
                            If (((TUID == Zero) || (TUID == One)))
                            {
                                Return (Package (0x02)
                                {
                                    \_SB.PC00.D3C, 
                                    \_SB.PC00.TBT0
                                })
                            }
                            Else
                            {
                                Return (Package (0x02)
                                {
                                    \_SB.PC00.D3C, 
                                    \_SB.PC00.TBT1
                                })
                            }
                        }

                        If (((TUID == Zero) || (TUID == One)))
                        {
                            Return (Package (0x01)
                            {
                                \_SB.PC00.TBT0
                            })
                        }

                        Return (Package (0x01)
                        {
                            \_SB.PC00.TBT1
                        })
                    }

                    Method (_PR3, 0, NotSerialized)  // _PR3: Power Resources for D3hot
                    {
                        If (TRTD)
                        {
                            If (((TUID == Zero) || (TUID == One)))
                            {
                                Return (Package (0x02)
                                {
                                    \_SB.PC00.D3C, 
                                    \_SB.PC00.TBT0
                                })
                            }
                            Else
                            {
                                Return (Package (0x02)
                                {
                                    \_SB.PC00.D3C, 
                                    \_SB.PC00.TBT1
                                })
                            }
                        }

                        If (((TUID == Zero) || (TUID == One)))
                        {
                            Return (Package (0x01)
                            {
                                \_SB.PC00.TBT0
                            })
                        }

                        Return (Package (0x01)
                        {
                            \_SB.PC00.TBT1
                        })
                    }
                }

                Method (HPME, 0, Serialized)
                {
                    ADBG ("TBT HPME")
                    If (((VDID != 0xFFFFFFFF) && (PMSX == One)))
                    {
                        ADBG ("TBT RP exists")
                        Notify (PXSX, 0x02) // Device Wake
                        PMSX = One
                        PSPX = One
                        Return (One)
                    }

                    Return (Zero)
                }

                Name (PD01, Package (0x04)
                {
                    Package (0x04)
                    {
                        0xFFFF, 
                        Zero, 
                        Zero, 
                        0x0B
                    }, 

                    Package (0x04)
                    {
                        0xFFFF, 
                        One, 
                        Zero, 
                        0x0A
                    }, 

                    Package (0x04)
                    {
                        0xFFFF, 
                        0x02, 
                        Zero, 
                        0x0B
                    }, 

                    Package (0x04)
                    {
                        0xFFFF, 
                        0x03, 
                        Zero, 
                        0x0B
                    }
                })
                Name (AR01, Package (0x04)
                {
                    Package (0x04)
                    {
                        0xFFFF, 
                        Zero, 
                        Zero, 
                        0x10
                    }, 

                    Package (0x04)
                    {
                        0xFFFF, 
                        One, 
                        Zero, 
                        0x11
                    }, 

                    Package (0x04)
                    {
                        0xFFFF, 
                        0x02, 
                        Zero, 
                        0x12
                    }, 

                    Package (0x04)
                    {
                        0xFFFF, 
                        0x03, 
                        Zero, 
                        0x13
                    }
                })
                Method (_PRT, 0, NotSerialized)  // _PRT: PCI Routing Table
                {
                    If (CondRefOf (PICM))
                    {
                        If (PICM)
                        {
                            Return (AR01) /* \_SB_.PC01.TRP2.AR01 */
                        }
                    }

                    Return (PD01) /* \_SB_.PC01.TRP2.PD01 */
                }
            }

            Device (TRP3)
            {
                Method (_ADR, 0, NotSerialized)  // _ADR: Address
                {
                    If ((TPA3 != Zero))
                    {
                        Return (TPA3) /* External reference */
                    }
                    Else
                    {
                        Return (0x00070003)
                    }
                }

                Name (TUID, 0x03)
                Name (LTEN, Zero)
                Name (LMSL, 0x88C8)
                Name (LNSL, 0x88C8)
                Name (DCPM, 0x0B)
                Method (_STA, 0, NotSerialized)  // _STA: Status
                {
                    ADBG (Concatenate ("TCSS RP3 _STA", ToHexString (TRE3)))
                    If ((TRE3 == One))
                    {
                        Return (0x0F)
                    }

                    Return (Zero)
                }

                Method (_INI, 0, NotSerialized)  // _INI: Initialize
                {
                    LTEN = LTE3 /* External reference */
                    LMSL = PSL3 /* External reference */
                    LNSL = PNS3 /* External reference */
                }

                Method (BASE, 0, NotSerialized)
                {
                    Local0 = (_ADR () & 0x07)
                    Local1 = ((_ADR () >> 0x10) & 0x1F)
                    ADBG (Concatenate ("BASE of ITBT Port", ToHexString (TUID)))
                    Local2 = ((Local0 << 0x0C) + (Local1 << 0x0F))
                    If (CondRefOf (\_SB.PC01))
                    {
                        Local3 = (\_SB.PC00.GPCB () + 0x10000000)
                        Local3 += Local2
                    }
                    Else
                    {
                        Local3 = (\_SB.PC00.GPCB () + Local2)
                    }

                    ADBG (Concatenate ("PCIe MMIO Address", ToHexString (Local3)))
                    Return (Local3)
                }

                OperationRegion (PXCS, SystemMemory, BASE (), 0x0800)
                Field (PXCS, AnyAcc, NoLock, Preserve)
                {
                    VDID,   32, 
                    Offset (0x50), 
                    L0SE,   1, 
                        ,   3, 
                    LDIS,   1, 
                    Offset (0x51), 
                    Offset (0x52), 
                        ,   13, 
                    LASX,   1, 
                    Offset (0x5A), 
                    ABPX,   1, 
                        ,   2, 
                    PDCX,   1, 
                        ,   2, 
                    PDSX,   1, 
                    Offset (0x5B), 
                    DLSC,   1, 
                    Offset (0x60), 
                    Offset (0x62), 
                    PSPX,   1, 
                    Offset (0xA4), 
                    D3HT,   2, 
                    Offset (0xD8), 
                        ,   30, 
                    HPEX,   1, 
                    PMEX,   1, 
                    Offset (0xE2), 
                        ,   2, 
                    L23E,   1, 
                    L23R,   1, 
                    Offset (0x420), 
                        ,   30, 
                    DPGE,   1, 
                    Offset (0x5BC), 
                        ,   3, 
                    RPER,   1, 
                    RPFE,   1
                }

                Field (PXCS, AnyAcc, NoLock, WriteAsZeros)
                {
                    Offset (0xDC), 
                        ,   30, 
                    HPSX,   1, 
                    PMSX,   1
                }

                Name (LTRV, Package (0x04)
                {
                    Zero, 
                    Zero, 
                    Zero, 
                    Zero
                })
                Method (_DSM, 4, Serialized)  // _DSM: Device-Specific Method
                {
                    If ((Arg0 == ToUUID ("e5c937d0-3553-4d7a-9117-ea4d19c3434d") /* Device Labeling Interface */))
                    {
                        Switch (ToInteger (Arg2))
                        {
                            Case (Zero)
                            {
                                Name (OPTS, Buffer (0x02)
                                {
                                     0x00, 0x00                                       // ..
                                })
                                CreateBitField (OPTS, Zero, FUN0)
                                CreateBitField (OPTS, 0x05, FUN5)
                                CreateBitField (OPTS, 0x06, FUN6)
                                CreateBitField (OPTS, 0x08, FUN8)
                                CreateBitField (OPTS, 0x09, FUN9)
                                FUN0 = One
                                FUN5 = IORB /* \IORB */
                                If ((LTEN == One))
                                {
                                    FUN6 = One
                                }

                                If ((Arg1 >= 0x02))
                                {
                                    If (CondRefOf (ECR1))
                                    {
                                        If ((ECR1 == One))
                                        {
                                            If ((Arg1 >= 0x03))
                                            {
                                                FUN8 = One
                                                FUN9 = One
                                            }
                                        }
                                    }
                                }

                                ADBG (Concatenate ("TBT RP OPTS -", ToHexString (OPTS)))
                                Return (OPTS) /* \_SB_.PC01.TRP3._DSM.OPTS */
                            }
                            Case (0x05)
                            {
                                If ((Arg1 >= One))
                                {
                                    Return (One)
                                }
                            }
                            Case (0x06)
                            {
                                If ((Arg1 >= 0x02))
                                {
                                    LTRV [Zero] = ((LMSL >> 0x0A) & 0x07)
                                    LTRV [One] = (LMSL & 0x03FF)
                                    LTRV [0x02] = ((LNSL >> 0x0A) & 0x07)
                                    LTRV [0x03] = (LNSL & 0x03FF)
                                    Return (LTRV) /* \_SB_.PC01.TRP3.LTRV */
                                }
                            }
                            Case (0x08)
                            {
                                If (CondRefOf (ECR1))
                                {
                                    If ((ECR1 == One))
                                    {
                                        If ((Arg1 >= 0x03))
                                        {
                                            Return (One)
                                        }
                                    }
                                }
                            }
                            Case (0x09)
                            {
                                If (CondRefOf (ECR1))
                                {
                                    If ((ECR1 == One))
                                    {
                                        If ((Arg1 >= 0x03))
                                        {
                                            Return (Package (0x05)
                                            {
                                                0xC350, 
                                                Ones, 
                                                Ones, 
                                                0xC350, 
                                                Ones
                                            })
                                        }
                                    }
                                }
                            }

                        }
                    }

                    Return (Buffer (One)
                    {
                         0x00                                             // .
                    })
                }

                Device (PXSX)
                {
                    Name (_ADR, Zero)  // _ADR: Address
                    Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
                    {
                        Return (GPRW (0x69, 0x04))
                    }
                }

                Method (_DSW, 3, NotSerialized)  // _DSW: Device Sleep Wake
                {
                    ADBG (Concatenate ("TCSS RP _DSW TUID -", ToHexString (TUID)))
                    ADBG (Concatenate ("Arg0 -", ToHexString (Arg0)))
                    ADBG (Concatenate ("Arg1 -", ToHexString (Arg1)))
                    \_SB.PC00.TDM0.SD3C = Arg1
                    \_SB.PC00.TDM1.SD3C = Arg1
                    ADBG (Concatenate ("TDM0 SD3C -", ToHexString (\_SB.PC00.TDM0.SD3C)))
                    ADBG (Concatenate ("TDM1 SD3C -", ToHexString (\_SB.PC00.TDM1.SD3C)))
                    C2PM (Arg0, Arg1, Arg2, DCPM)
                }

                Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
                {
                    If (CondRefOf (DUWS))
                    {
                        Return (GPRW (0x69, DUWS))
                    }
                    Else
                    {
                        Return (GPRW (0x69, 0x04))
                    }
                }

                Method (HPEV, 0, Serialized)
                {
                    If (((VDID != 0xFFFFFFFF) && HPSX))
                    {
                        ADBG (Concatenate ("HotPlug Event Start for ITBT Port - ", ToHexString (TUID)))
                        If (((PDCX == One) && (DLSC == One)))
                        {
                            PDCX = One
                            HPSX = One
                            Notify (^, Zero) // Bus Check
                        }
                        Else
                        {
                            HPSX = One
                        }

                        ADBG (Concatenate ("HotPlug Event End for ITBT Port - ", ToHexString (TUID)))
                    }
                }

                Name (STAT, One)
                Method (D3CX, 0, Serialized)
                {
                    ADBG (Concatenate ("TBT RP D3ColdExit Start TUID -", ToHexString (TUID)))
                    ADBG (Concatenate ("RP STAT -", ToHexString (STAT)))
                    ADBG (Concatenate ("TBT RP VDID -", ToHexString (VDID)))
                    ADBG (Concatenate ("VDID -", ToHexString (VDID)))
                    If ((STAT == One))
                    {
                        Return (Zero)
                    }

                    ADBG (Concatenate ("Original RPFE -", ToHexString (RPFE)))
                    RPFE = Zero
                    ADBG (Concatenate ("RPFE -", ToHexString (RPFE)))
                    ADBG (Concatenate ("Original RPER -", ToHexString (RPER)))
                    RPER = Zero
                    ADBG (Concatenate ("RPER -", ToHexString (RPER)))
                    L23R = One
                    Local0 = Zero
                    Local1 = L23R /* \_SB_.PC01.TRP3.L23R */
                    While (Local1)
                    {
                        If ((Local0 > 0x14))
                        {
                            Break
                        }

                        Sleep (0x05)
                        Local0++
                        Local1 = L23R /* \_SB_.PC01.TRP3.L23R */
                    }

                    ADBG (Concatenate ("L23R -", ToHexString (L23R)))
                    ADBG (Concatenate ("Loop -", ToHexString (Local0)))
                    STAT = One
                    Local0 = Zero
                    Local1 = LASX /* \_SB_.PC01.TRP3.LASX */
                    While ((Local1 == Zero))
                    {
                        If ((Local0 > 0x14))
                        {
                            Break
                        }

                        Sleep (0x05)
                        Local0++
                        Local1 = LASX /* \_SB_.PC01.TRP3.LASX */
                    }

                    ADBG (Concatenate ("LASX -", ToHexString (LASX)))
                    ADBG (Concatenate ("Loop -", ToHexString (Local0)))
                    ADBG ("TBT RP D3ColdExit End")
                }

                Method (D3CE, 0, Serialized)
                {
                    ADBG (Concatenate ("TBT RP D3ColdEntry Start TUID -", ToHexString (TUID)))
                    ADBG (Concatenate ("RP STAT -", ToHexString (STAT)))
                    ADBG (Concatenate ("TBT RP VDID -", ToHexString (VDID)))
                    If ((STAT == Zero))
                    {
                        Return (Zero)
                    }

                    L23E = One
                    Local0 = Zero
                    Local1 = L23E /* \_SB_.PC01.TRP3.L23E */
                    While (Local1)
                    {
                        If ((Local0 > 0x14))
                        {
                            Break
                        }

                        Sleep (0x05)
                        Local0++
                        Local1 = L23E /* \_SB_.PC01.TRP3.L23E */
                    }

                    ADBG (Concatenate ("L23E -", ToHexString (L23E)))
                    ADBG (Concatenate ("Loop -", ToHexString (Local0)))
                    STAT = Zero
                    ADBG (Concatenate ("Original RPFE -", ToHexString (RPFE)))
                    RPFE = One
                    ADBG (Concatenate ("RPFE -", ToHexString (RPFE)))
                    ADBG (Concatenate ("Original RPER -", ToHexString (RPER)))
                    RPER = One
                    ADBG (Concatenate ("RPER -", ToHexString (RPER)))
                    ADBG (Concatenate ("TBT RP D3ColdEntry End TUID -", ToHexString (TUID)))
                }

                Method (_PS0, 0, Serialized)  // _PS0: Power State 0
                {
                    ADBG (Concatenate ("TBT _PS0 Start RP ", ToHexString (TUID)))
                    ADBG (Concatenate ("TBT RP VDID -", ToHexString (VDID)))
                    HPEV ()
                    If ((HPEX == One))
                    {
                        ADBG ("Disable Hot Plug SCI")
                        HPEX = Zero
                    }

                    HPME ()
                    If ((PMEX == One))
                    {
                        ADBG ("Disable PME SCI")
                        PMEX = Zero
                    }

                    Sleep (0x64)
                    If (((TUID == Zero) || (TUID == One)))
                    {
                        If ((\_SB.PC00.TDM0.WACT == One))
                        {
                            \_SB.PC00.TDM0.WACT = 0x02
                            \_SB.PC00.TDM0.WFCC (ITCT)
                            \_SB.PC00.TDM0.WACT = Zero
                        }
                        ElseIf ((\_SB.PC00.TDM0.WACT == 0x02))
                        {
                            ADBG ("Wait until other _PS0 get response")
                            While ((\_SB.PC00.TDM0.WACT != Zero))
                            {
                                Sleep (0x05)
                            }

                            ADBG ("Other _PS0 got response")
                        }
                    }
                    ElseIf ((\_SB.PC00.TDM1.WACT == One))
                    {
                        \_SB.PC00.TDM1.WACT = 0x02
                        \_SB.PC00.TDM1.WFCC (ITCT)
                        \_SB.PC00.TDM1.WACT = Zero
                    }
                    ElseIf ((\_SB.PC00.TDM1.WACT == 0x02))
                    {
                        ADBG ("Wait until other _PS0 get response")
                        While ((\_SB.PC00.TDM1.WACT != Zero))
                        {
                            Sleep (0x05)
                        }

                        ADBG ("Other _PS0 got response")
                    }

                    ADBG (Concatenate ("TBT _PS0 End RP ", ToHexString (TUID)))
                }

                Method (_PS3, 0, Serialized)  // _PS3: Power State 3
                {
                    ADBG (Concatenate ("TBT _PS3 Start RP ", ToHexString (TUID)))
                    ADBG (Concatenate ("TBT RP VDID -", ToHexString (VDID)))
                    CHKH ()
                    If ((HPEX == Zero))
                    {
                        ADBG ("Enable Hot Plug SCI")
                        HPEX = One
                        HPEV ()
                    }

                    If ((PMEX == Zero))
                    {
                        ADBG ("Enable PME SCI")
                        PMEX = One
                        HPME ()
                    }

                    ADBG (Concatenate ("TBT _PS3 End RP ", ToHexString (TUID)))
                }

                Method (CHKH, 0, NotSerialized)
                {
                    If ((PDCX == One))
                    {
                        If ((DLSC == Zero))
                        {
                            PDCX = One
                        }
                    }
                }

                Method (_DSD, 0, NotSerialized)  // _DSD: Device-Specific Data
                {
                    ADBG ("TBT RP _DSD")
                    Return (Package (0x04)
                    {
                        ToUUID ("6211e2c0-58a3-4af3-90e1-927a4e0c55a4") /* Unknown UUID */, 
                        Package (0x01)
                        {
                            Package (0x02)
                            {
                                "HotPlugSupportInD3", 
                                One
                            }
                        }, 

                        ToUUID ("efcc06cc-73ac-4bc3-bff0-76143807c389") /* Unknown UUID */, 
                        Package (0x02)
                        {
                            Package (0x02)
                            {
                                "ExternalFacingPort", 
                                One
                            }, 

                            Package (0x02)
                            {
                                "UID", 
                                TUID
                            }
                        }
                    })
                }

                Method (_S0W, 0, NotSerialized)  // _S0W: S0 Device Wake State
                {
                    If (ITRT)
                    {
                        Return (0x04)
                    }
                    Else
                    {
                        Return (0x03)
                    }
                }

                If (ITRT)
                {
                    Method (_PR0, 0, NotSerialized)  // _PR0: Power Resources for D0
                    {
                        If (TRTD)
                        {
                            If (((TUID == Zero) || (TUID == One)))
                            {
                                Return (Package (0x02)
                                {
                                    \_SB.PC00.D3C, 
                                    \_SB.PC00.TBT0
                                })
                            }
                            Else
                            {
                                Return (Package (0x02)
                                {
                                    \_SB.PC00.D3C, 
                                    \_SB.PC00.TBT1
                                })
                            }
                        }

                        If (((TUID == Zero) || (TUID == One)))
                        {
                            Return (Package (0x01)
                            {
                                \_SB.PC00.TBT0
                            })
                        }

                        Return (Package (0x01)
                        {
                            \_SB.PC00.TBT1
                        })
                    }

                    Method (_PR3, 0, NotSerialized)  // _PR3: Power Resources for D3hot
                    {
                        If (TRTD)
                        {
                            If (((TUID == Zero) || (TUID == One)))
                            {
                                Return (Package (0x02)
                                {
                                    \_SB.PC00.D3C, 
                                    \_SB.PC00.TBT0
                                })
                            }
                            Else
                            {
                                Return (Package (0x02)
                                {
                                    \_SB.PC00.D3C, 
                                    \_SB.PC00.TBT1
                                })
                            }
                        }

                        If (((TUID == Zero) || (TUID == One)))
                        {
                            Return (Package (0x01)
                            {
                                \_SB.PC00.TBT0
                            })
                        }

                        Return (Package (0x01)
                        {
                            \_SB.PC00.TBT1
                        })
                    }
                }

                Method (HPME, 0, Serialized)
                {
                    ADBG ("TBT HPME")
                    If (((VDID != 0xFFFFFFFF) && (PMSX == One)))
                    {
                        ADBG ("TBT RP exists")
                        Notify (PXSX, 0x02) // Device Wake
                        PMSX = One
                        PSPX = One
                        Return (One)
                    }

                    Return (Zero)
                }

                Name (PD01, Package (0x04)
                {
                    Package (0x04)
                    {
                        0xFFFF, 
                        Zero, 
                        Zero, 
                        0x0B
                    }, 

                    Package (0x04)
                    {
                        0xFFFF, 
                        One, 
                        Zero, 
                        0x0A
                    }, 

                    Package (0x04)
                    {
                        0xFFFF, 
                        0x02, 
                        Zero, 
                        0x0B
                    }, 

                    Package (0x04)
                    {
                        0xFFFF, 
                        0x03, 
                        Zero, 
                        0x0B
                    }
                })
                Name (AR01, Package (0x04)
                {
                    Package (0x04)
                    {
                        0xFFFF, 
                        Zero, 
                        Zero, 
                        0x10
                    }, 

                    Package (0x04)
                    {
                        0xFFFF, 
                        One, 
                        Zero, 
                        0x11
                    }, 

                    Package (0x04)
                    {
                        0xFFFF, 
                        0x02, 
                        Zero, 
                        0x12
                    }, 

                    Package (0x04)
                    {
                        0xFFFF, 
                        0x03, 
                        Zero, 
                        0x13
                    }
                })
                Method (_PRT, 0, NotSerialized)  // _PRT: PCI Routing Table
                {
                    If (CondRefOf (PICM))
                    {
                        If (PICM)
                        {
                            Return (AR01) /* \_SB_.PC01.TRP3.AR01 */
                        }
                    }

                    Return (PD01) /* \_SB_.PC01.TRP3.PD01 */
                }
            }
        }
    }
    Else
    {
        Scope (\_SB.PC00)
        {
            Device (TRP0)
            {
                Method (_ADR, 0, NotSerialized)  // _ADR: Address
                {
                    If ((TPA0 != Zero))
                    {
                        Return (TPA0) /* External reference */
                    }
                    Else
                    {
                        Return (0x00070000)
                    }
                }

                Name (TUID, Zero)
                Name (LTEN, Zero)
                Name (LMSL, 0x88C8)
                Name (LNSL, 0x88C8)
                Name (DCPM, Zero)
                Method (_STA, 0, NotSerialized)  // _STA: Status
                {
                    ADBG (Concatenate ("TCSS RP0 _STA", ToHexString (TRE0)))
                    If ((TRE0 == One))
                    {
                        Return (0x0F)
                    }

                    Return (Zero)
                }

                Method (_INI, 0, NotSerialized)  // _INI: Initialize
                {
                    LTEN = LTE0 /* External reference */
                    LMSL = PSL0 /* External reference */
                    LNSL = PNS0 /* External reference */
                }

                Method (BASE, 0, NotSerialized)
                {
                    Local0 = (_ADR () & 0x07)
                    Local1 = ((_ADR () >> 0x10) & 0x1F)
                    ADBG (Concatenate ("BASE of ITBT Port", ToHexString (TUID)))
                    Local2 = ((Local0 << 0x0C) + (Local1 << 0x0F))
                    If (CondRefOf (\_SB.PC01))
                    {
                        Local3 = (\_SB.PC00.GPCB () + 0x10000000)
                        Local3 += Local2
                    }
                    Else
                    {
                        Local3 = (\_SB.PC00.GPCB () + Local2)
                    }

                    ADBG (Concatenate ("PCIe MMIO Address", ToHexString (Local3)))
                    Return (Local3)
                }

                OperationRegion (PXCS, SystemMemory, BASE (), 0x0800)
                Field (PXCS, AnyAcc, NoLock, Preserve)
                {
                    VDID,   32, 
                    Offset (0x50), 
                    L0SE,   1, 
                        ,   3, 
                    LDIS,   1, 
                    Offset (0x51), 
                    Offset (0x52), 
                        ,   13, 
                    LASX,   1, 
                    Offset (0x5A), 
                    ABPX,   1, 
                        ,   2, 
                    PDCX,   1, 
                        ,   2, 
                    PDSX,   1, 
                    Offset (0x5B), 
                    DLSC,   1, 
                    Offset (0x60), 
                    Offset (0x62), 
                    PSPX,   1, 
                    Offset (0xA4), 
                    D3HT,   2, 
                    Offset (0xD8), 
                        ,   30, 
                    HPEX,   1, 
                    PMEX,   1, 
                    Offset (0xE2), 
                        ,   2, 
                    L23E,   1, 
                    L23R,   1, 
                    Offset (0x420), 
                        ,   30, 
                    DPGE,   1, 
                    Offset (0x5BC), 
                        ,   3, 
                    RPER,   1, 
                    RPFE,   1
                }

                Field (PXCS, AnyAcc, NoLock, WriteAsZeros)
                {
                    Offset (0xDC), 
                        ,   30, 
                    HPSX,   1, 
                    PMSX,   1
                }

                Name (LTRV, Package (0x04)
                {
                    Zero, 
                    Zero, 
                    Zero, 
                    Zero
                })
                Method (_DSM, 4, Serialized)  // _DSM: Device-Specific Method
                {
                    If ((Arg0 == ToUUID ("e5c937d0-3553-4d7a-9117-ea4d19c3434d") /* Device Labeling Interface */))
                    {
                        Switch (ToInteger (Arg2))
                        {
                            Case (Zero)
                            {
                                Name (OPTS, Buffer (0x02)
                                {
                                     0x00, 0x00                                       // ..
                                })
                                CreateBitField (OPTS, Zero, FUN0)
                                CreateBitField (OPTS, 0x05, FUN5)
                                CreateBitField (OPTS, 0x06, FUN6)
                                CreateBitField (OPTS, 0x08, FUN8)
                                CreateBitField (OPTS, 0x09, FUN9)
                                FUN0 = One
                                FUN5 = IORB /* \IORB */
                                If ((LTEN == One))
                                {
                                    FUN6 = One
                                }

                                If ((Arg1 >= 0x02))
                                {
                                    If (CondRefOf (ECR1))
                                    {
                                        If ((ECR1 == One))
                                        {
                                            If ((Arg1 >= 0x03))
                                            {
                                                FUN8 = One
                                                FUN9 = One
                                            }
                                        }
                                    }
                                }

                                ADBG (Concatenate ("TBT RP OPTS -", ToHexString (OPTS)))
                                Return (OPTS) /* \_SB_.PC00.TRP0._DSM.OPTS */
                            }
                            Case (0x05)
                            {
                                If ((Arg1 >= One))
                                {
                                    Return (One)
                                }
                            }
                            Case (0x06)
                            {
                                If ((Arg1 >= 0x02))
                                {
                                    LTRV [Zero] = ((LMSL >> 0x0A) & 0x07)
                                    LTRV [One] = (LMSL & 0x03FF)
                                    LTRV [0x02] = ((LNSL >> 0x0A) & 0x07)
                                    LTRV [0x03] = (LNSL & 0x03FF)
                                    Return (LTRV) /* \_SB_.PC00.TRP0.LTRV */
                                }
                            }
                            Case (0x08)
                            {
                                If (CondRefOf (ECR1))
                                {
                                    If ((ECR1 == One))
                                    {
                                        If ((Arg1 >= 0x03))
                                        {
                                            Return (One)
                                        }
                                    }
                                }
                            }
                            Case (0x09)
                            {
                                If (CondRefOf (ECR1))
                                {
                                    If ((ECR1 == One))
                                    {
                                        If ((Arg1 >= 0x03))
                                        {
                                            Return (Package (0x05)
                                            {
                                                0xC350, 
                                                Ones, 
                                                Ones, 
                                                0xC350, 
                                                Ones
                                            })
                                        }
                                    }
                                }
                            }

                        }
                    }

                    Return (Buffer (One)
                    {
                         0x00                                             // .
                    })
                }

                Device (PXSX)
                {
                    Name (_ADR, Zero)  // _ADR: Address
                    Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
                    {
                        Return (GPRW (0x69, 0x04))
                    }
                }

                Method (_DSW, 3, NotSerialized)  // _DSW: Device Sleep Wake
                {
                    ADBG (Concatenate ("TCSS RP _DSW TUID -", ToHexString (TUID)))
                    ADBG (Concatenate ("Arg0 -", ToHexString (Arg0)))
                    ADBG (Concatenate ("Arg1 -", ToHexString (Arg1)))
                    \_SB.PC00.TDM0.SD3C = Arg1
                    \_SB.PC00.TDM1.SD3C = Arg1
                    ADBG (Concatenate ("TDM0 SD3C -", ToHexString (\_SB.PC00.TDM0.SD3C)))
                    ADBG (Concatenate ("TDM1 SD3C -", ToHexString (\_SB.PC00.TDM1.SD3C)))
                    C2PM (Arg0, Arg1, Arg2, DCPM)
                }

                Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
                {
                    If (CondRefOf (DUWS))
                    {
                        Return (GPRW (0x69, DUWS))
                    }
                    Else
                    {
                        Return (GPRW (0x69, 0x04))
                    }
                }

                Method (HPEV, 0, Serialized)
                {
                    If (((VDID != 0xFFFFFFFF) && HPSX))
                    {
                        ADBG (Concatenate ("HotPlug Event Start for ITBT Port - ", ToHexString (TUID)))
                        If (((PDCX == One) && (DLSC == One)))
                        {
                            PDCX = One
                            HPSX = One
                            Notify (^, Zero) // Bus Check
                        }
                        Else
                        {
                            HPSX = One
                        }

                        ADBG (Concatenate ("HotPlug Event End for ITBT Port - ", ToHexString (TUID)))
                    }
                }

                Name (STAT, One)
                Method (D3CX, 0, Serialized)
                {
                    ADBG (Concatenate ("TBT RP D3ColdExit Start TUID -", ToHexString (TUID)))
                    ADBG (Concatenate ("RP STAT -", ToHexString (STAT)))
                    ADBG (Concatenate ("TBT RP VDID -", ToHexString (VDID)))
                    ADBG (Concatenate ("VDID -", ToHexString (VDID)))
                    If ((STAT == One))
                    {
                        Return (Zero)
                    }

                    ADBG (Concatenate ("Original RPFE -", ToHexString (RPFE)))
                    RPFE = Zero
                    ADBG (Concatenate ("RPFE -", ToHexString (RPFE)))
                    ADBG (Concatenate ("Original RPER -", ToHexString (RPER)))
                    RPER = Zero
                    ADBG (Concatenate ("RPER -", ToHexString (RPER)))
                    L23R = One
                    Local0 = Zero
                    Local1 = L23R /* \_SB_.PC00.TRP0.L23R */
                    While (Local1)
                    {
                        If ((Local0 > 0x14))
                        {
                            Break
                        }

                        Sleep (0x05)
                        Local0++
                        Local1 = L23R /* \_SB_.PC00.TRP0.L23R */
                    }

                    ADBG (Concatenate ("L23R -", ToHexString (L23R)))
                    ADBG (Concatenate ("Loop -", ToHexString (Local0)))
                    STAT = One
                    Local0 = Zero
                    Local1 = LASX /* \_SB_.PC00.TRP0.LASX */
                    While ((Local1 == Zero))
                    {
                        If ((Local0 > 0x14))
                        {
                            Break
                        }

                        Sleep (0x05)
                        Local0++
                        Local1 = LASX /* \_SB_.PC00.TRP0.LASX */
                    }

                    ADBG (Concatenate ("LASX -", ToHexString (LASX)))
                    ADBG (Concatenate ("Loop -", ToHexString (Local0)))
                    ADBG ("TBT RP D3ColdExit End")
                }

                Method (D3CE, 0, Serialized)
                {
                    ADBG (Concatenate ("TBT RP D3ColdEntry Start TUID -", ToHexString (TUID)))
                    ADBG (Concatenate ("RP STAT -", ToHexString (STAT)))
                    ADBG (Concatenate ("TBT RP VDID -", ToHexString (VDID)))
                    If ((STAT == Zero))
                    {
                        Return (Zero)
                    }

                    L23E = One
                    Local0 = Zero
                    Local1 = L23E /* \_SB_.PC00.TRP0.L23E */
                    While (Local1)
                    {
                        If ((Local0 > 0x14))
                        {
                            Break
                        }

                        Sleep (0x05)
                        Local0++
                        Local1 = L23E /* \_SB_.PC00.TRP0.L23E */
                    }

                    ADBG (Concatenate ("L23E -", ToHexString (L23E)))
                    ADBG (Concatenate ("Loop -", ToHexString (Local0)))
                    STAT = Zero
                    ADBG (Concatenate ("Original RPFE -", ToHexString (RPFE)))
                    RPFE = One
                    ADBG (Concatenate ("RPFE -", ToHexString (RPFE)))
                    ADBG (Concatenate ("Original RPER -", ToHexString (RPER)))
                    RPER = One
                    ADBG (Concatenate ("RPER -", ToHexString (RPER)))
                    ADBG (Concatenate ("TBT RP D3ColdEntry End TUID -", ToHexString (TUID)))
                }

                Method (_PS0, 0, Serialized)  // _PS0: Power State 0
                {
                    ADBG (Concatenate ("TBT _PS0 Start RP ", ToHexString (TUID)))
                    ADBG (Concatenate ("TBT RP VDID -", ToHexString (VDID)))
                    HPEV ()
                    If ((HPEX == One))
                    {
                        ADBG ("Disable Hot Plug SCI")
                        HPEX = Zero
                    }

                    HPME ()
                    If ((PMEX == One))
                    {
                        ADBG ("Disable PME SCI")
                        PMEX = Zero
                    }

                    Sleep (0x64)
                    If (((TUID == Zero) || (TUID == One)))
                    {
                        If ((\_SB.PC00.TDM0.WACT == One))
                        {
                            \_SB.PC00.TDM0.WACT = 0x02
                            \_SB.PC00.TDM0.WFCC (ITCT)
                            \_SB.PC00.TDM0.WACT = Zero
                        }
                        ElseIf ((\_SB.PC00.TDM0.WACT == 0x02))
                        {
                            ADBG ("Wait until other _PS0 get response")
                            While ((\_SB.PC00.TDM0.WACT != Zero))
                            {
                                Sleep (0x05)
                            }

                            ADBG ("Other _PS0 got response")
                        }
                    }
                    ElseIf ((\_SB.PC00.TDM1.WACT == One))
                    {
                        \_SB.PC00.TDM1.WACT = 0x02
                        \_SB.PC00.TDM1.WFCC (ITCT)
                        \_SB.PC00.TDM1.WACT = Zero
                    }
                    ElseIf ((\_SB.PC00.TDM1.WACT == 0x02))
                    {
                        ADBG ("Wait until other _PS0 get response")
                        While ((\_SB.PC00.TDM1.WACT != Zero))
                        {
                            Sleep (0x05)
                        }

                        ADBG ("Other _PS0 got response")
                    }

                    ADBG (Concatenate ("TBT _PS0 End RP ", ToHexString (TUID)))
                }

                Method (_PS3, 0, Serialized)  // _PS3: Power State 3
                {
                    ADBG (Concatenate ("TBT _PS3 Start RP ", ToHexString (TUID)))
                    ADBG (Concatenate ("TBT RP VDID -", ToHexString (VDID)))
                    CHKH ()
                    If ((HPEX == Zero))
                    {
                        ADBG ("Enable Hot Plug SCI")
                        HPEX = One
                        HPEV ()
                    }

                    If ((PMEX == Zero))
                    {
                        ADBG ("Enable PME SCI")
                        PMEX = One
                        HPME ()
                    }

                    ADBG (Concatenate ("TBT _PS3 End RP ", ToHexString (TUID)))
                }

                Method (CHKH, 0, NotSerialized)
                {
                    If ((PDCX == One))
                    {
                        If ((DLSC == Zero))
                        {
                            PDCX = One
                        }
                    }
                }

                Method (_DSD, 0, NotSerialized)  // _DSD: Device-Specific Data
                {
                    ADBG ("TBT RP _DSD")
                    Return (Package (0x04)
                    {
                        ToUUID ("6211e2c0-58a3-4af3-90e1-927a4e0c55a4") /* Unknown UUID */, 
                        Package (0x01)
                        {
                            Package (0x02)
                            {
                                "HotPlugSupportInD3", 
                                One
                            }
                        }, 

                        ToUUID ("efcc06cc-73ac-4bc3-bff0-76143807c389") /* Unknown UUID */, 
                        Package (0x02)
                        {
                            Package (0x02)
                            {
                                "ExternalFacingPort", 
                                One
                            }, 

                            Package (0x02)
                            {
                                "UID", 
                                TUID
                            }
                        }
                    })
                }

                Method (_S0W, 0, NotSerialized)  // _S0W: S0 Device Wake State
                {
                    If (ITRT)
                    {
                        Return (0x04)
                    }
                    Else
                    {
                        Return (0x03)
                    }
                }

                If (ITRT)
                {
                    Method (_PR0, 0, NotSerialized)  // _PR0: Power Resources for D0
                    {
                        If (TRTD)
                        {
                            If (((TUID == Zero) || (TUID == One)))
                            {
                                Return (Package (0x02)
                                {
                                    \_SB.PC00.D3C, 
                                    \_SB.PC00.TBT0
                                })
                            }
                            Else
                            {
                                Return (Package (0x02)
                                {
                                    \_SB.PC00.D3C, 
                                    \_SB.PC00.TBT1
                                })
                            }
                        }

                        If (((TUID == Zero) || (TUID == One)))
                        {
                            Return (Package (0x01)
                            {
                                \_SB.PC00.TBT0
                            })
                        }

                        Return (Package (0x01)
                        {
                            \_SB.PC00.TBT1
                        })
                    }

                    Method (_PR3, 0, NotSerialized)  // _PR3: Power Resources for D3hot
                    {
                        If (TRTD)
                        {
                            If (((TUID == Zero) || (TUID == One)))
                            {
                                Return (Package (0x02)
                                {
                                    \_SB.PC00.D3C, 
                                    \_SB.PC00.TBT0
                                })
                            }
                            Else
                            {
                                Return (Package (0x02)
                                {
                                    \_SB.PC00.D3C, 
                                    \_SB.PC00.TBT1
                                })
                            }
                        }

                        If (((TUID == Zero) || (TUID == One)))
                        {
                            Return (Package (0x01)
                            {
                                \_SB.PC00.TBT0
                            })
                        }

                        Return (Package (0x01)
                        {
                            \_SB.PC00.TBT1
                        })
                    }
                }

                Method (HPME, 0, Serialized)
                {
                    ADBG ("TBT HPME")
                    If (((VDID != 0xFFFFFFFF) && (PMSX == One)))
                    {
                        ADBG ("TBT RP exists")
                        Notify (PXSX, 0x02) // Device Wake
                        PMSX = One
                        PSPX = One
                        Return (One)
                    }

                    Return (Zero)
                }

                Name (PD01, Package (0x04)
                {
                    Package (0x04)
                    {
                        0xFFFF, 
                        Zero, 
                        Zero, 
                        0x0B
                    }, 

                    Package (0x04)
                    {
                        0xFFFF, 
                        One, 
                        Zero, 
                        0x0A
                    }, 

                    Package (0x04)
                    {
                        0xFFFF, 
                        0x02, 
                        Zero, 
                        0x0B
                    }, 

                    Package (0x04)
                    {
                        0xFFFF, 
                        0x03, 
                        Zero, 
                        0x0B
                    }
                })
                Name (AR01, Package (0x04)
                {
                    Package (0x04)
                    {
                        0xFFFF, 
                        Zero, 
                        Zero, 
                        0x10
                    }, 

                    Package (0x04)
                    {
                        0xFFFF, 
                        One, 
                        Zero, 
                        0x11
                    }, 

                    Package (0x04)
                    {
                        0xFFFF, 
                        0x02, 
                        Zero, 
                        0x12
                    }, 

                    Package (0x04)
                    {
                        0xFFFF, 
                        0x03, 
                        Zero, 
                        0x13
                    }
                })
                Method (_PRT, 0, NotSerialized)  // _PRT: PCI Routing Table
                {
                    If (CondRefOf (PICM))
                    {
                        If (PICM)
                        {
                            Return (AR01) /* \_SB_.PC00.TRP0.AR01 */
                        }
                    }

                    Return (PD01) /* \_SB_.PC00.TRP0.PD01 */
                }
            }

            Device (TRP1)
            {
                Method (_ADR, 0, NotSerialized)  // _ADR: Address
                {
                    If ((TPA1 != Zero))
                    {
                        Return (TPA1) /* External reference */
                    }
                    Else
                    {
                        Return (0x00070001)
                    }
                }

                Name (TUID, One)
                Name (LTEN, Zero)
                Name (LMSL, 0x88C8)
                Name (LNSL, 0x88C8)
                Name (DCPM, One)
                Method (_STA, 0, NotSerialized)  // _STA: Status
                {
                    ADBG (Concatenate ("TCSS RP1 _STA", ToHexString (TRE1)))
                    If ((TRE1 == One))
                    {
                        Return (0x0F)
                    }

                    Return (Zero)
                }

                Method (_INI, 0, NotSerialized)  // _INI: Initialize
                {
                    LTEN = LTE1 /* External reference */
                    LMSL = PSL1 /* External reference */
                    LNSL = PNS1 /* External reference */
                }

                Method (BASE, 0, NotSerialized)
                {
                    Local0 = (_ADR () & 0x07)
                    Local1 = ((_ADR () >> 0x10) & 0x1F)
                    ADBG (Concatenate ("BASE of ITBT Port", ToHexString (TUID)))
                    Local2 = ((Local0 << 0x0C) + (Local1 << 0x0F))
                    If (CondRefOf (\_SB.PC01))
                    {
                        Local3 = (\_SB.PC00.GPCB () + 0x10000000)
                        Local3 += Local2
                    }
                    Else
                    {
                        Local3 = (\_SB.PC00.GPCB () + Local2)
                    }

                    ADBG (Concatenate ("PCIe MMIO Address", ToHexString (Local3)))
                    Return (Local3)
                }

                OperationRegion (PXCS, SystemMemory, BASE (), 0x0800)
                Field (PXCS, AnyAcc, NoLock, Preserve)
                {
                    VDID,   32, 
                    Offset (0x50), 
                    L0SE,   1, 
                        ,   3, 
                    LDIS,   1, 
                    Offset (0x51), 
                    Offset (0x52), 
                        ,   13, 
                    LASX,   1, 
                    Offset (0x5A), 
                    ABPX,   1, 
                        ,   2, 
                    PDCX,   1, 
                        ,   2, 
                    PDSX,   1, 
                    Offset (0x5B), 
                    DLSC,   1, 
                    Offset (0x60), 
                    Offset (0x62), 
                    PSPX,   1, 
                    Offset (0xA4), 
                    D3HT,   2, 
                    Offset (0xD8), 
                        ,   30, 
                    HPEX,   1, 
                    PMEX,   1, 
                    Offset (0xE2), 
                        ,   2, 
                    L23E,   1, 
                    L23R,   1, 
                    Offset (0x420), 
                        ,   30, 
                    DPGE,   1, 
                    Offset (0x5BC), 
                        ,   3, 
                    RPER,   1, 
                    RPFE,   1
                }

                Field (PXCS, AnyAcc, NoLock, WriteAsZeros)
                {
                    Offset (0xDC), 
                        ,   30, 
                    HPSX,   1, 
                    PMSX,   1
                }

                Name (LTRV, Package (0x04)
                {
                    Zero, 
                    Zero, 
                    Zero, 
                    Zero
                })
                Method (_DSM, 4, Serialized)  // _DSM: Device-Specific Method
                {
                    If ((Arg0 == ToUUID ("e5c937d0-3553-4d7a-9117-ea4d19c3434d") /* Device Labeling Interface */))
                    {
                        Switch (ToInteger (Arg2))
                        {
                            Case (Zero)
                            {
                                Name (OPTS, Buffer (0x02)
                                {
                                     0x00, 0x00                                       // ..
                                })
                                CreateBitField (OPTS, Zero, FUN0)
                                CreateBitField (OPTS, 0x05, FUN5)
                                CreateBitField (OPTS, 0x06, FUN6)
                                CreateBitField (OPTS, 0x08, FUN8)
                                CreateBitField (OPTS, 0x09, FUN9)
                                FUN0 = One
                                FUN5 = IORB /* \IORB */
                                If ((LTEN == One))
                                {
                                    FUN6 = One
                                }

                                If ((Arg1 >= 0x02))
                                {
                                    If (CondRefOf (ECR1))
                                    {
                                        If ((ECR1 == One))
                                        {
                                            If ((Arg1 >= 0x03))
                                            {
                                                FUN8 = One
                                                FUN9 = One
                                            }
                                        }
                                    }
                                }

                                ADBG (Concatenate ("TBT RP OPTS -", ToHexString (OPTS)))
                                Return (OPTS) /* \_SB_.PC00.TRP1._DSM.OPTS */
                            }
                            Case (0x05)
                            {
                                If ((Arg1 >= One))
                                {
                                    Return (One)
                                }
                            }
                            Case (0x06)
                            {
                                If ((Arg1 >= 0x02))
                                {
                                    LTRV [Zero] = ((LMSL >> 0x0A) & 0x07)
                                    LTRV [One] = (LMSL & 0x03FF)
                                    LTRV [0x02] = ((LNSL >> 0x0A) & 0x07)
                                    LTRV [0x03] = (LNSL & 0x03FF)
                                    Return (LTRV) /* \_SB_.PC00.TRP1.LTRV */
                                }
                            }
                            Case (0x08)
                            {
                                If (CondRefOf (ECR1))
                                {
                                    If ((ECR1 == One))
                                    {
                                        If ((Arg1 >= 0x03))
                                        {
                                            Return (One)
                                        }
                                    }
                                }
                            }
                            Case (0x09)
                            {
                                If (CondRefOf (ECR1))
                                {
                                    If ((ECR1 == One))
                                    {
                                        If ((Arg1 >= 0x03))
                                        {
                                            Return (Package (0x05)
                                            {
                                                0xC350, 
                                                Ones, 
                                                Ones, 
                                                0xC350, 
                                                Ones
                                            })
                                        }
                                    }
                                }
                            }

                        }
                    }

                    Return (Buffer (One)
                    {
                         0x00                                             // .
                    })
                }

                Device (PXSX)
                {
                    Name (_ADR, Zero)  // _ADR: Address
                    Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
                    {
                        Return (GPRW (0x69, 0x04))
                    }
                }

                Method (_DSW, 3, NotSerialized)  // _DSW: Device Sleep Wake
                {
                    ADBG (Concatenate ("TCSS RP _DSW TUID -", ToHexString (TUID)))
                    ADBG (Concatenate ("Arg0 -", ToHexString (Arg0)))
                    ADBG (Concatenate ("Arg1 -", ToHexString (Arg1)))
                    \_SB.PC00.TDM0.SD3C = Arg1
                    \_SB.PC00.TDM1.SD3C = Arg1
                    ADBG (Concatenate ("TDM0 SD3C -", ToHexString (\_SB.PC00.TDM0.SD3C)))
                    ADBG (Concatenate ("TDM1 SD3C -", ToHexString (\_SB.PC00.TDM1.SD3C)))
                    C2PM (Arg0, Arg1, Arg2, DCPM)
                }

                Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
                {
                    If (CondRefOf (DUWS))
                    {
                        Return (GPRW (0x69, DUWS))
                    }
                    Else
                    {
                        Return (GPRW (0x69, 0x04))
                    }
                }

                Method (HPEV, 0, Serialized)
                {
                    If (((VDID != 0xFFFFFFFF) && HPSX))
                    {
                        ADBG (Concatenate ("HotPlug Event Start for ITBT Port - ", ToHexString (TUID)))
                        If (((PDCX == One) && (DLSC == One)))
                        {
                            PDCX = One
                            HPSX = One
                            Notify (^, Zero) // Bus Check
                        }
                        Else
                        {
                            HPSX = One
                        }

                        ADBG (Concatenate ("HotPlug Event End for ITBT Port - ", ToHexString (TUID)))
                    }
                }

                Name (STAT, One)
                Method (D3CX, 0, Serialized)
                {
                    ADBG (Concatenate ("TBT RP D3ColdExit Start TUID -", ToHexString (TUID)))
                    ADBG (Concatenate ("RP STAT -", ToHexString (STAT)))
                    ADBG (Concatenate ("TBT RP VDID -", ToHexString (VDID)))
                    ADBG (Concatenate ("VDID -", ToHexString (VDID)))
                    If ((STAT == One))
                    {
                        Return (Zero)
                    }

                    ADBG (Concatenate ("Original RPFE -", ToHexString (RPFE)))
                    RPFE = Zero
                    ADBG (Concatenate ("RPFE -", ToHexString (RPFE)))
                    ADBG (Concatenate ("Original RPER -", ToHexString (RPER)))
                    RPER = Zero
                    ADBG (Concatenate ("RPER -", ToHexString (RPER)))
                    L23R = One
                    Local0 = Zero
                    Local1 = L23R /* \_SB_.PC00.TRP1.L23R */
                    While (Local1)
                    {
                        If ((Local0 > 0x14))
                        {
                            Break
                        }

                        Sleep (0x05)
                        Local0++
                        Local1 = L23R /* \_SB_.PC00.TRP1.L23R */
                    }

                    ADBG (Concatenate ("L23R -", ToHexString (L23R)))
                    ADBG (Concatenate ("Loop -", ToHexString (Local0)))
                    STAT = One
                    Local0 = Zero
                    Local1 = LASX /* \_SB_.PC00.TRP1.LASX */
                    While ((Local1 == Zero))
                    {
                        If ((Local0 > 0x14))
                        {
                            Break
                        }

                        Sleep (0x05)
                        Local0++
                        Local1 = LASX /* \_SB_.PC00.TRP1.LASX */
                    }

                    ADBG (Concatenate ("LASX -", ToHexString (LASX)))
                    ADBG (Concatenate ("Loop -", ToHexString (Local0)))
                    ADBG ("TBT RP D3ColdExit End")
                }

                Method (D3CE, 0, Serialized)
                {
                    ADBG (Concatenate ("TBT RP D3ColdEntry Start TUID -", ToHexString (TUID)))
                    ADBG (Concatenate ("RP STAT -", ToHexString (STAT)))
                    ADBG (Concatenate ("TBT RP VDID -", ToHexString (VDID)))
                    If ((STAT == Zero))
                    {
                        Return (Zero)
                    }

                    L23E = One
                    Local0 = Zero
                    Local1 = L23E /* \_SB_.PC00.TRP1.L23E */
                    While (Local1)
                    {
                        If ((Local0 > 0x14))
                        {
                            Break
                        }

                        Sleep (0x05)
                        Local0++
                        Local1 = L23E /* \_SB_.PC00.TRP1.L23E */
                    }

                    ADBG (Concatenate ("L23E -", ToHexString (L23E)))
                    ADBG (Concatenate ("Loop -", ToHexString (Local0)))
                    STAT = Zero
                    ADBG (Concatenate ("Original RPFE -", ToHexString (RPFE)))
                    RPFE = One
                    ADBG (Concatenate ("RPFE -", ToHexString (RPFE)))
                    ADBG (Concatenate ("Original RPER -", ToHexString (RPER)))
                    RPER = One
                    ADBG (Concatenate ("RPER -", ToHexString (RPER)))
                    ADBG (Concatenate ("TBT RP D3ColdEntry End TUID -", ToHexString (TUID)))
                }

                Method (_PS0, 0, Serialized)  // _PS0: Power State 0
                {
                    ADBG (Concatenate ("TBT _PS0 Start RP ", ToHexString (TUID)))
                    ADBG (Concatenate ("TBT RP VDID -", ToHexString (VDID)))
                    HPEV ()
                    If ((HPEX == One))
                    {
                        ADBG ("Disable Hot Plug SCI")
                        HPEX = Zero
                    }

                    HPME ()
                    If ((PMEX == One))
                    {
                        ADBG ("Disable PME SCI")
                        PMEX = Zero
                    }

                    Sleep (0x64)
                    If (((TUID == Zero) || (TUID == One)))
                    {
                        If ((\_SB.PC00.TDM0.WACT == One))
                        {
                            \_SB.PC00.TDM0.WACT = 0x02
                            \_SB.PC00.TDM0.WFCC (ITCT)
                            \_SB.PC00.TDM0.WACT = Zero
                        }
                        ElseIf ((\_SB.PC00.TDM0.WACT == 0x02))
                        {
                            ADBG ("Wait until other _PS0 get response")
                            While ((\_SB.PC00.TDM0.WACT != Zero))
                            {
                                Sleep (0x05)
                            }

                            ADBG ("Other _PS0 got response")
                        }
                    }
                    ElseIf ((\_SB.PC00.TDM1.WACT == One))
                    {
                        \_SB.PC00.TDM1.WACT = 0x02
                        \_SB.PC00.TDM1.WFCC (ITCT)
                        \_SB.PC00.TDM1.WACT = Zero
                    }
                    ElseIf ((\_SB.PC00.TDM1.WACT == 0x02))
                    {
                        ADBG ("Wait until other _PS0 get response")
                        While ((\_SB.PC00.TDM1.WACT != Zero))
                        {
                            Sleep (0x05)
                        }

                        ADBG ("Other _PS0 got response")
                    }

                    ADBG (Concatenate ("TBT _PS0 End RP ", ToHexString (TUID)))
                }

                Method (_PS3, 0, Serialized)  // _PS3: Power State 3
                {
                    ADBG (Concatenate ("TBT _PS3 Start RP ", ToHexString (TUID)))
                    ADBG (Concatenate ("TBT RP VDID -", ToHexString (VDID)))
                    CHKH ()
                    If ((HPEX == Zero))
                    {
                        ADBG ("Enable Hot Plug SCI")
                        HPEX = One
                        HPEV ()
                    }

                    If ((PMEX == Zero))
                    {
                        ADBG ("Enable PME SCI")
                        PMEX = One
                        HPME ()
                    }

                    ADBG (Concatenate ("TBT _PS3 End RP ", ToHexString (TUID)))
                }

                Method (CHKH, 0, NotSerialized)
                {
                    If ((PDCX == One))
                    {
                        If ((DLSC == Zero))
                        {
                            PDCX = One
                        }
                    }
                }

                Method (_DSD, 0, NotSerialized)  // _DSD: Device-Specific Data
                {
                    ADBG ("TBT RP _DSD")
                    Return (Package (0x04)
                    {
                        ToUUID ("6211e2c0-58a3-4af3-90e1-927a4e0c55a4") /* Unknown UUID */, 
                        Package (0x01)
                        {
                            Package (0x02)
                            {
                                "HotPlugSupportInD3", 
                                One
                            }
                        }, 

                        ToUUID ("efcc06cc-73ac-4bc3-bff0-76143807c389") /* Unknown UUID */, 
                        Package (0x02)
                        {
                            Package (0x02)
                            {
                                "ExternalFacingPort", 
                                One
                            }, 

                            Package (0x02)
                            {
                                "UID", 
                                TUID
                            }
                        }
                    })
                }

                Method (_S0W, 0, NotSerialized)  // _S0W: S0 Device Wake State
                {
                    If (ITRT)
                    {
                        Return (0x04)
                    }
                    Else
                    {
                        Return (0x03)
                    }
                }

                If (ITRT)
                {
                    Method (_PR0, 0, NotSerialized)  // _PR0: Power Resources for D0
                    {
                        If (TRTD)
                        {
                            If (((TUID == Zero) || (TUID == One)))
                            {
                                Return (Package (0x02)
                                {
                                    \_SB.PC00.D3C, 
                                    \_SB.PC00.TBT0
                                })
                            }
                            Else
                            {
                                Return (Package (0x02)
                                {
                                    \_SB.PC00.D3C, 
                                    \_SB.PC00.TBT1
                                })
                            }
                        }

                        If (((TUID == Zero) || (TUID == One)))
                        {
                            Return (Package (0x01)
                            {
                                \_SB.PC00.TBT0
                            })
                        }

                        Return (Package (0x01)
                        {
                            \_SB.PC00.TBT1
                        })
                    }

                    Method (_PR3, 0, NotSerialized)  // _PR3: Power Resources for D3hot
                    {
                        If (TRTD)
                        {
                            If (((TUID == Zero) || (TUID == One)))
                            {
                                Return (Package (0x02)
                                {
                                    \_SB.PC00.D3C, 
                                    \_SB.PC00.TBT0
                                })
                            }
                            Else
                            {
                                Return (Package (0x02)
                                {
                                    \_SB.PC00.D3C, 
                                    \_SB.PC00.TBT1
                                })
                            }
                        }

                        If (((TUID == Zero) || (TUID == One)))
                        {
                            Return (Package (0x01)
                            {
                                \_SB.PC00.TBT0
                            })
                        }

                        Return (Package (0x01)
                        {
                            \_SB.PC00.TBT1
                        })
                    }
                }

                Method (HPME, 0, Serialized)
                {
                    ADBG ("TBT HPME")
                    If (((VDID != 0xFFFFFFFF) && (PMSX == One)))
                    {
                        ADBG ("TBT RP exists")
                        Notify (PXSX, 0x02) // Device Wake
                        PMSX = One
                        PSPX = One
                        Return (One)
                    }

                    Return (Zero)
                }

                Name (PD01, Package (0x04)
                {
                    Package (0x04)
                    {
                        0xFFFF, 
                        Zero, 
                        Zero, 
                        0x0B
                    }, 

                    Package (0x04)
                    {
                        0xFFFF, 
                        One, 
                        Zero, 
                        0x0A
                    }, 

                    Package (0x04)
                    {
                        0xFFFF, 
                        0x02, 
                        Zero, 
                        0x0B
                    }, 

                    Package (0x04)
                    {
                        0xFFFF, 
                        0x03, 
                        Zero, 
                        0x0B
                    }
                })
                Name (AR01, Package (0x04)
                {
                    Package (0x04)
                    {
                        0xFFFF, 
                        Zero, 
                        Zero, 
                        0x10
                    }, 

                    Package (0x04)
                    {
                        0xFFFF, 
                        One, 
                        Zero, 
                        0x11
                    }, 

                    Package (0x04)
                    {
                        0xFFFF, 
                        0x02, 
                        Zero, 
                        0x12
                    }, 

                    Package (0x04)
                    {
                        0xFFFF, 
                        0x03, 
                        Zero, 
                        0x13
                    }
                })
                Method (_PRT, 0, NotSerialized)  // _PRT: PCI Routing Table
                {
                    If (CondRefOf (PICM))
                    {
                        If (PICM)
                        {
                            Return (AR01) /* \_SB_.PC00.TRP1.AR01 */
                        }
                    }

                    Return (PD01) /* \_SB_.PC00.TRP1.PD01 */
                }
            }

            Device (TRP2)
            {
                Method (_ADR, 0, NotSerialized)  // _ADR: Address
                {
                    If ((TPA2 != Zero))
                    {
                        Return (TPA2) /* External reference */
                    }
                    Else
                    {
                        Return (0x00070002)
                    }
                }

                Name (TUID, 0x02)
                Name (LTEN, Zero)
                Name (LMSL, 0x88C8)
                Name (LNSL, 0x88C8)
                Name (DCPM, 0x02)
                Method (_STA, 0, NotSerialized)  // _STA: Status
                {
                    ADBG (Concatenate ("TCSS RP2 _STA", ToHexString (TRE2)))
                    If ((TRE2 == One))
                    {
                        Return (0x0F)
                    }

                    Return (Zero)
                }

                Method (_INI, 0, NotSerialized)  // _INI: Initialize
                {
                    LTEN = LTE2 /* External reference */
                    LMSL = PSL2 /* External reference */
                    LNSL = PNS2 /* External reference */
                }

                Method (BASE, 0, NotSerialized)
                {
                    Local0 = (_ADR () & 0x07)
                    Local1 = ((_ADR () >> 0x10) & 0x1F)
                    ADBG (Concatenate ("BASE of ITBT Port", ToHexString (TUID)))
                    Local2 = ((Local0 << 0x0C) + (Local1 << 0x0F))
                    If (CondRefOf (\_SB.PC01))
                    {
                        Local3 = (\_SB.PC00.GPCB () + 0x10000000)
                        Local3 += Local2
                    }
                    Else
                    {
                        Local3 = (\_SB.PC00.GPCB () + Local2)
                    }

                    ADBG (Concatenate ("PCIe MMIO Address", ToHexString (Local3)))
                    Return (Local3)
                }

                OperationRegion (PXCS, SystemMemory, BASE (), 0x0800)
                Field (PXCS, AnyAcc, NoLock, Preserve)
                {
                    VDID,   32, 
                    Offset (0x50), 
                    L0SE,   1, 
                        ,   3, 
                    LDIS,   1, 
                    Offset (0x51), 
                    Offset (0x52), 
                        ,   13, 
                    LASX,   1, 
                    Offset (0x5A), 
                    ABPX,   1, 
                        ,   2, 
                    PDCX,   1, 
                        ,   2, 
                    PDSX,   1, 
                    Offset (0x5B), 
                    DLSC,   1, 
                    Offset (0x60), 
                    Offset (0x62), 
                    PSPX,   1, 
                    Offset (0xA4), 
                    D3HT,   2, 
                    Offset (0xD8), 
                        ,   30, 
                    HPEX,   1, 
                    PMEX,   1, 
                    Offset (0xE2), 
                        ,   2, 
                    L23E,   1, 
                    L23R,   1, 
                    Offset (0x420), 
                        ,   30, 
                    DPGE,   1, 
                    Offset (0x5BC), 
                        ,   3, 
                    RPER,   1, 
                    RPFE,   1
                }

                Field (PXCS, AnyAcc, NoLock, WriteAsZeros)
                {
                    Offset (0xDC), 
                        ,   30, 
                    HPSX,   1, 
                    PMSX,   1
                }

                Name (LTRV, Package (0x04)
                {
                    Zero, 
                    Zero, 
                    Zero, 
                    Zero
                })
                Method (_DSM, 4, Serialized)  // _DSM: Device-Specific Method
                {
                    If ((Arg0 == ToUUID ("e5c937d0-3553-4d7a-9117-ea4d19c3434d") /* Device Labeling Interface */))
                    {
                        Switch (ToInteger (Arg2))
                        {
                            Case (Zero)
                            {
                                Name (OPTS, Buffer (0x02)
                                {
                                     0x00, 0x00                                       // ..
                                })
                                CreateBitField (OPTS, Zero, FUN0)
                                CreateBitField (OPTS, 0x05, FUN5)
                                CreateBitField (OPTS, 0x06, FUN6)
                                CreateBitField (OPTS, 0x08, FUN8)
                                CreateBitField (OPTS, 0x09, FUN9)
                                FUN0 = One
                                FUN5 = IORB /* \IORB */
                                If ((LTEN == One))
                                {
                                    FUN6 = One
                                }

                                If ((Arg1 >= 0x02))
                                {
                                    If (CondRefOf (ECR1))
                                    {
                                        If ((ECR1 == One))
                                        {
                                            If ((Arg1 >= 0x03))
                                            {
                                                FUN8 = One
                                                FUN9 = One
                                            }
                                        }
                                    }
                                }

                                ADBG (Concatenate ("TBT RP OPTS -", ToHexString (OPTS)))
                                Return (OPTS) /* \_SB_.PC00.TRP2._DSM.OPTS */
                            }
                            Case (0x05)
                            {
                                If ((Arg1 >= One))
                                {
                                    Return (One)
                                }
                            }
                            Case (0x06)
                            {
                                If ((Arg1 >= 0x02))
                                {
                                    LTRV [Zero] = ((LMSL >> 0x0A) & 0x07)
                                    LTRV [One] = (LMSL & 0x03FF)
                                    LTRV [0x02] = ((LNSL >> 0x0A) & 0x07)
                                    LTRV [0x03] = (LNSL & 0x03FF)
                                    Return (LTRV) /* \_SB_.PC00.TRP2.LTRV */
                                }
                            }
                            Case (0x08)
                            {
                                If (CondRefOf (ECR1))
                                {
                                    If ((ECR1 == One))
                                    {
                                        If ((Arg1 >= 0x03))
                                        {
                                            Return (One)
                                        }
                                    }
                                }
                            }
                            Case (0x09)
                            {
                                If (CondRefOf (ECR1))
                                {
                                    If ((ECR1 == One))
                                    {
                                        If ((Arg1 >= 0x03))
                                        {
                                            Return (Package (0x05)
                                            {
                                                0xC350, 
                                                Ones, 
                                                Ones, 
                                                0xC350, 
                                                Ones
                                            })
                                        }
                                    }
                                }
                            }

                        }
                    }

                    Return (Buffer (One)
                    {
                         0x00                                             // .
                    })
                }

                Device (PXSX)
                {
                    Name (_ADR, Zero)  // _ADR: Address
                    Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
                    {
                        Return (GPRW (0x69, 0x04))
                    }
                }

                Method (_DSW, 3, NotSerialized)  // _DSW: Device Sleep Wake
                {
                    ADBG (Concatenate ("TCSS RP _DSW TUID -", ToHexString (TUID)))
                    ADBG (Concatenate ("Arg0 -", ToHexString (Arg0)))
                    ADBG (Concatenate ("Arg1 -", ToHexString (Arg1)))
                    \_SB.PC00.TDM0.SD3C = Arg1
                    \_SB.PC00.TDM1.SD3C = Arg1
                    ADBG (Concatenate ("TDM0 SD3C -", ToHexString (\_SB.PC00.TDM0.SD3C)))
                    ADBG (Concatenate ("TDM1 SD3C -", ToHexString (\_SB.PC00.TDM1.SD3C)))
                    C2PM (Arg0, Arg1, Arg2, DCPM)
                }

                Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
                {
                    If (CondRefOf (DUWS))
                    {
                        Return (GPRW (0x69, DUWS))
                    }
                    Else
                    {
                        Return (GPRW (0x69, 0x04))
                    }
                }

                Method (HPEV, 0, Serialized)
                {
                    If (((VDID != 0xFFFFFFFF) && HPSX))
                    {
                        ADBG (Concatenate ("HotPlug Event Start for ITBT Port - ", ToHexString (TUID)))
                        If (((PDCX == One) && (DLSC == One)))
                        {
                            PDCX = One
                            HPSX = One
                            Notify (^, Zero) // Bus Check
                        }
                        Else
                        {
                            HPSX = One
                        }

                        ADBG (Concatenate ("HotPlug Event End for ITBT Port - ", ToHexString (TUID)))
                    }
                }

                Name (STAT, One)
                Method (D3CX, 0, Serialized)
                {
                    ADBG (Concatenate ("TBT RP D3ColdExit Start TUID -", ToHexString (TUID)))
                    ADBG (Concatenate ("RP STAT -", ToHexString (STAT)))
                    ADBG (Concatenate ("TBT RP VDID -", ToHexString (VDID)))
                    ADBG (Concatenate ("VDID -", ToHexString (VDID)))
                    If ((STAT == One))
                    {
                        Return (Zero)
                    }

                    ADBG (Concatenate ("Original RPFE -", ToHexString (RPFE)))
                    RPFE = Zero
                    ADBG (Concatenate ("RPFE -", ToHexString (RPFE)))
                    ADBG (Concatenate ("Original RPER -", ToHexString (RPER)))
                    RPER = Zero
                    ADBG (Concatenate ("RPER -", ToHexString (RPER)))
                    L23R = One
                    Local0 = Zero
                    Local1 = L23R /* \_SB_.PC00.TRP2.L23R */
                    While (Local1)
                    {
                        If ((Local0 > 0x14))
                        {
                            Break
                        }

                        Sleep (0x05)
                        Local0++
                        Local1 = L23R /* \_SB_.PC00.TRP2.L23R */
                    }

                    ADBG (Concatenate ("L23R -", ToHexString (L23R)))
                    ADBG (Concatenate ("Loop -", ToHexString (Local0)))
                    STAT = One
                    Local0 = Zero
                    Local1 = LASX /* \_SB_.PC00.TRP2.LASX */
                    While ((Local1 == Zero))
                    {
                        If ((Local0 > 0x14))
                        {
                            Break
                        }

                        Sleep (0x05)
                        Local0++
                        Local1 = LASX /* \_SB_.PC00.TRP2.LASX */
                    }

                    ADBG (Concatenate ("LASX -", ToHexString (LASX)))
                    ADBG (Concatenate ("Loop -", ToHexString (Local0)))
                    ADBG ("TBT RP D3ColdExit End")
                }

                Method (D3CE, 0, Serialized)
                {
                    ADBG (Concatenate ("TBT RP D3ColdEntry Start TUID -", ToHexString (TUID)))
                    ADBG (Concatenate ("RP STAT -", ToHexString (STAT)))
                    ADBG (Concatenate ("TBT RP VDID -", ToHexString (VDID)))
                    If ((STAT == Zero))
                    {
                        Return (Zero)
                    }

                    L23E = One
                    Local0 = Zero
                    Local1 = L23E /* \_SB_.PC00.TRP2.L23E */
                    While (Local1)
                    {
                        If ((Local0 > 0x14))
                        {
                            Break
                        }

                        Sleep (0x05)
                        Local0++
                        Local1 = L23E /* \_SB_.PC00.TRP2.L23E */
                    }

                    ADBG (Concatenate ("L23E -", ToHexString (L23E)))
                    ADBG (Concatenate ("Loop -", ToHexString (Local0)))
                    STAT = Zero
                    ADBG (Concatenate ("Original RPFE -", ToHexString (RPFE)))
                    RPFE = One
                    ADBG (Concatenate ("RPFE -", ToHexString (RPFE)))
                    ADBG (Concatenate ("Original RPER -", ToHexString (RPER)))
                    RPER = One
                    ADBG (Concatenate ("RPER -", ToHexString (RPER)))
                    ADBG (Concatenate ("TBT RP D3ColdEntry End TUID -", ToHexString (TUID)))
                }

                Method (_PS0, 0, Serialized)  // _PS0: Power State 0
                {
                    ADBG (Concatenate ("TBT _PS0 Start RP ", ToHexString (TUID)))
                    ADBG (Concatenate ("TBT RP VDID -", ToHexString (VDID)))
                    HPEV ()
                    If ((HPEX == One))
                    {
                        ADBG ("Disable Hot Plug SCI")
                        HPEX = Zero
                    }

                    HPME ()
                    If ((PMEX == One))
                    {
                        ADBG ("Disable PME SCI")
                        PMEX = Zero
                    }

                    Sleep (0x64)
                    If (((TUID == Zero) || (TUID == One)))
                    {
                        If ((\_SB.PC00.TDM0.WACT == One))
                        {
                            \_SB.PC00.TDM0.WACT = 0x02
                            \_SB.PC00.TDM0.WFCC (ITCT)
                            \_SB.PC00.TDM0.WACT = Zero
                        }
                        ElseIf ((\_SB.PC00.TDM0.WACT == 0x02))
                        {
                            ADBG ("Wait until other _PS0 get response")
                            While ((\_SB.PC00.TDM0.WACT != Zero))
                            {
                                Sleep (0x05)
                            }

                            ADBG ("Other _PS0 got response")
                        }
                    }
                    ElseIf ((\_SB.PC00.TDM1.WACT == One))
                    {
                        \_SB.PC00.TDM1.WACT = 0x02
                        \_SB.PC00.TDM1.WFCC (ITCT)
                        \_SB.PC00.TDM1.WACT = Zero
                    }
                    ElseIf ((\_SB.PC00.TDM1.WACT == 0x02))
                    {
                        ADBG ("Wait until other _PS0 get response")
                        While ((\_SB.PC00.TDM1.WACT != Zero))
                        {
                            Sleep (0x05)
                        }

                        ADBG ("Other _PS0 got response")
                    }

                    ADBG (Concatenate ("TBT _PS0 End RP ", ToHexString (TUID)))
                }

                Method (_PS3, 0, Serialized)  // _PS3: Power State 3
                {
                    ADBG (Concatenate ("TBT _PS3 Start RP ", ToHexString (TUID)))
                    ADBG (Concatenate ("TBT RP VDID -", ToHexString (VDID)))
                    CHKH ()
                    If ((HPEX == Zero))
                    {
                        ADBG ("Enable Hot Plug SCI")
                        HPEX = One
                        HPEV ()
                    }

                    If ((PMEX == Zero))
                    {
                        ADBG ("Enable PME SCI")
                        PMEX = One
                        HPME ()
                    }

                    ADBG (Concatenate ("TBT _PS3 End RP ", ToHexString (TUID)))
                }

                Method (CHKH, 0, NotSerialized)
                {
                    If ((PDCX == One))
                    {
                        If ((DLSC == Zero))
                        {
                            PDCX = One
                        }
                    }
                }

                Method (_DSD, 0, NotSerialized)  // _DSD: Device-Specific Data
                {
                    ADBG ("TBT RP _DSD")
                    Return (Package (0x04)
                    {
                        ToUUID ("6211e2c0-58a3-4af3-90e1-927a4e0c55a4") /* Unknown UUID */, 
                        Package (0x01)
                        {
                            Package (0x02)
                            {
                                "HotPlugSupportInD3", 
                                One
                            }
                        }, 

                        ToUUID ("efcc06cc-73ac-4bc3-bff0-76143807c389") /* Unknown UUID */, 
                        Package (0x02)
                        {
                            Package (0x02)
                            {
                                "ExternalFacingPort", 
                                One
                            }, 

                            Package (0x02)
                            {
                                "UID", 
                                TUID
                            }
                        }
                    })
                }

                Method (_S0W, 0, NotSerialized)  // _S0W: S0 Device Wake State
                {
                    If (ITRT)
                    {
                        Return (0x04)
                    }
                    Else
                    {
                        Return (0x03)
                    }
                }

                If (ITRT)
                {
                    Method (_PR0, 0, NotSerialized)  // _PR0: Power Resources for D0
                    {
                        If (TRTD)
                        {
                            If (((TUID == Zero) || (TUID == One)))
                            {
                                Return (Package (0x02)
                                {
                                    \_SB.PC00.D3C, 
                                    \_SB.PC00.TBT0
                                })
                            }
                            Else
                            {
                                Return (Package (0x02)
                                {
                                    \_SB.PC00.D3C, 
                                    \_SB.PC00.TBT1
                                })
                            }
                        }

                        If (((TUID == Zero) || (TUID == One)))
                        {
                            Return (Package (0x01)
                            {
                                \_SB.PC00.TBT0
                            })
                        }

                        Return (Package (0x01)
                        {
                            \_SB.PC00.TBT1
                        })
                    }

                    Method (_PR3, 0, NotSerialized)  // _PR3: Power Resources for D3hot
                    {
                        If (TRTD)
                        {
                            If (((TUID == Zero) || (TUID == One)))
                            {
                                Return (Package (0x02)
                                {
                                    \_SB.PC00.D3C, 
                                    \_SB.PC00.TBT0
                                })
                            }
                            Else
                            {
                                Return (Package (0x02)
                                {
                                    \_SB.PC00.D3C, 
                                    \_SB.PC00.TBT1
                                })
                            }
                        }

                        If (((TUID == Zero) || (TUID == One)))
                        {
                            Return (Package (0x01)
                            {
                                \_SB.PC00.TBT0
                            })
                        }

                        Return (Package (0x01)
                        {
                            \_SB.PC00.TBT1
                        })
                    }
                }

                Method (HPME, 0, Serialized)
                {
                    ADBG ("TBT HPME")
                    If (((VDID != 0xFFFFFFFF) && (PMSX == One)))
                    {
                        ADBG ("TBT RP exists")
                        Notify (PXSX, 0x02) // Device Wake
                        PMSX = One
                        PSPX = One
                        Return (One)
                    }

                    Return (Zero)
                }

                Name (PD01, Package (0x04)
                {
                    Package (0x04)
                    {
                        0xFFFF, 
                        Zero, 
                        Zero, 
                        0x0B
                    }, 

                    Package (0x04)
                    {
                        0xFFFF, 
                        One, 
                        Zero, 
                        0x0A
                    }, 

                    Package (0x04)
                    {
                        0xFFFF, 
                        0x02, 
                        Zero, 
                        0x0B
                    }, 

                    Package (0x04)
                    {
                        0xFFFF, 
                        0x03, 
                        Zero, 
                        0x0B
                    }
                })
                Name (AR01, Package (0x04)
                {
                    Package (0x04)
                    {
                        0xFFFF, 
                        Zero, 
                        Zero, 
                        0x10
                    }, 

                    Package (0x04)
                    {
                        0xFFFF, 
                        One, 
                        Zero, 
                        0x11
                    }, 

                    Package (0x04)
                    {
                        0xFFFF, 
                        0x02, 
                        Zero, 
                        0x12
                    }, 

                    Package (0x04)
                    {
                        0xFFFF, 
                        0x03, 
                        Zero, 
                        0x13
                    }
                })
                Method (_PRT, 0, NotSerialized)  // _PRT: PCI Routing Table
                {
                    If (CondRefOf (PICM))
                    {
                        If (PICM)
                        {
                            Return (AR01) /* \_SB_.PC00.TRP2.AR01 */
                        }
                    }

                    Return (PD01) /* \_SB_.PC00.TRP2.PD01 */
                }
            }

            Device (TRP3)
            {
                Method (_ADR, 0, NotSerialized)  // _ADR: Address
                {
                    If ((TPA3 != Zero))
                    {
                        Return (TPA3) /* External reference */
                    }
                    Else
                    {
                        Return (0x00070003)
                    }
                }

                Name (TUID, 0x03)
                Name (LTEN, Zero)
                Name (LMSL, 0x88C8)
                Name (LNSL, 0x88C8)
                Name (DCPM, 0x03)
                Method (_STA, 0, NotSerialized)  // _STA: Status
                {
                    ADBG (Concatenate ("TCSS RP3 _STA", ToHexString (TRE3)))
                    If ((TRE3 == One))
                    {
                        Return (0x0F)
                    }

                    Return (Zero)
                }

                Method (_INI, 0, NotSerialized)  // _INI: Initialize
                {
                    LTEN = LTE3 /* External reference */
                    LMSL = PSL3 /* External reference */
                    LNSL = PNS3 /* External reference */
                }

                Method (BASE, 0, NotSerialized)
                {
                    Local0 = (_ADR () & 0x07)
                    Local1 = ((_ADR () >> 0x10) & 0x1F)
                    ADBG (Concatenate ("BASE of ITBT Port", ToHexString (TUID)))
                    Local2 = ((Local0 << 0x0C) + (Local1 << 0x0F))
                    If (CondRefOf (\_SB.PC01))
                    {
                        Local3 = (\_SB.PC00.GPCB () + 0x10000000)
                        Local3 += Local2
                    }
                    Else
                    {
                        Local3 = (\_SB.PC00.GPCB () + Local2)
                    }

                    ADBG (Concatenate ("PCIe MMIO Address", ToHexString (Local3)))
                    Return (Local3)
                }

                OperationRegion (PXCS, SystemMemory, BASE (), 0x0800)
                Field (PXCS, AnyAcc, NoLock, Preserve)
                {
                    VDID,   32, 
                    Offset (0x50), 
                    L0SE,   1, 
                        ,   3, 
                    LDIS,   1, 
                    Offset (0x51), 
                    Offset (0x52), 
                        ,   13, 
                    LASX,   1, 
                    Offset (0x5A), 
                    ABPX,   1, 
                        ,   2, 
                    PDCX,   1, 
                        ,   2, 
                    PDSX,   1, 
                    Offset (0x5B), 
                    DLSC,   1, 
                    Offset (0x60), 
                    Offset (0x62), 
                    PSPX,   1, 
                    Offset (0xA4), 
                    D3HT,   2, 
                    Offset (0xD8), 
                        ,   30, 
                    HPEX,   1, 
                    PMEX,   1, 
                    Offset (0xE2), 
                        ,   2, 
                    L23E,   1, 
                    L23R,   1, 
                    Offset (0x420), 
                        ,   30, 
                    DPGE,   1, 
                    Offset (0x5BC), 
                        ,   3, 
                    RPER,   1, 
                    RPFE,   1
                }

                Field (PXCS, AnyAcc, NoLock, WriteAsZeros)
                {
                    Offset (0xDC), 
                        ,   30, 
                    HPSX,   1, 
                    PMSX,   1
                }

                Name (LTRV, Package (0x04)
                {
                    Zero, 
                    Zero, 
                    Zero, 
                    Zero
                })
                Method (_DSM, 4, Serialized)  // _DSM: Device-Specific Method
                {
                    If ((Arg0 == ToUUID ("e5c937d0-3553-4d7a-9117-ea4d19c3434d") /* Device Labeling Interface */))
                    {
                        Switch (ToInteger (Arg2))
                        {
                            Case (Zero)
                            {
                                Name (OPTS, Buffer (0x02)
                                {
                                     0x00, 0x00                                       // ..
                                })
                                CreateBitField (OPTS, Zero, FUN0)
                                CreateBitField (OPTS, 0x05, FUN5)
                                CreateBitField (OPTS, 0x06, FUN6)
                                CreateBitField (OPTS, 0x08, FUN8)
                                CreateBitField (OPTS, 0x09, FUN9)
                                FUN0 = One
                                FUN5 = IORB /* \IORB */
                                If ((LTEN == One))
                                {
                                    FUN6 = One
                                }

                                If ((Arg1 >= 0x02))
                                {
                                    If (CondRefOf (ECR1))
                                    {
                                        If ((ECR1 == One))
                                        {
                                            If ((Arg1 >= 0x03))
                                            {
                                                FUN8 = One
                                                FUN9 = One
                                            }
                                        }
                                    }
                                }

                                ADBG (Concatenate ("TBT RP OPTS -", ToHexString (OPTS)))
                                Return (OPTS) /* \_SB_.PC00.TRP3._DSM.OPTS */
                            }
                            Case (0x05)
                            {
                                If ((Arg1 >= One))
                                {
                                    Return (One)
                                }
                            }
                            Case (0x06)
                            {
                                If ((Arg1 >= 0x02))
                                {
                                    LTRV [Zero] = ((LMSL >> 0x0A) & 0x07)
                                    LTRV [One] = (LMSL & 0x03FF)
                                    LTRV [0x02] = ((LNSL >> 0x0A) & 0x07)
                                    LTRV [0x03] = (LNSL & 0x03FF)
                                    Return (LTRV) /* \_SB_.PC00.TRP3.LTRV */
                                }
                            }
                            Case (0x08)
                            {
                                If (CondRefOf (ECR1))
                                {
                                    If ((ECR1 == One))
                                    {
                                        If ((Arg1 >= 0x03))
                                        {
                                            Return (One)
                                        }
                                    }
                                }
                            }
                            Case (0x09)
                            {
                                If (CondRefOf (ECR1))
                                {
                                    If ((ECR1 == One))
                                    {
                                        If ((Arg1 >= 0x03))
                                        {
                                            Return (Package (0x05)
                                            {
                                                0xC350, 
                                                Ones, 
                                                Ones, 
                                                0xC350, 
                                                Ones
                                            })
                                        }
                                    }
                                }
                            }

                        }
                    }

                    Return (Buffer (One)
                    {
                         0x00                                             // .
                    })
                }

                Device (PXSX)
                {
                    Name (_ADR, Zero)  // _ADR: Address
                    Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
                    {
                        Return (GPRW (0x69, 0x04))
                    }
                }

                Method (_DSW, 3, NotSerialized)  // _DSW: Device Sleep Wake
                {
                    ADBG (Concatenate ("TCSS RP _DSW TUID -", ToHexString (TUID)))
                    ADBG (Concatenate ("Arg0 -", ToHexString (Arg0)))
                    ADBG (Concatenate ("Arg1 -", ToHexString (Arg1)))
                    \_SB.PC00.TDM0.SD3C = Arg1
                    \_SB.PC00.TDM1.SD3C = Arg1
                    ADBG (Concatenate ("TDM0 SD3C -", ToHexString (\_SB.PC00.TDM0.SD3C)))
                    ADBG (Concatenate ("TDM1 SD3C -", ToHexString (\_SB.PC00.TDM1.SD3C)))
                    C2PM (Arg0, Arg1, Arg2, DCPM)
                }

                Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
                {
                    If (CondRefOf (DUWS))
                    {
                        Return (GPRW (0x69, DUWS))
                    }
                    Else
                    {
                        Return (GPRW (0x69, 0x04))
                    }
                }

                Method (HPEV, 0, Serialized)
                {
                    If (((VDID != 0xFFFFFFFF) && HPSX))
                    {
                        ADBG (Concatenate ("HotPlug Event Start for ITBT Port - ", ToHexString (TUID)))
                        If (((PDCX == One) && (DLSC == One)))
                        {
                            PDCX = One
                            HPSX = One
                            Notify (^, Zero) // Bus Check
                        }
                        Else
                        {
                            HPSX = One
                        }

                        ADBG (Concatenate ("HotPlug Event End for ITBT Port - ", ToHexString (TUID)))
                    }
                }

                Name (STAT, One)
                Method (D3CX, 0, Serialized)
                {
                    ADBG (Concatenate ("TBT RP D3ColdExit Start TUID -", ToHexString (TUID)))
                    ADBG (Concatenate ("RP STAT -", ToHexString (STAT)))
                    ADBG (Concatenate ("TBT RP VDID -", ToHexString (VDID)))
                    ADBG (Concatenate ("VDID -", ToHexString (VDID)))
                    If ((STAT == One))
                    {
                        Return (Zero)
                    }

                    ADBG (Concatenate ("Original RPFE -", ToHexString (RPFE)))
                    RPFE = Zero
                    ADBG (Concatenate ("RPFE -", ToHexString (RPFE)))
                    ADBG (Concatenate ("Original RPER -", ToHexString (RPER)))
                    RPER = Zero
                    ADBG (Concatenate ("RPER -", ToHexString (RPER)))
                    L23R = One
                    Local0 = Zero
                    Local1 = L23R /* \_SB_.PC00.TRP3.L23R */
                    While (Local1)
                    {
                        If ((Local0 > 0x14))
                        {
                            Break
                        }

                        Sleep (0x05)
                        Local0++
                        Local1 = L23R /* \_SB_.PC00.TRP3.L23R */
                    }

                    ADBG (Concatenate ("L23R -", ToHexString (L23R)))
                    ADBG (Concatenate ("Loop -", ToHexString (Local0)))
                    STAT = One
                    Local0 = Zero
                    Local1 = LASX /* \_SB_.PC00.TRP3.LASX */
                    While ((Local1 == Zero))
                    {
                        If ((Local0 > 0x14))
                        {
                            Break
                        }

                        Sleep (0x05)
                        Local0++
                        Local1 = LASX /* \_SB_.PC00.TRP3.LASX */
                    }

                    ADBG (Concatenate ("LASX -", ToHexString (LASX)))
                    ADBG (Concatenate ("Loop -", ToHexString (Local0)))
                    ADBG ("TBT RP D3ColdExit End")
                }

                Method (D3CE, 0, Serialized)
                {
                    ADBG (Concatenate ("TBT RP D3ColdEntry Start TUID -", ToHexString (TUID)))
                    ADBG (Concatenate ("RP STAT -", ToHexString (STAT)))
                    ADBG (Concatenate ("TBT RP VDID -", ToHexString (VDID)))
                    If ((STAT == Zero))
                    {
                        Return (Zero)
                    }

                    L23E = One
                    Local0 = Zero
                    Local1 = L23E /* \_SB_.PC00.TRP3.L23E */
                    While (Local1)
                    {
                        If ((Local0 > 0x14))
                        {
                            Break
                        }

                        Sleep (0x05)
                        Local0++
                        Local1 = L23E /* \_SB_.PC00.TRP3.L23E */
                    }

                    ADBG (Concatenate ("L23E -", ToHexString (L23E)))
                    ADBG (Concatenate ("Loop -", ToHexString (Local0)))
                    STAT = Zero
                    ADBG (Concatenate ("Original RPFE -", ToHexString (RPFE)))
                    RPFE = One
                    ADBG (Concatenate ("RPFE -", ToHexString (RPFE)))
                    ADBG (Concatenate ("Original RPER -", ToHexString (RPER)))
                    RPER = One
                    ADBG (Concatenate ("RPER -", ToHexString (RPER)))
                    ADBG (Concatenate ("TBT RP D3ColdEntry End TUID -", ToHexString (TUID)))
                }

                Method (_PS0, 0, Serialized)  // _PS0: Power State 0
                {
                    ADBG (Concatenate ("TBT _PS0 Start RP ", ToHexString (TUID)))
                    ADBG (Concatenate ("TBT RP VDID -", ToHexString (VDID)))
                    HPEV ()
                    If ((HPEX == One))
                    {
                        ADBG ("Disable Hot Plug SCI")
                        HPEX = Zero
                    }

                    HPME ()
                    If ((PMEX == One))
                    {
                        ADBG ("Disable PME SCI")
                        PMEX = Zero
                    }

                    Sleep (0x64)
                    If (((TUID == Zero) || (TUID == One)))
                    {
                        If ((\_SB.PC00.TDM0.WACT == One))
                        {
                            \_SB.PC00.TDM0.WACT = 0x02
                            \_SB.PC00.TDM0.WFCC (ITCT)
                            \_SB.PC00.TDM0.WACT = Zero
                        }
                        ElseIf ((\_SB.PC00.TDM0.WACT == 0x02))
                        {
                            ADBG ("Wait until other _PS0 get response")
                            While ((\_SB.PC00.TDM0.WACT != Zero))
                            {
                                Sleep (0x05)
                            }

                            ADBG ("Other _PS0 got response")
                        }
                    }
                    ElseIf ((\_SB.PC00.TDM1.WACT == One))
                    {
                        \_SB.PC00.TDM1.WACT = 0x02
                        \_SB.PC00.TDM1.WFCC (ITCT)
                        \_SB.PC00.TDM1.WACT = Zero
                    }
                    ElseIf ((\_SB.PC00.TDM1.WACT == 0x02))
                    {
                        ADBG ("Wait until other _PS0 get response")
                        While ((\_SB.PC00.TDM1.WACT != Zero))
                        {
                            Sleep (0x05)
                        }

                        ADBG ("Other _PS0 got response")
                    }

                    ADBG (Concatenate ("TBT _PS0 End RP ", ToHexString (TUID)))
                }

                Method (_PS3, 0, Serialized)  // _PS3: Power State 3
                {
                    ADBG (Concatenate ("TBT _PS3 Start RP ", ToHexString (TUID)))
                    ADBG (Concatenate ("TBT RP VDID -", ToHexString (VDID)))
                    CHKH ()
                    If ((HPEX == Zero))
                    {
                        ADBG ("Enable Hot Plug SCI")
                        HPEX = One
                        HPEV ()
                    }

                    If ((PMEX == Zero))
                    {
                        ADBG ("Enable PME SCI")
                        PMEX = One
                        HPME ()
                    }

                    ADBG (Concatenate ("TBT _PS3 End RP ", ToHexString (TUID)))
                }

                Method (CHKH, 0, NotSerialized)
                {
                    If ((PDCX == One))
                    {
                        If ((DLSC == Zero))
                        {
                            PDCX = One
                        }
                    }
                }

                Method (_DSD, 0, NotSerialized)  // _DSD: Device-Specific Data
                {
                    ADBG ("TBT RP _DSD")
                    Return (Package (0x04)
                    {
                        ToUUID ("6211e2c0-58a3-4af3-90e1-927a4e0c55a4") /* Unknown UUID */, 
                        Package (0x01)
                        {
                            Package (0x02)
                            {
                                "HotPlugSupportInD3", 
                                One
                            }
                        }, 

                        ToUUID ("efcc06cc-73ac-4bc3-bff0-76143807c389") /* Unknown UUID */, 
                        Package (0x02)
                        {
                            Package (0x02)
                            {
                                "ExternalFacingPort", 
                                One
                            }, 

                            Package (0x02)
                            {
                                "UID", 
                                TUID
                            }
                        }
                    })
                }

                Method (_S0W, 0, NotSerialized)  // _S0W: S0 Device Wake State
                {
                    If (ITRT)
                    {
                        Return (0x04)
                    }
                    Else
                    {
                        Return (0x03)
                    }
                }

                If (ITRT)
                {
                    Method (_PR0, 0, NotSerialized)  // _PR0: Power Resources for D0
                    {
                        If (TRTD)
                        {
                            If (((TUID == Zero) || (TUID == One)))
                            {
                                Return (Package (0x02)
                                {
                                    \_SB.PC00.D3C, 
                                    \_SB.PC00.TBT0
                                })
                            }
                            Else
                            {
                                Return (Package (0x02)
                                {
                                    \_SB.PC00.D3C, 
                                    \_SB.PC00.TBT1
                                })
                            }
                        }

                        If (((TUID == Zero) || (TUID == One)))
                        {
                            Return (Package (0x01)
                            {
                                \_SB.PC00.TBT0
                            })
                        }

                        Return (Package (0x01)
                        {
                            \_SB.PC00.TBT1
                        })
                    }

                    Method (_PR3, 0, NotSerialized)  // _PR3: Power Resources for D3hot
                    {
                        If (TRTD)
                        {
                            If (((TUID == Zero) || (TUID == One)))
                            {
                                Return (Package (0x02)
                                {
                                    \_SB.PC00.D3C, 
                                    \_SB.PC00.TBT0
                                })
                            }
                            Else
                            {
                                Return (Package (0x02)
                                {
                                    \_SB.PC00.D3C, 
                                    \_SB.PC00.TBT1
                                })
                            }
                        }

                        If (((TUID == Zero) || (TUID == One)))
                        {
                            Return (Package (0x01)
                            {
                                \_SB.PC00.TBT0
                            })
                        }

                        Return (Package (0x01)
                        {
                            \_SB.PC00.TBT1
                        })
                    }
                }

                Method (HPME, 0, Serialized)
                {
                    ADBG ("TBT HPME")
                    If (((VDID != 0xFFFFFFFF) && (PMSX == One)))
                    {
                        ADBG ("TBT RP exists")
                        Notify (PXSX, 0x02) // Device Wake
                        PMSX = One
                        PSPX = One
                        Return (One)
                    }

                    Return (Zero)
                }

                Name (PD01, Package (0x04)
                {
                    Package (0x04)
                    {
                        0xFFFF, 
                        Zero, 
                        Zero, 
                        0x0B
                    }, 

                    Package (0x04)
                    {
                        0xFFFF, 
                        One, 
                        Zero, 
                        0x0A
                    }, 

                    Package (0x04)
                    {
                        0xFFFF, 
                        0x02, 
                        Zero, 
                        0x0B
                    }, 

                    Package (0x04)
                    {
                        0xFFFF, 
                        0x03, 
                        Zero, 
                        0x0B
                    }
                })
                Name (AR01, Package (0x04)
                {
                    Package (0x04)
                    {
                        0xFFFF, 
                        Zero, 
                        Zero, 
                        0x10
                    }, 

                    Package (0x04)
                    {
                        0xFFFF, 
                        One, 
                        Zero, 
                        0x11
                    }, 

                    Package (0x04)
                    {
                        0xFFFF, 
                        0x02, 
                        Zero, 
                        0x12
                    }, 

                    Package (0x04)
                    {
                        0xFFFF, 
                        0x03, 
                        Zero, 
                        0x13
                    }
                })
                Method (_PRT, 0, NotSerialized)  // _PRT: PCI Routing Table
                {
                    If (CondRefOf (PICM))
                    {
                        If (PICM)
                        {
                            Return (AR01) /* \_SB_.PC00.TRP3.AR01 */
                        }
                    }

                    Return (PD01) /* \_SB_.PC00.TRP3.PD01 */
                }
            }
        }
    }

    Scope (\_SB)
    {
        Method (TCWK, 1, NotSerialized)
        {
            If (((Arg0 == 0x03) || (Arg0 == 0x04)))
            {
                If (CondRefOf (\_SB.PC01))
                {
                    If ((\_SB.PC01.TRP0.VDID != 0xFFFFFFFF))
                    {
                        Notify (\_SB.PC01.TRP0, Zero) // Bus Check
                    }

                    If ((\_SB.PC01.TRP1.VDID != 0xFFFFFFFF))
                    {
                        Notify (\_SB.PC01.TRP1, Zero) // Bus Check
                    }

                    If ((\_SB.PC01.TRP2.VDID != 0xFFFFFFFF))
                    {
                        Notify (\_SB.PC01.TRP2, Zero) // Bus Check
                    }

                    If ((\_SB.PC01.TRP3.VDID != 0xFFFFFFFF))
                    {
                        Notify (\_SB.PC01.TRP3, Zero) // Bus Check
                    }
                }
                Else
                {
                    If ((\_SB.PC00.TRP0.VDID != 0xFFFFFFFF))
                    {
                        Notify (\_SB.PC00.TRP0, Zero) // Bus Check
                    }

                    If ((\_SB.PC00.TRP1.VDID != 0xFFFFFFFF))
                    {
                        Notify (\_SB.PC00.TRP1, Zero) // Bus Check
                    }

                    If ((\_SB.PC00.TRP2.VDID != 0xFFFFFFFF))
                    {
                        Notify (\_SB.PC00.TRP2, Zero) // Bus Check
                    }

                    If ((\_SB.PC00.TRP3.VDID != 0xFFFFFFFF))
                    {
                        Notify (\_SB.PC00.TRP3, Zero) // Bus Check
                    }
                }
            }
        }
    }
}

