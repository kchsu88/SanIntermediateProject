.class public Lccsansan/ck/getDownloadedCount;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private removeDownloadListener:Lccsansan/ck/getDownloadingCount;

.field private unifiedDownload:Lccsansan/dt/removeDownloadListener;


# direct methods
.method public constructor <init>(Lccsansan/dt/removeDownloadListener;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lccsansan/ck/getDownloadingCount;

    invoke-direct {v0}, Lccsansan/ck/getDownloadingCount;-><init>()V

    iput-object v0, p0, Lccsansan/ck/getDownloadedCount;->removeDownloadListener:Lccsansan/ck/getDownloadingCount;

    .line 6
    iput-object p1, p0, Lccsansan/ck/getDownloadedCount;->unifiedDownload:Lccsansan/dt/removeDownloadListener;

    return-void
.end method

.method private IncentiveDownloadUtils()Lccsansan/dt/removeDownloadListener;
    .locals 1

    .line 13
    iget-object v0, p0, Lccsansan/ck/getDownloadedCount;->unifiedDownload:Lccsansan/dt/removeDownloadListener;

    return-object v0
.end method

.method static synthetic removeDownloadListener(Lccsansan/ck/getDownloadedCount;)Lccsansan/dt/removeDownloadListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lccsansan/ck/getDownloadedCount;->unifiedDownload:Lccsansan/dt/removeDownloadListener;

    return-object p0
.end method


# virtual methods
.method public getDownloadingList(Ljava/lang/String;)Lccsansan/ck/IncentiveDownloadUtils;
    .locals 4

    .line 14
    new-instance v0, Lccsansan/ck/IncentiveDownloadUtils;

    invoke-direct {p0}, Lccsansan/ck/getDownloadedCount;->IncentiveDownloadUtils()Lccsansan/dt/removeDownloadListener;

    move-result-object v1

    invoke-direct {p0}, Lccsansan/ck/getDownloadedCount;->IncentiveDownloadUtils()Lccsansan/dt/removeDownloadListener;

    move-result-object v2

    invoke-virtual {v2}, Lccsansan/dt/removeDownloadListener;->AdError$ErrorCode()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0}, Lccsansan/ck/getDownloadedCount;->IncentiveDownloadUtils()Lccsansan/dt/removeDownloadListener;

    move-result-object v3

    invoke-virtual {v3}, Lccsansan/dt/removeDownloadListener;->setLocalExtras()I

    move-result v3

    invoke-direct {v0, v1, v2, p1, v3}, Lccsansan/ck/IncentiveDownloadUtils;-><init>(Lccsansan/dt/removeDownloadListener;Ljava/lang/String;Ljava/lang/String;I)V

    return-object v0
.end method

.method public unifiedDownload()V
    .locals 2

    .line 1
    iget-object v0, p0, Lccsansan/ck/getDownloadedCount;->unifiedDownload:Lccsansan/dt/removeDownloadListener;

    invoke-static {v0}, Lccsancom/san/bridge/addDownloadListener;->unifiedDownload(Lccsansan/dt/removeDownloadListener;)V

    .line 2
    invoke-direct {p0}, Lccsansan/ck/getDownloadedCount;->IncentiveDownloadUtils()Lccsansan/dt/removeDownloadListener;

    move-result-object v0

    invoke-direct {p0}, Lccsansan/ck/getDownloadedCount;->IncentiveDownloadUtils()Lccsansan/dt/removeDownloadListener;

    move-result-object v1

    invoke-virtual {v1}, Lccsansan/dt/removeDownloadListener;->values()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lccsansan/cy/deleteDownItem;->addDownloadListener(Lccsansan/dt/removeDownloadListener;Ljava/lang/String;)V

    return-void
.end method

.method public unifiedDownload(Lccsanandroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WebViewClient Send Ad Click url :  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Mads.WebAT"

    invoke-static {v1, v0}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lccsansan/ck/getDownloadedCount;->removeDownloadListener:Lccsansan/ck/getDownloadingCount;

    invoke-virtual {v0}, Lccsansan/ck/getDownloadingCount;->removeDownloadListener()V

    .line 4
    iget-object v0, p0, Lccsansan/ck/getDownloadedCount;->removeDownloadListener:Lccsansan/ck/getDownloadingCount;

    const/4 v1, -0x1

    invoke-static {v1}, Lccsansan/ck/getDownloadingCount;->addDownloadListener(I)Lccsansan/ck/getDownloadingList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lccsansan/ck/getDownloadingCount;->getDownloadingList(Lccsansan/ck/getDownloadingList;)V

    .line 6
    new-instance v0, Lccsansan/ck/getDownloadingList$unifiedDownload;

    invoke-direct {v0}, Lccsansan/ck/getDownloadingList$unifiedDownload;-><init>()V

    .line 7
    invoke-static {}, Lccsansan/ck/removeDownloadListener;->addDownloadListener()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lccsansan/ck/getDownloadingList$unifiedDownload;->IncentiveDownloadUtils(Ljava/util/List;)Lccsansan/ck/getDownloadingList$unifiedDownload;

    move-result-object v0

    .line 8
    invoke-virtual {v0}, Lccsansan/ck/getDownloadingList$unifiedDownload;->unifiedDownload()Lccsansan/ck/getDownloadingList;

    move-result-object v0

    .line 9
    iget-object v1, p0, Lccsansan/ck/getDownloadedCount;->removeDownloadListener:Lccsansan/ck/getDownloadingCount;

    invoke-virtual {v1, v0}, Lccsansan/ck/getDownloadingCount;->IncentiveDownloadUtils(Lccsansan/ck/getDownloadingList;)V

    .line 10
    invoke-virtual {p0, p2}, Lccsansan/ck/getDownloadedCount;->getDownloadingList(Ljava/lang/String;)Lccsansan/ck/IncentiveDownloadUtils;

    move-result-object p2

    .line 11
    sget v0, Lccsansan/ck/addDownloadListener;->addDownloadListener:I

    iput v0, p2, Lccsansan/ck/IncentiveDownloadUtils;->deleteDownItem:I

    .line 12
    iget-object v0, p0, Lccsansan/ck/getDownloadedCount;->removeDownloadListener:Lccsansan/ck/getDownloadingCount;

    new-instance v1, Lccsansan/ck/getDownloadedCount$IncentiveDownloadUtils;

    invoke-direct {v1, p0}, Lccsansan/ck/getDownloadedCount$IncentiveDownloadUtils;-><init>(Lccsansan/ck/getDownloadedCount;)V

    invoke-virtual {v0, p1, p2, v1}, Lccsansan/ck/getDownloadingCount;->removeDownloadListener(Lccsanandroid/content/Context;Lccsansan/ck/IncentiveDownloadUtils;Lccsansan/ck/getDownloadingCount$addDownloadListener;)V

    return-void
.end method
