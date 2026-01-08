FROM python:3.11

WORKDIR /SEdevops

COPY . .

RUN pip install --no-cache-dir pytest

# Run tests at build time
RUN pytest -v

ENTRYPOINT ["python", "Student.py"]