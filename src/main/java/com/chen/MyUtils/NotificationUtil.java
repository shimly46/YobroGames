package com.chen.MyUtils;

import com.chen.Service.adminService.CommentService;
import com.chen.Service.adminService.NotificationService;
import com.chen.Service.adminService.TopicService;
import com.chen.Service.adminService.UserService;
import com.chen.pojo.Notification;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import java.util.Date;
import java.util.HashMap;


@Data
@AllArgsConstructor
@NoArgsConstructor
@Component
public class NotificationUtil extends Notification {

    private int fromId;
    private int toId;
    private String fromName;
    private String toName;
    private String title;  //message title
    private String content; //message content
    private Date time;
    private int topicId;
    private int commentId;
    private String topicTitle;
    private String commentContent;
    private String str;
    private int subject;
    private String chatContent;
    private UserService userService;
    private TopicService topicService;
    private CommentService commentService;

    public void setNeed(int fromId, int toId, int topicId, int commentId, UserService userService, TopicService topicService, CommentService commentService){
        this.setFromId(fromId);
        this.setToId(toId);
        this.setTopicId(topicId);
        this.setCommentId(commentId);
        this.setUserService(userService);
        this.setTopicService(topicService);
        this.setCommentService(commentService);
        this.setAll();
    }

    public void setAll(){
        this.setFromName(userService.getUserById(fromId).getUsername());
        this.setToName(userService.getUserById(toId).getUsername());
        this.setTime(new Date());
        this.setTopicTitle(topicService.getTopicById(topicId).getTitle());
        if(commentId != 0){
            this.setCommentContent(commentService.getCommentById(commentId).getContent());
        }
    }

    public void setChatNeed(int fromId, int toId, String content ,UserService userService){
        this.setFromId(fromId);
        this.setToId(toId);
        this.setChatContent(content);
        this.setUserService(userService);
        setChatAll();
    }

    public void setChatAll(){
        if (fromId != 0){
            this.setFromName(userService.getUserById(fromId).getUsername());
        } else {
            this.setFromName("Tourists");
        }
        this.setToName(userService.getUserById(toId).getUsername());
        this.setTime(new Date());
        this.setSubject(4);
        this.setContent("<span style=\"color: #0e8c8c\">" + fromName + "</span>" + "send you an message");
    }

    /*note for appraise*/
    public NotificationUtil supportTopic(){
        this.setSubject(2);
        this.setTitle("note for appraise");
        this.setContent(fromName + "at" + time.toString() + "appraise you‘<span style=\"color: #0e8c8c\">" + topicTitle + "</span>‘");
        return this;
    }

    /*note for cancel*/
    public NotificationUtil cancelSupportTopic(){
        this.setSubject(2);
        this.setTitle("note for cancel");
        this.setContent(fromName + "at" + time + "cancel your appraise ’<span style=\"color: #0e8c8c\">" + topicTitle + "</span>’");
        return this;
    }

    /*note for comment*/
    public NotificationUtil supportComment(){
        this.setSubject(2);
        this.setTitle("note for comment");
        this.setContent(fromName + "at" + time.toString() + "your appraising topic'" + topicTitle + "'make a comment：‘<span style=\"color: #0e8c8c\">" + commentContent + "</span>’");
        return this;
    }

    /*note for cancel*/
    public NotificationUtil cancelSupportComment(){
        this.setSubject(2);
        this.setTitle("note for cancel!");
        this.setContent(fromName + "at" + time + "cancelling appraising topic'" + topicTitle + "'in the comment：‘<span style=\"color: #0e8c8c\">" + commentContent + "</span>‘");
        return this;
    }


}
