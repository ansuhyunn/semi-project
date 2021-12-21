package com.kh.community.model.vo;

public class Event {

	private int eventNo;
	private int memNo;
	private String pNo;
	private String eventName;
	private String eventContent;
	private String eventStart;
	private String eventEnd;
	private String eventDate;
	private String eventNow;
	private String eventView;
	private String eventImage;

	public Event() {}

	public Event(int eventNo, int memNo, String pNo, String eventName, String eventContent, String eventStart,
			String eventEnd, String eventDate, String eventNow, String eventView, String eventImage) {
		super();
		this.eventNo = eventNo;
		this.memNo = memNo;
		this.pNo = pNo;
		this.eventName = eventName;
		this.eventContent = eventContent;
		this.eventStart = eventStart;
		this.eventEnd = eventEnd;
		this.eventDate = eventDate;
		this.eventNow = eventNow;
		this.eventView = eventView;
		this.eventImage = eventImage;
	}

	
	// 페이징바 관련
	public Event(int eventNo, int memNo, String eventName, String eventStart, String eventEnd, String eventNow,
			String eventImage) {
		super();
		this.eventNo = eventNo;
		this.memNo = memNo;
		this.eventName = eventName;
		this.eventStart = eventStart;
		this.eventEnd = eventEnd;
		this.eventNow = eventNow;
		this.eventImage = eventImage;
	}

	public int getEventNo() {
		return eventNo;
	}

	public void setEventNo(int eventNo) {
		this.eventNo = eventNo;
	}

	public int getMemNo() {
		return memNo;
	}

	public void setMemNo(int memNo) {
		this.memNo = memNo;
	}

	public String getpNo() {
		return pNo;
	}

	public void setpNo(String pNo) {
		this.pNo = pNo;
	}

	public String getEventName() {
		return eventName;
	}

	public void setEventName(String eventName) {
		this.eventName = eventName;
	}

	public String getEventContent() {
		return eventContent;
	}

	public void setEventContent(String eventContent) {
		this.eventContent = eventContent;
	}

	public String getEventStart() {
		return eventStart;
	}

	public void setEventStart(String eventStart) {
		this.eventStart = eventStart;
	}

	public String getEventEnd() {
		return eventEnd;
	}

	public void setEventEnd(String eventEnd) {
		this.eventEnd = eventEnd;
	}

	public String getEventDate() {
		return eventDate;
	}

	public void setEventDate(String eventDate) {
		this.eventDate = eventDate;
	}

	public String getEventNow() {
		return eventNow;
	}

	public void setEventNow(String eventNow) {
		this.eventNow = eventNow;
	}

	public String getEventView() {
		return eventView;
	}

	public void setEventView(String eventView) {
		this.eventView = eventView;
	}

	public String getEventImage() {
		return eventImage;
	}

	public void setEventImage(String eventImage) {
		this.eventImage = eventImage;
	}

	@Override
	public String toString() {
		return "Event [eventNo=" + eventNo + ", memNo=" + memNo + ", pNo=" + pNo + ", eventName=" + eventName
				+ ", eventContent=" + eventContent + ", eventStart=" + eventStart + ", eventEnd=" + eventEnd
				+ ", eventDate=" + eventDate + ", eventNow=" + eventNow + ", eventView=" + eventView + ", eventImage="
				+ eventImage + "]";
	}
	
	

}
