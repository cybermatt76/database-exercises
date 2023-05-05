USE adlister;

SELECT users.email, ads.ad_title, ads.description, ads_category.category
FROM users
         INNER JOIN ads ON users.user_id = ads.user_id
         INNER JOIN ads_category ON ads.cat_id = ads_category.cat_id;

SELECT ads.ad_title, ads_category.category
FROM ads
         JOIN ads_category ON ads.cat_id = ads_category.cat_id;

SELECT ads.ad_title, ads.description, ads_category.category
FROM ads
         JOIN ads_category ON ads.cat_id = ads_category.cat_id
ORDER BY ads_category.category;

SELECT ads.ad_title, users.email
FROM ads
         JOIN users ON ads.user_id = users.user_id;



