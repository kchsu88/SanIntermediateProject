.class public Lccsancom/san/mads/mraid/IncentiveDownloadUtils$getDownloadedList;
.super Lccsancom/san/mads/webview/IncentiveDownloadUtils;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/san/mads/mraid/IncentiveDownloadUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "getDownloadedList"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsancom/san/mads/mraid/IncentiveDownloadUtils$getDownloadedList$IncentiveDownloadUtils;
    }
.end annotation


# instance fields
.field private addDownloadListener:Lccsansan/cr/addDownloadListener;

.field private getDownloadingList:Z

.field private removeDownloadListener:Lccsancom/san/mads/mraid/IncentiveDownloadUtils$getDownloadedList$IncentiveDownloadUtils;


# direct methods
.method public constructor <init>(Lccsanandroid/content/Context;)V
    .locals 3

    .line 1
    invoke-direct {p0, p1}, Lccsancom/san/mads/webview/IncentiveDownloadUtils;-><init>(Lccsanandroid/content/Context;)V

    .line 2
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x15

    if-lt v0, v2, :cond_0

    .line 3
    invoke-virtual {p0}, Lccsanandroid/webkit/WebView;->getSettings()Lccsanandroid/webkit/WebSettings;

    move-result-object v2

    invoke-virtual {v2, v1}, Lccsanandroid/webkit/WebSettings;->setMixedContentMode(I)V

    :cond_0
    const/16 v2, 0x16

    if-gt v0, v2, :cond_2

    .line 8
    invoke-virtual {p0}, Lccsanandroid/webkit/WebView;->getVisibility()I

    move-result p1

    if-nez p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    iput-boolean v1, p0, Lccsancom/san/mads/mraid/IncentiveDownloadUtils$getDownloadedList;->getDownloadingList:Z

    return-void

    .line 12
    :cond_2
    new-instance v0, Lccsansan/cr/addDownloadListener;

    invoke-direct {v0, p1}, Lccsansan/cr/addDownloadListener;-><init>(Lccsanandroid/content/Context;)V

    iput-object v0, p0, Lccsancom/san/mads/mraid/IncentiveDownloadUtils$getDownloadedList;->addDownloadListener:Lccsansan/cr/addDownloadListener;

    .line 13
    new-instance p1, Lccsancom/san/mads/mraid/IncentiveDownloadUtils$getDownloadedList$removeDownloadListener;

    invoke-direct {p1, p0}, Lccsancom/san/mads/mraid/IncentiveDownloadUtils$getDownloadedList$removeDownloadListener;-><init>(Lccsancom/san/mads/mraid/IncentiveDownloadUtils$getDownloadedList;)V

    .line 23
    invoke-virtual {v0, p1}, Lccsansan/cr/addDownloadListener;->getDownloadingList(Lccsansan/cr/addDownloadListener$getDownloadedRecordByUrl;)V

    return-void
.end method

.method static synthetic removeDownloadListener(Lccsancom/san/mads/mraid/IncentiveDownloadUtils$getDownloadedList;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lccsancom/san/mads/mraid/IncentiveDownloadUtils$getDownloadedList;->setMraidViewable(Z)V

    return-void
.end method

.method private setMraidViewable(Z)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lccsancom/san/mads/mraid/IncentiveDownloadUtils$getDownloadedList;->getDownloadingList:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 4
    :cond_0
    iput-boolean p1, p0, Lccsancom/san/mads/mraid/IncentiveDownloadUtils$getDownloadedList;->getDownloadingList:Z

    .line 5
    iget-object v0, p0, Lccsancom/san/mads/mraid/IncentiveDownloadUtils$getDownloadedList;->removeDownloadListener:Lccsancom/san/mads/mraid/IncentiveDownloadUtils$getDownloadedList$IncentiveDownloadUtils;

    if-eqz v0, :cond_1

    .line 6
    invoke-interface {v0, p1}, Lccsancom/san/mads/mraid/IncentiveDownloadUtils$getDownloadedList$IncentiveDownloadUtils;->unifiedDownload(Z)V

    :cond_1
    return-void
.end method


# virtual methods
.method public addDownloadListener()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lccsancom/san/mads/mraid/IncentiveDownloadUtils$getDownloadedList;->getDownloadingList:Z

    return v0
.end method

.method public destroy()V
    .locals 1

    .line 1
    invoke-super {p0}, Lccsancom/san/mads/webview/removeDownloadListener;->destroy()V

    .line 2
    const/4 v0, 0x0

    iput-object v0, p0, Lccsancom/san/mads/mraid/IncentiveDownloadUtils$getDownloadedList;->addDownloadListener:Lccsansan/cr/addDownloadListener;

    .line 3
    iput-object v0, p0, Lccsancom/san/mads/mraid/IncentiveDownloadUtils$getDownloadedList;->removeDownloadListener:Lccsancom/san/mads/mraid/IncentiveDownloadUtils$getDownloadedList$IncentiveDownloadUtils;

    return-void
.end method

.method protected onVisibilityChanged(Lccsanandroid/view/View;I)V
    .locals 8

    .line 1
    invoke-super {p0, p1, p2}, Lccsanandroid/webkit/WebView;->onVisibilityChanged(Lccsanandroid/view/View;I)V

    .line 2
    iget-object v0, p0, Lccsancom/san/mads/mraid/IncentiveDownloadUtils$getDownloadedList;->addDownloadListener:Lccsansan/cr/addDownloadListener;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 3
    :goto_0
    invoke-direct {p0, v1}, Lccsancom/san/mads/mraid/IncentiveDownloadUtils$getDownloadedList;->setMraidViewable(Z)V

    return-void

    :cond_1
    if-nez p2, :cond_2

    .line 7
    invoke-virtual {v0}, Lccsansan/cr/addDownloadListener;->removeDownloadListener()V

    .line 8
    iget-object v2, p0, Lccsancom/san/mads/mraid/IncentiveDownloadUtils$getDownloadedList;->addDownloadListener:Lccsansan/cr/addDownloadListener;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v3, p1

    move-object v4, p0

    invoke-virtual/range {v2 .. v7}, Lccsansan/cr/addDownloadListener;->unifiedDownload(Lccsanandroid/view/View;Lccsanandroid/view/View;IILjava/lang/Integer;)V

    goto :goto_1

    .line 10
    :cond_2
    invoke-virtual {v0, p0}, Lccsansan/cr/addDownloadListener;->getDownloadingList(Lccsanandroid/view/View;)V

    .line 11
    invoke-direct {p0, v2}, Lccsancom/san/mads/mraid/IncentiveDownloadUtils$getDownloadedList;->setMraidViewable(Z)V

    :goto_1
    return-void
.end method

.method setVisibilityChangedListener(Lccsancom/san/mads/mraid/IncentiveDownloadUtils$getDownloadedList$IncentiveDownloadUtils;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lccsancom/san/mads/mraid/IncentiveDownloadUtils$getDownloadedList;->removeDownloadListener:Lccsancom/san/mads/mraid/IncentiveDownloadUtils$getDownloadedList$IncentiveDownloadUtils;

    return-void
.end method
