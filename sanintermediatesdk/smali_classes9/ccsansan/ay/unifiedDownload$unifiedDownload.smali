.class Lccsansan/ay/unifiedDownload$unifiedDownload;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lccsansan/ay/getDownloadingList$removeDownloadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsansan/ay/unifiedDownload;->addDownloadListener(Lccsanandroid/content/Context;Lccsansan/aj/getDownloadingList;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic getDownloadingList:Lccsanandroid/content/Context;

.field final synthetic unifiedDownload:Lccsansan/aj/getDownloadingList;


# direct methods
.method constructor <init>(Lccsansan/ay/unifiedDownload;Lccsansan/aj/getDownloadingList;Lccsanandroid/content/Context;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lccsansan/ay/unifiedDownload$unifiedDownload;->unifiedDownload:Lccsansan/aj/getDownloadingList;

    iput-object p3, p0, Lccsansan/ay/unifiedDownload$unifiedDownload;->getDownloadingList:Lccsanandroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDownloadingList(ILjava/lang/String;)V
    .locals 2

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 1
    iget-object p1, p0, Lccsansan/ay/unifiedDownload$unifiedDownload;->unifiedDownload:Lccsansan/aj/getDownloadingList;

    sget-object v1, Lccsansan/aj/getDownloadingList$IncentiveDownloadUtils;->DOWNLOADING:Lccsansan/aj/getDownloadingList$IncentiveDownloadUtils;

    iput-object v1, p1, Lccsansan/aj/getDownloadingList;->getDownloadingList:Lccsansan/aj/getDownloadingList$IncentiveDownloadUtils;

    .line 2
    invoke-static {}, Lccsansan/as/getDownloadingList;->removeDownloadListener()Lccsansan/as/getDownloadingList;

    move-result-object p1

    iget-object v1, p0, Lccsansan/ay/unifiedDownload$unifiedDownload;->unifiedDownload:Lccsansan/aj/getDownloadingList;

    invoke-virtual {p1, v1}, Lccsansan/as/getDownloadingList;->unifiedDownload(Lccsansan/aj/getDownloadingList;)V

    .line 6
    :cond_0
    invoke-static {p2}, Lccsansan/k/addDownloadListener;->IncentiveDownloadUtils(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 7
    invoke-static {p2}, Lccsansan/k/addDownloadListener;->getDownloadingList(Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_1

    .line 8
    invoke-static {}, Lccsancom/san/ads/TaskHelper;->getInstance()Lccsancom/san/ads/TaskHelper;

    move-result-object p1

    new-instance p2, Lccsansan/ay/unifiedDownload$unifiedDownload$addDownloadListener;

    invoke-direct {p2, p0}, Lccsansan/ay/unifiedDownload$unifiedDownload$addDownloadListener;-><init>(Lccsansan/ay/unifiedDownload$unifiedDownload;)V

    invoke-virtual {p1, p2}, Lccsancom/san/ads/TaskHelper;->run(Lccsancom/san/ads/Task;)V

    return-void

    .line 25
    :cond_1
    iget-object p1, p0, Lccsansan/ay/unifiedDownload$unifiedDownload;->unifiedDownload:Lccsansan/aj/getDownloadingList;

    iget-object p1, p1, Lccsansan/aj/getDownloadingList;->addDownloadListener:Ljava/lang/String;

    invoke-static {p1, p2, v0}, Lccsansan/au/addDownloadListener;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_2
    return-void
.end method
