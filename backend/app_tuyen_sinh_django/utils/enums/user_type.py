from enum import Enum


class UserType(Enum):
    STUDENT = "Học sinh"
    PARENT = "Phụ huynh"
    PUPIL = "Sinh viên"
    TEACHER = "Giáo viên"
    FREELANCER = "Thí sinh tự do"
    OTHER = "Khác"

    def __init__(self, name: str) -> None:
        self._value_ = len(__class__)
        self.user_type = name
        __class__.range_val = range(0, self._value_)
        return name

    @staticmethod
    def from_id(input_id: int):
        return next(x for x in __class__ if x.value == input_id)
