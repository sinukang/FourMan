
create table member(
mbno int primary key auto_increment,
mbid varchar(20) null,
mbpwd varchar(100) null,
mbname varchar(20) not null,
mbemail varchar(100) not null,
mbdate datetime not null default now(),
mbdatem datetime null,
exsite varchar(2) not null default 'N', -- 'Y', 'N' : 외부, 내부
mbdelyn varchar(2) not null default 'N', -- 'Y', 'N' : 탈퇴, 탈퇴x
manager varchar(2) not null default 'U', -- 'U', 'M' : 사용자, 관리자
mbaddr varchar(100) not null
);

create table board(
bdno int primary key auto_increment,
mbno int not null,
bdcate varchar(2) not null,	-- 'G', 'N', 'Q' : 갤, 공, 질
bdtitle varchar(100) not null,
bdcont varchar(200) not null,
bddate datetime not null default now(),
bddatem datetime null,
bddelyn varchar(2) not null default 'N', -- 'Y', 'N' : 삭제, 삭제x
foreign key(mbno) references member(mbno) on update cascade
);

create table gallery(
bdglno int primary key auto_increment,
bdno int null,
rvno int null,
bdglname varchar(100) not null,
bdgldate datetime not null DEFAULT now(),
bdgldatem datetime null,
bdgldelyn varchar(2) not null default 'N',
foreign key(bdno) references board(bdno) on update cascade
);

create table comment(
cmno int primary key auto_increment,
mbno int not null,
bdno int not null,
cmcont varchar(300) not null,
cmdate datetime not null default now(),
cmdatem datetime null,
cmdelyn varchar(2) not null default 'N', -- 'Y', 'N' : 삭제, 삭제x
foreign key(mbno) references member(mbno) on update cascade,
foreign key(bdno) references board(bdno) on update cascade
);

create table tempcontents(
contentid varchar(30) primary key,
title varchar(200) not null,
contenttypeid varchar(30) not null,
mapx DOUBLE null,
mapy DOUBLE null,
firstimage varchar(100) null,
contentdate datetime not null,
contentdatem datetime null,
contentdelyn varchar(2) not null DEFAULT 'N',-- 'Y', 'N' : 삭제, 삭제x
detailCommon1 text null,
detailIntro1 text null,
detailImage1 text null,
menuImage1 text null,
contentsView int not null DEFAULT 1
);

create table review(
rvno int primary key auto_increment,
mbno int not null,
contentid varchar(30) not null,
rvcont varchar(300) null,
rvrate int not null,
rvdate datetime not null default now(),
rvdatem datetime null,
rvdelyn varchar(2) not null default 'N', -- 'Y', 'N' : 삭제, 삭제
foreign key(contentid) references tempcontents(contentid) on update cascade,
foreign key(mbno) references member(mbno) on update cascade
);

create table bookmark(
bmno int primary key auto_increment,
mbno int not null,
contentid varchar(30) not null,
bmdate datetime not null DEFAULT now(),
bmdatem datetime null,
bmdelyn varchar(2) not null default 'N', -- 'Y', 'N' : 해제, 해제x
foreign key(mbno) references member(mbno) on update cascade,
foreign key(contentid) references tempcontents(contentid) on update cascade
);

create table like_(
lkno int primary key auto_increment,
mbno int not null,
bdno int null,
rvno int null,
lkdate datetime not null DEFAULT now(),
lkdatem datetime null,
lkdelyn varchar(2) not null default 'N', -- 'Y', 'N' : 해제, 해제x
foreign key(mbno) references member(mbno) on update cascade,
foreign key(bdno) references board(bdno) on update cascade,
foreign key(rvno) references review(rvno) on update cascade
);

create table qna(
qano int primary key auto_increment,
qmbno int not null,
ambno int null,
qtitle varchar(50) not null,
qcont varchar(200) not null,
qdate datetime not null default now(),
qdatem datetime null,
acont varchar(200) null,
adate datetime null,
adatem datetime null,
qadelyn varchar(2) not null default 'N', -- 'Y', 'N' : 삭제, 삭제x
foreign key(qmbno) references member(mbno) on update cascade,
foreign key(ambno) references member(mbno) on update cascade
);

create table point(
ptno int primary key auto_increment,
mbno int not null,
ptpm varchar(2) not null,
ptrs varchar(100) not null,
ptpt int not null,
acpt int not null,
rmpt int not null,
ptdate datetime not null DEFAULT now(),
foreign key(mbno) references member(mbno) on update cascade
);


create table report(
rpno int primary key auto_increment,
mbno2 int not null,
mbno int not null,
rvno int null,
bdno int null,
cmno int null,
rpcate varchar(5) not null, -- 'F', 'A', 'P', 'V' : 욕설, 광고, 음란물, 폭력
rpdelyn varchar(2) not null, -- 'Y', 'N' : 처리후, 처리전
foreign key(mbno2) references member(mbno) on update cascade,
foreign key(mbno) references member(mbno) on update cascade,
foreign key(rvno) references review(rvno) on update cascade,
foreign key(bdno) references board(bdno) on update cascade,
foreign key(cmno) references comment(cmno) on update cascade
);

create table penalty(
pnno int primary key auto_increment,
rpno int not null,
mbno int not null,
pndelyn varchar(2) not null, -- 'N', 'W', 'S' : 없음, 일주일, 영구
pndate datetime not null default now(),
pndatem datetime null,
foreign key(rpno) references report(rpno) on update cascade,
foreign key(mbno) references member(mbno) on update cascade
);
