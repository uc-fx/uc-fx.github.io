(expression/identifier) @variable

(statement_block
 (assignment_statement
  assignee: (identifier) @variable))

(initialization_statement
  assignee: (identifier) @variable.parameter)

(procedure_definition
  party: (identifier)? @variable.parameter
  name: (identifier) @function
  arguments: (parameter_list (identifier) @variable.parameter)?)

(handle_signal_definition
  signal: (identifier) @signal
  arguments: (parameter_list (identifier) @variable.parameter)?)

(handle_request_definition
  request: (identifier) @request
  arguments: (parameter_list (identifier) @variable.parameter)?)

(internal_call_statement
  targets: (parameter_list (identifier) @variable)
  party: (identifier)? @variable
  method: (identifier) @function)

(external_call_statement
  targets: (parameter_list (identifier) @variable)
  box: (identifier) @class
  party: (identifier)? @variable
  method: (identifier) @function)

(signal_statement
  signal: (identifier) @signal)

(request_statement
  targets: (parameter_list (identifier) @variable)
  request: (identifier) @request)

(create_statement
  targets: (parameter_list (identifier) @variable)
  box: (identifier) @class
  method: (identifier) @function)

(run_statement
  continuation: (identifier) @variable)

(return_clause
  arguments: (parameter_list (identifier) @variable.parameter)?)

(signal_clause
  signal: (identifier) @signal
  arguments: (parameter_list (identifier) @variable.parameter)?)

(request_clause
  request: (identifier) @request
  arguments: (parameter_list (identifier) @variable.parameter))

(boxes/functionality (identifier) @class)
(boxes/protocol (identifier) @class)
(boxes/simulator
  (identifier) @class
  internal: (identifier_block (identifier) @class)?
  external: (identifier_block (identifier) @class)?)
(boxes/environment (identifier) @class)
(source_file
  topology: (identifier_block (identifier) @class))

[
  "functionality"
  "protocol"
  "simulator"
  "environment"
  "topology"
  "external"
  "internal"
  "initialize"
  "body"
  "define"
  "handle"
  "while"
  "if"
  "else"
  "return"
  "debug"
  "skip"
  "resume"
  "create"
  "run"
] @keyword

; Literals

[
  (string)
] @string

[
  (integer)
  (float)
] @number

[
  (unit)
  (true)
  (false)
] @constant.builtin

(comment) @comment

(unary_operator operator: _ @operator)
(binary_operator operator: _ @operator)
(comparison_operator operator: _ @operator)

[
  ","
  ":"
  "."
] @punctuation.delimiter

[
  "("
  ")"
  "["
  "]"
  "{"
  "}"
] @punctuation.bracket
