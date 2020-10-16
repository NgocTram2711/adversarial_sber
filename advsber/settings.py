from typing import List, Optional, Dict, Union

import torch
from allennlp.data import TextFieldTensors

from dataclasses import dataclass
from dataclasses_json import dataclass_json


START_TOKEN = "<START>"
END_TOKEN = "<END>"
MASK_TOKEN = "@@MASK@@"


@dataclass_json
@dataclass
class TransactionsData:
    transactions: List[int]
    amounts: List[float]
    label: int
    client_id: Optional[int] = None

    def __post_init__(self) -> None:
        assert len(self.transactions) == len(self.amounts)

    def __len__(self) -> int:
        return len(self.transactions)


ModelsInput = Dict[str, Union[TextFieldTensors, torch.Tensor]]
