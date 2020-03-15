SELECT *
FROM GROUPING;


INSERT INTO GROUPING(GR_CODE, MEM_ID, GR_NAME, GR_PRE, GR_NOTICE, CATE_CODE1)
VALUES(GROUPINGSEQ.NEXTVAL, 'bblee2478@naver.com', '알쓸 신맥! 맥주 고르기의 신', '가벼운 마음', ' 가급적 대중교통을 이용해주세요.', 4);
--==>> 1 행 이(가) 삽입되었습니다.

ALTER SESSION SET NLS_DATE_FORMAT='YY-MM-DD HH24:MI:SS';
--==>> Session이(가) 변경되었습니다.


--○ 개설 모임(NOW_GROUP) 데이터 삽입
INSERT INTO NOW_GROUP(NG_CODE, GR_CODE, NG_PIC, NG_MAX, NG_MIN, NG_STARTDATE, NG_ENDDATE, NG_COST, NG_LOCATION, NG_INTRO, NG_DATE)
VALUES(NOW_GROUPSEQ.NEXTVAL, 47, 'art.jpg', 15, 7
     , TO_DATE('20191228180000', 'YY-MM-DD HH24:MI:SS'), TO_DATE('20191228200000', 'YY-MM-DD HH24:MI:SS')
     , 35000, '서울 마포구 홍대입구역 9번출구'
     , '미술을 좋아하시는 분들이라면 누구든지 환영해요~!'
     , TO_DATE(SYSDATE, 'YY-MM-DD HH24:MI:SS'));
--==>> 1 행 이(가) 삽입되었습니다.

INSERT INTO NOW_GROUP(NG_CODE, GR_CODE, NG_PIC, NG_MAX, NG_MIN, NG_STARTDATE, NG_ENDDATE, NG_COST, NG_LOCATION, NG_INTRO, NG_DATE)
VALUES(NOW_GROUPSEQ.NEXTVAL, 51, 'magic.jpg', 10, 5
     , TO_DATE('20191221140000', 'YY-MM-DD HH24:MI:SS'), TO_DATE('20191221180000', 'YY-MM-DD HH24:MI:SS')
     , 40000, '서울 종로구'
     , '최고의 마술사로 만들어드립니다.'
     , TO_DATE(SYSDATE, 'YY-MM-DD HH24:MI:SS'));
--==>> 1 행 이(가) 삽입되었습니다.

SELECT *
FROM NOW_GROUP;
/*
23	47	art.jpg	15	7	19-12-28 18:00:00	19-12-28 20:00:00	35000	서울 마포구 홍대입구역 9번출구	미술을 좋아하시는 분들이라면 누구든지 환영해요~!	19-12-12 20:42:32
25	51	magic.jpg	10	5	19-12-21 14:00:00	19-12-21 18:00:00	40000	서울 종로구	최고의 마술사로 만들어드립니다.	19-12-12 20:46:45
*/


--○ 분위기 등록(NOW_GROUP) 데이터 삽입
INSERT INTO MOOD_REGISTER(REG_CODE, MOOD_CODE, GR_CODE)
VALUES(MOOD_REGSEQ.NEXTVAL, 2, 51);
INSERT INTO MOOD_REGISTER(REG_CODE, MOOD_CODE, GR_CODE)
VALUES(MOOD_REGSEQ.NEXTVAL, 3, 61);
--==>> 1 행 이(가) 삽입되었습니다. * 2

SELECT *
FROM MOOD_REGISTER;
/*
1	2	51
2	3	61
*/


--○ 모임 찜 테이블(GR_FAVORITE) 데이터 삽입
INSERT INTO GR_FAVORITE(GF_CODE, MEM_ID, NG_CODE, GF_DATE)
VALUES(GR_FAVSEQ.NEXTVAL, 'syw123syw@naver.com', 25, TO_DATE(SYSDATE, 'YY-MM-DD HH24:MI:SS'));
INSERT INTO GR_FAVORITE(GF_CODE, MEM_ID, NG_CODE, GF_DATE)
VALUES(GR_FAVSEQ.NEXTVAL, 'qkrwhdgh2817@naver.com', 23, TO_DATE(SYSDATE, 'YY-MM-DD HH24:MI:SS'));
/*
1	syw123syw@naver.com	    25	19-12-12 20:56:49
2	qkrwhdgh2817@naver.com	23	19-12-12 20:57:41
*/

--○ 개설확정 테이블(FIXED_GROUP) 데이터 삽입
INSERT INTO FIXED_GROUP(FIX_CODE, NG_CODE, FIX_DATE)
VALUES(FIXED_GRSEQ.NEXTVAL, 25, TO_DATE(SYSDATE, 'YY-MM-DD HH24:MI:SS'));
INSERT INTO FIXED_GROUP(FIX_CODE, NG_CODE, FIX_DATE)
VALUES(FIXED_GRSEQ.NEXTVAL, 23, TO_DATE(SYSDATE, 'YY-MM-DD HH24:MI:SS'));
/*
2	25	19-12-12 21:16:53
3	23	19-12-12 21:17:02
*/


--○ 모임신청 테이블(GR_REQUEST) 데이터 삽입
INSERT INTO GR_REQUEST(RE_CODE, NG_CODE, MEM_ID, RE_DATE)
VALUES(GR_REQSEQ.NEXTVAL, 25, 'bblee2478@naver.com', TO_DATE(SYSDATE, 'YY-MM-DD HH24:MI:SS'));
INSERT INTO GR_REQUEST(RE_CODE, NG_CODE, MEM_ID, RE_DATE)
VALUES(GR_REQSEQ.NEXTVAL, 25, 'qkfkaroql96@naver.com', TO_DATE(SYSDATE, 'YY-MM-DD HH24:MI:SS'));
INSERT INTO GR_REQUEST(RE_CODE, NG_CODE, MEM_ID, RE_DATE)
VALUES(GR_REQSEQ.NEXTVAL, 25, 'bsbpsj97@naver.com', TO_DATE(SYSDATE, 'YY-MM-DD HH24:MI:SS'));
INSERT INTO GR_REQUEST(RE_CODE, NG_CODE, MEM_ID, RE_DATE)
VALUES(GR_REQSEQ.NEXTVAL, 25, 'wag2397@gmail.com', TO_DATE(SYSDATE, 'YY-MM-DD HH24:MI:SS'));
INSERT INTO GR_REQUEST(RE_CODE, NG_CODE, MEM_ID, RE_DATE)
VALUES(GR_REQSEQ.NEXTVAL, 23, 'wag2397@gmail.com', TO_DATE(SYSDATE, 'YY-MM-DD HH24:MI:SS'));
INSERT INTO GR_REQUEST(RE_CODE, NG_CODE, MEM_ID, RE_DATE)
VALUES(GR_REQSEQ.NEXTVAL, 23, 'bsbpsj97@naver.com', TO_DATE(SYSDATE, 'YY-MM-DD HH24:MI:SS'));
/*
1	25	bblee2478@naver.com	    19-12-12 21:21:37
2	25	qkfkaroql96@naver.com	19-12-12 21:26:06
3	25	bsbpsj97@naver.com	    19-12-12 21:26:06
4	25	wag2397@gmail.com	    19-12-12 21:26:06
5	23	wag2397@gmail.com	    19-12-12 21:30:37
6	23	bsbpsj97@naver.com	    19-12-12 21:30:49
*/

COMMIT;

SELECT *
FROM MEMBER;
SELECT *
FROM GR_REQUEST;

