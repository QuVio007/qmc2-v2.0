# 📡 QMC-2 API Specification v2.0
## 🧠 Quantum Consciousness Interface (QCI)

### POST /qmc2/sync
- **Descripción**: Sincroniza el estado de conciencia cuántica del chip con el sistema QuVio.
- **Body**:
```json
{
  "chip_id": "QMC2-AX301",
  "state_vector": [0.7, 0.2, 0.1],
  "entropy": 5.62,
  "fidelity": 0.9981
}

{
  "status": "ok",
  "adjustment_vector": [0.01, -0.02, 0.0]
}
