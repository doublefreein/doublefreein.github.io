---
title: "The Desktop We Built: Parts, Prices, and GNU/Linux"
date: 2026-10-20
categories: [Technology]
tags: [Freedom, Repairability, Hardware, Debian]
excerpt: "The exact parts list and bill of the repairable GNU/Linux desktop we assembled for ourselves, and how we can build one for you."
header:
  teaser: /assets/images/dfSoftware.jpg
---

We have written about [why a repairable desktop matters]({% post_url 2025-08-24-WhyDesktop %}).
This post is the practical side of that argument: the machine this very post was
typed on. We bought the parts from a local shop in Pune in April 2026, assembled
it ourselves, and installed Debian GNU/Linux on it.

No secrets here. Below is every part and every rupee, straight from the tax
invoice.

This is a high-end build, at the top of the "Power Student/SMB" tier from our
earlier post. It is far more machine than a school lab needs. Further down we
show what the same build costs without the graphics card.

---

## The Configuration

| Component     | Part                                   |
|---------------|----------------------------------------|
| CPU           | AMD Ryzen 5 7600 (6 cores, 12 threads, AM5) |
| Motherboard   | MSI B650M Bomber WiFi (micro-ATX)      |
| Memory        | 16 GB DDR5                             |
| Storage       | 1 TB NVMe SSD (XPG Gammix S60)         |
| Graphics      | NVIDIA GeForce RTX 5060, 8 GB          |
| Power supply  | 650 W SMPS                             |
| Cabinet       | Standard ATX/mATX cabinet              |
| Monitor       | LG 24" 24MS550-B                       |
| UPS           | Artis 1 kVA                            |
| Mouse         | Wired USB mouse                        |
| OS            | Debian GNU/Linux 12 (bookworm)         |

Everything inside the cabinet is a standard PC part. Any of it can be swapped
with a screwdriver, and the AM5 socket leaves room for a CPU upgrade later
without changing the board, memory, power supply, or cabinet.

---

## The Bill

All prices are in Indian Rupees, as invoiced on **25 April 2026**. Component
prices have moved since then, so read these as a snapshot, not a quote. GST is
18% on every item (9% CGST + 9% SGST).

| Item                         | Rate (₹)   | With GST (₹) |
|------------------------------|-----------:|-------------:|
| AMD Ryzen 5 7600             | 16,500.00  | 19,470.00    |
| MSI B650M Bomber WiFi        |  8,300.00  |  9,794.00    |
| 16 GB DDR5 RAM               | 15,500.00  | 18,290.00    |
| 1 TB NVMe SSD                | 12,800.00  | 15,104.00    |
| RTX 5060 8 GB                | 26,500.00  | 31,270.00    |
| Cabinet                      |  2,200.00  |  2,596.00    |
| 650 W SMPS                   |  3,650.00  |  4,307.00    |
| **Bare machine subtotal**    | **85,450.00** | **1,00,831.00** |
| LG 24" Monitor               |  6,610.00  |  7,799.80    |
| Artis 1 kVA UPS              |  3,560.00  |  4,200.80    |
| Mouse                        |    550.00  |    649.00    |
| **Total**                    | **96,170.00** | **1,13,480.60** |

Tax on the full bill: CGST ₹8,655.30 + SGST ₹8,655.30 = ₹17,310.60.

A few honest notes on the numbers:

- **Memory and storage were expensive.** DDR5 and SSD prices were high in 2026;
  16 GB of RAM cost almost as much as the CPU.
- **The graphics card is the biggest single cost.** We wanted it for our own
  work. For a school lab, office, or most development work, the Ryzen 5 7600's
  built-in graphics are enough.
- **The NVIDIA card runs on NVIDIA's proprietary driver.** The free `nouveau`
  driver does not yet fully support this generation. If you want a fully free
  software stack, skip the discrete card and use the integrated AMD graphics,
  which work with free drivers out of the box.

### Without the graphics card

The same build using the Ryzen's integrated graphics, with only free drivers:

|                         | Rate (₹)  | With GST (₹) |
|-------------------------|----------:|-------------:|
| Bare machine (no GPU)   | 58,950.00 | 69,561.00    |
| With monitor, UPS, mouse| 69,670.00 | 82,210.60    |

That is ₹31,270 less than the full build.

---

## We Can Build One for You

We can assemble a machine like this for you, running GNU/Linux, for **15% of
the cost of the bare machine**.

The bare machine is everything inside the cabinet: CPU, motherboard, memory,
storage, graphics (if you want it), power supply, and the cabinet itself. The
15% is calculated on the parts' price **before GST**, and our fee is billed
with 18% GST on top.

| Build                  | Parts before GST (₹) | Our fee, 15% (₹) | Fee with GST (₹) |
|------------------------|---------------------:|-----------------:|-----------------:|
| Full build (with GPU)  | 85,450.00            | 12,817.50        | 15,124.65        |
| Without graphics card  | 58,950.00            |  8,842.50        | 10,434.15        |

For that you get:

- Parts chosen with you for your actual needs and budget.
- Assembly, testing, and a clean Debian GNU/Linux installation.
- A machine built from standard parts that any local technician can repair or
  upgrade.

*Write to us at [doublefreein@gmail.com](mailto:doublefreein@gmail.com) with
what you plan to use the machine for, and we will put together a parts list.*

---

*This blog post is licensed under Creative Commons BY-SA 4.0. Feel free to
share, remix, and build upon it.*
