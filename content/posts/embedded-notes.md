---
title: "Embedded Notes: Keeping Firmware and PC Software Together"
date: 2026-05-06
draft: false
---

# Embedded Notes: Keeping Firmware and PC Software Together

A common problem in hardware/software projects is deciding where firmware files should live relative to the PC application.

During development, it is convenient to keep everything close together:

- Firmware source code
- Compiled firmware binary
- PC application source code
- Test scripts
- Documentation

But for release, the user should only receive the files needed to run the application.

## A simple approach

Keep the firmware source in the development repo, but copy the compiled release firmware into an application assets folder during the build process.

Example structure:

```text
project/
├── firmware/
│   └── src/
├── pc-app/
│   ├── src/
│   └── assets/
│       └── firmware.bin
└── docs/