class Blog < Aws::Record::HashModel
  string_attr :Author
  string_attr :BlogTitle
  string_attr :body
