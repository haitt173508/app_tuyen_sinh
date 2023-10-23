import re
from app_tuyen_sinh_django.utils.models.base_exception import CustomValidationError, DigitOnlyValidationError, EmptyValidationError, RangeValidationError


def validate_not_empty(field: str, value, key_field):
    if value is None or (not value if type(value) == 'str' else False):
        raise EmptyValidationError(field=field, key_field=key_field)


def validate_digit_only(field, value: str, key_field):
    if not value.isdigit():
        raise DigitOnlyValidationError(field=field, key_field=key_field)


def validate_phone(field, value: str, key_field):
    validate_not_empty(field=field, value=value, key_field=key_field)
    validate_digit_only(field=field, value=value, key_field=key_field)
    if not re.match(r"^(0[9|3|7|8|5]|84[9|3|7|8|5])([0-9]{8})$", value):
        raise CustomValidationError(
            '{} không hợp lệ'.format(field),
            key_field=key_field,
        )


def validate_auth_phone(field, value: str, key_field):
    try:
        validate_not_empty('', value, '')
    except:
        raise CustomValidationError(
            'Tài khoản đăng ký bằng Email cần cung cấp {}'.format(field),
            key_field=key_field,
            extra_err=None,
        )
    validate_phone(field, value, key_field)