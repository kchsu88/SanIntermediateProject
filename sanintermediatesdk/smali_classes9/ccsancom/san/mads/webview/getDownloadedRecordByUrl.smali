.class public Lccsancom/san/mads/webview/getDownloadedRecordByUrl;
.super Lccsancom/san/mads/webview/getDownloadingList;
.source ""


# instance fields
.field private removeDownloadListener:Lccsancom/san/mads/mraid/removeDownloadListener;


# direct methods
.method public constructor <init>(Lccsanandroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lccsancom/san/mads/webview/getDownloadingList;-><init>()V

    .line 2
    new-instance v0, Lccsancom/san/mads/mraid/removeDownloadListener;

    sget-object v1, Lccsancom/san/mads/mraid/getDownloadedCount;->INLINE:Lccsancom/san/mads/mraid/getDownloadedCount;

    invoke-direct {v0, p1, v1}, Lccsancom/san/mads/mraid/removeDownloadListener;-><init>(Lccsanandroid/content/Context;Lccsancom/san/mads/mraid/getDownloadedCount;)V

    iput-object v0, p0, Lccsancom/san/mads/webview/getDownloadedRecordByUrl;->removeDownloadListener:Lccsancom/san/mads/mraid/removeDownloadListener;

    return-void
.end method

.method static synthetic removeDownloadListener(Lccsancom/san/mads/webview/getDownloadedRecordByUrl;)Lccsancom/san/mads/mraid/removeDownloadListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lccsancom/san/mads/webview/getDownloadedRecordByUrl;->removeDownloadListener:Lccsancom/san/mads/mraid/removeDownloadListener;

    return-object p0
.end method


# virtual methods
.method public addDownloadListener()Lccsanandroid/view/View;
    .locals 1

    .line 2
    iget-object v0, p0, Lccsancom/san/mads/webview/getDownloadedRecordByUrl;->removeDownloadListener:Lccsancom/san/mads/mraid/removeDownloadListener;

    invoke-virtual {v0}, Lccsancom/san/mads/mraid/removeDownloadListener;->deleteDownItem()Lccsanandroid/widget/FrameLayout;

    move-result-object v0

    return-object v0
.end method

.method public getDownloadingList()V
    .locals 1

    .line 1
    iget-object v0, p0, Lccsancom/san/mads/webview/getDownloadedRecordByUrl;->removeDownloadListener:Lccsancom/san/mads/mraid/removeDownloadListener;

    invoke-virtual {v0}, Lccsancom/san/mads/mraid/removeDownloadListener;->unifiedDownload()V

    return-void
.end method

.method public removeDownloadListener()Lccsancom/san/mads/webview/IncentiveDownloadUtils;
    .locals 1

    .line 1
    iget-object v0, p0, Lccsancom/san/mads/webview/getDownloadedRecordByUrl;->removeDownloadListener:Lccsancom/san/mads/mraid/removeDownloadListener;

    invoke-virtual {v0}, Lccsancom/san/mads/mraid/removeDownloadListener;->IncentiveDownloadUtils()Lccsancom/san/mads/mraid/IncentiveDownloadUtils$getDownloadedList;

    move-result-object v0

    return-object v0
.end method

.method public removeDownloadListener(Ljava/lang/String;Lccsancom/san/mads/webview/getDownloadingList$removeDownloadListener;)V
    .locals 2

    .line 3
    iget-object v0, p0, Lccsancom/san/mads/webview/getDownloadedRecordByUrl;->removeDownloadListener:Lccsancom/san/mads/mraid/removeDownloadListener;

    new-instance v1, Lccsancom/san/mads/webview/getDownloadedRecordByUrl$removeDownloadListener;

    invoke-direct {v1, p0, p2}, Lccsancom/san/mads/webview/getDownloadedRecordByUrl$removeDownloadListener;-><init>(Lccsancom/san/mads/webview/getDownloadedRecordByUrl;Lccsancom/san/mads/webview/getDownloadingList$removeDownloadListener;)V

    invoke-virtual {v0, v1}, Lccsancom/san/mads/mraid/removeDownloadListener;->IncentiveDownloadUtils(Lccsancom/san/mads/mraid/removeDownloadListener$deleteDownItem;)V

    .line 58
    iget-object p2, p0, Lccsancom/san/mads/webview/getDownloadedRecordByUrl;->removeDownloadListener:Lccsancom/san/mads/mraid/removeDownloadListener;

    new-instance v0, Lccsancom/san/mads/webview/getDownloadedRecordByUrl$addDownloadListener;

    invoke-direct {v0, p0}, Lccsancom/san/mads/webview/getDownloadedRecordByUrl$addDownloadListener;-><init>(Lccsancom/san/mads/webview/getDownloadedRecordByUrl;)V

    invoke-virtual {p2, p1, v0}, Lccsancom/san/mads/mraid/removeDownloadListener;->IncentiveDownloadUtils(Ljava/lang/String;Lccsancom/san/mads/mraid/removeDownloadListener$getDownloadedRecordByUrl;)V

    return-void
.end method
