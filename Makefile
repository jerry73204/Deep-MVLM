.PHONY: default prepare run

MESH_FILE = assets/testmeshA.obj

default:
	@echo 'Usage:'
	@echo '  make build'
	@echo '  make run'

prepare:
	rye sync

run:
	python predict.py --c configs/DTU3D-RGB.json --n $(MESH_FILE)
