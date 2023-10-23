from enum import Enum, auto


class OtpType(Enum):
    AUTH = auto()
    PASSWORD = auto()

    # def __init__(self) -> None:
    #     __class__.range_val = range(0, len(__class__))
    #     super().__init__()

    @property
    def otp_type(self):
        return self.name.capitalize()

    @staticmethod
    def from_id(input_id: int):
        try:
            return next(x for x in __class__ if x.value == int(input_id))
        except:
            return None
