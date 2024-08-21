#!/usr/bin/env bash


# rm -rf ./presets/gender/vocabs/100_quantile
# rm -rf ./presets/age/vocabs/100_quantile
# rm -rf ./presets/age_short/vocabs/100_quantile
# rm -rf ./presets/age_tinkoff/vocabs/100_quantile
# rm -rf ./presets/rosbank/vocabs/100_quantile

# rm -rf ./presets/gender/discretizers/100_quantile
# rm -rf ./presets/gender/discretizers/50_quantile

# rm -rf ./presets/age/discretizers/100_quantile
# rm -rf ./presets/age/discretizers/50_quantile

# rm -rf ./presets/age_short/discretizers/100_quantile
# rm -rf ./presets/age_short/discretizers/50_quantile

# rm -rf ./presets/age_tinkoff/discretizers/100_quantile
# rm -rf ./presets/age_tinkoff/discretizers/50_quantile

# rm -rf ./presets/rosbank/discretizers/100_quantile
# rm -rf ./presets/rosbank/discretizers/50_quantile


# PYTHONPATH=. python python_train_discretizers.py 'age'
PYTHONPATH=. python python_train_discretizers.py 'gender'
PYTHONPATH=. python python_train_discretizers.py 'age_short'
PYTHONPATH=. python python_train_discretizers.py 'age_tinkoff'
PYTHONPATH=. python python_ train_discretizers.py 'rosbank'

# PYTHONPATH=. python python_build_vocabs.py 'age'
PYTHONPATH=. python python_build_vocabs.py 'gender'
PYTHONPATH=. python python_build_vocabs.py 'age_short'
PYTHONPATH=. python python_build_vocabs.py 'age_tinkoff'
PYTHONPATH=. python python_build_vocabs.py 'rosbank'




