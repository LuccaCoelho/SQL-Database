CREATE 
    ALGORITHM = UNDEFINED 
    DEFINER = `root`@`localhost` 
    SQL SECURITY DEFINER
VIEW `ordersview150` AS
    SELECT 
        `c`.`CustomerID` AS `CustomerID`,
        `c`.`FullName` AS `FullName`,
        `o`.`OrderID` AS `OrderID`,
        `o`.`TotalCost` AS `TotalCost`,
        `m`.`Courses` AS `Courses`,
        `mi`.`CourseName` AS `CourseName`,
        `mi`.`StarterName` AS `StarterName`
    FROM
        (((`orders` `o`
        JOIN `customers` `c` ON ((`o`.`customers_CustomerID` = `c`.`CustomerID`)))
        JOIN `menu` `m` ON ((`o`.`OrderID` = `m`.`orders_OrderID`)))
        JOIN `menuitems` `mi` ON ((`m`.`MenuID` = `mi`.`menu_MenuID`)))
    WHERE
        (`o`.`TotalCost` > 150)
    ORDER BY `o`.`TotalCost`