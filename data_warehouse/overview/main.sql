/*
 * data warehouse
 * - centralized data repository that aggregates, integrates, stores and processes large amounts of data from multiple sources
 * 
 * OLAP (online analytical processing)
 * - it separates the "data analysis workload" from the "standard transaction workload" of regular database management system
 * - users can then query this data to perform data analysis
 * 
 * OLTP (online transactional processing)
 * - a regular database focuses on collecting, storing, and processing data in real-time
 * 
 * four key characteristics in data warehouse
 * - subject-oriented
 *     + when building a data warehouse, you need to choose one or more subject areas to explore
 *     + EX: build data warehouse focus on "sales"
 * - integrated
 *     + means integrates data from a range of different sources
 *     + this data must be consistent format, resolve such as naming conflicts and data types
 *     + EX: data warehouse integrates data from multiple sources, website interactions, and social media
 * - non-volatile
 *     + means data should not be deleted once it's loaded to the data warehouse
 *     + purpose of a data warehouse is to analyze data as it exists
 *     + the more data you have, the better the results of your analytics
 * - time variant
 *     + a data warehouse aggregates data over a long period so that it can measure changes in data over time
 *     + this helps users to discover trends, patterns, and relationships between data elements
 *     + EX: can use data from the last few years of sales to find out why their profits have declined
 * 
 * different forms of data warehouse
 * - structured data
 *     + data that's presented in a structured format within a well-defined data model
 * - semi-structured data
 *     + partially structured data which requires more effort when performing data analysis
 * - unstructured data
 *     + data that doesn't adhere to any specific pre-defined data model
 * 
 * data lake
 * - semi-structured and unstructured data are more suited to a data lake
*/