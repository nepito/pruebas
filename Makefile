.PHONY: tests 

# I. Definición del _phony_ *all* que enlista todos los objetivos principales
# ===========================================================================
all: tests

# II. Declaración de las variables
# ===========================================================================
# Variables a resultados

# III. Reglas para construir los objetivos principales
# ===========================================================================
# Objetivo para generar el README.pdf

# IV. Reglas para construir las dependencias de los objetivos principales
# ==========================================================================

# V. Reglas del resto de los phonies
# ===========================================================================
clean:
	rm --recursive --force data
	rm --recursive --force reports/tables
	rm --recursive --force tests/data
	rm --recursive --force tests/__pycache__
	rm --recursive --force *.tmp

tests:
	pytest --verbose tests/pytest/
	pytest --verbose tests/bashtest/
	R -e "testthat::test_dir('tests/testthat/', report = 'summary')"