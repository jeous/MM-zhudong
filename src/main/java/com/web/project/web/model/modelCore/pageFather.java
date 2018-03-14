package com.web.project.web.model.modelCore;

/**
 * Created by Server on 2018/3/13.
 */
public class pageFather {

//    private int page=1; //limit 下标几 例如   limit=5 ,offset=10, limit 5,10  意思-》从下标为5开始的数据 截取10条 数据

    public int getLimit() {
        return limit;
    }

    public void setLimit(int limit) {
        this.limit = limit;
    }

    public int getOffset() {
        return offset;
    }

    public void setOffset(int offset) {
        this.offset = offset;
    }

    private int limit;   //offset :代表多少条

    private int offset;

    public int getPage() {
        return page;
    }

    public void setPage(int page) {
        this.page = (page-1)*limit;
    }

    private int page;

}
