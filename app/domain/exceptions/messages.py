from dataclasses import dataclass

from app.domain.exceptions.base import ApplicationException


@dataclass
class TextTooLongException(ApplicationException):
    text: str

    @property
    def message(self):
        return f"Сообщение слишком длинное. {self.text[:255]}..."
