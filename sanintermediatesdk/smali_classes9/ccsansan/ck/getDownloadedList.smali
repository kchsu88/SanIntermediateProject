.class public Lccsansan/ck/getDownloadedList;
.super Ljava/lang/Object;
.source ""


# instance fields
.field protected IncentiveDownloadUtils:Lccsanandroid/os/Handler;

.field public getDownloadingList:Lccsansan/ck/getDownloadingCount;

.field public removeDownloadListener:Lccsansan/dt/removeDownloadListener;


# direct methods
.method public constructor <init>(Lccsansan/dt/removeDownloadListener;Lccsanandroid/os/Handler;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lccsansan/ck/getDownloadingCount;

    invoke-direct {v0}, Lccsansan/ck/getDownloadingCount;-><init>()V

    iput-object v0, p0, Lccsansan/ck/getDownloadedList;->getDownloadingList:Lccsansan/ck/getDownloadingCount;

    .line 8
    iput-object p1, p0, Lccsansan/ck/getDownloadedList;->removeDownloadListener:Lccsansan/dt/removeDownloadListener;

    .line 9
    iput-object p2, p0, Lccsansan/ck/getDownloadedList;->IncentiveDownloadUtils:Lccsanandroid/os/Handler;

    return-void
.end method

.method static synthetic IncentiveDownloadUtils(Lccsansan/ck/getDownloadedList;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lccsansan/ck/getDownloadedList;->addDownloadListener()V

    return-void
.end method

.method private addDownloadListener()V
    .locals 1

    .line 17
    iget-object v0, p0, Lccsansan/ck/getDownloadedList;->removeDownloadListener:Lccsansan/dt/removeDownloadListener;

    invoke-virtual {v0}, Lccsansan/dt/removeDownloadListener;->IncentiveSDK$1()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 20
    :cond_0
    iget-object v0, p0, Lccsansan/ck/getDownloadedList;->removeDownloadListener:Lccsansan/dt/removeDownloadListener;

    invoke-static {v0}, Lccsancom/san/bridge/addDownloadListener;->unifiedDownload(Lccsansan/dt/removeDownloadListener;)V

    return-void
.end method


# virtual methods
.method public addDownloadListener(Lccsanandroid/content/Context;Lccsanandroid/graphics/Rect;)V
    .locals 1

    .line 2
    const-string v0, "cardnonbutton"

    invoke-virtual {p0, p1, p2, v0}, Lccsansan/ck/getDownloadedList;->unifiedDownload(Lccsanandroid/content/Context;Lccsanandroid/graphics/Rect;Ljava/lang/String;)V

    return-void
.end method

.method public addDownloadListener(Lccsanandroid/content/Context;Lccsanandroid/graphics/Rect;Ljava/lang/String;I)V
    .locals 2

    .line 4
    iget-object v0, p0, Lccsansan/ck/getDownloadedList;->getDownloadingList:Lccsansan/ck/getDownloadingCount;

    invoke-virtual {v0}, Lccsansan/ck/getDownloadingCount;->removeDownloadListener()V

    .line 5
    iget-object v0, p0, Lccsansan/ck/getDownloadedList;->getDownloadingList:Lccsansan/ck/getDownloadingCount;

    const/4 v1, -0x3

    invoke-static {v1}, Lccsansan/ck/getDownloadingCount;->addDownloadListener(I)Lccsansan/ck/getDownloadingList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lccsansan/ck/getDownloadingCount;->removeDownloadListener(Lccsansan/ck/getDownloadingList;)V

    .line 6
    iget-object v0, p0, Lccsansan/ck/getDownloadedList;->getDownloadingList:Lccsansan/ck/getDownloadingCount;

    const/4 v1, -0x1

    invoke-static {v1}, Lccsansan/ck/getDownloadingCount;->addDownloadListener(I)Lccsansan/ck/getDownloadingList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lccsansan/ck/getDownloadingCount;->getDownloadingList(Lccsansan/ck/getDownloadingList;)V

    .line 7
    iget-object v0, p0, Lccsansan/ck/getDownloadedList;->getDownloadingList:Lccsansan/ck/getDownloadingCount;

    invoke-static {}, Lccsansan/ck/getDownloadingCount;->IncentiveDownloadUtils()Lccsansan/ck/getDownloadingList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lccsansan/ck/getDownloadingCount;->IncentiveDownloadUtils(Lccsansan/ck/getDownloadingList;)V

    .line 8
    iget-object v0, p0, Lccsansan/ck/getDownloadedList;->removeDownloadListener:Lccsansan/dt/removeDownloadListener;

    invoke-virtual {v0}, Lccsansan/dt/removeDownloadListener;->getNetworkId()Lccsansan/ck/IncentiveDownloadUtils;

    move-result-object v0

    if-eqz p2, :cond_0

    .line 10
    invoke-virtual {p2}, Lccsanandroid/graphics/Rect;->centerX()I

    move-result v1

    iput v1, v0, Lccsansan/ck/IncentiveDownloadUtils;->unifiedDownload:I

    .line 11
    invoke-virtual {p2}, Lccsanandroid/graphics/Rect;->centerY()I

    move-result p2

    iput p2, v0, Lccsansan/ck/IncentiveDownloadUtils;->getDownloadStatusByUrl:I

    .line 13
    :cond_0
    iput-object p3, v0, Lccsansan/ck/IncentiveDownloadUtils;->getDownloadingRecordByUrl:Ljava/lang/String;

    .line 14
    iput p4, v0, Lccsansan/ck/IncentiveDownloadUtils;->deleteDownItem:I

    .line 15
    iget-object p2, p0, Lccsansan/ck/getDownloadedList;->removeDownloadListener:Lccsansan/dt/removeDownloadListener;

    invoke-static {p2}, Lccsansan/ck/getDownloadingRecordByUrl;->IncentiveDownloadUtils(Lccsansan/dt/removeDownloadListener;)Z

    move-result p2

    if-eqz p2, :cond_1

    iget-object p2, p0, Lccsansan/ck/getDownloadedList;->removeDownloadListener:Lccsansan/dt/removeDownloadListener;

    invoke-virtual {p2}, Lccsansan/dt/removeDownloadListener;->getDownloadingRecordByUrl()Z

    move-result p2

    if-nez p2, :cond_1

    const/4 p2, 0x1

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    :goto_0
    iput-boolean p2, v0, Lccsansan/ck/IncentiveDownloadUtils;->getDownloadedList:Z

    .line 16
    iget-object p2, p0, Lccsansan/ck/getDownloadedList;->getDownloadingList:Lccsansan/ck/getDownloadingCount;

    new-instance p4, Lccsansan/ck/getDownloadedList$getDownloadingList;

    invoke-direct {p4, p0, p3}, Lccsansan/ck/getDownloadedList$getDownloadingList;-><init>(Lccsansan/ck/getDownloadedList;Ljava/lang/String;)V

    invoke-virtual {p2, p1, v0, p4}, Lccsansan/ck/getDownloadingCount;->removeDownloadListener(Lccsanandroid/content/Context;Lccsansan/ck/IncentiveDownloadUtils;Lccsansan/ck/getDownloadingCount$addDownloadListener;)V

    return-void
.end method

.method public getDownloadingList(Lccsanandroid/content/Context;Ljava/lang/String;I)V
    .locals 3

    .line 21
    iget-object v0, p0, Lccsansan/ck/getDownloadedList;->getDownloadingList:Lccsansan/ck/getDownloadingCount;

    invoke-virtual {v0}, Lccsansan/ck/getDownloadingCount;->removeDownloadListener()V

    .line 22
    iget-object v0, p0, Lccsansan/ck/getDownloadedList;->getDownloadingList:Lccsansan/ck/getDownloadingCount;

    const/4 v1, -0x1

    invoke-static {v1}, Lccsansan/ck/getDownloadingCount;->addDownloadListener(I)Lccsansan/ck/getDownloadingList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lccsansan/ck/getDownloadingCount;->getDownloadingList(Lccsansan/ck/getDownloadingList;)V

    .line 23
    iget-object v0, p0, Lccsansan/ck/getDownloadedList;->getDownloadingList:Lccsansan/ck/getDownloadingCount;

    const/4 v1, -0x4

    invoke-static {v1}, Lccsansan/ck/getDownloadingCount;->addDownloadListener(I)Lccsansan/ck/getDownloadingList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lccsansan/ck/getDownloadingCount;->unifiedDownload(Lccsansan/ck/getDownloadingList;)V

    .line 24
    iget-object v0, p0, Lccsansan/ck/getDownloadedList;->getDownloadingList:Lccsansan/ck/getDownloadingCount;

    invoke-static {}, Lccsansan/ck/getDownloadingCount;->IncentiveDownloadUtils()Lccsansan/ck/getDownloadingList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lccsansan/ck/getDownloadingCount;->IncentiveDownloadUtils(Lccsansan/ck/getDownloadingList;)V

    .line 25
    iget-object v0, p0, Lccsansan/ck/getDownloadedList;->removeDownloadListener:Lccsansan/dt/removeDownloadListener;

    invoke-virtual {v0}, Lccsansan/dt/removeDownloadListener;->getNetworkId()Lccsansan/ck/IncentiveDownloadUtils;

    move-result-object v0

    .line 26
    iput-object p2, v0, Lccsansan/ck/IncentiveDownloadUtils;->getDownloadingRecordByUrl:Ljava/lang/String;

    .line 27
    sget v1, Lccsansan/ck/addDownloadListener;->addDownloadListener:I

    iput v1, v0, Lccsansan/ck/IncentiveDownloadUtils;->deleteDownItem:I

    .line 28
    iget-object v1, p0, Lccsansan/ck/getDownloadedList;->getDownloadingList:Lccsansan/ck/getDownloadingCount;

    new-instance v2, Lccsansan/ck/getDownloadedList$unifiedDownload;

    invoke-direct {v2, p0, p3, p2}, Lccsansan/ck/getDownloadedList$unifiedDownload;-><init>(Lccsansan/ck/getDownloadedList;ILjava/lang/String;)V

    invoke-virtual {v1, p1, v0, v2}, Lccsansan/ck/getDownloadingCount;->removeDownloadListener(Lccsanandroid/content/Context;Lccsansan/ck/IncentiveDownloadUtils;Lccsansan/ck/getDownloadingCount$addDownloadListener;)V

    return-void
.end method

.method public unifiedDownload(Lccsanandroid/content/Context;Lccsanandroid/graphics/Rect;Ljava/lang/String;)V
    .locals 1

    .line 3
    sget v0, Lccsansan/ck/addDownloadListener;->addDownloadListener:I

    invoke-virtual {p0, p1, p2, p3, v0}, Lccsansan/ck/getDownloadedList;->addDownloadListener(Lccsanandroid/content/Context;Lccsanandroid/graphics/Rect;Ljava/lang/String;I)V

    return-void
.end method
