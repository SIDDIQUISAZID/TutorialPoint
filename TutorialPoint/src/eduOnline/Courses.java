package eduOnline;

public class Courses {
	
	int course_id,duration;
	String course_name,quiz_table;
	
	public Courses(int course_id, String course_name, int duration, String quiz_table){
		
		this.course_id=course_id;
		this.course_name=course_name;
		this.duration=duration;
		this.quiz_table=quiz_table;
	}

	public int getCourse_id() {
		return course_id;
	}

	public void setCourse_id(int course_id) {
		this.course_id = course_id;
	}

	public int getDuration() {
		return duration;
	}

	public void setDuration(int duration) {
		this.duration = duration;
	}

	public String getCourse_name() {
		return course_name;
	}

	public void setCourse_name(String course_name) {
		this.course_name = course_name;
	}
	
	public String getQuiz_table(){
		return quiz_table;
	}

	public void setQuiz_table(String quiz_table){
		
		this.quiz_table =quiz_table;
	}
}
