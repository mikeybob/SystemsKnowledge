import sys
from transformers import BartForConditionalGeneration, BartTokenizer, pipeline

# Ensure a filename is provided
if len(sys.argv) < 2:
    print("Usage: python summarize.py <path_to_text_file>")
    sys.exit(1)

input_file_path = sys.argv[1]

# Read the content of the file
try:
    with open(input_file_path, 'r') as file:
        input_text = file.read()
except Exception as e:
    print(f"Error reading file: {e}")
    sys.exit(1)

# Load the BART model and tokenizer
model_name = "facebook/bart-large-cnn"
tokenizer = BartTokenizer.from_pretrained(model_name)
model = BartForConditionalGeneration.from_pretrained(model_name)

# Initialize the summarization pipeline
summarizer = pipeline("summarization", model=model, tokenizer=tokenizer)

# Perform summarization
summary = summarizer(input_text, max_length=150, min_length=40, do_sample=False)

# Output the summary
print("Summary:")
print(summary[0]['summary_text'])
