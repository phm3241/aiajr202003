from Flask import Flask

# 웹 서버 생성
app = Flask(__name__)

# url 설정
@app.route('/')
def index():
    return 'Hello~!!'
