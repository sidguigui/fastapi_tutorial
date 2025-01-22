from http import HTTPStatus

from fastapi import FastAPI  # type: ignore

from src.schemas import UserSchema  # type: ignore

app = FastAPI()


@app.post("/users/", status_code=HTTPStatus.CREATED, response_model=UserSchema)
def create_user(user: UserSchema):
    return user
