package com.chen.controller.adminController;

import com.chen.MyUtils.CutPage;
import com.chen.Service.adminService.TopicService;
import com.chen.pojo.Select;
import com.chen.pojo.Topic;
import lombok.Getter;
import lombok.Setter;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
@RequestMapping("/topic")
public class TopicController {

    @Autowired
    private TopicService topicService;

    @Autowired
    private CutPage cutPage;

    @Autowired
    private Select select;

    @Setter
    @Getter
    private List<Topic> topicList;

    @GetMapping("/topicList")
    public String topicList(Model model){
        // page ins
        cutPage.setNowPage(1);
        // recover
        cutPage.setEveryPageCount(CutPage.EVERYPAGECOUNT);
        // user total
        cutPage.setTotalCount(topicService.getTotalTopicCount());

        // Search null first
        select.setSelectMessage("");
        // recover
        select.setShowCount(CutPage.EVERYPAGECOUNT);
        // paging justify
        topicList = topicService.getTopicList();
        model.addAttribute("topicList", cutPage.getLimitList(topicList));
        // update list
        model.addAttribute("cutPage", cutPage);
        model.addAttribute("select", select);

        return "admin/topic/topic-list";
    }


    //Redirect the cutPage in this class after nowPage++
    @GetMapping("/nextPage")
    public String nextPage(Model model){
        // If selectMessage is not empty, it is a normal search; if it is empty, it is either an empty search or a nextPage redirect back
        if (cutPage.getNowPage() != cutPage.getPageCount()){
            cutPage.setNowPage(cutPage.getNowPage() + 1);
        }
        model.addAttribute("cutPage", cutPage);
        model.addAttribute("select", select);
        model.addAttribute("topicList", cutPage.getLimitList(topicList));
        return "admin/topic/topic-list";
    }

    @GetMapping("/selectSubmit")
    // If "selectMessage" has a value, it's a regular search, otherwise it's either an empty search or a redirected "nextPage".
    public String selectSubmit(Select viewSelect, Model model){

        int showCount = select.getShowCount();
        select = viewSelect;
        select.setShowCount(showCount);
        // Set page number to 1 before each search to prevent list overflow.
        cutPage.setNowPage(1);
        // Display total number of pages after search.
        cutPage.setTotalCount(topicService.getTopicByWhichCount(select));
        // display updated list
        //topicList = topicService.getTopicByWhich(select);
        topicList = topicService.getTopicAndUserByWhich(select);

        model.addAttribute("topicList", cutPage.getLimitList(topicList));
        model.addAttribute("select", select);
        model.addAttribute("cutPage", cutPage);

        return "admin/topic/topic-list";
    }

    @GetMapping("/lastPage")
    public String lastPage(Model model){
        // If selectMessage is not empty, it is a normal search; if it is empty, it is either an empty search or a nextPage redirect back
        if(cutPage.getNowPage() != 1){
            cutPage.setNowPage(cutPage.getNowPage() - 1);
        }
        model.addAttribute("cutPage", cutPage);
        model.addAttribute("select", select);
        model.addAttribute("topicList", cutPage.getLimitList(topicList));
        return "admin/topic/topic-list";
    }

    @GetMapping("/toWhichPage/{page}")
    public String toWhichPage(@PathVariable("page") Integer page, Model model){
        // If selectMessage is not empty, it is a normal search; if it is empty, it is either an empty search or a nextPage redirect back
        if (page > cutPage.getPageCount()){
            cutPage.setNowPage(cutPage.getPageCount());
        } else {
            cutPage.setNowPage(page);
        }
        model.addAttribute("cutPage", cutPage);
        model.addAttribute("select", select);
        model.addAttribute("topicList", cutPage.getLimitList(topicList));
        return "admin/topic/topic-list";
    }

    @GetMapping("/deleteTopic/{id}")
    public String memberList(@PathVariable("id") Integer id){
        topicService.deleteTopicById(id);
        return "redirect:/topic/topicList";
    }

    @GetMapping("/updateShowCount/{showCount}")
    public String updateShowCount(@PathVariable("showCount") int showCount, Model model){
        cutPage.setNowPage(1);
        cutPage.setEveryPageCount(showCount);
        select.setShowCount(showCount);
        model.addAttribute("select", select);
        model.addAttribute("cutPage", cutPage);
        model.addAttribute("topicList", cutPage.getLimitList(topicList));
        return "admin/topic/topic-list";
    }
}
