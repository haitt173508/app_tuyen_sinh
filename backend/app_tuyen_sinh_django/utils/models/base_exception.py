from rest_framework.exceptions import ValidationError


class BaseGeneralException(Exception):

    def __init__(self, message: str = None, code=-99, data=None) -> None:
        self.code = code
        self.message = message
        self.data = data
        super().__init__(code, message)

    def __str__(self) -> str:
        return self.message

    def to_json(self):
        return {
            "message": self.message,
            "code": self.code,
            "data": str(self.data) if self.data is not None else None,
        }


class CustomValidationError(BaseGeneralException):

    def __init__(self, message: str, key_field: None, extra_err: None) -> None:
        self.key_field = key_field
        self.error = extra_err
        super().__init__(message=message)

    def to_json(self):
        r = super().to_json()
        r.update({"field": self.key_field, "error": self.error})
        return r

    @classmethod
    def from_validation_error(cls, err: ValidationError):
        error = err.detail
        field, list_detail = next(iter(error.items()))
        first_detail = list_detail[0]
        s = cls(
            key_field=field,
            message=first_detail,
            extra_err=first_detail.code,
        )
        return s


class EmptyValidationError(CustomValidationError):

    def __init__(self, field: str, key_field: None) -> None:
        self.message = '{} không được để trống'.format(field)
        super().__init__(self.message, key_field=key_field, extra_err=None)


class DigitOnlyValidationError(CustomValidationError):

    def __init__(self, field: str, key_field: None) -> None:
        self.message = '{} chỉ được bao gồm chữ số'.format(field)
        super().__init__(self.message, key_field=key_field, extra_err=None)


class RangeValidationError(CustomValidationError):

    def __init__(self, key_field: None, range_val: range, field: str) -> None:
        self.message = '{} không hợp lệ'.format(field)
        self.error = 'Out of {}'.format(range_val)
        super().__init__(
            key_field=key_field,
            message=self.message,
            extra_err=self.error,
        )
