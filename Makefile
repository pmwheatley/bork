bork.sh:
	@echo '#!/bin/bash' > bork.sh
	@cat lib/* sources/* >> bork.sh
	@echo '. $$1' >> bork.sh
	@chmod +x bork.sh

reload:
	@rm bork.sh
	@make bork.sh

.PHONY: reload