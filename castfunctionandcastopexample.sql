--CAST()  AND (::) CAST Operators  convert one value type into another type
-- cast(value as targetvtype)
-- if converted to integer or numeric string should numeric
select cast('100' as integer);

select cast ('2024-04-04' as date);

select cast ('3.14' as double precision);

select '100':: integer;

select '2024-04-04 21:01:50'::timestamp;

select cast ('{"name":"aayush"}' as jsonb);

select cast(ARRAY[10,20,30] as text);

select cast('{10,20,30}' as integer[]);

select '{10,20,30}'::integer[] as myarray;