/*
 * normalization is an important
 * - reduce data duplication
 * - avoid data modification implication
 * - simplify queries
 * 
 * three levels of data normalization can be used to help resolve or avoid these anomalies
 * - first normal form (1NF)
 *     + enforces data atomictity and eliminates unnecessary repeating data groups
 *     + one instance of a value per field (column)
 *     +EX:
 *         . engament ring and diamond ring products in the same cell
 *         . this violates the atomicity rule
 *         . there should only be one instance of a value per column
 *         . assign the table of product id columns to identify each unique record
 * - second normal form (2NF)
 *     + it must already be in 1NF
 *     + table must be defined with a "composite primary key"
 *     + table cannot contain any relationships built on functional or "partial dependency"
 *     + partial dependency: you must identify if there is any non-key attibutes that depend on one part of the composite key
 *     + EX:
 *         . composite key: order id, product id
 *         . order date only depends on order id
 *         . remove order date from table
 * - third normal form (3NF)
 *     + it must already be in 2NF
 *     + resolve issues of "transitive dependency", when non-key attributes depend on one another
 *     + removes unnecessary data duplication
 *     + ensure data consistency and integrity
 *     + EX:
 *         . the city and zip code are non-key attributes
 *         . but the city value based on the zip code value
 *         . if change the zip code value, need to change the city name value
 *         . this means a non-key attribute depends on another non-key attribute, which violate the 3NF
 *         . solve this, can split the table to two tables
*/