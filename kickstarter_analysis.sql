-- 1. Explore table schema
PRAGMA table_info(ksprojects);

-- 2. Initial selection of relevant columns
SELECT main_category, goal, backers, pledged
FROM ksprojects
LIMIT 10;

-- 3. Filter failed, canceled, or suspended projects
SELECT main_category, goal, backers, pledged
FROM ksprojects
WHERE state IN ('failed', 'canceled', 'suspended')
LIMIT 10;

-- 4. Filter by quantity (projects with at least 100 backers and pledged >= 20,000)
SELECT main_category, backers, pledged, goal
FROM ksprojects
WHERE backers >= 100 AND pledged >= 20000 AND state IN ('failed', 'canceled', 'suspended')
LIMIT 10;

-- 5. Order results by main_category and percentage of goal funded
SELECT main_category, backers, pledged, goal, pledged/goal AS pct_pledged
FROM ksprojects
WHERE state = 'failed'
  AND backers >= 100 AND pledged >= 20000
ORDER BY main_category ASC, pct_pledged DESC
LIMIT 10;

-- 6. Apply conditional logic to categorize funding status
SELECT main_category, backers, pledged, goal,
       pledged / goal AS pct_pledged,
       CASE
           WHEN pledged / goal >= 1 THEN 'Fully funded'
           WHEN pledged / goal BETWEEN 0.75 AND 1 THEN 'Nearly funded'
           WHEN pledged / goal < 0.75 THEN 'Not nearly funded'
       END AS funding_status
FROM ksprojects
WHERE state = 'failed'
  AND backers >= 100 AND pledged >= 20000
ORDER BY main_category ASC, pct_pledged DESC
LIMIT 10;
-- Observations: Failed projects often do not reach their funding goals despite having enough backers.

-- 7. Explore an interesting subset of projects (example: Food category successful projects)
SELECT *
FROM ksprojects
WHERE main_category = 'Food' AND state = 'successful'
LIMIT 10;