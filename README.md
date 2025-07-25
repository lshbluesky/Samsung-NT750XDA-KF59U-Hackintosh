# ✨ Samsung Galaxy Book NT750XDA-KF59U Hackintosh 🌌

![iGPU Info](https://github.com/lshbluesky/Samsung-NT750XDA-KF59U-Hackintosh/assets/61459016/d66c1321-5d2b-4ac1-a0a6-89bef2fcfed6)

![Sonoma](https://github.com/lshbluesky/Samsung-NT750XDA-KF59U-Hackintosh/assets/61459016/d2c46935-07e5-4de5-9edc-f0e4c16235f3)

## 🌿 System Specification
| Name | Description |
| - | - |
| CPU | Intel 11th Gen Tiger Lake Core i5-1135G7 4.20 GHz |
| Chipsets | Intel Tiger Lake-LP |
| Graphics | Intel Iris Xe Graphics G7 |
| Memory | LPDDR4x 4267 MHz 8GB |
| Sound | Realtek HD Audio ALC 256 |
| Wi-Fi / Bluetooth | Intel Wi-Fi 6 AX201 160MHz |
| TouchPad | Samsung I2C Precision TouchPad (SPTP, IOName : ATML3000/ELAN0B00) |
| BIOS | AMI Aptio Setup Utility (Version P21CFD) |

## 🍃 Installed macOS & OpenCore Versions
- macOS Catalina 10.15.7
- macOS Big Sur 11.x
- macOS Monterey 12.x
- macOS Ventura 13.x
- macOS Sonoma 14.x
- OpenCore r1.0.5

## 🍁 BIOS Settings
- Boot
  - Secure Boot Control : `Off`
  - Fast BIOS Mode : `Off`
- Using RU.efi
  - CpuSetup `(VarStore : 0x2)`
    - CFG Lock `(Variable : 0x43)` : Disabled `(Value : 0x0)`
  - SaSetup `(VarStore : 0x5)`
    - DVMT Pre-Allocated Memory `(Variable : 0x84)` : 64MB `(Value : 0x2)`
    - CD Clock Frequency `(Variable : 0x47)` : 648 MHz `(Value : 0x7)` / 652.8 MHz `(Value : 0x8)`
      - Even though I used RU.efi to force CD Clock Frequency to 648 MHz or higher in BIOS settings, `-igfxcdc` boot arg is still required.

## ⚠️ Attention
- Intel Iris Xe Graphics iGPU is not supported by macOS and QE/CI acceleration is not available. [Discussion #15](https://github.com/lshbluesky/Samsung-NT750XDA-KF59U-Hackintosh/discussions/15)
  - Therefore, it is difficult to actually use macOS on Intel 11th Gen Tiger Lake systems.

## 📋 Install Guide
- The installation guide is almost the same as the Ice Lake Laptop in the OpenCore Install Guide. [Link](https://dortania.github.io/OpenCore-Install-Guide/config-laptop.plist/icelake.html)
  - However, the following additional settings are required.

1. Apply Fake CPU ID.
    - Cpuid1Data : `E5060700 00000000 00000000 00000000`
    - Cpuid1Mask : `FFFFFFFF 00000000 00000000 00000000`

2. Set `AppleXcpmExtraMsrs` to `True` in Kernel - Quirks of Config.plist.
    - If `AppleXcpmExtraMsrs` in Kernel - Quirks is not set to `True`, the booting stops at the `[EB|#LOG:EXITBS:START]` log.

But, the above settings are already applied to the EFI folder.
So, you only need to modify the settings for the graphics-related parts below.

While installing macOS, delete all items(including IGPU) in Config.plist - Device Properties and boot by adding the `-igfxvesa` boot arg.
Try various ways to enable QE/CI acceleration of Iris Xe graphics **after macOS installation is complete.**

> [!NOTE]
> If you still cannot boot or install macOS, it seems that you need to check the log and modify the settings to suit your Tiger Lake laptop.
> I hope you will solve this yourself.

## ✅ Working
- [X] Realtek ALC 256 Internal Speaker
- [X] Realtek ALC 256 ComboJack Headphone
- [X] Realtek ALC 256 ComboJack Microphone
- [X] Speed Step (XCPM, Partially working)
- [X] Intel Wi-Fi 6 AX201 160MHz
- [X] Intel AX201 Bluetooth
- [X] USB 3.x & USB Port Map
- [X] Integrated Webcam
- [X] Battery Percentage Indication
- [X] Samsung I2C Precision TouchPad (Polling Mode Only)

## ❌ Not Working
- [ ] Intel Iris Xe Graphics G7 QE/CI
- [ ] Realtek ALC 256 Internal Microphone
- [ ] Complete/Full Power Management
- [ ] Brightness Control
- [ ] Fn Keys (Brightness & Sound Volume Control)
- [ ] Sleep & Wake
