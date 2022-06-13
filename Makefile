# Base command
command = apibuilder upload iruoy $(1) ./applications/$(1).json 

release_common:
	@$(call command,common)

release_whocooks:
	@$(call command,whocooks)