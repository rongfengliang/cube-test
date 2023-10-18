cube(`userapp`, {
  sql_table: `DALONG.USERAPP`,
  
  data_source: `default`,
  
  joins: {
    
  },
  
  dimensions: {
    name: {
      sql: `NAME`,
      type: `string`
    },
    
    version: {
      sql: `VERSION`,
      type: `string`
    }
  },
  
  measures: {
    count: {
      type: `count`
    }
  },
  
  pre_aggregations: {
    // Pre-aggregation definitions go here.
    // Learn more in the documentation: https://cube.dev/docs/caching/pre-aggregations/getting-started
  }
});
