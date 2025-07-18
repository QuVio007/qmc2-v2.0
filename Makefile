# Makefile - QMC-2 v2.0 Project

.PHONY: all build test clean simulate validate

# Compila el firmware
build:
	@echo "🔧 Compilando firmware..."
	g++ -std=c++20 -O2 firmware/qmc2_firmware_v2.0.cpp -o build/qmc2_firmware

# Ejecuta pruebas del módulo de IA térmica
test:
	@echo "🧪 Ejecutando pruebas de ThermalAI..."
	python3 -m unittest integration/test_thermal_ai.py

# Simulación de yield/fidelidad
simulate:
	@echo "📊 Ejecutando simulaciones cuánticas..."
	jupyter nbconvert --to notebook --execute simulations/yield_fidelity_simulation.ipynb --output simulations/results.ipynb

# Validación general del sistema
validate:
	@echo "✅ Validando integridad de módulos..."
	python3 integration/validate_system.py

# Limpieza
clean:
	@echo "🧹 Limpiando compilaciones..."
	rm -rf build/* simulations/results.ipynb
