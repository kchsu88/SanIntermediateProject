.class Lccsancom/san/mads/mraid/removeDownloadListener$getDownloadStatusByUrl;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/san/mads/mraid/removeDownloadListener;->getDownloadingList(Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic addDownloadListener:Lccsanandroid/view/View;

.field final synthetic getDownloadingList:Lccsancom/san/mads/mraid/removeDownloadListener;

.field final synthetic unifiedDownload:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lccsancom/san/mads/mraid/removeDownloadListener;Lccsanandroid/view/View;Ljava/lang/Runnable;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lccsancom/san/mads/mraid/removeDownloadListener$getDownloadStatusByUrl;->getDownloadingList:Lccsancom/san/mads/mraid/removeDownloadListener;

    iput-object p2, p0, Lccsancom/san/mads/mraid/removeDownloadListener$getDownloadStatusByUrl;->addDownloadListener:Lccsanandroid/view/View;

    iput-object p3, p0, Lccsancom/san/mads/mraid/removeDownloadListener$getDownloadStatusByUrl;->unifiedDownload:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 1
    iget-object v0, p0, Lccsancom/san/mads/mraid/removeDownloadListener$getDownloadStatusByUrl;->getDownloadingList:Lccsancom/san/mads/mraid/removeDownloadListener;

    invoke-static {v0}, Lccsancom/san/mads/mraid/removeDownloadListener;->IncentiveDownloadUtils(Lccsancom/san/mads/mraid/removeDownloadListener;)Lccsanandroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Lccsanandroid/content/Context;->getResources()Lccsanandroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Lccsanandroid/content/res/Resources;->getDisplayMetrics()Lccsanandroid/util/DisplayMetrics;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lccsancom/san/mads/mraid/removeDownloadListener$getDownloadStatusByUrl;->getDownloadingList:Lccsancom/san/mads/mraid/removeDownloadListener;

    invoke-static {v1}, Lccsancom/san/mads/mraid/removeDownloadListener;->deleteDownItem(Lccsancom/san/mads/mraid/removeDownloadListener;)Lccsancom/san/mads/mraid/getDownloadStatusByUrl;

    move-result-object v1

    iget v2, v0, Lccsanandroid/util/DisplayMetrics;->widthPixels:I

    iget v0, v0, Lccsanandroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {v1, v2, v0}, Lccsancom/san/mads/mraid/getDownloadStatusByUrl;->unifiedDownload(II)V

    .line 5
    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 6
    iget-object v1, p0, Lccsancom/san/mads/mraid/removeDownloadListener$getDownloadStatusByUrl;->getDownloadingList:Lccsancom/san/mads/mraid/removeDownloadListener;

    invoke-static {v1}, Lccsancom/san/mads/mraid/removeDownloadListener;->getDownloadedList(Lccsancom/san/mads/mraid/removeDownloadListener;)Lccsanandroid/view/ViewGroup;

    move-result-object v1

    .line 7
    invoke-virtual {v1, v0}, Lccsanandroid/view/View;->getLocationOnScreen([I)V

    .line 8
    iget-object v2, p0, Lccsancom/san/mads/mraid/removeDownloadListener$getDownloadStatusByUrl;->getDownloadingList:Lccsancom/san/mads/mraid/removeDownloadListener;

    invoke-static {v2}, Lccsancom/san/mads/mraid/removeDownloadListener;->deleteDownItem(Lccsancom/san/mads/mraid/removeDownloadListener;)Lccsancom/san/mads/mraid/getDownloadStatusByUrl;

    move-result-object v2

    const/4 v3, 0x0

    aget v4, v0, v3

    const/4 v5, 0x1

    aget v6, v0, v5

    .line 9
    invoke-virtual {v1}, Lccsanandroid/view/View;->getWidth()I

    move-result v7

    .line 10
    invoke-virtual {v1}, Lccsanandroid/view/View;->getHeight()I

    move-result v1

    .line 11
    invoke-virtual {v2, v4, v6, v7, v1}, Lccsancom/san/mads/mraid/getDownloadStatusByUrl;->getDownloadingList(IIII)V

    .line 15
    iget-object v1, p0, Lccsancom/san/mads/mraid/removeDownloadListener$getDownloadStatusByUrl;->getDownloadingList:Lccsancom/san/mads/mraid/removeDownloadListener;

    invoke-static {v1}, Lccsancom/san/mads/mraid/removeDownloadListener;->addDownloadListener(Lccsancom/san/mads/mraid/removeDownloadListener;)Lccsanandroid/widget/FrameLayout;

    move-result-object v1

    invoke-virtual {v1, v0}, Lccsanandroid/widget/FrameLayout;->getLocationOnScreen([I)V

    .line 16
    iget-object v1, p0, Lccsancom/san/mads/mraid/removeDownloadListener$getDownloadStatusByUrl;->getDownloadingList:Lccsancom/san/mads/mraid/removeDownloadListener;

    invoke-static {v1}, Lccsancom/san/mads/mraid/removeDownloadListener;->deleteDownItem(Lccsancom/san/mads/mraid/removeDownloadListener;)Lccsancom/san/mads/mraid/getDownloadStatusByUrl;

    move-result-object v1

    aget v2, v0, v3

    aget v4, v0, v5

    iget-object v6, p0, Lccsancom/san/mads/mraid/removeDownloadListener$getDownloadStatusByUrl;->getDownloadingList:Lccsancom/san/mads/mraid/removeDownloadListener;

    .line 17
    invoke-static {v6}, Lccsancom/san/mads/mraid/removeDownloadListener;->addDownloadListener(Lccsancom/san/mads/mraid/removeDownloadListener;)Lccsanandroid/widget/FrameLayout;

    move-result-object v6

    invoke-virtual {v6}, Lccsanandroid/widget/FrameLayout;->getWidth()I

    move-result v6

    iget-object v7, p0, Lccsancom/san/mads/mraid/removeDownloadListener$getDownloadStatusByUrl;->getDownloadingList:Lccsancom/san/mads/mraid/removeDownloadListener;

    .line 18
    invoke-static {v7}, Lccsancom/san/mads/mraid/removeDownloadListener;->addDownloadListener(Lccsancom/san/mads/mraid/removeDownloadListener;)Lccsanandroid/widget/FrameLayout;

    move-result-object v7

    invoke-virtual {v7}, Lccsanandroid/widget/FrameLayout;->getHeight()I

    move-result v7

    .line 19
    invoke-virtual {v1, v2, v4, v6, v7}, Lccsancom/san/mads/mraid/getDownloadStatusByUrl;->IncentiveDownloadUtils(IIII)V

    .line 23
    iget-object v1, p0, Lccsancom/san/mads/mraid/removeDownloadListener$getDownloadStatusByUrl;->addDownloadListener:Lccsanandroid/view/View;

    invoke-virtual {v1, v0}, Lccsanandroid/view/View;->getLocationOnScreen([I)V

    .line 24
    iget-object v1, p0, Lccsancom/san/mads/mraid/removeDownloadListener$getDownloadStatusByUrl;->getDownloadingList:Lccsancom/san/mads/mraid/removeDownloadListener;

    invoke-static {v1}, Lccsancom/san/mads/mraid/removeDownloadListener;->deleteDownItem(Lccsancom/san/mads/mraid/removeDownloadListener;)Lccsancom/san/mads/mraid/getDownloadStatusByUrl;

    move-result-object v1

    aget v2, v0, v3

    aget v0, v0, v5

    iget-object v3, p0, Lccsancom/san/mads/mraid/removeDownloadListener$getDownloadStatusByUrl;->addDownloadListener:Lccsanandroid/view/View;

    .line 25
    invoke-virtual {v3}, Lccsanandroid/view/View;->getWidth()I

    move-result v3

    iget-object v4, p0, Lccsancom/san/mads/mraid/removeDownloadListener$getDownloadStatusByUrl;->addDownloadListener:Lccsanandroid/view/View;

    .line 26
    invoke-virtual {v4}, Lccsanandroid/view/View;->getHeight()I

    move-result v4

    .line 27
    invoke-virtual {v1, v2, v0, v3, v4}, Lccsancom/san/mads/mraid/getDownloadStatusByUrl;->unifiedDownload(IIII)V

    .line 32
    iget-object v0, p0, Lccsancom/san/mads/mraid/removeDownloadListener$getDownloadStatusByUrl;->getDownloadingList:Lccsancom/san/mads/mraid/removeDownloadListener;

    invoke-static {v0}, Lccsancom/san/mads/mraid/removeDownloadListener;->getDownloadingList(Lccsancom/san/mads/mraid/removeDownloadListener;)Lccsancom/san/mads/mraid/IncentiveDownloadUtils;

    move-result-object v0

    iget-object v1, p0, Lccsancom/san/mads/mraid/removeDownloadListener$getDownloadStatusByUrl;->getDownloadingList:Lccsancom/san/mads/mraid/removeDownloadListener;

    invoke-static {v1}, Lccsancom/san/mads/mraid/removeDownloadListener;->deleteDownItem(Lccsancom/san/mads/mraid/removeDownloadListener;)Lccsancom/san/mads/mraid/getDownloadStatusByUrl;

    move-result-object v1

    invoke-virtual {v0, v1}, Lccsancom/san/mads/mraid/IncentiveDownloadUtils;->removeDownloadListener(Lccsancom/san/mads/mraid/getDownloadStatusByUrl;)V

    .line 33
    iget-object v0, p0, Lccsancom/san/mads/mraid/removeDownloadListener$getDownloadStatusByUrl;->getDownloadingList:Lccsancom/san/mads/mraid/removeDownloadListener;

    invoke-static {v0}, Lccsancom/san/mads/mraid/removeDownloadListener;->unifiedDownload(Lccsancom/san/mads/mraid/removeDownloadListener;)Lccsancom/san/mads/mraid/IncentiveDownloadUtils;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/san/mads/mraid/IncentiveDownloadUtils;->removeDownloadListener()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 34
    iget-object v0, p0, Lccsancom/san/mads/mraid/removeDownloadListener$getDownloadStatusByUrl;->getDownloadingList:Lccsancom/san/mads/mraid/removeDownloadListener;

    invoke-static {v0}, Lccsancom/san/mads/mraid/removeDownloadListener;->unifiedDownload(Lccsancom/san/mads/mraid/removeDownloadListener;)Lccsancom/san/mads/mraid/IncentiveDownloadUtils;

    move-result-object v0

    iget-object v1, p0, Lccsancom/san/mads/mraid/removeDownloadListener$getDownloadStatusByUrl;->getDownloadingList:Lccsancom/san/mads/mraid/removeDownloadListener;

    invoke-static {v1}, Lccsancom/san/mads/mraid/removeDownloadListener;->deleteDownItem(Lccsancom/san/mads/mraid/removeDownloadListener;)Lccsancom/san/mads/mraid/getDownloadStatusByUrl;

    move-result-object v1

    invoke-virtual {v0, v1}, Lccsancom/san/mads/mraid/IncentiveDownloadUtils;->removeDownloadListener(Lccsancom/san/mads/mraid/getDownloadStatusByUrl;)V

    .line 37
    :cond_0
    iget-object v0, p0, Lccsancom/san/mads/mraid/removeDownloadListener$getDownloadStatusByUrl;->unifiedDownload:Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    .line 38
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_1
    return-void
.end method
