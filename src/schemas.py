from pydantic import BaseModel, EmailStr  # type: ignore


class UserSchema(BaseModel):
    username: str
    email: EmailStr
    password: str
