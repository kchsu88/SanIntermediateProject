.class public abstract Lccsancom/san/mads/mraid/unifiedDownload;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsancom/san/mads/mraid/unifiedDownload$addDownloadListener;
    }
.end annotation


# instance fields
.field private final IncentiveDownloadUtils:Lccsancom/san/mads/mraid/unifiedDownload$addDownloadListener;

.field private final addDownloadListener:Lccsanandroid/widget/RelativeLayout;

.field private final unifiedDownload:Lccsanandroid/content/Context;


# direct methods
.method protected constructor <init>(Lccsanandroid/content/Context;Ljava/lang/Long;Lccsancom/san/mads/mraid/unifiedDownload$addDownloadListener;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p3}, Lccsansan/cx/addDownloadListener;->addDownloadListener(Ljava/lang/Object;)V

    .line 4
    iput-object p1, p0, Lccsancom/san/mads/mraid/unifiedDownload;->unifiedDownload:Lccsanandroid/content/Context;

    .line 5
    iput-object p3, p0, Lccsancom/san/mads/mraid/unifiedDownload;->IncentiveDownloadUtils:Lccsancom/san/mads/mraid/unifiedDownload$addDownloadListener;

    .line 6
    new-instance p2, Lccsanandroid/widget/RelativeLayout;

    invoke-direct {p2, p1}, Lccsanandroid/widget/RelativeLayout;-><init>(Lccsanandroid/content/Context;)V

    iput-object p2, p0, Lccsancom/san/mads/mraid/unifiedDownload;->addDownloadListener:Lccsanandroid/widget/RelativeLayout;

    return-void
.end method


# virtual methods
.method public IncentiveDownloadUtils()Lccsanandroid/view/ViewGroup;
    .locals 1

    .line 1
    iget-object v0, p0, Lccsancom/san/mads/mraid/unifiedDownload;->addDownloadListener:Lccsanandroid/widget/RelativeLayout;

    return-object v0
.end method

.method protected addDownloadListener()V
    .locals 4

    .line 1
    new-instance v0, Lccsanandroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Lccsanandroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 3
    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Lccsanandroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 4
    iget-object v1, p0, Lccsancom/san/mads/mraid/unifiedDownload;->addDownloadListener:Lccsanandroid/widget/RelativeLayout;

    invoke-virtual {p0}, Lccsancom/san/mads/mraid/unifiedDownload;->unifiedDownload()Lccsanandroid/view/View;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Lccsanandroid/widget/RelativeLayout;->addView(Lccsanandroid/view/View;ILccsanandroid/view/ViewGroup$LayoutParams;)V

    .line 5
    iget-object v0, p0, Lccsancom/san/mads/mraid/unifiedDownload;->IncentiveDownloadUtils:Lccsancom/san/mads/mraid/unifiedDownload$addDownloadListener;

    iget-object v1, p0, Lccsancom/san/mads/mraid/unifiedDownload;->addDownloadListener:Lccsanandroid/widget/RelativeLayout;

    invoke-interface {v0, v1}, Lccsancom/san/mads/mraid/unifiedDownload$addDownloadListener;->onSetContentView(Lccsanandroid/view/View;)V

    return-void
.end method

.method protected getDownloadingList()Lccsanandroid/content/Context;
    .locals 1

    .line 4
    iget-object v0, p0, Lccsancom/san/mads/mraid/unifiedDownload;->unifiedDownload:Lccsanandroid/content/Context;

    return-object v0
.end method

.method protected getDownloadingList(Z)V
    .locals 2

    .line 1
    const-string v0, "Ads.BaseVideoViewController"

    const-string v1, "Video cannot be played."

    invoke-static {v0, v1}, Lccsansan/ch/IncentiveDownloadUtils;->IncentiveDownloadUtils(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p0, Lccsancom/san/mads/mraid/unifiedDownload;->IncentiveDownloadUtils:Lccsancom/san/mads/mraid/unifiedDownload$addDownloadListener;

    invoke-interface {p1}, Lccsancom/san/mads/mraid/unifiedDownload$addDownloadListener;->addDownloadListener()V

    :cond_0
    return-void
.end method

.method protected removeDownloadListener()Lccsancom/san/mads/mraid/unifiedDownload$addDownloadListener;
    .locals 1

    .line 2
    iget-object v0, p0, Lccsancom/san/mads/mraid/unifiedDownload;->IncentiveDownloadUtils:Lccsancom/san/mads/mraid/unifiedDownload$addDownloadListener;

    return-object v0
.end method

.method protected removeDownloadListener(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 1
    iget-object p1, p0, Lccsancom/san/mads/mraid/unifiedDownload;->IncentiveDownloadUtils:Lccsancom/san/mads/mraid/unifiedDownload$addDownloadListener;

    invoke-interface {p1}, Lccsancom/san/mads/mraid/unifiedDownload$addDownloadListener;->addDownloadListener()V

    :cond_0
    return-void
.end method

.method protected abstract unifiedDownload()Lccsanandroid/view/View;
.end method
