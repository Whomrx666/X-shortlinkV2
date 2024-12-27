all: install
install:
	@echo "Installing dependencies..."
	@bash install.sh
run:
	@echo "Running X-shortlinkV2..."
	@python3 X-shortlinkV2.py
clear:
	@clear