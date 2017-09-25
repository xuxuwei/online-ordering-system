package com.newer.util;

import org.hibernate.cfg.Configuration;
import org.hibernate.tool.hbm2ddl.SchemaExport;

public class CreateDB {
	 public static void main(String[] args) {  
	        //装载配置文件  
	        Configuration cfg = new Configuration().configure();  
	        SchemaExport export = new SchemaExport(cfg);  
	        export.create(true, true);  
	    }  
}
