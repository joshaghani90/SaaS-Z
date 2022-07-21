--You might need to create a schema/dataset to execute the below query, depending on the database of choice. The below syntax is for BigQuery's Standard SQL and assume the existence of a `test` dataset.

create or replace table test.challenge_companies (
id int64,
name string,
origin_date date options(description="The date when the customer was signed."),
first_order_date_1 date options(description="first order placed"),
churned_date date options(description="The churn date, if available."),
saas_contract_duration int64 options(description="The number of months of the company contract duration from the sign date."),
saas_contract_total_value_in_usd numeric options(description="The total amount of the client contract for the entire duration")

);

insert test.challenge_companies (id, name,origin_date, first_order_date_1, churned_date, saas_contract_duration, saas_contract_total_value_in_usd)
values
    (1, 'Company A','2021-01-15', '2021-02-01', '2022-02-11', 14, 14000),
    (2, 'Company B','2021-01-11', '2021-02-05', null, 24, 2000),
    (3, 'Company C','2021-01-21', '2021-02-22', null, 24, 1100),
    (4, 'Company D','2021-01-31', '2021-01-01', '2021-11-23', 12, 3000),
    (5, 'Company E','2021-02-01', '2021-02-01', null, 24, 2000),
    (6, 'Company F','2021-02-01', '2021-02-01', null, 18, 1500),
    (7, 'Company G','2021-03-01', '2021-05-01', null, 60, 5000),
    (8, 'Company H','2021-04-01', '2021-04-11', '2021-12-31', 12, 2200),
    (9, 'Company I','2021-07-01', null, null, 36, 3400),
    (10, 'Company J','2021-09-01', null, null, 24, 4000),
    (11, 'Company K','2021-10-01', null, null, 36, 5000),
    (12, 'Company L','2021-11-01', null, null, 12, 4500),
    (13, 'Company M','2021-12-11', null, null, 12, 3000),
    (14, 'Company N','2021-12-05', null, null, 12, 1000)
;

select * from test.challenge_companies