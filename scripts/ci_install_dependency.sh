"""
Install the dependency in CI.
"""

pip install --upgrade pip
pip install -e "python[all]"
pip install transformers==4.45.2 sentence_transformers accelerate peft
git clone https://github.com/flashinfer-ai/flashinfer.git --recursive
git reset --hard 32d9510d67187f1f3a379cce81302cdd15a557d2 # Revert to before PR https://github.com/flashinfer-ai/flashinfer/pull/609 merged
cd flashinfer/python
pip install -e .
pip install ninja # Ninja is required to load C++ extensions
