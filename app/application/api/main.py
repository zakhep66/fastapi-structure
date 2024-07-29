from fastapi import FastAPI


def create_app() -> FastAPI:
    return FastAPI(
        title="Simple Kafka Chat",
        docs_url="/api/docs",
        description="Simple Kafka Chat API",
        debug=True,
    )
