SELECT
    variety,
    round(cast(avg(sepallen) as numeric), 2) as avg_sepallen,
    round(cast(avg(sepalwid) as numeric), 2) as avg_sepalwid,
    round(cast(avg(petallen) as numeric), 2) as avg_petallen,
    round(cast(avg(petalwid) as numeric), 2) as avg_petalwid
FROM iris
GROUP BY variety;

SELECT
    variety,
    round(cast(stddev_samp(sepallen) as numeric), 2) as stddev_sepallen,
    round(cast(stddev_samp(sepalwid) as numeric), 2) as stddev_sepalwid,
    round(cast(stddev_samp(petallen) as numeric), 2) as stddev_petallen,
    round(cast(stddev_samp(petalwid) as numeric), 2) as stddev_petalwid
FROM iris
GROUP BY variety;
