# ✨ Samsung-Galaxy-Book-NT750XDA-KF59U-Hackintosh 🌌

![Screenshot](https://user-images.githubusercontent.com/61459016/210082015-4a2a386f-f12f-47b4-beba-b199d8c6b4d7.png)

## 🌿 System Specification
| Name | Description |
| - | - |
| CPU | Intel 11th Gen Tiger Lake Core i5 - 1135G7 4.20 GHz |
| Chipsets | Intel Tiger Lake - LP |
| Graphics | Intel Iris Xe Graphics G7 |
| Memory | LPDDR4x 4267 MHz 8GB |
| Sound | Realtek HD Audio ALC 256 |
| Wi-Fi / Bluetooth | Intel Wi-Fi 6 AX201 160MHz |
| TouchPad | Samsung I2C Precision TouchPad (SPTP, IOName : ATML3000/ELAN0B00) |
| BIOS | AMI Aptio Setup Utility (Version P19CFD) |

## 🍃 Installed macOS & OpenCore Versions
- macOS Catalina 10.15.7
- macOS Ventura 13.x
- OpenCore r0.8.8

## 🍁 BIOS Settings
- Boot
  - Secure Boot Control : Off
  - Fast BIOS Mode : Off
- Using RU.efi
  - CpuSetup
    - CFG Lock (Variable : 0x43) : Disabled (Value : 0x0)
  - SaSetup
    - DVMT Pre-Allocated Memory (Variable : 0x84) : 64MB (Value : 0x2)
    - CD Clock Frequency (Variable: 0x47) : 648 Mhz (Value: 0x7) / 652.8 Mhz (Value: 0x8) 

## ⚠️ Attention
- Intel Iris Xe Graphics iGPU is not supported by macOS and QE/CI acceleration is not available.
  - Therefore, it is difficult to actually use macOS on Intel 11th Gen Tiger Lake systems.
