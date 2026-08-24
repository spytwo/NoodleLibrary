from pathlib import Path

import uvicorn
from fastapi import FastAPI
from fastapi.staticfiles import StaticFiles

from noodlelibrary.routers import noodle_routes

app = FastAPI(title="Movie Library API", version="0.1.0")


BASE_DIR = Path(__file__).resolve().parent
app.mount("/static", StaticFiles(directory=BASE_DIR / "static"), name="static")
app.include_router(noodle_routes.router, tags=["Web Pages"], include_in_schema=False)

if __name__ == "__main__":
    uvicorn.run("noodlelibrary.main:app", host="0.0.0.0", port=8001, reload=True)
