FROM python:3.11-slim

WORKDIR /app

# キャッシュを作成しないように設定（TDD時の不要なトラブルを防ぐ）
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

COPY requirements.txt .
RUN pip install --upgrade pip && \
    pip install --no-cache-dir -r requirements.txt

# TDDではホスト側のコードをマウントして実行するため、
# ここでのCOPY . . は省略します。