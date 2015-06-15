package com.myt.pmg.model;

import java.util.Date;

import org.springframework.data.mongodb.core.mapping.Document;

@Document(collection = "report")
public class Report extends BasicEntity {
	private String pageUrl;
	private String reportAgainst;
	private String reportedBy;
	private boolean closed = false;
	private String reason;
	private Date reportDate;
	private Date closureDate;
	private String evidencePath;

	public String getPageUrl() {
		return pageUrl;
	}

	public void setPageUrl(String pageUrl) {
		this.pageUrl = pageUrl;
	}

	public String getReportAgainst() {
		return reportAgainst;
	}

	public void setReportAgainst(String reportAgainst) {
		this.reportAgainst = reportAgainst;
	}

	public String getReportedBy() {
		return reportedBy;
	}

	public void setReportedBy(String reportedBy) {
		this.reportedBy = reportedBy;
	}

	public boolean isClosed() {
		return closed;
	}

	public void setClosed(boolean closed) {
		this.closed = closed;
	}

	public String getReason() {
		return reason;
	}

	public void setReason(String reason) {
		this.reason = reason;
	}

	public Date getReportDate() {
		return reportDate;
	}

	public void setReportDate(Date reportDate) {
		this.reportDate = reportDate;
	}

	public Date getClosureDate() {
		return closureDate;
	}

	public void setClosureDate(Date closureDate) {
		this.closureDate = closureDate;
	}

	public String getEvidencePath() {
		return evidencePath;
	}

	public void setEvidencePath(String evidencePath) {
		this.evidencePath = evidencePath;
	}

	@Override
	public String toString() {
		return "Report [pageUrl=" + pageUrl + ", reportAgainst="
				+ reportAgainst + ", reportedBy=" + reportedBy + ", closed="
				+ closed + ", reason=" + reason + ", reportDate=" + reportDate
				+ ", closureDate=" + closureDate + ", evidencePath="
				+ evidencePath + "]";
	}

}
