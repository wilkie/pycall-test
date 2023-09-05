require 'pycall'
require 'numpy'

# Testing numpy

x = Numpy.asarray([[1, 2, 3], [4, 5, 6]])
puts x
# [[1 2 3]
#  [4 5 6]]
#
puts x[1, 1..2]
# [5 6]
#
puts x.T
# [[1 4]
#  [2 5]
#  [3 6]]
#
puts x.dot x.T
# [[14 32]
#  [32 77]]
#
puts x.reshape([3, 2])
# [[1 2]
#  [3 4]
#  [5 6]]

# Test unblocking gvl

if false # just ignore this part since it is slow
  PyCall.without_gvl do
    # In this block, all Python function calls are performed without
    # the GVL acquisition.
    10.times do
      Kernel.sleep 1
      puts "no sleep"
    end
  end
end

# Test interacting with openai directly in Ruby via their python library

openai = PyCall.import_module("openai")

openai.api_key = ENV["OPENAI_API_KEY"]

# list models
models = openai.Model.list()

# print the first model's id
models.data.each do |model|
  print(model.id, ", ")
end

puts

# create a chat completion
chat_completion = openai.ChatCompletion.create(model: "gpt-3.5-turbo", messages:[{"role": "user", "content": "Hello world"}])

# print the chat completion
puts(chat_completion.choices[0].message.content)