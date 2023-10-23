from app_tuyen_sinh_django.utils.models.response_model import ResponseModel
from django.db import transaction


def transaction_wrapper(func):

    def wrap(*args, **kwargs):
        try:
            with transaction.atomic():
                return func(*args, **kwargs)
        except Exception as e:
            transaction.rollback()
            return ResponseModel.from_exception(e)

    return wrap
