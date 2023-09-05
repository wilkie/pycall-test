require 'pycall'
require 'json'

# Add ./lib as a system path for the python environment
PyCall.sys.path.append('./lib')

# Import Grade, etc
assess_py = PyCall.import_module("assess")

api_key = ENV['OPENAI_API_KEY']

if not api_key
  puts "Must set OPENAI_API_KEY environment variable!"
  exit 1
end

# Read code
code = File.read("rubrics/u3l23_01.js")
prompt = File.read("rubrics/u3l23.txt")
rubric = File.read("rubrics/u3l23.csv")

# Get JSON encoded grade
grade = assess_py.grade(
  code,
  prompt,
  rubric,
  api_key: api_key,
  llm_model: 'gpt-4',
  num_responses: 1,
  temperature: 0.2,
  num_passing_grades: 2
)

if grade == -1
  puts "ERROR."
else
  puts "Completed assessment."
  puts
  concepts = JSON.parse(grade)
  concepts.each do |concept|
    puts "- #{concept["Key Concept"]}"
    puts "  Grade: #{concept["Grade"]}"
    puts "  Reason: #{concept["Reason"]}"
    puts "  Observations: #{concept["Observations"]}"
  end
end
