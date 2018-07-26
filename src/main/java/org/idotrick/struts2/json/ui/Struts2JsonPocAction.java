package org.idotrick.struts2.json.ui;

import java.util.ArrayList;
import java.util.List;

import org.apache.struts2.ServletActionContext;
import org.idotrick.struts2.json.vo.Row;

import com.opensymphony.xwork2.ActionSupport;
import javax.servlet.http.HttpServletRequest;

public class Struts2JsonPocAction extends ActionSupport {
	private static final long serialVersionUID = 1L;
	private String username;
	private List<Row> rows;

	public String list() {
		HttpServletRequest request = ServletActionContext.getRequest();
		setRows(new ArrayList<Row>());
		getRows().add(Row.of("Col1.1","Col1.2","Col1.3","Col1.4","Col1.5","Col1.6"));
		getRows().add(Row.of("Col2.1","Col2.2","Col2.3","Col2.4","Col2.5","Col2.6"));
		getRows().add(Row.of("Col3.1","Col3.2","Col3.3","Col3.4","Col3.5","Col3.6"));
		getRows().add(Row.of("Col4.1","Col4.2","Col4.3","Col4.4","Col4.5","Col4.6"));
		getRows().add(Row.of("Col5.1","Col5.2","Col5.3","Col5.4","Col5.5","Col5.6"));
		getRows().add(Row.of("Col6.1","Col6.2","Col6.3","Col6.4","Col6.5","Col6.6"));
		getRows().add(Row.of("Col7.1","Col7.2","Col7.3","Col7.4","Col7.5","Col7.6"));
		getRows().add(Row.of("Col8.1","Col8.2","Col8.3","Col8.4","Col8.5","Col8.6"));
		getRows().add(Row.of("Col9.1","Col9.2","Col9.3","Col9.4","Col9.5","Col9.6"));
		getRows().add(Row.of("Col10.1","Col10.2","Col10.3","Col10.4","Col10.5","Col10.6"));
		return ActionSupport.SUCCESS;
	}
	
	public String save() {
		HttpServletRequest request = ServletActionContext.getRequest();
		return ActionSupport.SUCCESS;
	}
	
	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}


	public List<Row> getRows() {
		return rows;
	}

	public void setRows(List<Row> rows) {
		this.rows = rows;
	}
}
