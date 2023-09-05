AITT_COMMIT=775c66f54393cc8b555e55cc03d16381a51e1f92
wget -nc https://github.com/code-dot-org/code-dot-org/raw/${AITT_COMMIT}/bin/aitt/grade.py -O lib/grade.py
wget -nc https://github.com/code-dot-org/code-dot-org/raw/${AITT_COMMIT}/bin/aitt/config.py -O lib/config.py
wget -nc https://github.com/code-dot-org/code-dot-org/raw/${AITT_COMMIT}/bin/aitt/report.py -O lib/report.py
wget -nc https://github.com/code-dot-org/code-dot-org/raw/${AITT_COMMIT}/bin/aitt/rubric_tester.py -O lib/rubric_tester.py
wget -nc https://github.com/code-dot-org/code-dot-org/raw/${AITT_COMMIT}/bin/aitt/system_prompt.txt -O lib/system_prompt.txt
