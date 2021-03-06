package com.stockanalytics.timer;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;

import com.stockanalytics.service.StockInfoService;
import com.stockanalytics.tools.IOTools;


public class CronTask {

	@Autowired
	private StockInfoService stockInfoService;
	@Autowired
	private IOTools ioTools;
	private int count = 0;
	Logger logger = Logger.getLogger(CronTask.class);
	
	/**
	 * 执行任务
	 */
	public void execute(){
		try {
			stockInfoService.execInsertStockInfo();
//			ioTools.foreachImportMongo();
		} catch (Exception e) {
			e.printStackTrace();
		}finally{
			count++;
			logger.info("执行execute第"+count+"次");
		}
	}
	
	
}
