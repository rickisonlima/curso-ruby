def capitalize_name(lambda_names)
   lambda_names.call('rickison')
   lambda_names.call('renan')
end

names = -> (nome) {puts nome.capitalize}

capitalize_name(names)
