/*
 * dimensional data modeling
 * - a data model based on the concepts of dimensions and facts
 * - this model used to build databases in a data warehouse for data analytics
 * 
 * dimensions
 * - data elements that define a context for your measures
 * - EX: time, location
 * 
 * facts (focus on quantitive data)
 * - quantifiable data held within a database
 * - EX: sales, profits
 * 
 * two kinds of measures in the fact table
 * - stored measures: are aggregated measures stored in the data warehouse like sales data and product price
 * - calculated measures
 *     + are calculated from other measures
 *     + EX:
 *         . can calculate their profit by deducting the sold products cost from the sold price
 *         . these measures are performed through queries that rely on calculation rules programmed in the data warehouse
 * 
 * star schema
 * - is a common model for designing database in a data warehouse
 * - it's a simple dimensional data model that consist of facts and dimension tables organized as a star
 * - one or more fact tables sit in the middle of the schema connected to one or more dimension tables
 * 
 * snowflake schema
 * - it's called a snowflake schema because the schema diagram resembles a snowflake
 * - when working with a snowflake schema, you should normalize your dimensions tables to eliminate data redundancy
 * - the best approach to normalization is to group dimensions data into multiple simple sub-dimensions tables.
 * 
 * four key steps
 * - the business process: identify the business process their model must target
 * - the grain: must determine the lowest level of detail required for their data warehouse
 * - the dimensions: must identify the relevant dimensions for the context of their measures
 * - the facts: must decide which facts to measure to answer their business questions
*/