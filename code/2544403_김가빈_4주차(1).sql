-- STEP 1 : 온라인 쇼핑몰
-- STEP 2 : 사용자 : 고객(Customer), 관리자 (Admin)
-- STEP 2: 요구사항
-- (1) 고객은 회원가입을 할 수 있다
-- (2) 고객은 상품을 조회할 수 있다.
-- (3) 고객은 상품을 장바구니에 담을 수 있다.
-- (4) 고객은 상품을 구매할 수 있다.
-- (5) 관리자는 상품을 등록/수정/삭제할 수 있다.
-- (6) 관리자는 주문 내역을 조회할 수 있다.
-- STEP 3: 데이터 설계
-- (1) 고객 : 고객ID, 이름, 이메일, 비밀번호, 전화번호, 주소
-- (2) 상품 : 상품 ID, 상품명, 가격, 재고수량, 카테고리, 등록일자
-- (3) 주문 : 주문ID, 고객 ID, 주문일자, 총금액, 주문상태, 배송주소
-- 관계 정의 -> 고객 (1) : 주문(N)
-- 관계 정의 -> 주문(N) : 상품(N)

-- STEP 4 : SQL 작성
-- 고객 테이블
CREATE TABLE Customer (
    customer_id INT PRIMARY KEY,
    name VARCHAR(50),
    email VARCHAR(100),
    password VARCHAR(100),
    phone VARCHAR(20),
    address VARCHAR(200)
);

-- 상품 테이블
CREATE TABLE Product (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(100),
    price INT,
    stock INT,
    category VARCHAR(50),
    created_at DATE
);

-- 주문 테이블
CREATE TABLE Orders (
    order_id INT PRIMARY KEY,
    customer_id INT,
    order_date DATE,
    total_price INT,
    status VARCHAR(20),
    shipping_address VARCHAR(200),
    FOREIGN KEY (customer_id) REFERENCES Customer(customer_id)
);


