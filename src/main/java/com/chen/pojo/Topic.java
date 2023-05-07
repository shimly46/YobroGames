package com.chen.pojo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.Date;
import java.util.List;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class Topic {
    private int id;
    private int topicUserId;
    private String title;
    // Tentative content storage method
    private String content;
    private String topicPicture;
    private Date topicTime;
    private int supportCount;
    private int CriticismCount;
    private int commentCount;
    private int browseCount;
    private int topicTagId;
    private int topicType;
    private String tagName;
    private User user;
    private List<Comment> commentList;
}
