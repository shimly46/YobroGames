package com.chen.MyUtils;

import com.chen.Service.adminService.AppraiseServise;
import com.chen.Service.adminService.TopicService;
import com.chen.pojo.Appraise;
import com.chen.pojo.User;
import org.springframework.beans.factory.annotation.Autowired;

import javax.servlet.http.HttpSession;
import java.util.*;

public class AppraiseUtil {

    public static HashMap<Integer, Integer> appraise(HttpSession session, Integer topicId ,HashMap<Integer, Integer> appraiseMap, AppraiseServise appraiseServise, String s){
        User userLogin = (User)session.getAttribute("loginUser");
        List<Appraise> appraiseList;
        if (Objects.nonNull(appraiseMap)){
            appraiseMap.clear();
        }

        if (Objects.nonNull(userLogin)){
            if (s.equals("topic")){
                // Appraise list
                appraiseList = appraiseServise.getAppraiseList(userLogin.getId(), topicId, 1);

                if (Objects.nonNull(appraiseList)){
                    for (Appraise appraise : appraiseList) {//Appraise Map
                        appraiseMap.put(appraise.getTopicId(), appraise.getStatus());
                    }
                }
            }

            if (s.equals("comment")){
                // specific appraise
                appraiseList = appraiseServise.getAppraiseList(userLogin.getId(), topicId, 0);

                if (Objects.nonNull(appraiseList)){
                    for (Appraise appraise : appraiseList) {//Appraise Map
                        appraiseMap.put(appraise.getCommentId(), appraise.getStatus());
                    }
                }
            }
        }

        return appraiseMap;
    }

}
