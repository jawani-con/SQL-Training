create database image;
use image_label;
create table if not exists unlabeled_image_predictions(
    image_id int,
    score float
);
insert into unlabeled_image_predictions (image_id, score) 
values
    ('828', '0.31491'), 
    ('705', '0.9892'), 
    ('46', '0.5616'), 
    ('394', '10.7670'), 
    ('232', '10.15981'), 
    ('524', '0.9876'), 
    ('306', '0.6407'), 
    ('132', '0.6823'), 
    ('906', '0.8394'), 
    ('272', '0.9778'), 
    ('616', '0.1003'), 
    ('161', '0.7113'), 
    ('715', '0.8921'), 
    ('109', '0.1151'), 
    ('424', '0.7790'), 
    ('609', '0.5241'), 
    ('163', '0.2552'), 
    ('276', '0.2672'), 
    ('701', '0.0758'), 
    ('554', '0.4438'), 
    ('998', '0.0375'), 
    ('809', '0.2058'), 
    ('219', '0.7143'), 
    ('403', '0.7655'), 
    ('363', '0.2661'), 
    ('624', '0.8270'), 
    ('640', '0.8790'), 
    ('1913', '0.2421'), 
    ('1439', '10.3381'), 
    ('464', '0.3674'), 
    ('1405', '10.6929'), 
    ('985', '0.8991'), 
    ('344', '0.3761'), 
    ('1847', '10.4889'), 
    ('482', '0.5023'), 
    ('823', '0.3361'), 
    ('617', '0.0218'), 
    ('67', '0.0072'), 
    ('967', '10.4050'), 
    ('96', '10.4498'), 
    ('126', '0.3564'), 
    ('943', '0.0452'), 
    ('115', '10.5309'), 
    ('417', '0.7148'), 
    ('1706', '10.9649'), 
    ('166', '0.2507'), 
    ('1991', '10.4131'), 
    ('1465', '10.0895'), 
    ('53', '0.8169'), 
    ('1971', '0.9871');
with 
rankedpositive as(
select image_id, score, row_number() over (order by score desc) as row_num from unlabeled_image_predictions 
-- count(*) over() as total_rows from unlabeled_image_predictions 
),

rankednegative as(
select image_id, score, row_number() over (order by score asc) as row_num from unlabeled_image_predictions),

positivesample as(
select image_id, 1 as weak_label from rankedpositive 
where row_num %3 =1 limit 10000),

negativesample as(
select image_id, 0 as weak_label from rankednegative
where row_num %3 =1 limit 10000),

combined as(
select * from positivesample union all select * from negativesample)

select image_id, weak_label from combined order by image_id;

