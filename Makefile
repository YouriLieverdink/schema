# Base command
command = apibuilder upload $(1) $(2) ./$(1)/$(2).json

release: release_iruoy release_whocooks

# Iruoy Labls
release_iruoy: release_common

release_common:
	@$(call command,iruoy,common)

# Who cooks?
release_whocooks: release_whocooks_recipes release_whocooks_schedules

release_whocooks_recipes:
	@$(call command,whocooks,recipes)

release_whocooks_schedules:
	@$(call command,whocooks,schedules)