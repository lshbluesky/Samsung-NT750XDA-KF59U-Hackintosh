/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20200925 (64-bit version)
 * Copyright (c) 2000 - 2020 Intel Corporation
 * 
 * Disassembling to symbolic ASL+ operators
 *
 * Disassembly of SSDT-1-DptfTabl.aml, Fri Dec 30 23:29:21 2022
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x00003DF9 (15865)
 *     Revision         0x02
 *     Checksum         0xD4
 *     OEM ID           "DptfTb"
 *     OEM Table ID     "DptfTabl"
 *     OEM Revision     0x00001000 (4096)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20191018 (538513432)
 */
DefinitionBlock ("", "SSDT", 2, "DptfTb", "DptfTabl", 0x00001000)
{
    External (_SB_.AAC0, FieldUnitObj)
    External (_SB_.ACRT, FieldUnitObj)
    External (_SB_.APSV, FieldUnitObj)
    External (_SB_.CBMI, FieldUnitObj)
    External (_SB_.CFGD, FieldUnitObj)
    External (_SB_.CLVL, FieldUnitObj)
    External (_SB_.CPPC, FieldUnitObj)
    External (_SB_.CTC0, FieldUnitObj)
    External (_SB_.CTC1, FieldUnitObj)
    External (_SB_.CTC2, FieldUnitObj)
    External (_SB_.MCMD, MethodObj)    // 1 Arguments
    External (_SB_.OSCP, IntObj)
    External (_SB_.PAGD, DeviceObj)
    External (_SB_.PAGD._PUR, PkgObj)
    External (_SB_.PAGD._STA, MethodObj)    // 0 Arguments
    External (_SB_.PC00, DeviceObj)
    External (_SB_.PC00.LPCB.H_EC, DeviceObj)
    External (_SB_.PC00.LPCB.H_EC.ACUR, FieldUnitObj)
    External (_SB_.PC00.LPCB.H_EC.AP01, FieldUnitObj)
    External (_SB_.PC00.LPCB.H_EC.AP02, FieldUnitObj)
    External (_SB_.PC00.LPCB.H_EC.AP10, FieldUnitObj)
    External (_SB_.PC00.LPCB.H_EC.ARTG, FieldUnitObj)
    External (_SB_.PC00.LPCB.H_EC.AVOL, FieldUnitObj)
    External (_SB_.PC00.LPCB.H_EC.B1FC, FieldUnitObj)
    External (_SB_.PC00.LPCB.H_EC.B1RC, FieldUnitObj)
    External (_SB_.PC00.LPCB.H_EC.BICC, FieldUnitObj)
    External (_SB_.PC00.LPCB.H_EC.BMAX, FieldUnitObj)
    External (_SB_.PC00.LPCB.H_EC.CFAN, FieldUnitObj)
    External (_SB_.PC00.LPCB.H_EC.CFSP, FieldUnitObj)
    External (_SB_.PC00.LPCB.H_EC.CHGR, FieldUnitObj)
    External (_SB_.PC00.LPCB.H_EC.CHRG, DeviceObj)
    External (_SB_.PC00.LPCB.H_EC.CMDR, FieldUnitObj)
    External (_SB_.PC00.LPCB.H_EC.CPUP, FieldUnitObj)
    External (_SB_.PC00.LPCB.H_EC.CTYP, FieldUnitObj)
    External (_SB_.PC00.LPCB.H_EC.DORU, UnknownObj)
    External (_SB_.PC00.LPCB.H_EC.ECAV, IntObj)
    External (_SB_.PC00.LPCB.H_EC.ECF2, OpRegionObj)
    External (_SB_.PC00.LPCB.H_EC.ECMD, MethodObj)    // 1 Arguments
    External (_SB_.PC00.LPCB.H_EC.ECWT, MethodObj)    // 2 Arguments
    External (_SB_.PC00.LPCB.H_EC.FCHG, FieldUnitObj)
    External (_SB_.PC00.LPCB.H_EC.HYST, FieldUnitObj)
    External (_SB_.PC00.LPCB.H_EC.PBSS, FieldUnitObj)
    External (_SB_.PC00.LPCB.H_EC.PECH, FieldUnitObj)
    External (_SB_.PC00.LPCB.H_EC.PENV, FieldUnitObj)
    External (_SB_.PC00.LPCB.H_EC.PINV, FieldUnitObj)
    External (_SB_.PC00.LPCB.H_EC.PLMX, FieldUnitObj)
    External (_SB_.PC00.LPCB.H_EC.PMAX, FieldUnitObj)
    External (_SB_.PC00.LPCB.H_EC.PPSH, FieldUnitObj)
    External (_SB_.PC00.LPCB.H_EC.PPSL, FieldUnitObj)
    External (_SB_.PC00.LPCB.H_EC.PPWR, FieldUnitObj)
    External (_SB_.PC00.LPCB.H_EC.PROP, FieldUnitObj)
    External (_SB_.PC00.LPCB.H_EC.PSOC, FieldUnitObj)
    External (_SB_.PC00.LPCB.H_EC.PSTP, FieldUnitObj)
    External (_SB_.PC00.LPCB.H_EC.PWRT, FieldUnitObj)
    External (_SB_.PC00.LPCB.H_EC.SEN2, DeviceObj)
    External (_SB_.PC00.LPCB.H_EC.SEN3, DeviceObj)
    External (_SB_.PC00.LPCB.H_EC.SEN4, DeviceObj)
    External (_SB_.PC00.LPCB.H_EC.SEN5, DeviceObj)
    External (_SB_.PC00.LPCB.H_EC.TFN1, DeviceObj)
    External (_SB_.PC00.LPCB.H_EC.TSHT, FieldUnitObj)
    External (_SB_.PC00.LPCB.H_EC.TSI_, FieldUnitObj)
    External (_SB_.PC00.LPCB.H_EC.TSLT, FieldUnitObj)
    External (_SB_.PC00.LPCB.H_EC.TSR1, FieldUnitObj)
    External (_SB_.PC00.LPCB.H_EC.TSR2, FieldUnitObj)
    External (_SB_.PC00.LPCB.H_EC.TSR3, FieldUnitObj)
    External (_SB_.PC00.LPCB.H_EC.TSR4, FieldUnitObj)
    External (_SB_.PC00.LPCB.H_EC.TSR5, FieldUnitObj)
    External (_SB_.PC00.LPCB.H_EC.TSSR, FieldUnitObj)
    External (_SB_.PC00.LPCB.H_EC.UVTH, FieldUnitObj)
    External (_SB_.PC00.LPCB.H_EC.VMIN, FieldUnitObj)
    External (_SB_.PC00.MHBR, FieldUnitObj)
    External (_SB_.PC00.TCPU, DeviceObj)
    External (_SB_.PL10, FieldUnitObj)
    External (_SB_.PL11, FieldUnitObj)
    External (_SB_.PL12, FieldUnitObj)
    External (_SB_.PL20, FieldUnitObj)
    External (_SB_.PL21, FieldUnitObj)
    External (_SB_.PL22, FieldUnitObj)
    External (_SB_.PLW0, FieldUnitObj)
    External (_SB_.PLW1, FieldUnitObj)
    External (_SB_.PLW2, FieldUnitObj)
    External (_SB_.PR00, ProcessorObj)
    External (_SB_.PR00._PSS, MethodObj)    // 0 Arguments
    External (_SB_.PR00._TPC, IntObj)
    External (_SB_.PR00._TSD, MethodObj)    // 0 Arguments
    External (_SB_.PR00._TSS, MethodObj)    // 0 Arguments
    External (_SB_.PR00.LPSS, PkgObj)
    External (_SB_.PR00.TPSS, PkgObj)
    External (_SB_.PR00.TSMC, PkgObj)
    External (_SB_.PR00.TSMF, PkgObj)
    External (_SB_.PR01, ProcessorObj)
    External (_SB_.PR02, ProcessorObj)
    External (_SB_.PR03, ProcessorObj)
    External (_SB_.PR04, ProcessorObj)
    External (_SB_.PR05, ProcessorObj)
    External (_SB_.PR06, ProcessorObj)
    External (_SB_.PR07, ProcessorObj)
    External (_SB_.PR08, ProcessorObj)
    External (_SB_.PR09, ProcessorObj)
    External (_SB_.PR10, ProcessorObj)
    External (_SB_.PR11, ProcessorObj)
    External (_SB_.PR12, ProcessorObj)
    External (_SB_.PR13, ProcessorObj)
    External (_SB_.PR14, ProcessorObj)
    External (_SB_.PR15, ProcessorObj)
    External (_SB_.SLPB, DeviceObj)
    External (_SB_.TAR0, FieldUnitObj)
    External (_SB_.TAR1, FieldUnitObj)
    External (_SB_.TAR2, FieldUnitObj)
    External (_SB_.TPWR, DeviceObj)
    External (_TZ_.ETMD, IntObj)
    External (_TZ_.TZ00, ThermalZoneObj)
    External (ACTT, IntObj)
    External (ATPC, IntObj)
    External (BATR, IntObj)
    External (CHGE, IntObj)
    External (CRTT, IntObj)
    External (DCFE, IntObj)
    External (DPTF, IntObj)
    External (ECON, IntObj)
    External (FND1, IntObj)
    External (HIDW, MethodObj)    // 4 Arguments
    External (HIWC, MethodObj)    // 1 Arguments
    External (IN34, IntObj)
    External (IPCS, MethodObj)    // 7 Arguments
    External (ODV0, IntObj)
    External (ODV1, IntObj)
    External (ODV2, IntObj)
    External (ODV3, IntObj)
    External (ODV4, IntObj)
    External (ODV5, IntObj)
    External (PCHE, FieldUnitObj)
    External (PF00, IntObj)
    External (PNHM, IntObj)
    External (PPPR, IntObj)
    External (PPSZ, IntObj)
    External (PSVT, IntObj)
    External (PTPC, IntObj)
    External (PWRE, IntObj)
    External (PWRS, IntObj)
    External (S2DE, IntObj)
    External (S3DE, IntObj)
    External (S4DE, IntObj)
    External (S5DE, IntObj)
    External (SADE, IntObj)
    External (SSP2, IntObj)
    External (SSP3, IntObj)
    External (SSP4, IntObj)
    External (SSP5, IntObj)
    External (TCNT, IntObj)
    External (TSOD, IntObj)

    Scope (\_SB)
    {
        Device (IETM)
        {
            Name (_HID, "INTC1040")  // _HID: Hardware ID
            Method (_DSM, 4, Serialized)  // _DSM: Device-Specific Method
            {
                If (CondRefOf (HIWC))
                {
                    If (HIWC (Arg0))
                    {
                        If (CondRefOf (HIDW))
                        {
                            Return (HIDW (Arg0, Arg1, Arg2, Arg3))
                        }
                    }
                }

                Return (Buffer (One)
                {
                     0x00                                             // .
                })
            }

            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If (((\DPTF == One) && (\IN34 == One)))
                {
                    Return (0x0F)
                }
                Else
                {
                    Return (Zero)
                }
            }

            Name (PTRP, Zero)
            Name (PSEM, Zero)
            Name (ATRP, Zero)
            Name (ASEM, Zero)
            Name (YTRP, Zero)
            Name (YSEM, Zero)
            Method (_OSC, 4, Serialized)  // _OSC: Operating System Capabilities
            {
                CreateDWordField (Arg3, Zero, STS1)
                CreateDWordField (Arg3, 0x04, CAP1)
                If ((Arg1 != One))
                {
                    STS1 &= 0xFFFFFF00
                    STS1 |= 0x0A
                    Return (Arg3)
                }

                If ((Arg2 != 0x02))
                {
                    STS1 &= 0xFFFFFF00
                    STS1 |= 0x02
                    Return (Arg3)
                }

                If (CondRefOf (\_SB.APSV))
                {
                    If ((PSEM == Zero))
                    {
                        PSEM = One
                        PTRP = \_SB.APSV /* External reference */
                    }
                }

                If (CondRefOf (\_SB.AAC0))
                {
                    If ((ASEM == Zero))
                    {
                        ASEM = One
                        ATRP = \_SB.AAC0 /* External reference */
                    }
                }

                If (CondRefOf (\_SB.ACRT))
                {
                    If ((YSEM == Zero))
                    {
                        YSEM = One
                        YTRP = \_SB.ACRT /* External reference */
                    }
                }

                If ((Arg0 == ToUUID ("b23ba85d-c8b7-3542-88de-8de2ffcfd698") /* Unknown UUID */))
                {
                    If (~(STS1 & One))
                    {
                        If ((CAP1 & One))
                        {
                            If ((CAP1 & 0x02))
                            {
                                \_SB.AAC0 = 0x6E
                                \_TZ.ETMD = Zero
                            }
                            Else
                            {
                                \_SB.AAC0 = ATRP /* \_SB_.IETM.ATRP */
                                \_TZ.ETMD = One
                            }

                            If ((CAP1 & 0x04))
                            {
                                \_SB.APSV = 0x6E
                            }
                            Else
                            {
                                \_SB.APSV = PTRP /* \_SB_.IETM.PTRP */
                            }

                            If ((CAP1 & 0x08))
                            {
                                \_SB.ACRT = 0xD2
                            }
                            Else
                            {
                                \_SB.ACRT = YTRP /* \_SB_.IETM.YTRP */
                            }
                        }
                        Else
                        {
                            \_SB.ACRT = YTRP /* \_SB_.IETM.YTRP */
                            \_SB.APSV = PTRP /* \_SB_.IETM.PTRP */
                            \_SB.AAC0 = ATRP /* \_SB_.IETM.ATRP */
                            \_TZ.ETMD = One
                        }

                        If (CondRefOf (\_TZ.TZ00))
                        {
                            Notify (\_TZ.TZ00, 0x81) // Information Change
                        }
                    }

                    Return (Arg3)
                }

                Return (Arg3)
            }

            Method (DCFG, 0, NotSerialized)
            {
                Return (\DCFE) /* External reference */
            }

            Name (ODVX, Package (0x06)
            {
                Zero, 
                Zero, 
                Zero, 
                Zero, 
                Zero, 
                Zero
            })
            Method (ODVP, 0, Serialized)
            {
                ODVX [Zero] = \ODV0 /* External reference */
                ODVX [One] = \ODV1 /* External reference */
                If ((\_SB.PC00.LPCB.H_EC.DORU == One))
                {
                    \ODV2 = One
                }

                ODVX [0x02] = \ODV2 /* External reference */
                ODVX [0x03] = \ODV3 /* External reference */
                ODVX [0x04] = \ODV4 /* External reference */
                ODVX [0x05] = \ODV5 /* External reference */
                Return (ODVX) /* \_SB_.IETM.ODVX */
            }
        }
    }

    Scope (\_SB.PC00.LPCB.H_EC)
    {
        Mutex (PATM, 0x00)
        Method (_QF1, 0, NotSerialized)  // _Qxx: EC Query, xx=0x00-0xFF
        {
            Notify (\_SB.PC00.LPCB.H_EC.SEN2, 0x90) // Device-Specific
            Stall (0x0A)
            Notify (\_SB.PC00.LPCB.H_EC.SEN3, 0x90) // Device-Specific
            Stall (0x0A)
        }
    }

    Scope (\_SB.PC00.LPCB.H_EC)
    {
        Device (SEN2)
        {
            Name (_HID, "INTC1043")  // _HID: Hardware ID
            Name (_UID, "SEN2")  // _UID: Unique ID
            Name (_STR, Unicode ("Thermistor GT VR"))  // _STR: Description String
            Name (PTYP, 0x03)
            Name (CTYP, Zero)
            Name (PFLG, Zero)
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If ((\S2DE == One))
                {
                    Return (0x0F)
                }
                Else
                {
                    Return (Zero)
                }
            }

            Method (_TMP, 0, Serialized)  // _TMP: Temperature
            {
                Return (\_SB.IETM.CTOK (\_SB.PC00.LPCB.H_EC.TSR4))
            }

            Name (PATC, 0x02)
            Method (PAT0, 1, Serialized)
            {
                Local1 = \_SB.IETM.KTOC (Arg0)
                \_SB.PC00.LPCB.H_EC.TSI = 0x03
                \_SB.PC00.LPCB.H_EC.TSLT = Local1
                \_SB.MCMD (0xF1)
            }

            Method (PAT1, 1, Serialized)
            {
                Local1 = \_SB.IETM.KTOC (Arg0)
                \_SB.PC00.LPCB.H_EC.TSI = 0x03
                \_SB.PC00.LPCB.H_EC.TSHT = Local1
                \_SB.MCMD (0xF1)
            }

            Name (GTSH, 0x14)
            Name (LSTM, Zero)
            Method (_DTI, 1, NotSerialized)  // _DTI: Device Temperature Indication
            {
                LSTM = Arg0
                Notify (\_SB.PC00.LPCB.H_EC.SEN2, 0x91) // Device-Specific
            }

            Method (_NTT, 0, NotSerialized)  // _NTT: Notification Temperature Threshold
            {
                Return (0x0ADE)
            }

            Name (S2AC, 0x3C)
            Name (S2A1, 0x32)
            Name (S2A2, 0x28)
            Name (S2PV, 0x41)
            Name (S2CC, 0x50)
            Name (S2C3, 0x46)
            Name (S2HP, 0x4B)
            Name (SSP2, Zero)
            Method (_TSP, 0, Serialized)  // _TSP: Thermal Sampling Period
            {
                Return (SSP2) /* \_SB_.PC00.LPCB.H_EC.SEN2.SSP2 */
            }

            Method (_AC0, 0, Serialized)  // _ACx: Active Cooling, x=0-9
            {
                Local1 = \_SB.IETM.CTOK (S2AC)
                If ((LSTM >= Local1))
                {
                    Return ((Local1 - 0x14))
                }
                Else
                {
                    Return (Local1)
                }
            }

            Method (_AC1, 0, Serialized)  // _ACx: Active Cooling, x=0-9
            {
                Return (\_SB.IETM.CTOK (S2A1))
            }

            Method (_AC2, 0, Serialized)  // _ACx: Active Cooling, x=0-9
            {
                Return (\_SB.IETM.CTOK (S2A2))
            }

            Method (_PSV, 0, Serialized)  // _PSV: Passive Temperature
            {
                Return (\_SB.IETM.CTOK (S2PV))
            }

            Method (_CRT, 0, Serialized)  // _CRT: Critical Temperature
            {
                Return (\_SB.IETM.CTOK (S2CC))
            }

            Method (_CR3, 0, Serialized)  // _CR3: Warm/Standby Temperature
            {
                Return (\_SB.IETM.CTOK (S2C3))
            }

            Method (_HOT, 0, Serialized)  // _HOT: Hot Temperature
            {
                Return (\_SB.IETM.CTOK (S2HP))
            }
        }
    }

    Scope (\_SB.PC00.LPCB.H_EC)
    {
        Device (SEN3)
        {
            Name (_HID, "INTC1043")  // _HID: Hardware ID
            Name (_UID, "SEN3")  // _UID: Unique ID
            Name (_STR, Unicode ("Thermistor Ambient"))  // _STR: Description String
            Name (PTYP, 0x03)
            Name (CTYP, Zero)
            Name (PFLG, Zero)
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If ((\S3DE == One))
                {
                    Return (0x0F)
                }
                Else
                {
                    Return (Zero)
                }
            }

            Method (_TMP, 0, Serialized)  // _TMP: Temperature
            {
                Return (\_SB.IETM.CTOK (\_SB.PC00.LPCB.H_EC.TSR3))
            }

            Name (PATC, 0x02)
            Method (PAT0, 1, Serialized)
            {
                Local1 = \_SB.IETM.KTOC (Arg0)
                \_SB.PC00.LPCB.H_EC.TSI = 0x04
                \_SB.PC00.LPCB.H_EC.TSLT = Local1
                \_SB.MCMD (0xF1)
            }

            Method (PAT1, 1, Serialized)
            {
                Local1 = \_SB.IETM.KTOC (Arg0)
                \_SB.PC00.LPCB.H_EC.TSI = 0x04
                \_SB.PC00.LPCB.H_EC.TSHT = Local1
                \_SB.MCMD (0xF1)
            }

            Name (GTSH, 0x14)
            Name (LSTM, Zero)
            Method (_DTI, 1, NotSerialized)  // _DTI: Device Temperature Indication
            {
                LSTM = Arg0
                Notify (\_SB.PC00.LPCB.H_EC.SEN3, 0x91) // Device-Specific
            }

            Method (_NTT, 0, NotSerialized)  // _NTT: Notification Temperature Threshold
            {
                Return (0x0ADE)
            }

            Name (S3AC, 0x3C)
            Name (S3A1, 0x32)
            Name (S3A2, 0x28)
            Name (S3PV, 0x41)
            Name (S3CC, 0x50)
            Name (S3C3, 0x46)
            Name (S3HP, 0x4B)
            Name (SSP3, Zero)
            Method (_TSP, 0, Serialized)  // _TSP: Thermal Sampling Period
            {
                Return (SSP3) /* \_SB_.PC00.LPCB.H_EC.SEN3.SSP3 */
            }

            Method (_AC3, 0, Serialized)  // _ACx: Active Cooling, x=0-9
            {
                Local1 = \_SB.IETM.CTOK (S3AC)
                If ((LSTM >= Local1))
                {
                    Return ((Local1 - 0x14))
                }
                Else
                {
                    Return (Local1)
                }
            }

            Method (_AC4, 0, Serialized)  // _ACx: Active Cooling, x=0-9
            {
                Return (\_SB.IETM.CTOK (S3A1))
            }

            Method (_AC5, 0, Serialized)  // _ACx: Active Cooling, x=0-9
            {
                Return (\_SB.IETM.CTOK (S3A2))
            }

            Method (_PSV, 0, Serialized)  // _PSV: Passive Temperature
            {
                Return (\_SB.IETM.CTOK (S3PV))
            }

            Method (_CRT, 0, Serialized)  // _CRT: Critical Temperature
            {
                Return (\_SB.IETM.CTOK (S3CC))
            }

            Method (_CR3, 0, Serialized)  // _CR3: Warm/Standby Temperature
            {
                Return (\_SB.IETM.CTOK (S3C3))
            }

            Method (_HOT, 0, Serialized)  // _HOT: Hot Temperature
            {
                Return (\_SB.IETM.CTOK (S3HP))
            }
        }
    }

    Scope (\_SB.IETM)
    {
        Method (KTOC, 1, Serialized)
        {
            If ((Arg0 > 0x0AAC))
            {
                Return (((Arg0 - 0x0AAC) / 0x0A))
            }
            Else
            {
                Return (Zero)
            }
        }

        Method (CTOK, 1, Serialized)
        {
            Return (((Arg0 * 0x0A) + 0x0AAC))
        }

        Method (C10K, 1, Serialized)
        {
            Name (TMP1, Buffer (0x10)
            {
                 0x00                                             // .
            })
            CreateByteField (TMP1, Zero, TMPL)
            CreateByteField (TMP1, One, TMPH)
            Local0 = (Arg0 + 0x0AAC)
            TMPL = (Local0 & 0xFF)
            TMPH = ((Local0 & 0xFF00) >> 0x08)
            ToInteger (TMP1, Local1)
            Return (Local1)
        }

        Method (K10C, 1, Serialized)
        {
            If ((Arg0 > 0x0AAC))
            {
                Return ((Arg0 - 0x0AAC))
            }
            Else
            {
                Return (Zero)
            }
        }
    }

    Scope (\_SB.PC00.TCPU)
    {
        Name (PFLG, Zero)
        Method (_STA, 0, NotSerialized)  // _STA: Status
        {
            If ((\SADE == One))
            {
                Return (0x0F)
            }
            Else
            {
                Return (Zero)
            }
        }

        OperationRegion (CPWR, SystemMemory, ((MHBR << 0x0F) + 0x5000), 0x1000)
        Field (CPWR, ByteAcc, NoLock, Preserve)
        {
            Offset (0x930), 
            PTDP,   15, 
            Offset (0x932), 
            PMIN,   15, 
            Offset (0x934), 
            PMAX,   15, 
            Offset (0x936), 
            TMAX,   7, 
            Offset (0x938), 
            PWRU,   4, 
            Offset (0x939), 
            EGYU,   5, 
            Offset (0x93A), 
            TIMU,   4, 
            Offset (0x958), 
            Offset (0x95C), 
            LPMS,   1, 
            CTNL,   2, 
            Offset (0x978), 
            PCTP,   8, 
            Offset (0x998), 
            RP0C,   8, 
            RP1C,   8, 
            RPNC,   8, 
            Offset (0xF3C), 
            TRAT,   8, 
            Offset (0xF40), 
            PTD1,   15, 
            Offset (0xF42), 
            TRA1,   8, 
            Offset (0xF44), 
            PMX1,   15, 
            Offset (0xF46), 
            PMN1,   15, 
            Offset (0xF48), 
            PTD2,   15, 
            Offset (0xF4A), 
            TRA2,   8, 
            Offset (0xF4C), 
            PMX2,   15, 
            Offset (0xF4E), 
            PMN2,   15, 
            Offset (0xF50), 
            CTCL,   2, 
                ,   29, 
            CLCK,   1, 
            MNTR,   8
        }

        Name (XPCC, Zero)
        Method (PPCC, 0, Serialized)
        {
            If (((XPCC == Zero) && CondRefOf (\_SB.CBMI)))
            {
                Switch (ToInteger (\_SB.CBMI))
                {
                    Case (Zero)
                    {
                        If (((\_SB.CLVL >= One) && (\_SB.CLVL <= 0x03)))
                        {
                            CPL0 ()
                            XPCC = One
                        }
                    }
                    Case (One)
                    {
                        If (((\_SB.CLVL == 0x02) || (\_SB.CLVL == 0x03)))
                        {
                            CPL1 ()
                            XPCC = One
                        }
                    }
                    Case (0x02)
                    {
                        If ((\_SB.CLVL == 0x03))
                        {
                            CPL2 ()
                            XPCC = One
                        }
                    }

                }
            }

            Return (NPCC) /* \_SB_.PC00.TCPU.NPCC */
        }

        Name (NPCC, Package (0x03)
        {
            0x02, 
            Package (0x06)
            {
                Zero, 
                0x88B8, 
                0xAFC8, 
                0x6D60, 
                0x7D00, 
                0x03E8
            }, 

            Package (0x06)
            {
                One, 
                0xDBBA, 
                0xDBBA, 
                Zero, 
                Zero, 
                0x03E8
            }
        })
        Method (CPNU, 2, Serialized)
        {
            Name (CNVT, Zero)
            Name (PPUU, Zero)
            Name (RMDR, Zero)
            If ((PWRU == Zero))
            {
                PPUU = One
            }
            Else
            {
                PPUU = (PWRU-- << 0x02)
            }

            Divide (Arg0, PPUU, RMDR, CNVT) /* \_SB_.PC00.TCPU.CPNU.CNVT */
            If ((Arg1 == Zero))
            {
                Return (CNVT) /* \_SB_.PC00.TCPU.CPNU.CNVT */
            }
            Else
            {
                CNVT *= 0x03E8
                RMDR *= 0x03E8
                RMDR /= PPUU
                CNVT += RMDR /* \_SB_.PC00.TCPU.CPNU.RMDR */
                Return (CNVT) /* \_SB_.PC00.TCPU.CPNU.CNVT */
            }
        }

        Method (CPL0, 0, NotSerialized)
        {
            \_SB.PC00.TCPU.NPCC [Zero] = 0x02
            DerefOf (\_SB.PC00.TCPU.NPCC [One]) [Zero] = Zero
            DerefOf (\_SB.PC00.TCPU.NPCC [One]) [One] = 0x7D
            DerefOf (\_SB.PC00.TCPU.NPCC [One]) [0x02] = CPNU (\_SB.PL10, One)
            DerefOf (\_SB.PC00.TCPU.NPCC [One]) [0x03] = (\_SB.PLW0 * 0x03E8)
            DerefOf (\_SB.PC00.TCPU.NPCC [One]) [0x04] = ((\_SB.PLW0 * 0x03E8
                ) + 0x0FA0)
            DerefOf (\_SB.PC00.TCPU.NPCC [One]) [0x05] = PPSZ /* External reference */
            DerefOf (\_SB.PC00.TCPU.NPCC [0x02]) [Zero] = One
            DerefOf (\_SB.PC00.TCPU.NPCC [0x02]) [One] = CPNU (\_SB.PL20, One)
            DerefOf (\_SB.PC00.TCPU.NPCC [0x02]) [0x02] = CPNU (\_SB.PL20, One)
            DerefOf (\_SB.PC00.TCPU.NPCC [0x02]) [0x03] = Zero
            DerefOf (\_SB.PC00.TCPU.NPCC [0x02]) [0x04] = Zero
            DerefOf (\_SB.PC00.TCPU.NPCC [0x02]) [0x05] = PPSZ /* External reference */
        }

        Method (CPL1, 0, NotSerialized)
        {
            \_SB.PC00.TCPU.NPCC [Zero] = 0x02
            DerefOf (\_SB.PC00.TCPU.NPCC [One]) [Zero] = Zero
            DerefOf (\_SB.PC00.TCPU.NPCC [One]) [One] = 0x7D
            DerefOf (\_SB.PC00.TCPU.NPCC [One]) [0x02] = CPNU (\_SB.PL11, One)
            DerefOf (\_SB.PC00.TCPU.NPCC [One]) [0x03] = (\_SB.PLW1 * 0x03E8)
            DerefOf (\_SB.PC00.TCPU.NPCC [One]) [0x04] = ((\_SB.PLW1 * 0x03E8
                ) + 0x0FA0)
            DerefOf (\_SB.PC00.TCPU.NPCC [One]) [0x05] = PPSZ /* External reference */
            DerefOf (\_SB.PC00.TCPU.NPCC [0x02]) [Zero] = One
            DerefOf (\_SB.PC00.TCPU.NPCC [0x02]) [One] = CPNU (\_SB.PL21, One)
            DerefOf (\_SB.PC00.TCPU.NPCC [0x02]) [0x02] = CPNU (\_SB.PL21, One)
            DerefOf (\_SB.PC00.TCPU.NPCC [0x02]) [0x03] = Zero
            DerefOf (\_SB.PC00.TCPU.NPCC [0x02]) [0x04] = Zero
            DerefOf (\_SB.PC00.TCPU.NPCC [0x02]) [0x05] = PPSZ /* External reference */
        }

        Method (CPL2, 0, NotSerialized)
        {
            \_SB.PC00.TCPU.NPCC [Zero] = 0x02
            DerefOf (\_SB.PC00.TCPU.NPCC [One]) [Zero] = Zero
            DerefOf (\_SB.PC00.TCPU.NPCC [One]) [One] = 0x7D
            DerefOf (\_SB.PC00.TCPU.NPCC [One]) [0x02] = CPNU (\_SB.PL12, One)
            DerefOf (\_SB.PC00.TCPU.NPCC [One]) [0x03] = (\_SB.PLW2 * 0x03E8)
            DerefOf (\_SB.PC00.TCPU.NPCC [One]) [0x04] = ((\_SB.PLW2 * 0x03E8
                ) + 0x0FA0)
            DerefOf (\_SB.PC00.TCPU.NPCC [One]) [0x05] = PPSZ /* External reference */
            DerefOf (\_SB.PC00.TCPU.NPCC [0x02]) [Zero] = One
            DerefOf (\_SB.PC00.TCPU.NPCC [0x02]) [One] = CPNU (\_SB.PL22, One)
            DerefOf (\_SB.PC00.TCPU.NPCC [0x02]) [0x02] = CPNU (\_SB.PL22, One)
            DerefOf (\_SB.PC00.TCPU.NPCC [0x02]) [0x03] = Zero
            DerefOf (\_SB.PC00.TCPU.NPCC [0x02]) [0x04] = Zero
            DerefOf (\_SB.PC00.TCPU.NPCC [0x02]) [0x05] = PPSZ /* External reference */
        }

        Name (LSTM, Zero)
        Name (_PPC, Zero)  // _PPC: Performance Present Capabilities
        Method (SPPC, 1, Serialized)
        {
            If (CondRefOf (\_SB.CPPC))
            {
                \_SB.CPPC = Arg0
            }

            Switch (ToInteger (\TCNT))
            {
                Case (0x10)
                {
                    Notify (\_SB.PR00, 0x80) // Status Change
                    Notify (\_SB.PR01, 0x80) // Status Change
                    Notify (\_SB.PR02, 0x80) // Status Change
                    Notify (\_SB.PR03, 0x80) // Status Change
                    Notify (\_SB.PR04, 0x80) // Status Change
                    Notify (\_SB.PR05, 0x80) // Status Change
                    Notify (\_SB.PR06, 0x80) // Status Change
                    Notify (\_SB.PR07, 0x80) // Status Change
                    Notify (\_SB.PR08, 0x80) // Status Change
                    Notify (\_SB.PR09, 0x80) // Status Change
                    Notify (\_SB.PR10, 0x80) // Status Change
                    Notify (\_SB.PR11, 0x80) // Status Change
                    Notify (\_SB.PR12, 0x80) // Status Change
                    Notify (\_SB.PR13, 0x80) // Status Change
                    Notify (\_SB.PR14, 0x80) // Status Change
                    Notify (\_SB.PR15, 0x80) // Status Change
                }
                Case (0x0E)
                {
                    Notify (\_SB.PR00, 0x80) // Status Change
                    Notify (\_SB.PR01, 0x80) // Status Change
                    Notify (\_SB.PR02, 0x80) // Status Change
                    Notify (\_SB.PR03, 0x80) // Status Change
                    Notify (\_SB.PR04, 0x80) // Status Change
                    Notify (\_SB.PR05, 0x80) // Status Change
                    Notify (\_SB.PR06, 0x80) // Status Change
                    Notify (\_SB.PR07, 0x80) // Status Change
                    Notify (\_SB.PR08, 0x80) // Status Change
                    Notify (\_SB.PR09, 0x80) // Status Change
                    Notify (\_SB.PR10, 0x80) // Status Change
                    Notify (\_SB.PR11, 0x80) // Status Change
                    Notify (\_SB.PR12, 0x80) // Status Change
                    Notify (\_SB.PR13, 0x80) // Status Change
                }
                Case (0x0C)
                {
                    Notify (\_SB.PR00, 0x80) // Status Change
                    Notify (\_SB.PR01, 0x80) // Status Change
                    Notify (\_SB.PR02, 0x80) // Status Change
                    Notify (\_SB.PR03, 0x80) // Status Change
                    Notify (\_SB.PR04, 0x80) // Status Change
                    Notify (\_SB.PR05, 0x80) // Status Change
                    Notify (\_SB.PR06, 0x80) // Status Change
                    Notify (\_SB.PR07, 0x80) // Status Change
                    Notify (\_SB.PR08, 0x80) // Status Change
                    Notify (\_SB.PR09, 0x80) // Status Change
                    Notify (\_SB.PR10, 0x80) // Status Change
                    Notify (\_SB.PR11, 0x80) // Status Change
                }
                Case (0x0A)
                {
                    Notify (\_SB.PR00, 0x80) // Status Change
                    Notify (\_SB.PR01, 0x80) // Status Change
                    Notify (\_SB.PR02, 0x80) // Status Change
                    Notify (\_SB.PR03, 0x80) // Status Change
                    Notify (\_SB.PR04, 0x80) // Status Change
                    Notify (\_SB.PR05, 0x80) // Status Change
                    Notify (\_SB.PR06, 0x80) // Status Change
                    Notify (\_SB.PR07, 0x80) // Status Change
                    Notify (\_SB.PR08, 0x80) // Status Change
                    Notify (\_SB.PR09, 0x80) // Status Change
                }
                Case (0x08)
                {
                    Notify (\_SB.PR00, 0x80) // Status Change
                    Notify (\_SB.PR01, 0x80) // Status Change
                    Notify (\_SB.PR02, 0x80) // Status Change
                    Notify (\_SB.PR03, 0x80) // Status Change
                    Notify (\_SB.PR04, 0x80) // Status Change
                    Notify (\_SB.PR05, 0x80) // Status Change
                    Notify (\_SB.PR06, 0x80) // Status Change
                    Notify (\_SB.PR07, 0x80) // Status Change
                }
                Case (0x07)
                {
                    Notify (\_SB.PR00, 0x80) // Status Change
                    Notify (\_SB.PR01, 0x80) // Status Change
                    Notify (\_SB.PR02, 0x80) // Status Change
                    Notify (\_SB.PR03, 0x80) // Status Change
                    Notify (\_SB.PR04, 0x80) // Status Change
                    Notify (\_SB.PR05, 0x80) // Status Change
                    Notify (\_SB.PR06, 0x80) // Status Change
                }
                Case (0x06)
                {
                    Notify (\_SB.PR00, 0x80) // Status Change
                    Notify (\_SB.PR01, 0x80) // Status Change
                    Notify (\_SB.PR02, 0x80) // Status Change
                    Notify (\_SB.PR03, 0x80) // Status Change
                    Notify (\_SB.PR04, 0x80) // Status Change
                    Notify (\_SB.PR05, 0x80) // Status Change
                }
                Case (0x05)
                {
                    Notify (\_SB.PR00, 0x80) // Status Change
                    Notify (\_SB.PR01, 0x80) // Status Change
                    Notify (\_SB.PR02, 0x80) // Status Change
                    Notify (\_SB.PR03, 0x80) // Status Change
                    Notify (\_SB.PR04, 0x80) // Status Change
                }
                Case (0x04)
                {
                    Notify (\_SB.PR00, 0x80) // Status Change
                    Notify (\_SB.PR01, 0x80) // Status Change
                    Notify (\_SB.PR02, 0x80) // Status Change
                    Notify (\_SB.PR03, 0x80) // Status Change
                }
                Case (0x03)
                {
                    Notify (\_SB.PR00, 0x80) // Status Change
                    Notify (\_SB.PR01, 0x80) // Status Change
                    Notify (\_SB.PR02, 0x80) // Status Change
                }
                Case (0x02)
                {
                    Notify (\_SB.PR00, 0x80) // Status Change
                    Notify (\_SB.PR01, 0x80) // Status Change
                }
                Default
                {
                    Notify (\_SB.PR00, 0x80) // Status Change
                }

            }
        }

        Method (SPUR, 1, NotSerialized)
        {
            If ((Arg0 <= \TCNT))
            {
                If ((\_SB.PAGD._STA () == 0x0F))
                {
                    \_SB.PAGD._PUR [One] = Arg0
                    Notify (\_SB.PAGD, 0x80) // Status Change
                }
            }
        }

        Method (PCCC, 0, Serialized)
        {
            PCCX [Zero] = One
            Switch (ToInteger (CPNU (PTDP, Zero)))
            {
                Case (0x39)
                {
                    DerefOf (PCCX [One]) [Zero] = 0xA7F8
                    DerefOf (PCCX [One]) [One] = 0x00017318
                }
                Case (0x2F)
                {
                    DerefOf (PCCX [One]) [Zero] = 0x9858
                    DerefOf (PCCX [One]) [One] = 0x00014C08
                }
                Case (0x25)
                {
                    DerefOf (PCCX [One]) [Zero] = 0x7148
                    DerefOf (PCCX [One]) [One] = 0xD6D8
                }
                Case (0x19)
                {
                    DerefOf (PCCX [One]) [Zero] = 0x3E80
                    DerefOf (PCCX [One]) [One] = 0x7D00
                }
                Case (0x0F)
                {
                    DerefOf (PCCX [One]) [Zero] = 0x36B0
                    DerefOf (PCCX [One]) [One] = 0x7D00
                }
                Case (0x0B)
                {
                    DerefOf (PCCX [One]) [Zero] = 0x36B0
                    DerefOf (PCCX [One]) [One] = 0x61A8
                }
                Default
                {
                    DerefOf (PCCX [One]) [Zero] = 0xFF
                    DerefOf (PCCX [One]) [One] = 0xFF
                }

            }

            Return (PCCX) /* \_SB_.PC00.TCPU.PCCX */
        }

        Name (PCCX, Package (0x02)
        {
            0x80000000, 
            Package (0x02)
            {
                0x80000000, 
                0x80000000
            }
        })
        Name (KEFF, Package (0x1E)
        {
            Package (0x02)
            {
                0x01BC, 
                Zero
            }, 

            Package (0x02)
            {
                0x01CF, 
                0x27
            }, 

            Package (0x02)
            {
                0x01E1, 
                0x4B
            }, 

            Package (0x02)
            {
                0x01F3, 
                0x6C
            }, 

            Package (0x02)
            {
                0x0206, 
                0x8B
            }, 

            Package (0x02)
            {
                0x0218, 
                0xA8
            }, 

            Package (0x02)
            {
                0x022A, 
                0xC3
            }, 

            Package (0x02)
            {
                0x023D, 
                0xDD
            }, 

            Package (0x02)
            {
                0x024F, 
                0xF4
            }, 

            Package (0x02)
            {
                0x0261, 
                0x010B
            }, 

            Package (0x02)
            {
                0x0274, 
                0x011F
            }, 

            Package (0x02)
            {
                0x032C, 
                0x01BD
            }, 

            Package (0x02)
            {
                0x03D7, 
                0x0227
            }, 

            Package (0x02)
            {
                0x048B, 
                0x026D
            }, 

            Package (0x02)
            {
                0x053E, 
                0x02A1
            }, 

            Package (0x02)
            {
                0x05F7, 
                0x02C6
            }, 

            Package (0x02)
            {
                0x06A8, 
                0x02E6
            }, 

            Package (0x02)
            {
                0x075D, 
                0x02FF
            }, 

            Package (0x02)
            {
                0x0818, 
                0x0311
            }, 

            Package (0x02)
            {
                0x08CF, 
                0x0322
            }, 

            Package (0x02)
            {
                0x179C, 
                0x0381
            }, 

            Package (0x02)
            {
                0x2DDC, 
                0x039C
            }, 

            Package (0x02)
            {
                0x44A8, 
                0x039E
            }, 

            Package (0x02)
            {
                0x5C35, 
                0x0397
            }, 

            Package (0x02)
            {
                0x747D, 
                0x038D
            }, 

            Package (0x02)
            {
                0x8D7F, 
                0x0382
            }, 

            Package (0x02)
            {
                0xA768, 
                0x0376
            }, 

            Package (0x02)
            {
                0xC23B, 
                0x0369
            }, 

            Package (0x02)
            {
                0xDE26, 
                0x035A
            }, 

            Package (0x02)
            {
                0xFB7C, 
                0x034A
            }
        })
        Name (CEUP, Package (0x06)
        {
            0x80000000, 
            0x80000000, 
            0x80000000, 
            0x80000000, 
            0x80000000, 
            0x80000000
        })
        Method (TMPX, 0, Serialized)
        {
            Return (\_SB.IETM.CTOK (PCTP))
        }

        Method (_DTI, 1, NotSerialized)  // _DTI: Device Temperature Indication
        {
            LSTM = Arg0
            Notify (\_SB.PC00.TCPU, 0x91) // Device-Specific
        }

        Method (_NTT, 0, NotSerialized)  // _NTT: Notification Temperature Threshold
        {
            Return (0x0ADE)
        }

        Name (PTYP, Zero)
        Method (_PSS, 0, NotSerialized)  // _PSS: Performance Supported States
        {
            If (CondRefOf (\_SB.PR00._PSS))
            {
                Return (\_SB.PR00._PSS ())
            }
            Else
            {
                Return (Package (0x02)
                {
                    Package (0x06)
                    {
                        Zero, 
                        Zero, 
                        Zero, 
                        Zero, 
                        Zero, 
                        Zero
                    }, 

                    Package (0x06)
                    {
                        Zero, 
                        Zero, 
                        Zero, 
                        Zero, 
                        Zero, 
                        Zero
                    }
                })
            }
        }

        Method (_TSS, 0, NotSerialized)  // _TSS: Throttling Supported States
        {
            If (CondRefOf (\_SB.PR00._TSS))
            {
                Return (\_SB.PR00._TSS ())
            }
            Else
            {
                Return (Package (0x01)
                {
                    Package (0x05)
                    {
                        One, 
                        Zero, 
                        Zero, 
                        Zero, 
                        Zero
                    }
                })
            }
        }

        Method (_TPC, 0, NotSerialized)  // _TPC: Throttling Present Capabilities
        {
            If (CondRefOf (\_SB.PR00._TPC))
            {
                Return (\_SB.PR00._TPC) /* External reference */
            }
            Else
            {
                Return (Zero)
            }
        }

        Method (_PTC, 0, NotSerialized)  // _PTC: Processor Throttling Control
        {
            If ((CondRefOf (\PF00) && (\PF00 != 0x80000000)))
            {
                If ((\PF00 & 0x04))
                {
                    Return (Package (0x02)
                    {
                        ResourceTemplate ()
                        {
                            Register (FFixedHW, 
                                0x00,               // Bit Width
                                0x00,               // Bit Offset
                                0x0000000000000000, // Address
                                ,)
                        }, 

                        ResourceTemplate ()
                        {
                            Register (FFixedHW, 
                                0x00,               // Bit Width
                                0x00,               // Bit Offset
                                0x0000000000000000, // Address
                                ,)
                        }
                    })
                }
                Else
                {
                    Return (Package (0x02)
                    {
                        ResourceTemplate ()
                        {
                            Register (SystemIO, 
                                0x05,               // Bit Width
                                0x00,               // Bit Offset
                                0x0000000000001810, // Address
                                ,)
                        }, 

                        ResourceTemplate ()
                        {
                            Register (SystemIO, 
                                0x05,               // Bit Width
                                0x00,               // Bit Offset
                                0x0000000000001810, // Address
                                ,)
                        }
                    })
                }
            }
            Else
            {
                Return (Package (0x02)
                {
                    ResourceTemplate ()
                    {
                        Register (FFixedHW, 
                            0x00,               // Bit Width
                            0x00,               // Bit Offset
                            0x0000000000000000, // Address
                            ,)
                    }, 

                    ResourceTemplate ()
                    {
                        Register (FFixedHW, 
                            0x00,               // Bit Width
                            0x00,               // Bit Offset
                            0x0000000000000000, // Address
                            ,)
                    }
                })
            }
        }

        Method (_TSD, 0, NotSerialized)  // _TSD: Throttling State Dependencies
        {
            If (CondRefOf (\_SB.PR00._TSD))
            {
                Return (\_SB.PR00._TSD ())
            }
            Else
            {
                Return (Package (0x01)
                {
                    Package (0x05)
                    {
                        0x05, 
                        Zero, 
                        Zero, 
                        0xFC, 
                        Zero
                    }
                })
            }
        }

        Method (_TDL, 0, NotSerialized)  // _TDL: T-State Depth Limit
        {
            If ((CondRefOf (\_SB.PR00._TSS) && CondRefOf (\_SB.CFGD)))
            {
                If ((\_SB.CFGD & 0x2000))
                {
                    Return ((SizeOf (\_SB.PR00.TSMF) - One))
                }
                Else
                {
                    Return ((SizeOf (\_SB.PR00.TSMC) - One))
                }
            }
            Else
            {
                Return (Zero)
            }
        }

        Method (_PDL, 0, NotSerialized)  // _PDL: P-state Depth Limit
        {
            If (CondRefOf (\_SB.PR00._PSS))
            {
                If ((\_SB.OSCP & 0x0400))
                {
                    Return ((SizeOf (\_SB.PR00.TPSS) - One))
                }
                Else
                {
                    Return ((SizeOf (\_SB.PR00.LPSS) - One))
                }
            }
            Else
            {
                Return (Zero)
            }
        }

        Name (TJMX, 0x6E)
        Method (_TSP, 0, Serialized)  // _TSP: Thermal Sampling Period
        {
            Return (Zero)
        }

        Method (_AC0, 0, Serialized)  // _ACx: Active Cooling, x=0-9
        {
            Local1 = \_SB.IETM.CTOK (TJMX)
            Local1 -= 0x0A
            If ((LSTM >= Local1))
            {
                Return ((Local1 - 0x14))
            }
            Else
            {
                Return (Local1)
            }
        }

        Method (_AC1, 0, Serialized)  // _ACx: Active Cooling, x=0-9
        {
            Local1 = \_SB.IETM.CTOK (TJMX)
            Local1 -= 0x1E
            If ((LSTM >= Local1))
            {
                Return ((Local1 - 0x14))
            }
            Else
            {
                Return (Local1)
            }
        }

        Method (_AC2, 0, Serialized)  // _ACx: Active Cooling, x=0-9
        {
            Local1 = \_SB.IETM.CTOK (TJMX)
            Local1 -= 0x28
            If ((LSTM >= Local1))
            {
                Return ((Local1 - 0x14))
            }
            Else
            {
                Return (Local1)
            }
        }

        Method (_AC3, 0, Serialized)  // _ACx: Active Cooling, x=0-9
        {
            Local1 = \_SB.IETM.CTOK (TJMX)
            Local1 -= 0x37
            If ((LSTM >= Local1))
            {
                Return ((Local1 - 0x14))
            }
            Else
            {
                Return (Local1)
            }
        }

        Method (_AC4, 0, Serialized)  // _ACx: Active Cooling, x=0-9
        {
            Local1 = \_SB.IETM.CTOK (TJMX)
            Local1 -= 0x46
            If ((LSTM >= Local1))
            {
                Return ((Local1 - 0x14))
            }
            Else
            {
                Return (Local1)
            }
        }

        Method (_PSV, 0, Serialized)  // _PSV: Passive Temperature
        {
            Return (\_SB.IETM.CTOK (TJMX))
        }

        Method (_CRT, 0, Serialized)  // _CRT: Critical Temperature
        {
            Return (\_SB.IETM.CTOK (TJMX))
        }

        Method (_CR3, 0, Serialized)  // _CR3: Warm/Standby Temperature
        {
            Return (\_SB.IETM.CTOK (TJMX))
        }

        Method (_HOT, 0, Serialized)  // _HOT: Hot Temperature
        {
            Return (\_SB.IETM.CTOK (TJMX))
        }

        Method (UVTH, 1, Serialized)
        {
            If (((\ECON == One) && (\_SB.PC00.LPCB.H_EC.ECAV == One)))
            {
                Local0 = Arg0
                \_SB.PC00.LPCB.H_EC.ECWT (Arg0, RefOf (\_SB.PC00.LPCB.H_EC.UVTH))
                \_SB.PC00.LPCB.H_EC.ECMD (0x17)
            }
        }
    }

    Scope (\_SB.IETM)
    {
        Name (CTSP, Package (0x01)
        {
            ToUUID ("e145970a-e4c1-4d73-900e-c9c5a69dd067") /* Unknown UUID */
        })
    }

    Scope (\_SB.PC00.TCPU)
    {
        Method (TDPL, 0, Serialized)
        {
            Name (AAAA, Zero)
            Name (BBBB, Zero)
            Name (CCCC, Zero)
            Local0 = CTNL /* \_SB_.PC00.TCPU.CTNL */
            If (((Local0 == One) || (Local0 == 0x02)))
            {
                Local0 = \_SB.CLVL /* External reference */
            }
            Else
            {
                Return (Package (0x01)
                {
                    Zero
                })
            }

            If ((CLCK == One))
            {
                Local0 = One
            }

            AAAA = CPNU (\_SB.PL10, One)
            BBBB = CPNU (\_SB.PL11, One)
            CCCC = CPNU (\_SB.PL12, One)
            Name (TMP1, Package (0x01)
            {
                Package (0x05)
                {
                    0x80000000, 
                    0x80000000, 
                    0x80000000, 
                    0x80000000, 
                    0x80000000
                }
            })
            Name (TMP2, Package (0x02)
            {
                Package (0x05)
                {
                    0x80000000, 
                    0x80000000, 
                    0x80000000, 
                    0x80000000, 
                    0x80000000
                }, 

                Package (0x05)
                {
                    0x80000000, 
                    0x80000000, 
                    0x80000000, 
                    0x80000000, 
                    0x80000000
                }
            })
            Name (TMP3, Package (0x03)
            {
                Package (0x05)
                {
                    0x80000000, 
                    0x80000000, 
                    0x80000000, 
                    0x80000000, 
                    0x80000000
                }, 

                Package (0x05)
                {
                    0x80000000, 
                    0x80000000, 
                    0x80000000, 
                    0x80000000, 
                    0x80000000
                }, 

                Package (0x05)
                {
                    0x80000000, 
                    0x80000000, 
                    0x80000000, 
                    0x80000000, 
                    0x80000000
                }
            })
            If ((Local0 == 0x03))
            {
                If ((AAAA > BBBB))
                {
                    If ((AAAA > CCCC))
                    {
                        If ((BBBB > CCCC))
                        {
                            Local3 = Zero
                            LEV0 = Zero
                            Local4 = One
                            LEV1 = One
                            Local5 = 0x02
                            LEV2 = 0x02
                        }
                        Else
                        {
                            Local3 = Zero
                            LEV0 = Zero
                            Local5 = One
                            LEV1 = 0x02
                            Local4 = 0x02
                            LEV2 = One
                        }
                    }
                    Else
                    {
                        Local5 = Zero
                        LEV0 = 0x02
                        Local3 = One
                        LEV1 = Zero
                        Local4 = 0x02
                        LEV2 = One
                    }
                }
                ElseIf ((BBBB > CCCC))
                {
                    If ((AAAA > CCCC))
                    {
                        Local4 = Zero
                        LEV0 = One
                        Local3 = One
                        LEV1 = Zero
                        Local5 = 0x02
                        LEV2 = 0x02
                    }
                    Else
                    {
                        Local4 = Zero
                        LEV0 = One
                        Local5 = One
                        LEV1 = 0x02
                        Local3 = 0x02
                        LEV2 = Zero
                    }
                }
                Else
                {
                    Local5 = Zero
                    LEV0 = 0x02
                    Local4 = One
                    LEV1 = One
                    Local3 = 0x02
                    LEV2 = Zero
                }

                Local1 = (\_SB.TAR0 + One)
                Local2 = (Local1 * 0x64)
                DerefOf (TMP3 [Local3]) [Zero] = AAAA /* \_SB_.PC00.TCPU.TDPL.AAAA */
                DerefOf (TMP3 [Local3]) [One] = Local2
                DerefOf (TMP3 [Local3]) [0x02] = \_SB.CTC0 /* External reference */
                DerefOf (TMP3 [Local3]) [0x03] = Local1
                DerefOf (TMP3 [Local3]) [0x04] = Zero
                Local1 = (\_SB.TAR1 + One)
                Local2 = (Local1 * 0x64)
                DerefOf (TMP3 [Local4]) [Zero] = BBBB /* \_SB_.PC00.TCPU.TDPL.BBBB */
                DerefOf (TMP3 [Local4]) [One] = Local2
                DerefOf (TMP3 [Local4]) [0x02] = \_SB.CTC1 /* External reference */
                DerefOf (TMP3 [Local4]) [0x03] = Local1
                DerefOf (TMP3 [Local4]) [0x04] = Zero
                Local1 = (\_SB.TAR2 + One)
                Local2 = (Local1 * 0x64)
                DerefOf (TMP3 [Local5]) [Zero] = CCCC /* \_SB_.PC00.TCPU.TDPL.CCCC */
                DerefOf (TMP3 [Local5]) [One] = Local2
                DerefOf (TMP3 [Local5]) [0x02] = \_SB.CTC2 /* External reference */
                DerefOf (TMP3 [Local5]) [0x03] = Local1
                DerefOf (TMP3 [Local5]) [0x04] = Zero
                Return (TMP3) /* \_SB_.PC00.TCPU.TDPL.TMP3 */
            }

            If ((Local0 == 0x02))
            {
                If ((AAAA > BBBB))
                {
                    Local3 = Zero
                    Local4 = One
                    LEV0 = Zero
                    LEV1 = One
                    LEV2 = Zero
                }
                Else
                {
                    Local4 = Zero
                    Local3 = One
                    LEV0 = One
                    LEV1 = Zero
                    LEV2 = Zero
                }

                Local1 = (\_SB.TAR0 + One)
                Local2 = (Local1 * 0x64)
                DerefOf (TMP2 [Local3]) [Zero] = AAAA /* \_SB_.PC00.TCPU.TDPL.AAAA */
                DerefOf (TMP2 [Local3]) [One] = Local2
                DerefOf (TMP2 [Local3]) [0x02] = \_SB.CTC0 /* External reference */
                DerefOf (TMP2 [Local3]) [0x03] = Local1
                DerefOf (TMP2 [Local3]) [0x04] = Zero
                Local1 = (\_SB.TAR1 + One)
                Local2 = (Local1 * 0x64)
                DerefOf (TMP2 [Local4]) [Zero] = BBBB /* \_SB_.PC00.TCPU.TDPL.BBBB */
                DerefOf (TMP2 [Local4]) [One] = Local2
                DerefOf (TMP2 [Local4]) [0x02] = \_SB.CTC1 /* External reference */
                DerefOf (TMP2 [Local4]) [0x03] = Local1
                DerefOf (TMP2 [Local4]) [0x04] = Zero
                Return (TMP2) /* \_SB_.PC00.TCPU.TDPL.TMP2 */
            }

            If ((Local0 == One))
            {
                Switch (ToInteger (\_SB.CBMI))
                {
                    Case (Zero)
                    {
                        Local1 = (\_SB.TAR0 + One)
                        Local2 = (Local1 * 0x64)
                        DerefOf (TMP1 [Zero]) [Zero] = AAAA /* \_SB_.PC00.TCPU.TDPL.AAAA */
                        DerefOf (TMP1 [Zero]) [One] = Local2
                        DerefOf (TMP1 [Zero]) [0x02] = \_SB.CTC0 /* External reference */
                        DerefOf (TMP1 [Zero]) [0x03] = Local1
                        DerefOf (TMP1 [Zero]) [0x04] = Zero
                        LEV0 = Zero
                        LEV1 = Zero
                        LEV2 = Zero
                    }
                    Case (One)
                    {
                        Local1 = (\_SB.TAR1 + One)
                        Local2 = (Local1 * 0x64)
                        DerefOf (TMP1 [Zero]) [Zero] = BBBB /* \_SB_.PC00.TCPU.TDPL.BBBB */
                        DerefOf (TMP1 [Zero]) [One] = Local2
                        DerefOf (TMP1 [Zero]) [0x02] = \_SB.CTC1 /* External reference */
                        DerefOf (TMP1 [Zero]) [0x03] = Local1
                        DerefOf (TMP1 [Zero]) [0x04] = Zero
                        LEV0 = One
                        LEV1 = One
                        LEV2 = One
                    }
                    Case (0x02)
                    {
                        Local1 = (\_SB.TAR2 + One)
                        Local2 = (Local1 * 0x64)
                        DerefOf (TMP1 [Zero]) [Zero] = CCCC /* \_SB_.PC00.TCPU.TDPL.CCCC */
                        DerefOf (TMP1 [Zero]) [One] = Local2
                        DerefOf (TMP1 [Zero]) [0x02] = \_SB.CTC2 /* External reference */
                        DerefOf (TMP1 [Zero]) [0x03] = Local1
                        DerefOf (TMP1 [Zero]) [0x04] = Zero
                        LEV0 = 0x02
                        LEV1 = 0x02
                        LEV2 = 0x02
                    }

                }

                Return (TMP1) /* \_SB_.PC00.TCPU.TDPL.TMP1 */
            }

            Return (Zero)
        }

        Name (MAXT, Zero)
        Method (TDPC, 0, NotSerialized)
        {
            Return (MAXT) /* \_SB_.PC00.TCPU.MAXT */
        }

        Name (LEV0, Zero)
        Name (LEV1, Zero)
        Name (LEV2, Zero)
        Method (STDP, 1, Serialized)
        {
            If ((Arg0 >= \_SB.CLVL))
            {
                Return (Zero)
            }

            Switch (ToInteger (Arg0))
            {
                Case (Zero)
                {
                    Local0 = LEV0 /* \_SB_.PC00.TCPU.LEV0 */
                }
                Case (One)
                {
                    Local0 = LEV1 /* \_SB_.PC00.TCPU.LEV1 */
                }
                Case (0x02)
                {
                    Local0 = LEV2 /* \_SB_.PC00.TCPU.LEV2 */
                }

            }

            Switch (ToInteger (Local0))
            {
                Case (Zero)
                {
                    CPL0 ()
                }
                Case (One)
                {
                    CPL1 ()
                }
                Case (0x02)
                {
                    CPL2 ()
                }

            }

            Notify (\_SB.PC00.TCPU, 0x83) // Device-Specific Change
        }
    }

    Scope (\_SB)
    {
        Device (TPCH)
        {
            Name (_HID, "INTC1045")  // _HID: Hardware ID
            Name (_UID, "TPCH")  // _UID: Unique ID
            Name (_STR, Unicode ("Intel PCH FIVR Participant"))  // _STR: Description String
            Name (PTYP, 0x05)
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If ((\PCHE == One))
                {
                    Return (0x0F)
                }
                Else
                {
                    Return (Zero)
                }
            }

            Method (RFC0, 1, Serialized)
            {
                IPCS (0xA3, One, 0x08, Zero, Arg0, Zero, Zero)
                Return (Package (0x01)
                {
                    Zero
                })
            }

            Method (RFC1, 1, Serialized)
            {
                IPCS (0xA3, One, 0x08, One, Arg0, Zero, Zero)
                Return (Package (0x01)
                {
                    Zero
                })
            }

            Method (SEMI, 1, Serialized)
            {
                IPCS (0xA3, One, 0x08, 0x02, Arg0, Zero, Zero)
                Return (Package (0x01)
                {
                    Zero
                })
            }

            Method (PKGC, 1, Serialized)
            {
                Name (PPKG, Package (0x02)
                {
                    Zero, 
                    Zero
                })
                PPKG [Zero] = DerefOf (Arg0 [Zero])
                PPKG [One] = DerefOf (Arg0 [One])
                Return (PPKG) /* \_SB_.TPCH.PKGC.PPKG */
            }

            Method (GFC0, 0, Serialized)
            {
                Local0 = IPCS (0xA3, Zero, 0x08, Zero, Zero, Zero, Zero)
                Local1 = \_SB.TPCH.PKGC (Local0)
                Return (Local1)
            }

            Method (GFC1, 0, Serialized)
            {
                Local0 = IPCS (0xA3, Zero, 0x08, One, Zero, Zero, Zero)
                Local1 = \_SB.TPCH.PKGC (Local0)
                Return (Local1)
            }

            Method (GEMI, 0, Serialized)
            {
                Local0 = IPCS (0xA3, Zero, 0x08, 0x02, Zero, Zero, Zero)
                Local1 = \_SB.TPCH.PKGC (Local0)
                Return (Local1)
            }

            Method (GFFS, 0, Serialized)
            {
                Local0 = IPCS (0xA3, Zero, 0x08, 0x03, Zero, Zero, Zero)
                Local1 = \_SB.TPCH.PKGC (Local0)
                Return (Local1)
            }

            Method (GFCS, 0, Serialized)
            {
                Local0 = IPCS (0xA3, Zero, 0x08, 0x04, Zero, Zero, Zero)
                Local1 = \_SB.TPCH.PKGC (Local0)
                Return (Local1)
            }
        }
    }

    Scope (\_SB.IETM)
    {
        Name (DP2P, Package (0x01)
        {
            ToUUID ("9e04115a-ae87-4d1c-9500-0f3e340bfe75") /* Unknown UUID */
        })
        Name (DPSP, Package (0x01)
        {
            ToUUID ("42a441d6-ae6a-462b-a84b-4a8ce79027d3") /* Unknown UUID */
        })
        Name (DASP, Package (0x01)
        {
            ToUUID ("3a95c389-e4b8-4629-a526-c52c88626bae") /* Unknown UUID */
        })
        Name (DA2P, Package (0x01)
        {
            ToUUID ("0e56fab6-bdfc-4e8c-8246-40ecfd4d74ea") /* Unknown UUID */
        })
        Name (DCSP, Package (0x01)
        {
            ToUUID ("97c68ae7-15fa-499c-b8c9-5da81d606e0a") /* Unknown UUID */
        })
        Name (RFIP, Package (0x01)
        {
            ToUUID ("c4ce1849-243a-49f3-b8d5-f97002f38e6a") /* Unknown UUID */
        })
        Name (POBP, Package (0x01)
        {
            ToUUID ("f5a35014-c209-46a4-993a-eb56de7530a1") /* Unknown UUID */
        })
        Name (DAPP, Package (0x01)
        {
            ToUUID ("63be270f-1c11-48fd-a6f7-3af253ff3e2d") /* Unknown UUID */
        })
        Name (DVSP, Package (0x01)
        {
            ToUUID ("6ed722a7-9240-48a5-b479-31eef723d7cf") /* Unknown UUID */
        })
        Name (DPID, Package (0x01)
        {
            ToUUID ("42496e14-bc1b-46e8-a798-ca915464426f") /* Unknown UUID */
        })
    }

    Scope (\_SB.IETM)
    {
        Method (TEVT, 2, Serialized)
        {
            Switch (Arg0)
            {
                Case ("IETM")
                {
                    Notify (\_SB.IETM, Arg1)
                }
                Case ("TCPU")
                {
                    Notify (\_SB.PC00.TCPU, Arg1)
                }
                Case ("TPCH")
                {
                    Notify (\_SB.TPCH, Arg1)
                }

            }

            If (\ECON)
            {
                Switch (Arg0)
                {
                    Case ("CHRG")
                    {
                        Notify (\_SB.PC00.LPCB.H_EC.CHRG, Arg1)
                    }
                    Case ("SEN2")
                    {
                        Notify (\_SB.PC00.LPCB.H_EC.SEN2, Arg1)
                    }
                    Case ("SEN3")
                    {
                        Notify (\_SB.PC00.LPCB.H_EC.SEN3, Arg1)
                    }
                    Case ("SEN4")
                    {
                        Notify (\_SB.PC00.LPCB.H_EC.SEN4, Arg1)
                    }
                    Case ("SEN5")
                    {
                        Notify (\_SB.PC00.LPCB.H_EC.SEN5, Arg1)
                    }
                    Case ("TFN1")
                    {
                        Notify (\_SB.PC00.LPCB.H_EC.TFN1, Arg1)
                    }
                    Case ("TPWR")
                    {
                        Notify (\_SB.TPWR, Arg1)
                    }

                }
            }
        }
    }

    Scope (\_SB.IETM)
    {
        Method (GDDV, 0, Serialized)
        {
            Return (Package (0x01)
            {
                Buffer (0x0984)
                {
                    /* 0000 */  0xE5, 0x1F, 0x94, 0x00, 0x00, 0x00, 0x00, 0x02,  // ........
                    /* 0008 */  0x00, 0x00, 0x00, 0x40, 0x67, 0x64, 0x64, 0x76,  // ...@gddv
                    /* 0010 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                    /* 0018 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                    /* 0020 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                    /* 0028 */  0x00, 0x00, 0x00, 0x00, 0x4F, 0x45, 0x4D, 0x20,  // ....OEM 
                    /* 0030 */  0x45, 0x78, 0x70, 0x6F, 0x72, 0x74, 0x65, 0x64,  // Exported
                    /* 0038 */  0x20, 0x44, 0x61, 0x74, 0x61, 0x56, 0x61, 0x75,  //  DataVau
                    /* 0040 */  0x6C, 0x74, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // lt......
                    /* 0048 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                    /* 0050 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                    /* 0058 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                    /* 0060 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                    /* 0068 */  0x00, 0x00, 0x00, 0x00, 0xB3, 0xCA, 0x0C, 0x0D,  // ........
                    /* 0070 */  0x25, 0x34, 0x9D, 0x2A, 0xC9, 0x8A, 0xC1, 0xAE,  // %4.*....
                    /* 0078 */  0xD8, 0x13, 0x8D, 0x18, 0xB3, 0x58, 0x53, 0x8A,  // .....XS.
                    /* 0080 */  0x17, 0x13, 0x77, 0x2F, 0x21, 0x3F, 0x94, 0xAA,  // ..w/!?..
                    /* 0088 */  0xF7, 0x4E, 0x86, 0xA2, 0xF0, 0x08, 0x00, 0x00,  // .N......
                    /* 0090 */  0x52, 0x45, 0x50, 0x4F, 0x5D, 0x00, 0x00, 0x00,  // REPO]...
                    /* 0098 */  0x01, 0xE3, 0xF1, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                    /* 00A0 */  0x00, 0x00, 0x72, 0x87, 0xCD, 0xFF, 0x6D, 0x24,  // ..r...m$
                    /* 00A8 */  0x47, 0xDB, 0x3D, 0x24, 0x92, 0xB4, 0x16, 0x6F,  // G.=$...o
                    /* 00B0 */  0x45, 0xD8, 0xC3, 0xF5, 0x66, 0x14, 0x9F, 0x22,  // E...f.."
                    /* 00B8 */  0xD7, 0xF7, 0xDE, 0x67, 0x90, 0x9A, 0xA2, 0x0D,  // ...g....
                    /* 00C0 */  0x39, 0x25, 0xAD, 0xC3, 0x1A, 0xAD, 0x52, 0x0B,  // 9%....R.
                    /* 00C8 */  0x75, 0x38, 0xE1, 0xA4, 0x14, 0x44, 0x52, 0x69,  // u8...DRi
                    /* 00D0 */  0xAE, 0x89, 0xAD, 0xD2, 0xB1, 0xD4, 0x08, 0xFA,  // ........
                    /* 00D8 */  0x5E, 0xA9, 0x95, 0x99, 0xA9, 0x42, 0x8A, 0xE5,  // ^....B..
                    /* 00E0 */  0xB0, 0x79, 0x44, 0xFD, 0x62, 0xD2, 0xFD, 0x9B,  // .yD.b...
                    /* 00E8 */  0x38, 0x48, 0x78, 0x54, 0x6F, 0x9C, 0xC9, 0x91,  // 8HxTo...
                    /* 00F0 */  0x67, 0xC6, 0x5A, 0xF9, 0xC4, 0xF1, 0x19, 0xE4,  // g.Z.....
                    /* 00F8 */  0x4A, 0x04, 0x7C, 0x97, 0x1F, 0xBF, 0x60, 0x94,  // J.|...`.
                    /* 0100 */  0xA3, 0x19, 0x7B, 0xC0, 0x8B, 0x97, 0x4F, 0x61,  // ..{...Oa
                    /* 0108 */  0xE3, 0xE1, 0xE5, 0x6C, 0x18, 0x69, 0x0B, 0xD6,  // ...l.i..
                    /* 0110 */  0xAB, 0xB9, 0xD1, 0xAA, 0xAA, 0xEF, 0xDD, 0xAD,  // ........
                    /* 0118 */  0x63, 0x7B, 0xC8, 0xC5, 0x9A, 0x3E, 0x26, 0x28,  // c{...>&(
                    /* 0120 */  0xB0, 0x4A, 0x6D, 0xEE, 0x82, 0xDF, 0xC1, 0xAC,  // .Jm.....
                    /* 0128 */  0x81, 0xC8, 0xA2, 0x6A, 0xF0, 0x64, 0x74, 0x24,  // ...j.dt$
                    /* 0130 */  0xFD, 0xBF, 0x95, 0xC7, 0x19, 0x94, 0x5A, 0x8A,  // ......Z.
                    /* 0138 */  0x55, 0xAE, 0x82, 0x9A, 0xAF, 0xE1, 0xE9, 0x85,  // U.......
                    /* 0140 */  0x36, 0x20, 0xE0, 0x85, 0x94, 0xED, 0x8A, 0x61,  // 6 .....a
                    /* 0148 */  0x97, 0x6E, 0xF7, 0x9B, 0x9A, 0x2F, 0x8C, 0x8E,  // .n.../..
                    /* 0150 */  0x74, 0x13, 0xF1, 0x45, 0xE1, 0xD7, 0xFE, 0xB7,  // t..E....
                    /* 0158 */  0xA7, 0x7E, 0xFB, 0x03, 0xA8, 0xAF, 0x6C, 0xCA,  // .~....l.
                    /* 0160 */  0xCF, 0xEC, 0xEA, 0xCD, 0xD3, 0x76, 0x97, 0x96,  // .....v..
                    /* 0168 */  0xE5, 0xB9, 0x0E, 0x55, 0x38, 0x88, 0x8B, 0xA8,  // ...U8...
                    /* 0170 */  0xEA, 0x82, 0x4C, 0x1A, 0x81, 0xE9, 0xE5, 0x04,  // ..L.....
                    /* 0178 */  0x1A, 0x0E, 0xAA, 0x49, 0x73, 0x42, 0xCD, 0x75,  // ...IsB.u
                    /* 0180 */  0xD7, 0xD7, 0x4A, 0xCA, 0x1C, 0x7F, 0x1E, 0xEF,  // ..J.....
                    /* 0188 */  0xB4, 0xED, 0x43, 0xE8, 0xCA, 0xD7, 0x6B, 0x1C,  // ..C...k.
                    /* 0190 */  0x16, 0xF6, 0x5B, 0xA9, 0x44, 0xAD, 0x33, 0xD9,  // ..[.D.3.
                    /* 0198 */  0x56, 0xEB, 0xCD, 0x80, 0x76, 0x92, 0xFA, 0x40,  // V...v..@
                    /* 01A0 */  0xD2, 0x93, 0xA4, 0x4C, 0x1D, 0x64, 0x34, 0x0D,  // ...L.d4.
                    /* 01A8 */  0xA7, 0x2A, 0x63, 0xE3, 0x6B, 0xAB, 0x45, 0x30,  // .*c.k.E0
                    /* 01B0 */  0x1F, 0x97, 0xD7, 0x36, 0x8C, 0xA6, 0x46, 0xB0,  // ...6..F.
                    /* 01B8 */  0x94, 0x28, 0x4B, 0xE2, 0xED, 0x03, 0xC6, 0x54,  // .(K....T
                    /* 01C0 */  0x33, 0x7A, 0xBA, 0x83, 0x8D, 0xE9, 0x35, 0xE0,  // 3z....5.
                    /* 01C8 */  0x5C, 0xE2, 0x36, 0xB7, 0x02, 0xED, 0xBA, 0x69,  // \.6....i
                    /* 01D0 */  0xD7, 0xD8, 0x5F, 0xF8, 0xD1, 0x8F, 0x63, 0x2E,  // .._...c.
                    /* 01D8 */  0x10, 0x08, 0x4B, 0xFC, 0x4A, 0x91, 0x1D, 0x32,  // ..K.J..2
                    /* 01E0 */  0xF9, 0x94, 0xAD, 0x7F, 0x88, 0xC5, 0x09, 0x87,  // ........
                    /* 01E8 */  0x64, 0x6B, 0x58, 0x04, 0x61, 0x3B, 0x13, 0xAF,  // dkX.a;..
                    /* 01F0 */  0xBF, 0x03, 0x90, 0x61, 0x1C, 0x61, 0xD7, 0x2A,  // ...a.a.*
                    /* 01F8 */  0x8A, 0x2E, 0x61, 0xB3, 0x47, 0x64, 0x18, 0x28,  // ..a.Gd.(
                    /* 0200 */  0x8B, 0x4B, 0x87, 0xA9, 0x85, 0xD4, 0x24, 0x8E,  // .K....$.
                    /* 0208 */  0x15, 0xCD, 0xDE, 0x6B, 0x72, 0x41, 0xD5, 0x0B,  // ...krA..
                    /* 0210 */  0x2B, 0xCC, 0xD0, 0x82, 0x7E, 0x68, 0xAA, 0xE8,  // +...~h..
                    /* 0218 */  0xC4, 0x70, 0x28, 0xEF, 0x0B, 0x25, 0xA1, 0x49,  // .p(..%.I
                    /* 0220 */  0x8C, 0xB7, 0x93, 0xC8, 0x2B, 0xCC, 0xB1, 0x45,  // ....+..E
                    /* 0228 */  0xF8, 0x2C, 0x0D, 0x4C, 0x70, 0x47, 0x6C, 0xE8,  // .,.LpGl.
                    /* 0230 */  0x28, 0xFA, 0x0A, 0x28, 0x7F, 0xE1, 0xA8, 0x3C,  // (..(...<
                    /* 0238 */  0xF5, 0x73, 0x14, 0xEA, 0xC3, 0xE7, 0x0B, 0x3F,  // .s.....?
                    /* 0240 */  0x9C, 0x3A, 0x71, 0xEC, 0x76, 0x43, 0x79, 0x58,  // .:q.vCyX
                    /* 0248 */  0x33, 0x86, 0x19, 0xB1, 0x5D, 0x62, 0xC9, 0xCB,  // 3...]b..
                    /* 0250 */  0x3D, 0x29, 0x8E, 0xA4, 0xBF, 0xA6, 0x81, 0x64,  // =).....d
                    /* 0258 */  0x65, 0x55, 0x28, 0xE3, 0x9B, 0x61, 0x71, 0x7B,  // eU(..aq{
                    /* 0260 */  0xE4, 0x23, 0x83, 0xC5, 0xE0, 0x5F, 0x1E, 0x2F,  // .#..._./
                    /* 0268 */  0xC6, 0x2B, 0x06, 0x39, 0x22, 0xFA, 0x03, 0x36,  // .+.9"..6
                    /* 0270 */  0xC6, 0xDF, 0x61, 0x2B, 0x5C, 0xD1, 0xE0, 0x2D,  // ..a+\..-
                    /* 0278 */  0xFB, 0xF1, 0xF2, 0x67, 0x89, 0x20, 0x73, 0x82,  // ...g. s.
                    /* 0280 */  0x29, 0x7D, 0xC9, 0x02, 0x28, 0xB7, 0x19, 0x35,  // )}..(..5
                    /* 0288 */  0x8D, 0x90, 0x55, 0x1B, 0x1B, 0xE1, 0x70, 0xCC,  // ..U...p.
                    /* 0290 */  0x4C, 0xF1, 0x90, 0x0E, 0xAD, 0x52, 0xA0, 0x44,  // L....R.D
                    /* 0298 */  0x6B, 0xFF, 0xC2, 0x82, 0x37, 0x22, 0xA4, 0xAF,  // k...7"..
                    /* 02A0 */  0x94, 0xE7, 0xE6, 0x81, 0x13, 0x43, 0xAB, 0x29,  // .....C.)
                    /* 02A8 */  0x2D, 0xDF, 0x44, 0xBB, 0x22, 0x55, 0xFB, 0xA9,  // -.D."U..
                    /* 02B0 */  0x5C, 0xE4, 0x07, 0x9F, 0xA2, 0xC9, 0xED, 0x75,  // \......u
                    /* 02B8 */  0xDA, 0x0F, 0xCD, 0xB4, 0xBD, 0x9E, 0x74, 0x15,  // ......t.
                    /* 02C0 */  0x1F, 0xD7, 0x91, 0x30, 0x2C, 0x6E, 0xBB, 0x15,  // ...0,n..
                    /* 02C8 */  0x84, 0x44, 0xD7, 0x43, 0x21, 0x4C, 0xEA, 0x58,  // .D.C!L.X
                    /* 02D0 */  0xE6, 0xE9, 0xCD, 0xC6, 0x2F, 0x48, 0xCA, 0x02,  // ..../H..
                    /* 02D8 */  0x0E, 0xD8, 0x6F, 0xE9, 0xB7, 0x1D, 0xC6, 0x24,  // ..o....$
                    /* 02E0 */  0xDF, 0x34, 0xB7, 0x3C, 0x7E, 0x79, 0xB8, 0x9B,  // .4.<~y..
                    /* 02E8 */  0xE3, 0x5D, 0x9E, 0xBB, 0x7E, 0x50, 0xAA, 0xF9,  // .]..~P..
                    /* 02F0 */  0xFA, 0x12, 0x86, 0xBD, 0x3B, 0xBE, 0x36, 0xB3,  // ....;.6.
                    /* 02F8 */  0xEA, 0xE6, 0x98, 0xB9, 0xC1, 0x11, 0xAB, 0xDA,  // ........
                    /* 0300 */  0x3A, 0xE5, 0x65, 0x14, 0x34, 0xEE, 0xA2, 0xFE,  // :.e.4...
                    /* 0308 */  0xC3, 0x63, 0x78, 0x0E, 0x0B, 0x27, 0xC1, 0xF3,  // .cx..'..
                    /* 0310 */  0x6E, 0x52, 0xA4, 0x98, 0x03, 0x72, 0x4E, 0x95,  // nR...rN.
                    /* 0318 */  0x2F, 0xC8, 0x90, 0xC3, 0xE3, 0x4F, 0x74, 0xEE,  // /....Ot.
                    /* 0320 */  0xD7, 0x83, 0x8E, 0xAD, 0xFA, 0x77, 0xFB, 0xE7,  // .....w..
                    /* 0328 */  0xDE, 0x6B, 0x7B, 0xE2, 0x5B, 0xD7, 0x8E, 0xAE,  // .k{.[...
                    /* 0330 */  0xCD, 0x96, 0x6A, 0x9E, 0xAA, 0x5F, 0x97, 0xFA,  // ..j.._..
                    /* 0338 */  0x95, 0x61, 0x97, 0xBA, 0x31, 0x8B, 0x7C, 0x9E,  // .a..1.|.
                    /* 0340 */  0x28, 0xC9, 0x25, 0xD8, 0x22, 0x00, 0x45, 0x69,  // (.%.".Ei
                    /* 0348 */  0x0B, 0xF3, 0x7D, 0x81, 0x81, 0xEE, 0x18, 0x03,  // ..}.....
                    /* 0350 */  0xE4, 0x83, 0xA1, 0xB6, 0x0F, 0xD6, 0x8D, 0xFD,  // ........
                    /* 0358 */  0x81, 0x71, 0x6B, 0x59, 0xA6, 0xD9, 0x05, 0x88,  // .qkY....
                    /* 0360 */  0x9E, 0xFB, 0xB3, 0xAC, 0x90, 0x3B, 0x53, 0x74,  // .....;St
                    /* 0368 */  0xDF, 0xF6, 0xC6, 0xA3, 0x90, 0x50, 0x54, 0x16,  // .....PT.
                    /* 0370 */  0x6A, 0xED, 0x29, 0xA2, 0x86, 0x82, 0x26, 0x33,  // j.)...&3
                    /* 0378 */  0x69, 0xEC, 0x3C, 0xBD, 0x8E, 0x42, 0xFC, 0x48,  // i.<..B.H
                    /* 0380 */  0x00, 0x16, 0x83, 0x3D, 0x9B, 0x03, 0xE3, 0xFD,  // ...=....
                    /* 0388 */  0xDB, 0xDD, 0x25, 0xCF, 0xCE, 0xFB, 0xAC, 0x35,  // ..%....5
                    /* 0390 */  0x89, 0x53, 0x29, 0x98, 0x81, 0xF4, 0xD4, 0xD3,  // .S).....
                    /* 0398 */  0x85, 0x05, 0x5C, 0x37, 0x09, 0x40, 0xA7, 0xC2,  // ..\7.@..
                    /* 03A0 */  0x9E, 0xB2, 0x34, 0x67, 0xB5, 0x3F, 0x2A, 0x26,  // ..4g.?*&
                    /* 03A8 */  0x6B, 0x32, 0x1A, 0x5C, 0xE8, 0x52, 0x2B, 0x45,  // k2.\.R+E
                    /* 03B0 */  0x12, 0x16, 0x00, 0x6E, 0xC9, 0x58, 0xEF, 0x76,  // ...n.X.v
                    /* 03B8 */  0xB0, 0x74, 0xD2, 0x7E, 0x27, 0x15, 0x6F, 0x92,  // .t.~'.o.
                    /* 03C0 */  0xB8, 0x3B, 0x09, 0x2F, 0xEE, 0x14, 0xD6, 0xD9,  // .;./....
                    /* 03C8 */  0x31, 0x0C, 0xD8, 0xCC, 0xC4, 0xF4, 0xE1, 0x7C,  // 1......|
                    /* 03D0 */  0xE3, 0x35, 0xE3, 0xCB, 0xB2, 0x5A, 0x94, 0xC5,  // .5...Z..
                    /* 03D8 */  0xA0, 0x2A, 0x7D, 0x1F, 0x84, 0x87, 0x2A, 0xB0,  // .*}...*.
                    /* 03E0 */  0x2E, 0x01, 0x72, 0x67, 0x1E, 0x61, 0x50, 0x1F,  // ..rg.aP.
                    /* 03E8 */  0x76, 0xF2, 0x0D, 0xB9, 0xE7, 0xFC, 0xB4, 0x4D,  // v......M
                    /* 03F0 */  0xEE, 0x9B, 0x93, 0x5F, 0xBB, 0x89, 0x09, 0x3F,  // ..._...?
                    /* 03F8 */  0x9E, 0x29, 0x1D, 0xE6, 0xF7, 0xE7, 0xCC, 0x71,  // .).....q
                    /* 0400 */  0xD3, 0x58, 0xA4, 0x44, 0x82, 0x9A, 0xE1, 0xDA,  // .X.D....
                    /* 0408 */  0x1C, 0x3E, 0x3B, 0x99, 0x4B, 0x91, 0xB6, 0xDA,  // .>;.K...
                    /* 0410 */  0x93, 0xB7, 0xF7, 0xE2, 0xF0, 0x42, 0x47, 0x0C,  // .....BG.
                    /* 0418 */  0x84, 0x23, 0x60, 0xF0, 0x90, 0x6E, 0xD1, 0x9D,  // .#`..n..
                    /* 0420 */  0xB8, 0x29, 0x5C, 0x02, 0xAC, 0xA2, 0xC1, 0x3E,  // .)\....>
                    /* 0428 */  0x46, 0x1D, 0x52, 0xDE, 0x34, 0x88, 0x60, 0x65,  // F.R.4.`e
                    /* 0430 */  0x5E, 0x35, 0xDB, 0xB3, 0xE8, 0x17, 0xAA, 0x87,  // ^5......
                    /* 0438 */  0x55, 0xC9, 0x4B, 0xB1, 0x34, 0xF6, 0x8D, 0x5A,  // U.K.4..Z
                    /* 0440 */  0x48, 0xB7, 0x46, 0xEE, 0x06, 0xD4, 0x19, 0x8E,  // H.F.....
                    /* 0448 */  0x20, 0x92, 0x17, 0xB3, 0xCF, 0x89, 0xE6, 0x55,  //  ......U
                    /* 0450 */  0xF0, 0x0D, 0x25, 0x2C, 0xC3, 0x74, 0x05, 0x89,  // ..%,.t..
                    /* 0458 */  0x01, 0x51, 0xBE, 0xB1, 0x9C, 0xFD, 0x84, 0xB5,  // .Q......
                    /* 0460 */  0xB5, 0x6A, 0xBE, 0x3D, 0xB4, 0xA6, 0x44, 0x1B,  // .j.=..D.
                    /* 0468 */  0xB8, 0x5A, 0x2B, 0xF8, 0xE4, 0xA5, 0x33, 0x3B,  // .Z+...3;
                    /* 0470 */  0x4A, 0xC5, 0x5A, 0x57, 0x32, 0xD9, 0x10, 0xBC,  // J.ZW2...
                    /* 0478 */  0x0E, 0xC7, 0x9B, 0x7D, 0x3D, 0xBC, 0x09, 0x1B,  // ...}=...
                    /* 0480 */  0xB7, 0xCB, 0xF2, 0x64, 0x6C, 0xD0, 0xBB, 0x28,  // ...dl..(
                    /* 0488 */  0x2B, 0x03, 0x20, 0xB4, 0xB1, 0xEC, 0x75, 0x67,  // +. ...ug
                    /* 0490 */  0xD3, 0x7F, 0xB7, 0xDF, 0x32, 0x52, 0x23, 0x50,  // ....2R#P
                    /* 0498 */  0x09, 0x4F, 0x31, 0xF9, 0xD3, 0x24, 0x33, 0x6A,  // .O1..$3j
                    /* 04A0 */  0x9C, 0xF6, 0x1E, 0x60, 0xA2, 0xE4, 0x5A, 0xAF,  // ...`..Z.
                    /* 04A8 */  0x71, 0x07, 0x67, 0x4C, 0xBB, 0x62, 0x08, 0x9C,  // q.gL.b..
                    /* 04B0 */  0x4A, 0x3F, 0x54, 0x2E, 0x3E, 0x69, 0x91, 0x5F,  // J?T.>i._
                    /* 04B8 */  0x60, 0x32, 0x4C, 0x44, 0x6B, 0x4E, 0xC1, 0x9E,  // `2LDkN..
                    /* 04C0 */  0x24, 0xCE, 0xAD, 0x63, 0x61, 0x17, 0xD2, 0xB5,  // $..ca...
                    /* 04C8 */  0xBB, 0xE6, 0xBF, 0xDC, 0x94, 0xB6, 0x7F, 0xA6,  // ........
                    /* 04D0 */  0x70, 0x62, 0xC6, 0x9C, 0x89, 0x2A, 0xF1, 0x47,  // pb...*.G
                    /* 04D8 */  0x53, 0xEB, 0x6E, 0xFA, 0x3F, 0x98, 0x19, 0x34,  // S.n.?..4
                    /* 04E0 */  0xA7, 0x4E, 0x3D, 0x35, 0xEC, 0xDB, 0x89, 0xA8,  // .N=5....
                    /* 04E8 */  0x49, 0x3E, 0x3F, 0x0B, 0x95, 0x75, 0x38, 0x39,  // I>?..u89
                    /* 04F0 */  0x38, 0x30, 0xF3, 0xAD, 0x3C, 0xBE, 0x71, 0xD0,  // 80..<.q.
                    /* 04F8 */  0xF0, 0x06, 0x83, 0x09, 0x05, 0x41, 0x4D, 0xED,  // .....AM.
                    /* 0500 */  0xD6, 0x77, 0x3E, 0x77, 0x57, 0xFA, 0xD0, 0xFC,  // .w>wW...
                    /* 0508 */  0xC7, 0x15, 0x3A, 0x4C, 0x21, 0x2D, 0xBF, 0x3B,  // ..:L!-.;
                    /* 0510 */  0x54, 0xDC, 0xBE, 0xF9, 0xCD, 0x3B, 0xDE, 0x98,  // T....;..
                    /* 0518 */  0xDB, 0x15, 0xD0, 0xCE, 0xF6, 0x2F, 0x24, 0x99,  // ...../$.
                    /* 0520 */  0x19, 0xCC, 0x36, 0xE3, 0xE1, 0xF7, 0xA2, 0x24,  // ..6....$
                    /* 0528 */  0xFE, 0xA7, 0xAE, 0x91, 0x38, 0x59, 0x55, 0xDF,  // ....8YU.
                    /* 0530 */  0x9F, 0xF9, 0x1A, 0x87, 0x8C, 0x14, 0x4B, 0xF7,  // ......K.
                    /* 0538 */  0x81, 0xD2, 0x5B, 0x88, 0x62, 0x4A, 0x3D, 0xCA,  // ..[.bJ=.
                    /* 0540 */  0xC9, 0x0C, 0x2C, 0x15, 0x7F, 0x8D, 0x02, 0xC1,  // ..,.....
                    /* 0548 */  0x24, 0x1A, 0xC4, 0x7C, 0xF4, 0x30, 0xC5, 0xF7,  // $..|.0..
                    /* 0550 */  0xC0, 0x77, 0xEB, 0xA6, 0x6E, 0x1B, 0x16, 0xBF,  // .w..n...
                    /* 0558 */  0xAA, 0x48, 0xE8, 0xB0, 0xA7, 0xD6, 0xEA, 0x99,  // .H......
                    /* 0560 */  0x0C, 0x55, 0xB4, 0x0D, 0xAD, 0x99, 0x30, 0xAD,  // .U....0.
                    /* 0568 */  0xBE, 0xD9, 0xB5, 0x26, 0xDE, 0xBC, 0x2B, 0x07,  // ...&..+.
                    /* 0570 */  0x0C, 0xF5, 0x5B, 0x5E, 0x40, 0x5D, 0x46, 0x12,  // ..[^@]F.
                    /* 0578 */  0x39, 0x22, 0x43, 0xD8, 0xCE, 0x16, 0x80, 0xB6,  // 9"C.....
                    /* 0580 */  0x70, 0x91, 0xD8, 0xEC, 0xA0, 0xEF, 0x7F, 0xF2,  // p.......
                    /* 0588 */  0x83, 0x1C, 0xB4, 0xE1, 0xA8, 0x3B, 0x07, 0xF5,  // .....;..
                    /* 0590 */  0x17, 0xDD, 0x8C, 0x90, 0x4D, 0x19, 0x98, 0x7E,  // ....M..~
                    /* 0598 */  0xB8, 0xDF, 0xF4, 0x0C, 0xA5, 0x72, 0x09, 0xA6,  // .....r..
                    /* 05A0 */  0x36, 0xB3, 0x86, 0xA5, 0x30, 0x24, 0x50, 0x54,  // 6...0$PT
                    /* 05A8 */  0x81, 0xA9, 0xA9, 0x89, 0x40, 0x60, 0x95, 0x27,  // ....@`.'
                    /* 05B0 */  0xA0, 0x88, 0xD4, 0x62, 0x92, 0x1F, 0x5B, 0x32,  // ...b..[2
                    /* 05B8 */  0xC7, 0x9F, 0x4F, 0x84, 0x20, 0x87, 0x97, 0x76,  // ..O. ..v
                    /* 05C0 */  0x97, 0x79, 0xBA, 0x53, 0xD0, 0xA5, 0x52, 0x70,  // .y.S..Rp
                    /* 05C8 */  0xD7, 0x56, 0x26, 0x51, 0x8C, 0x92, 0xA4, 0x36,  // .V&Q...6
                    /* 05D0 */  0x50, 0xC6, 0xB7, 0xEE, 0x10, 0xEF, 0xCB, 0xDF,  // P.......
                    /* 05D8 */  0xC4, 0x32, 0xE8, 0x22, 0xCB, 0x90, 0xEE, 0xA9,  // .2."....
                    /* 05E0 */  0xC8, 0xF5, 0xD9, 0x5C, 0xA8, 0xE2, 0xA5, 0x62,  // ...\...b
                    /* 05E8 */  0x69, 0xE0, 0xA8, 0x0D, 0xFE, 0xC5, 0x8F, 0x18,  // i.......
                    /* 05F0 */  0x62, 0x15, 0xB7, 0x3F, 0x4A, 0xAF, 0x60, 0x6C,  // b..?J.`l
                    /* 05F8 */  0xB8, 0xCD, 0xBF, 0x3C, 0x96, 0xE5, 0xD4, 0xF5,  // ...<....
                    /* 0600 */  0xA1, 0xBF, 0xF9, 0xE0, 0x14, 0x0E, 0xEE, 0x5E,  // .......^
                    /* 0608 */  0x0D, 0xC5, 0x89, 0x7D, 0x98, 0x8F, 0x6B, 0xEE,  // ...}..k.
                    /* 0610 */  0x80, 0xF0, 0x89, 0x72, 0x7D, 0x2A, 0x65, 0x2C,  // ...r}*e,
                    /* 0618 */  0x59, 0x80, 0xF0, 0xF8, 0x50, 0x39, 0x8F, 0x35,  // Y...P9.5
                    /* 0620 */  0xF3, 0xF2, 0xC9, 0x45, 0x0F, 0x09, 0xA1, 0x35,  // ...E...5
                    /* 0628 */  0xC2, 0xF3, 0x59, 0x4C, 0x66, 0xB8, 0x89, 0x8D,  // ..YLf...
                    /* 0630 */  0xCF, 0xA9, 0xA6, 0xBB, 0xF0, 0x07, 0xA2, 0x51,  // .......Q
                    /* 0638 */  0xFD, 0xE7, 0x94, 0x87, 0xDC, 0x35, 0x53, 0x48,  // .....5SH
                    /* 0640 */  0xC5, 0x27, 0xB3, 0xC0, 0xDF, 0x3F, 0x2A, 0x81,  // .'...?*.
                    /* 0648 */  0xCA, 0x8E, 0xDB, 0x06, 0xAF, 0xE2, 0x16, 0x98,  // ........
                    /* 0650 */  0x18, 0x26, 0xFA, 0xDA, 0xB1, 0x23, 0x28, 0xE0,  // .&...#(.
                    /* 0658 */  0x33, 0xD4, 0x94, 0x61, 0x16, 0xDE, 0xDB, 0x1A,  // 3..a....
                    /* 0660 */  0xA7, 0xBF, 0xDB, 0xF7, 0x62, 0x85, 0xF3, 0x5A,  // ....b..Z
                    /* 0668 */  0x76, 0x5B, 0x69, 0x6C, 0x5F, 0x16, 0x61, 0x64,  // v[il_.ad
                    /* 0670 */  0x1E, 0x77, 0x61, 0x5A, 0xF1, 0x94, 0x73, 0x55,  // .waZ..sU
                    /* 0678 */  0xC8, 0xD5, 0x08, 0x7C, 0x39, 0x65, 0x6A, 0x1F,  // ...|9ej.
                    /* 0680 */  0xA4, 0xFE, 0x8A, 0x48, 0x36, 0x17, 0x1D, 0x67,  // ...H6..g
                    /* 0688 */  0x69, 0xF0, 0x11, 0x47, 0xF6, 0xC8, 0x79, 0x08,  // i..G..y.
                    /* 0690 */  0xD4, 0x26, 0xBE, 0xD1, 0xC0, 0xB1, 0x42, 0x75,  // .&....Bu
                    /* 0698 */  0x0A, 0x3E, 0xE2, 0xD7, 0x0D, 0x37, 0x92, 0xB7,  // .>...7..
                    /* 06A0 */  0x5F, 0x73, 0x55, 0x01, 0x5C, 0x3E, 0x92, 0x75,  // _sU.\>.u
                    /* 06A8 */  0x6E, 0x88, 0xBC, 0xDC, 0xAE, 0x33, 0x62, 0x14,  // n....3b.
                    /* 06B0 */  0xE7, 0x0E, 0xFB, 0xA8, 0xF5, 0x84, 0x47, 0x0A,  // ......G.
                    /* 06B8 */  0xB4, 0x96, 0x6F, 0xDA, 0x0C, 0xAB, 0xE5, 0x9A,  // ..o.....
                    /* 06C0 */  0x8C, 0xA3, 0x06, 0x69, 0x76, 0x85, 0x0C, 0x34,  // ...iv..4
                    /* 06C8 */  0xF0, 0x98, 0xDF, 0xE8, 0x54, 0x9D, 0x16, 0xEC,  // ....T...
                    /* 06D0 */  0x8B, 0xA9, 0xAC, 0x31, 0xD7, 0xA0, 0xF4, 0x8A,  // ...1....
                    /* 06D8 */  0x56, 0x26, 0x6F, 0x85, 0x24, 0xFE, 0x11, 0x36,  // V&o.$..6
                    /* 06E0 */  0xA6, 0x34, 0x01, 0x9D, 0x08, 0xC5, 0xD3, 0x60,  // .4.....`
                    /* 06E8 */  0xA2, 0x5F, 0x47, 0xEE, 0x8B, 0x00, 0xA4, 0xC1,  // ._G.....
                    /* 06F0 */  0xF8, 0x26, 0xD1, 0x59, 0xE7, 0xD7, 0x1E, 0xAE,  // .&.Y....
                    /* 06F8 */  0x4F, 0xF5, 0xB6, 0xBC, 0x51, 0x09, 0xE5, 0x55,  // O...Q..U
                    /* 0700 */  0x70, 0xC7, 0x7D, 0x3A, 0x51, 0x13, 0x8B, 0x96,  // p.}:Q...
                    /* 0708 */  0x9F, 0xA5, 0xAA, 0x2B, 0x5B, 0x0E, 0x8A, 0x9B,  // ...+[...
                    /* 0710 */  0x7C, 0xCF, 0x78, 0x69, 0xC5, 0x52, 0x04, 0x52,  // |.xi.R.R
                    /* 0718 */  0x9E, 0x86, 0xEA, 0x33, 0x65, 0x90, 0x90, 0x47,  // ...3e..G
                    /* 0720 */  0x58, 0xBE, 0x8F, 0x7D, 0x0D, 0xC3, 0x1E, 0x53,  // X..}...S
                    /* 0728 */  0x4E, 0x0F, 0xE6, 0xBF, 0x3E, 0xB5, 0x5D, 0xFC,  // N...>.].
                    /* 0730 */  0x02, 0x48, 0x67, 0x03, 0x00, 0x0F, 0xCB, 0xD3,  // .Hg.....
                    /* 0738 */  0x39, 0xC7, 0xAE, 0x25, 0x61, 0x4E, 0xC7, 0x0D,  // 9..%aN..
                    /* 0740 */  0x41, 0x3D, 0x47, 0x2B, 0x3B, 0xBF, 0x6A, 0x38,  // A=G+;.j8
                    /* 0748 */  0x27, 0xCA, 0x5B, 0xC5, 0x14, 0xA3, 0x64, 0x30,  // '.[...d0
                    /* 0750 */  0x19, 0xEA, 0x36, 0x78, 0x01, 0x79, 0xB2, 0x58,  // ..6x.y.X
                    /* 0758 */  0x36, 0xF8, 0xB7, 0x42, 0x5B, 0x1F, 0x46, 0x5E,  // 6..B[.F^
                    /* 0760 */  0xCE, 0x04, 0x36, 0xAD, 0xCA, 0xBB, 0xE1, 0x43,  // ..6....C
                    /* 0768 */  0x4B, 0x03, 0x35, 0x7A, 0xD2, 0xC2, 0x99, 0x48,  // K.5z...H
                    /* 0770 */  0x92, 0x08, 0x4B, 0x12, 0x0D, 0xDB, 0xF2, 0xFE,  // ..K.....
                    /* 0778 */  0xAD, 0x75, 0x88, 0x32, 0x65, 0x9B, 0x15, 0x23,  // .u.2e..#
                    /* 0780 */  0xD7, 0x31, 0x1E, 0xCC, 0xBB, 0x1B, 0xBB, 0x21,  // .1.....!
                    /* 0788 */  0x1B, 0xFF, 0x61, 0x48, 0x70, 0xCF, 0x50, 0x41,  // ..aHp.PA
                    /* 0790 */  0x61, 0xE3, 0xBE, 0x55, 0xD9, 0x15, 0x46, 0x3C,  // a..U..F<
                    /* 0798 */  0xB7, 0x3B, 0x9B, 0xE1, 0x1D, 0xA0, 0x88, 0xAD,  // .;......
                    /* 07A0 */  0x61, 0xDF, 0x43, 0xFE, 0xC0, 0xBD, 0x05, 0x78,  // a.C....x
                    /* 07A8 */  0x72, 0xDE, 0x39, 0xE2, 0x20, 0x8C, 0x53, 0x50,  // r.9. .SP
                    /* 07B0 */  0x52, 0x1B, 0x4E, 0x08, 0xF1, 0x7A, 0x1D, 0x5D,  // R.N..z.]
                    /* 07B8 */  0xF1, 0x6F, 0x0F, 0x35, 0xBD, 0x20, 0x14, 0x1B,  // .o.5. ..
                    /* 07C0 */  0xE0, 0xE3, 0xC1, 0xC0, 0x55, 0x1C, 0xCC, 0x7C,  // ....U..|
                    /* 07C8 */  0xA6, 0x32, 0xDD, 0xC9, 0x56, 0x02, 0x40, 0x43,  // .2..V.@C
                    /* 07D0 */  0x8C, 0xD2, 0x0B, 0xB2, 0x65, 0xF3, 0xB4, 0x0A,  // ....e...
                    /* 07D8 */  0x18, 0xB7, 0x2A, 0x69, 0x71, 0x96, 0x7C, 0x1B,  // ..*iq.|.
                    /* 07E0 */  0x16, 0x23, 0xF0, 0xCF, 0x87, 0x91, 0x22, 0xB1,  // .#....".
                    /* 07E8 */  0x00, 0x15, 0x9C, 0x54, 0xFE, 0xBF, 0xAB, 0xCB,  // ...T....
                    /* 07F0 */  0x8D, 0x58, 0x66, 0x59, 0x53, 0x2A, 0x98, 0xB8,  // .XfYS*..
                    /* 07F8 */  0x7F, 0x20, 0x40, 0x1C, 0xED, 0x32, 0x39, 0x6D,  // . @..29m
                    /* 0800 */  0x24, 0x0B, 0xE6, 0x65, 0x95, 0x72, 0xDE, 0x4F,  // $..e.r.O
                    /* 0808 */  0x59, 0x06, 0xBF, 0x18, 0xC2, 0xED, 0x11, 0xE9,  // Y.......
                    /* 0810 */  0xA2, 0xCE, 0xB5, 0x3C, 0x1C, 0xCB, 0x1B, 0x0F,  // ...<....
                    /* 0818 */  0xD5, 0x0C, 0xE2, 0x5F, 0x8D, 0x5E, 0x23, 0x67,  // ..._.^#g
                    /* 0820 */  0xEE, 0xFC, 0xE4, 0xE9, 0x59, 0xDB, 0x91, 0x79,  // ....Y..y
                    /* 0828 */  0x2F, 0xB4, 0x24, 0x95, 0xCF, 0x45, 0xFB, 0xEC,  // /.$..E..
                    /* 0830 */  0xD9, 0xF0, 0x3F, 0xC7, 0xB8, 0x1B, 0x20, 0x14,  // ..?... .
                    /* 0838 */  0x05, 0x3E, 0x0F, 0x5D, 0x7F, 0x7E, 0x22, 0x75,  // .>.].~"u
                    /* 0840 */  0x20, 0x83, 0x5C, 0x4F, 0x33, 0x51, 0xC3, 0x04,  //  .\O3Q..
                    /* 0848 */  0x29, 0xBC, 0x2E, 0xFD, 0xF0, 0x4F, 0xD0, 0xCF,  // )....O..
                    /* 0850 */  0x94, 0x6A, 0x74, 0xA5, 0x10, 0x5D, 0x3D, 0xCA,  // .jt..]=.
                    /* 0858 */  0x48, 0xFD, 0xB4, 0xFB, 0xC4, 0xCF, 0x53, 0x08,  // H.....S.
                    /* 0860 */  0x91, 0x17, 0xAD, 0x87, 0xDE, 0x7D, 0x8D, 0xCD,  // .....}..
                    /* 0868 */  0xE8, 0xAC, 0x3D, 0x50, 0x62, 0xE7, 0x34, 0xF4,  // ..=Pb.4.
                    /* 0870 */  0xF1, 0xCE, 0x50, 0xDF, 0xC6, 0xAA, 0xC2, 0x98,  // ..P.....
                    /* 0878 */  0xF3, 0xCD, 0xDA, 0x15, 0xC8, 0x24, 0x08, 0x42,  // .....$.B
                    /* 0880 */  0x0E, 0x66, 0x59, 0xF5, 0x60, 0x63, 0x43, 0xED,  // .fY.`cC.
                    /* 0888 */  0x18, 0xFC, 0xD6, 0xA9, 0xD1, 0x7E, 0xAE, 0xD7,  // .....~..
                    /* 0890 */  0xE6, 0x9D, 0x42, 0x7E, 0x0A, 0xBA, 0x4C, 0x24,  // ..B~..L$
                    /* 0898 */  0x20, 0xE6, 0xBB, 0x4A, 0x03, 0x93, 0x01, 0x46,  //  ..J...F
                    /* 08A0 */  0x59, 0xE9, 0xB6, 0x51, 0x01, 0x69, 0x75, 0xE9,  // Y..Q.iu.
                    /* 08A8 */  0x6F, 0x65, 0x0B, 0x95, 0xD8, 0x3E, 0xA7, 0x5D,  // oe...>.]
                    /* 08B0 */  0x14, 0x65, 0x9D, 0x4E, 0xBD, 0x4A, 0xDB, 0xB4,  // .e.N.J..
                    /* 08B8 */  0xDC, 0x09, 0xE4, 0xC1, 0x55, 0xAB, 0xE8, 0xE8,  // ....U...
                    /* 08C0 */  0xEF, 0x6B, 0x31, 0x74, 0x2D, 0x5E, 0x52, 0x16,  // .k1t-^R.
                    /* 08C8 */  0xB5, 0x54, 0x86, 0x7B, 0x91, 0xCA, 0xE2, 0x86,  // .T.{....
                    /* 08D0 */  0xEB, 0x36, 0x9B, 0xDA, 0x2D, 0x1D, 0x99, 0xE6,  // .6..-...
                    /* 08D8 */  0xF8, 0xAC, 0xA0, 0x13, 0x36, 0xF1, 0x33, 0x78,  // ....6.3x
                    /* 08E0 */  0x80, 0x12, 0x7B, 0x76, 0xD9, 0xD8, 0x50, 0x88,  // ..{v..P.
                    /* 08E8 */  0xE6, 0x77, 0x6C, 0x4D, 0x6B, 0xEB, 0x2E, 0xBF,  // .wlMk...
                    /* 08F0 */  0xA1, 0xFA, 0x04, 0x9C, 0xB2, 0x43, 0xF6, 0xEA,  // .....C..
                    /* 08F8 */  0x7B, 0xB8, 0x9F, 0xCB, 0x48, 0xA9, 0x2C, 0x85,  // {...H.,.
                    /* 0900 */  0x6A, 0x6F, 0x51, 0xFA, 0xC1, 0xE8, 0x23, 0x11,  // joQ...#.
                    /* 0908 */  0x80, 0xE1, 0x20, 0x44, 0x79, 0x34, 0x5F, 0x1C,  // .. Dy4_.
                    /* 0910 */  0xE2, 0x6E, 0xF1, 0x96, 0x13, 0xD9, 0x1C, 0x8C,  // .n......
                    /* 0918 */  0xA2, 0xA2, 0x59, 0xF1, 0x63, 0x1E, 0xF2, 0xE0,  // ..Y.c...
                    /* 0920 */  0xB7, 0x9E, 0xA4, 0x8B, 0x72, 0xCF, 0x17, 0xB7,  // ....r...
                    /* 0928 */  0x54, 0x2D, 0xF0, 0xB2, 0xA1, 0xBE, 0x9F, 0xF0,  // T-......
                    /* 0930 */  0x62, 0xAF, 0x6A, 0xB2, 0x5F, 0xB2, 0x85, 0x2A,  // b.j._..*
                    /* 0938 */  0x7D, 0x22, 0x7C, 0xDA, 0xAC, 0xC8, 0x96, 0x44,  // }"|....D
                    /* 0940 */  0x87, 0xF4, 0x2A, 0xCB, 0xC9, 0xB9, 0xEA, 0xE2,  // ..*.....
                    /* 0948 */  0xF8, 0x99, 0x47, 0xF0, 0xD5, 0x40, 0xD4, 0x6D,  // ..G..@.m
                    /* 0950 */  0x8E, 0x1F, 0xF4, 0x3C, 0xDD, 0xC0, 0xE8, 0x60,  // ...<...`
                    /* 0958 */  0xCD, 0xC9, 0xA2, 0xE0, 0x5A, 0xE8, 0x9B, 0x00,  // ....Z...
                    /* 0960 */  0xAE, 0xE1, 0x06, 0x2A, 0x57, 0x75, 0xC3, 0xFC,  // ...*Wu..
                    /* 0968 */  0xC7, 0x55, 0xF1, 0x5C, 0x1D, 0xEA, 0xA0, 0x6E,  // .U.\...n
                    /* 0970 */  0x85, 0x97, 0x1C, 0xA2, 0x22, 0xC0, 0x22, 0xFE,  // ....".".
                    /* 0978 */  0x83, 0x99, 0xDB, 0x37, 0x79, 0xA0, 0xAC, 0x98,  // ...7y...
                    /* 0980 */  0x17, 0x16, 0xE5, 0xE0                           // ....
                }
            })
        }

        Method (IMOK, 1, NotSerialized)
        {
            Return (Arg0)
        }
    }
}

