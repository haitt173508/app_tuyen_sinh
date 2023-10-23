from enum import Enum


class Sex(Enum):
    MALE = "Nam"
    FEMALE = "Nữ"
    OTHER = "Khác"

    def __init__(self, name: str) -> None:
        self._value_ = len(__class__)
        self.sex = name
        __class__.range_val = range(0, self._value_)
        return name

    @staticmethod
    def from_id(input_id: int):
        return next(x for x in __class__ if x.value == input_id)
