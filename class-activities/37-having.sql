SELECT
    COUNT(*) as total,
    country
from
    users
GROUP BY
    country
HAVING
    COUNT(*) > 5
    AND 5
ORDER BY
    COUNT(*) DESC;




SELECT
    COUNT(*) as total,
    country
from
    users
GROUP BY
    country
HAVING
    COUNT(*) BETWEEN 1
    AND 5
ORDER BY
    COUNT(*) DESC;