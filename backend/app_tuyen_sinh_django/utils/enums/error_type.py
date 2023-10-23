from enum import Enum

from app_tuyen_sinh_django.utils.models.base_exception import BaseGeneralException


class ErrorType(BaseGeneralException, Enum):
    UNKNOWN = "Đã có lỗi xảy ra"
    USER_NOT_FOUND = 'Không tìm thấy người dùng'
    USER_INACTIVATE = 'Người dùng chưa kích hoạt'
    INVALID_TOKEN = 'Token không hợp lệ'
    WRONG_EMAIL_OR_PASSWORD = 'Tài khoản hoặc mật khẩu không chính xác'

    def __init__(self, error_message: str) -> None:
        self._value_ = self.code = len(__class__)
        self.message = error_message
        self.data = None
        return error_message

    def to_json(self):
        r = super().to_json()
        r.update({"type": self.name})
        return r
