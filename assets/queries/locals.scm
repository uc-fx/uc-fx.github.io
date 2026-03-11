(boxes) @local.scope

(procedure_definition) @local.scope

(initialization_statement
  assignee: (identifier) @local.definition)

(procedure_definition
  party: (identifier)? @local.definition
  arguments: (parameter_list (identifier) @local.definition))

(handle_signal_definition
  arguments: (parameter_list (identifier) @local.definition))

(handle_request_definition
  arguments: (parameter_list (identifier) @local.definition))

(return_clause
  arguments: (parameter_list (identifier) @local.definition)?)

(signal_clause
  arguments: (parameter_list (identifier) @local.definition)?)

(request_clause
  arguments: (parameter_list (identifier) @local.definition))

(statement_block
 (assignment_statement
  assignee: (identifier) @local.reference))

(expression/identifier) @local.reference

(internal_call_statement
  targets: (parameter_list (identifier) @local.reference)
  party: (identifier)? @local.reference)

(external_call_statement
  targets: (parameter_list (identifier) @local.reference)
  party: (identifier)? @local.reference)