# 실행법
# python -m venv venv
# venv\Scripts\activate
# pip install sqlalchemy
# pip install cx_oracle  # 오라클 DB를 사용하는 경우만 설치해주세요. 다른 DB를 사용하면 해당 DB에 맞는 라이브러리를 설치해야 합니다.
# 실행방법 python dummy.py 입력
# 실행 후
# deactivate



from sqlalchemy import create_engine, Column, Integer, String, DateTime, Date
from sqlalchemy.ext.declarative import declarative_base
from sqlalchemy.orm import sessionmaker
from datetime import datetime

# 데이터베이스 연결 설정 (아래는 Oracle DB를 사용하는 경우의 예시입니다. 다른 DB를 사용하려면 해당 DB에 맞는 정보로 수정해주세요.)
db_url = 'oracle+cx_oracle://scott:tiger@localhost:1521/orcl'
engine = create_engine(db_url, echo=True)  # echo=True로 설정하면 SQL 쿼리가 출력됩니다.

Base = declarative_base()
Session = sessionmaker(bind=engine)
session = Session()

class A_B(Base):
    __tablename__ = 'A_B'

    AUTH_BUSINESS_ID = Column(String, primary_key=True)
    AUTH_BUSINESS_PASSWORD = Column(String)
    AUTH_BUSINESS_SEX = Column(String)
    AUTH_BUSINESS_BIRTH = Column(Date)
    AUTH_BUSINESS_CEO_NAME_2 = Column(String)
    AUTH_BUSINESS_NICKNAME = Column(String)
    AUTH_BUSINESS_EMAIL = Column(String)
    AUTH_BUSINESS_ADDRESS = Column(String)
    AUTH_BUSINESS_ADDRESS_DETAIL = Column(String)
    AUTH_BUSINESS_PHONE_NUMBER = Column(String)
    AUTH_BUSINESS_CLAUSE_YN_1 = Column(String)
    AUTH_BUSINESS_PERSONAL_YN = Column(String)
    AUTH_BUSINESS_JOIN_DT = Column(DateTime)
    AUTH_BUSINESS_DEL_DT = Column(DateTime)
    AUTH_BUSINESS_USER_STATUS = Column(String)
    AUTH_BUSINESS_IMG_1 = Column(String)
    AUTH_BUSINESS_NO_1 = Column(String)
    AUTH_INFO_STORAGE_1 = Column(Integer)

# 더미 데이터 입력
dummy_data = [
    ('samsung', 'samsung123', 'M', '1990-03-15', '김대표', '삼성', 'samsung@samsung.com', '서울특별시 강남구', '강남역 123번출구', '010-1234-5678', 'Y', 'Y', '2023-07-27 10:00:00', None, 'A', 'samsung.jpg', '123-45-67890', 10),
    ('hyundai', 'hyundai123', 'F', '1995-01-02', '박대표', '현대', 'hyundai@hyundai.com', '울산광역시 남구', '양산시 30번길', '010-5678-1234', 'Y', 'Y', '2023-07-27 12:15:00', None, 'A', 'hyundai.jpg', '456-78-90123', 6),
    ('sk', 'sk123456', 'M', '1985-11-12', '한대표', 'SK', 'sk@sk.com', '서울특별시 마포구', '홍대입구로 12', '010-2345-6789', 'Y', 'Y', '2023-07-27 13:45:00', None, 'A', 'sk.jpg', '654-32-10987', 7),
    ('lg', 'lg12345', 'M', '1988-06-20', '이대표', 'LG', 'lg@lg.com', '서울특별시 영등포구', '여의도 100번지', '010-9876-5432', 'Y', 'Y', '2023-07-27 11:30:00', None, 'A', 'lg.jpg', '098-76-54321', 8),
    ('kia', 'kia1234567', 'M', '1992-09-25', '정대표', '기아', 'kia@kia.com', '경기도 수원시', '영통구 55번길', '010-8765-4321', 'Y', 'Y', '2023-07-27 14:30:00', None, 'A', 'kia.jpg', '789-01-23456', 5),
    ('lotte', 'lotte123', 'F', '1997-07-08', '김대표', '롯데', 'lotte@lotte.com', '서울특별시 중구', '명동 1번길', '010-3456-7890', 'Y', 'Y', '2023-07-27 15:20:00', None, 'A', 'lotte.jpg', '654-32-09876', 6),
    ('posco', 'posco1234', 'F', '1999-04-18', '이대표', '포스코', 'posco@posco.com', '경기도 광명시', '소하로 50', '010-2345-6789', 'Y', 'Y', '2023-07-27 16:10:00', None, 'A', 'posco.jpg', '987-65-43210', 3),
    ('skhynix', 'skhynix123', 'M', '1989-12-30', '한대표', 'SK하이닉스', 'skhynix@skhynix.com', '경기도 이천시', '마장면 30', '010-7654-3210', 'Y', 'Y', '2023-07-27 17:00:00', None, 'A', 'skhynix.jpg', '765-43-21098', 2),
    ('kb', 'kb12345678', 'F', '1993-03-03', '박대표', 'KB금융', 'kb@kb.com', '서울특별시 중랑구', '상봉로 90', '010-5432-1098', 'Y', 'Y', '2023-07-27 17:45:00', None, 'A', 'kb.jpg', '432-10-98765', 1),
    ('hanwha', 'hanwha12345', 'M', '1996-08-05', '김대표', '한화', 'hanwha@hanwha.com', '서울특별시 송파구', '잠실로 123', '010-3210-9876', 'Y', 'Y', '2023-07-27 18:30:00', None, 'A', 'hanwha.jpg', '321-09-87654', 4),
]

# 더미 데이터를 데이터베이스에 추가
for data in dummy_data:
    auth_business = A_B(
        AUTH_BUSINESS_ID=data[0], AUTH_BUSINESS_PASSWORD=data[1], AUTH_BUSINESS_SEX=data[2], AUTH_BUSINESS_BIRTH=datetime.strptime(data[3], '%Y-%m-%d'),
        AUTH_BUSINESS_CEO_NAME_2=data[4], AUTH_BUSINESS_NICKNAME=data[5], AUTH_BUSINESS_EMAIL=data[6], AUTH_BUSINESS_ADDRESS=data[7],
        AUTH_BUSINESS_ADDRESS_DETAIL=data[8], AUTH_BUSINESS_PHONE_NUMBER=data[9], AUTH_BUSINESS_CLAUSE_YN_1=data[10],
        AUTH_BUSINESS_PERSONAL_YN=data[11], AUTH_BUSINESS_JOIN_DT=datetime.strptime(data[12], '%Y-%m-%d %H:%M:%S'),
        AUTH_BUSINESS_DEL_DT=None, AUTH_BUSINESS_USER_STATUS=data[14], AUTH_BUSINESS_IMG_1=data[15], AUTH_BUSINESS_NO_1=data[16], AUTH_INFO_STORAGE_1=data[17]
    )
    session.add(auth_business)

session.commit()
session.close()