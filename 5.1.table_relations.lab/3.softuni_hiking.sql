SELECT
    start_point,
    end_point,
    leader_id,
    c.first_name || ' ' || c.last_name
FROM routes AS r
    JOIN
        campers AS c
    ON r.leader_id = c.id