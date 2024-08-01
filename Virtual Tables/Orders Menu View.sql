CREATE 
    ALGORITHM = UNDEFINED 
    DEFINER = `root`@`localhost` 
    SQL SECURITY DEFINER
VIEW `orders_menu_view` AS
    SELECT 
        `m`.`Courses` AS `MenuName`
    FROM
        `menu` `m`
    WHERE
        `m`.`orders_OrderID` IN (SELECT 
                `o`.`OrderID`
            FROM
                `orders` `o`
            WHERE
                (`o`.`Quantity` > 2)
            GROUP BY `o`.`OrderID`)