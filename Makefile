# Executables: vendors
PHP_CS_FIXER  = ./vendor/bin/php-cs-fixer
PHPSTAN       = ./vendor/bin/phpstan
PSALM  = ./vendor/bin/psalm

cs: fix-php stan psalm ## Run all coding standards checks


fix-php: ## Fix files with php-cs-fixer
	@$(PHP_CS_FIXER) fix --allow-risky=yes

stan: ## Run PHPStan
	@$(PHPSTAN) analyse -c phpstan.neon --memory-limit 1G src

psalm: ## Run Psalm
	@$(PSALM)
