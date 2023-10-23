import traceback
from django.http import JsonResponse
from rest_framework.request import Request
from rest_framework.exceptions import ValidationError

from app_tuyen_sinh_django.utils.enums.error_type import ErrorType
from app_tuyen_sinh_django.utils.models.base_exception import BaseGeneralException, CustomValidationError
from django.utils.translation import gettext as _


class ResponseModel(JsonResponse):

    def __init__(
        self,
        data: dict = None,
        code=200,
        http_status=200,
        errors=None,
        exception=None,
        message=None,
        request: Request = None,
    ):
        return super().__init__(
            data={
                "message": message,
                "data": data,
                "code": code,
                "errors":
                [e.to_json() for e in errors] if errors is not None else None,
                "exception": str(exception) if exception is not None else None,
            },
            safe=False,
            status=http_status,
        )

    @classmethod
    def from_error_type(
        cls,
        error_type: ErrorType,
        exception: Exception = None,
    ):
        return ResponseModel(
            message=error_type.message,
            code=error_type.value,
            errors=[error_type],
            exception=exception,
        )

    @classmethod
    def from_exception(cls, exception: Exception):
        if isinstance(exception, ValidationError):
            exception = CustomValidationError.from_validation_error(exception)
        if isinstance(exception, BaseGeneralException):
            return ResponseModel(
                message=exception.message,
                code=exception.code,
                errors=[exception],
            )
        traceback.print_exc()
        return cls.from_error_type(ErrorType.UNKNOWN, exception)
