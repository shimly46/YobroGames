package com.chen.MyUtils;

import com.chen.Service.adminService.TopicService;
import com.chen.config.MyStaticProperties;
import com.chen.pojo.User;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Component;

import javax.servlet.http.HttpSession;
import java.util.HashMap;
import java.util.List;
import java.util.Objects;

@Component
@Scope("prototype")
@Data
@AllArgsConstructor
@NoArgsConstructor
public class CutPage {

    //fault
    public final static int EVERYPAGECOUNT = 5;

    //Records per page
    private int everyPageCount = EVERYPAGECOUNT;

    //total records
    private int totalCount;

    //this page
    private int nowPage = 1;

    //previous one
    private int lastPage;

    //next one
    private int nextPage;

    //The position of the first record in the current page
    private int nowFirst;

    //The position of the last record in the current page
    private int nowLast;

    //page count
    private int PageCount;

    public CutPage(int everyPageCount) {
        this.everyPageCount = everyPageCount;
    }

    public int getNowFirst(){
        return (nowPage - 1) * everyPageCount;
    }

    public int getNowLast(){
        return getNowFirst() + everyPageCount - 1;
    }

    public int getLastPage(){
        return nowPage - 1;
    }

    public int getNextPage(){
        return nowPage + 1;
    }

    public int getTotalCount(){
        return totalCount;
    }

    public int getPageCount(){
        if (getTotalCount() == 0){
            return 1;
        }
        if (getTotalCount() % getEveryPageCount() == 0){
            return getTotalCount() / everyPageCount;
        }
        return getTotalCount() / everyPageCount + 1;
    }

    // page justify
    public List getLimitList(List List){
        List alist;
        if (this.getNowLast() >= List.size()){
            alist = List.subList(this.getNowFirst(), List.size());
        } else {
            alist = List.subList(this.getNowFirst(), this.getNowLast() + 1);
        }
        return alist;
    }

    public List getLimitList(List List, CutPage cutPage){
        List alist;
        if (cutPage.getNowLast() >= List.size()){
            alist = List.subList(cutPage.getNowFirst(), List.size());
        } else {
            alist = List.subList(cutPage.getNowFirst(), cutPage.getNowLast() + 1);
        }
        return alist;
    }

    /*Assign a cutPage to users coming in later*/
    public void putPageInMap(HashMap<Integer, CutPage> cutPageMap, User loginUser, TopicService topicService){

        int id = loginUser.getId();

        CutPage cutPage = new CutPage();
        cutPage.setEveryPageCount(MyStaticProperties.everyPageTopicCount);
        cutPage.setNowPage(1);
        cutPage.setTotalCount(topicService.getTotalTopicCount());

        cutPageMap.put(id, cutPage);
    }

    public void putPageInMap(HashMap<String, CutPage> cutPageMap, HttpSession session, TopicService topicService){

        String id = session.getId();

        CutPage cutPage = new CutPage();
        cutPage.setEveryPageCount(MyStaticProperties.everyPageTopicCount);
        cutPage.setNowPage(1);
        cutPage.setTotalCount(topicService.getTotalTopicCount());

        cutPageMap.put(id, cutPage);
    }

}
