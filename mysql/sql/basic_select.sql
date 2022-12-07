use nct;

select * from infrMember;

select count(*) from infrMember;




select
	a.ifmmSeq
    ,a.ifmmName
    ,a.ifmmId
    -- ,b.ifmaAddress1
    -- ,b.ifmmSeq
    ,c.ifmpNumber
    ,c.ifmpDefaultNy
    ,c.ifmpTypeCd
	,(select ifmeEmailFull from infrMemberEmail aa where aa.ifmmSeq = a.ifmmSeq and aa.ifmeDefaultNy = 1) as email
from infrMember a
	left join infrMemberPhone c on 1=1
		and c.ifmmSeq = a.ifmmSeq
        and c.ifmpDefaultNy = 1
order by
	a.ifmmName
    , a.ifmmid
    -- a.ifmmName asc
     -- a.ifmmName desc        
;        



select
	a.ifmmSeq
    ,a.ifmmName
    ,a.ifmmId
    -- ,b.ifmaAddress1
    -- ,b.ifmmSeq
    ,c.ifmpNumber
    ,c.ifmpDefaultNy
    ,c.ifmpTypeCd
from infrMember a
	left join infrMemberPhone c on 1=1
		and c.ifmmSeq = a.ifmmSeq
        and c.ifmpDefaultNy = 1
-- left join infrMemberAddress b on b.ifmmSeq = a.ifmmSeq
-- inner join infrMemberAddress b on b.ifmmSeq = a.ifmmSeq
-- join infrMemberAddress b on b.ifmmSeq = a.ifmmSeq
where 1=1
	and c.ifmpNumber like '%1111%'
-- order by
	-- a.ifmmName
    -- , a.ifmmid
    -- a.ifmmName asc
     -- a.ifmmName desc
-- group by
	-- c.ifmpTypeCd
union -- 중복값은 제거후 출력
-- union all -- 중복값 있어도 그래도 출력 그래서 속도가 union 보다 빠르다
select
	a.ifmmSeq
    ,a.ifmmName
    ,a.ifmmId
    -- ,b.ifmaAddress1
    -- ,b.ifmmSeq
    ,c.ifmpNumber
    ,c.ifmpDefaultNy
    ,c.ifmpTypeCd
from infrMember a
	left join infrMemberPhone c on 1=1
		and c.ifmmSeq = a.ifmmSeq
        and c.ifmpDefaultNy = 1

-- left join infrMemberAddress b on b.ifmmSeq = a.ifmmSeq
-- inner join infrMemberAddress b on b.ifmmSeq = a.ifmmSeq
-- join infrMemberAddress b on b.ifmmSeq = a.ifmmSeq

where 1=1
	and c.ifmpNumber like '%3333%'
;

select
	a.ifmmSeq
    ,a.ifmmName
    ,a.ifmmId
    -- ,b.ifmaAddress1
    -- ,b.ifmmSeq
    ,c.ifmpNumber
    ,c.ifmpDefaultNy
    ,c.ifmpTypeCd
from infrMember a
	left join infrMemberPhone c on 1=1
		and c.ifmmSeq = a.ifmmSeq
        and c.ifmpDefaultNy = 1

-- left join infrMemberAddress b on b.ifmmSeq = a.ifmmSeq
-- inner join infrMemberAddress b on b.ifmmSeq = a.ifmmSeq
-- join infrMemberAddress b on b.ifmmSeq = a.ifmmSeq

where 1=1
	and c.ifmpNumber like '%3333%'
;

-- 193

select * from infrCate;

select * from infrMemberUploaded;

select
	a.ifmmSeq
    ,a.ifmmName
    ,a.ifmmId
    -- ,b.ifmaAddress1
    -- ,b.ifmmSeq
    ,c.ifmpNumber
    ,c.ifmpDefaultNy
    ,c.ifmpTypeCd
from infrMember a
	left join infrMemberPhone c on 1=1
		and c.ifmmSeq = a.ifmmSeq
        and c.ifmpDefaultNy = 1
-- left join infrMemberAddress b on b.ifmmSeq = a.ifmmSeq
-- inner join infrMemberAddress b on b.ifmmSeq = a.ifmmSeq
-- join infrMemberAddress b on b.ifmmSeq = a.ifmmSeq
where 1=1
	and c.ifmpNumber like '%3333%'
;

