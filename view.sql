/* One called Derby containing the year and the derby winner. */
CREATE VIEW Derby AS (
    SELECT
        year,
        derbywinner AS winner
    FROM winner
);

/* One called Preakness containing the year and the Preakness winner. */
CREATE VIEW Preakness AS (
    SELECT
        year,
        preaknesswinner AS winner
    FROM winner
);

/* Once called Belmont containing the year and the Belmont winner. */
CREATE VIEW Belmont AS (
    SELECT
        year,
        belmontwinner AS winner
    FROM winner
);

/* But alias the race winner attribute as winner! */
/*
end view
*/