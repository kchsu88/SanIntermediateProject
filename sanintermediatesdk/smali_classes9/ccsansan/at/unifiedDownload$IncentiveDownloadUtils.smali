.class Lccsansan/at/unifiedDownload$IncentiveDownloadUtils;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lccsanandroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsansan/at/unifiedDownload;->getDownloadingList(Lccsansan/aj/getDownloadingList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic IncentiveDownloadUtils:Lccsanandroid/widget/TextView;

.field final synthetic addDownloadListener:Lccsanandroid/widget/TextView;

.field final synthetic getDownloadingList:Lccsansan/at/unifiedDownload;

.field final synthetic unifiedDownload:Lccsansan/aj/getDownloadingList;


# direct methods
.method constructor <init>(Lccsansan/at/unifiedDownload;Lccsanandroid/widget/TextView;Lccsanandroid/widget/TextView;Lccsansan/aj/getDownloadingList;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lccsansan/at/unifiedDownload$IncentiveDownloadUtils;->getDownloadingList:Lccsansan/at/unifiedDownload;

    iput-object p2, p0, Lccsansan/at/unifiedDownload$IncentiveDownloadUtils;->IncentiveDownloadUtils:Lccsanandroid/widget/TextView;

    iput-object p3, p0, Lccsansan/at/unifiedDownload$IncentiveDownloadUtils;->addDownloadListener:Lccsanandroid/widget/TextView;

    iput-object p4, p0, Lccsansan/at/unifiedDownload$IncentiveDownloadUtils;->unifiedDownload:Lccsansan/aj/getDownloadingList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Lccsanandroid/widget/CompoundButton;Z)V
    .locals 1

    const/4 p1, 0x0

    const/16 v0, 0x8

    if-eqz p2, :cond_0

    .line 1
    iget-object p2, p0, Lccsansan/at/unifiedDownload$IncentiveDownloadUtils;->IncentiveDownloadUtils:Lccsanandroid/widget/TextView;

    invoke-virtual {p2, p1}, Lccsanandroid/widget/TextView;->setVisibility(I)V

    .line 2
    iget-object p1, p0, Lccsansan/at/unifiedDownload$IncentiveDownloadUtils;->addDownloadListener:Lccsanandroid/widget/TextView;

    invoke-virtual {p1, v0}, Lccsanandroid/widget/TextView;->setVisibility(I)V

    .line 4
    iget-object p1, p0, Lccsansan/at/unifiedDownload$IncentiveDownloadUtils;->unifiedDownload:Lccsansan/aj/getDownloadingList;

    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object p2, p1, Lccsansan/aj/getDownloadingList;->removeDownloadListener:Ljava/lang/Boolean;

    .line 5
    invoke-virtual {p1}, Lccsansan/aj/getDownloadingList;->getDownloadingList()V

    .line 7
    invoke-static {}, Lccsancom/san/ads/TaskHelper;->getInstance()Lccsancom/san/ads/TaskHelper;

    move-result-object p1

    new-instance p2, Lccsansan/at/unifiedDownload$IncentiveDownloadUtils$getDownloadingList;

    invoke-direct {p2, p0}, Lccsansan/at/unifiedDownload$IncentiveDownloadUtils$getDownloadingList;-><init>(Lccsansan/at/unifiedDownload$IncentiveDownloadUtils;)V

    invoke-virtual {p1, p2}, Lccsancom/san/ads/TaskHelper;->run(Lccsancom/san/ads/Task;)V

    goto :goto_0

    .line 22
    :cond_0
    iget-object p2, p0, Lccsansan/at/unifiedDownload$IncentiveDownloadUtils;->IncentiveDownloadUtils:Lccsanandroid/widget/TextView;

    invoke-virtual {p2, v0}, Lccsanandroid/widget/TextView;->setVisibility(I)V

    .line 23
    iget-object p2, p0, Lccsansan/at/unifiedDownload$IncentiveDownloadUtils;->addDownloadListener:Lccsanandroid/widget/TextView;

    invoke-virtual {p2, p1}, Lccsanandroid/widget/TextView;->setVisibility(I)V

    .line 25
    invoke-static {}, Lccsancom/san/ads/TaskHelper;->getInstance()Lccsancom/san/ads/TaskHelper;

    move-result-object p1

    new-instance p2, Lccsansan/at/unifiedDownload$IncentiveDownloadUtils$unifiedDownload;

    invoke-direct {p2, p0}, Lccsansan/at/unifiedDownload$IncentiveDownloadUtils$unifiedDownload;-><init>(Lccsansan/at/unifiedDownload$IncentiveDownloadUtils;)V

    invoke-virtual {p1, p2}, Lccsancom/san/ads/TaskHelper;->run(Lccsancom/san/ads/Task;)V

    :goto_0
    return-void
.end method
