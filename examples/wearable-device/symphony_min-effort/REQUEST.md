# Request: On-Device ML Health Monitoring Wearable

**Request Date:** 2026-02-24

## Topic
Designing a wearable health monitor that runs ML-based anomaly detection on-device to meet medical data privacy requirements, with a 7-day battery life target.

## Context
- **Product:** Wrist-worn health monitoring device targeting early detection of cardiac arrhythmias and sleep apnea events
- **Technical Approach:** On-device ML inference (no cloud processing of raw health data) using a low-power microcontroller with dedicated neural processing unit
- **Sensors:** PPG (heart rate/SpO2), accelerometer, skin temperature, microphone (breathing patterns)
- **Privacy Requirements:** Raw biometric data never leaves the device; only processed alerts and aggregated summaries sync to companion app; designed to comply with HIPAA for potential clinical partnerships
- **Regulatory Path:** Initially launching as a consumer wellness device (not FDA-cleared); exploring FDA 510(k) pathway for future clinical claims
- **Target Users:** Health-conscious adults 40+, particularly those with family history of cardiac events
- **Team:** Hardware startup, 12 engineers (4 firmware, 3 ML, 3 hardware, 2 mobile app)
- **Funding:** Series A, 18 months of runway

## Goals
Architect the on-device ML pipeline and overall system design to balance model accuracy, inference latency, power consumption, and privacy — while navigating the regulatory landscape from consumer wellness to potential clinical device.

## Key Considerations
- Model architecture tradeoffs: accuracy vs. power consumption vs. inference speed
- On-device training vs. federated learning vs. periodic model updates via firmware
- Sensor fusion approach for multi-signal anomaly detection
- Battery budget allocation across sensing, processing, display, and communication
- Data pipeline: what stays on device, what syncs, what gets aggregated
- HIPAA compliance architecture for clinical partnership scenarios
- FDA regulatory strategy: consumer wellness now vs. 510(k) later
- False positive/negative tradeoffs for health alerts (liability implications)
- Hardware-software co-design for the neural processing unit
- Companion app architecture and privacy-preserving sync protocol
