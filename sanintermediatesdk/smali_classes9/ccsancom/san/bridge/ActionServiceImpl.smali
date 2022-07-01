.class public Lccsancom/san/bridge/ActionServiceImpl;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lccsancom/san/bridge/removeDownloadListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public IncentiveDownloadUtils(Ljava/lang/String;Lccsanandroid/content/Context;Lccsanandroid/webkit/WebView;)Lccsanandroid/webkit/DownloadListener;
    .locals 1

    .line 6
    new-instance v0, Lccsansan/ds/IncentiveDownloadUtils;

    invoke-direct {v0, p1, p2, p3}, Lccsansan/ds/IncentiveDownloadUtils;-><init>(Ljava/lang/String;Lccsanandroid/content/Context;Lccsanandroid/webkit/WebView;)V

    return-object v0
.end method

.method public addDownloadListener(Lccsansan/p/getDownloadedList;Ljava/lang/String;ZLccsansan/m/removeDownloadListener;)V
    .locals 0

    .line 3
    invoke-static {p1, p2, p3, p4}, Lccsancom/san/az/addDownloadListener;->getDownloadingList(Lccsansan/p/getDownloadedList;Ljava/lang/String;ZLccsansan/m/removeDownloadListener;)V

    return-void
.end method

.method public removeDownloadListener(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 7
    invoke-static {p1, p2}, Lccsancom/san/az/getDownloadedRecordByUrl;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public unifiedDownload()V
    .locals 0

    .line 1
    invoke-static {}, Lccsansan/au/addDownloadListener;->removeDownloadListener()V

    .line 2
    invoke-static {}, Lccsansan/au/unifiedDownload;->getDownloadingList()V

    return-void
.end method

.method public unifiedDownload(Lccsanandroid/content/Context;Lccsancom/san/cpi/xz/AdXzParams;)V
    .locals 0

    .line 5
    invoke-static {p1, p2}, Lccsansan/au/addDownloadListener;->addDownloadListener(Lccsanandroid/content/Context;Lccsancom/san/cpi/xz/AdXzParams;)V

    return-void
.end method

.method public unifiedDownload(Ljava/lang/String;)V
    .locals 0

    .line 4
    invoke-static {p1}, Lccsancom/san/az/addDownloadListener;->unifiedDownload(Ljava/lang/String;)Z

    return-void
.end method

.method public unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p1, p2}, Lccsancom/san/az/getDownloadStatusByUrl;->addDownloadListener(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
