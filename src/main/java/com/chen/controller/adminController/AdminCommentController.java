package com.chen.controller.adminController;

import com.chen.MyUtils.CutPage;
import com.chen.Service.adminService.CommentService;
import com.chen.pojo.Comment;
import com.chen.pojo.Select;
import lombok.Getter;
import lombok.Setter;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
@RequestMapping("/comment")
public class AdminCommentController {

    @Autowired
    private CommentService commentService;

    @Autowired
    private CutPage cutPage;

    @Autowired
    private Select select;

    @Setter
    @Getter
    private List<Comment> commentList;

    @GetMapping("/commentList")
    public String topicList(Model model){
        // page ins
        cutPage.setNowPage(1);
        // recover showing page
        cutPage.setEveryPageCount(CutPage.EVERYPAGECOUNT);
        // Comment quantity
        cutPage.setTotalCount(commentService.getTotalCommentCount());

        // Search null first
        select.setSelectMessage("");
        // recover showing page
        select.setShowCount(CutPage.EVERYPAGECOUNT);
        // paging justify
        commentList = commentService.getCommentList();
        model.addAttribute("commentList", cutPage.getLimitList(commentList));

        // update list
        model.addAttribute("cutPage", cutPage);
        model.addAttribute("select", select);

        return "admin/comment/commentList";
    }

    @GetMapping("/selectSubmit")
    // If selectMessage is not empty, it is a normal search; if it is empty, it is either an empty search or a nextPage redirect back
    public String selectSubmit(Select viewSelect, Model model){
        int showCount = select.getShowCount();
        select = viewSelect;
        select.setShowCount(showCount);

        // The page number is called back to 1 before each search to avoid List overflow
        cutPage.setNowPage(1);
        // set the quantity of showing page
        cutPage.setTotalCount(commentService.getCommentByWhichCount(viewSelect));
        // update list
        commentList = commentService.getCommentByWhich(viewSelect);
        //System.out.println(commentList.get(0));
        model.addAttribute("commentList", cutPage.getLimitList(commentList));
        /*for (Comment comment : commentList) {
            System.out.println(comment.getAuthor().getUsername());
        }*/

        System.out.println(viewSelect.getMessage());

        model.addAttribute("select", select);
        model.addAttribute("cutPage", cutPage);

        return "admin/comment/commentList";
    }


    @GetMapping("/nextPage")
    public String nextPage(Model model){
        // Here, cutPage is modified but there is no need to re-pass the session,
        // the session is to take the address, real-time update, model is equal to request
        if (cutPage.getNowPage() != cutPage.getPageCount()){
            cutPage.setNowPage(cutPage.getNowPage() + 1);
        }
        model.addAttribute("select", select);
        model.addAttribute("cutPage", cutPage);
        model.addAttribute("commentList", cutPage.getLimitList(commentList));
        return "admin/comment/commentList";
    }


    @GetMapping("/lastPage")
    public String lastPage(Model model){
        //If selectMessage is not empty, it is a normal search; if it is empty, it is either an empty search or a nextPage redirect back
        if(cutPage.getNowPage() != 1){
            cutPage.setNowPage(cutPage.getNowPage() - 1);
        }
        model.addAttribute("select", select);
        model.addAttribute("cutPage", cutPage);
        model.addAttribute("commentList", cutPage.getLimitList(commentList));
        return "admin/comment/commentList";
    }

    @GetMapping("/toWhichPage/{page}")
    public String toWhichPage(@PathVariable("page") Integer page, Model model){
        // Here, cutPage is modified but there is no need to re-pass the session,
        // the session is to take the address, real-time update, model is equal to request
        if (page > cutPage.getPageCount()){
            cutPage.setNowPage(cutPage.getPageCount());
        } else {
            cutPage.setNowPage(page);
        }
        model.addAttribute("select", select);
        model.addAttribute("cutPage", cutPage);
        model.addAttribute("commentList", cutPage.getLimitList(commentList));
        return "admin/comment/commentList";
    }

    @GetMapping("/updateShowCount/{showCount}")
    public String updateShowCount(@PathVariable("showCount") int showCount, Model model){
        cutPage.setNowPage(1);
        cutPage.setEveryPageCount(showCount);
        select.setShowCount(showCount);
        model.addAttribute("select", select);
        model.addAttribute("cutPage", cutPage);
        model.addAttribute("commentList", cutPage.getLimitList(commentList));
        return "admin/comment/commentList";
    }

    @GetMapping("/deleteComment/{id}")
    public String memberList(@PathVariable("id") Integer id){
        commentService.deleteComment(id);
        return "redirect:/comment/commentList";
    }

}
