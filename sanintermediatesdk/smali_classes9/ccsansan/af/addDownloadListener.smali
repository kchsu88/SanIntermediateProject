.class public Lccsansan/af/addDownloadListener;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final IncentiveDownloadUtils:Lccsanandroid/os/Handler;

.field private addDownloadListener:Lccsansan/af/getDownloadingList;

.field private getDownloadingList:Lccsansan/af/unifiedDownload;

.field private unifiedDownload:Lccsanandroid/content/Context;


# direct methods
.method public constructor <init>(Lccsanandroid/content/Context;Lccsansan/af/unifiedDownload;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lccsanandroid/os/Handler;

    invoke-direct {v0}, Lccsanandroid/os/Handler;-><init>()V

    iput-object v0, p0, Lccsansan/af/addDownloadListener;->IncentiveDownloadUtils:Lccsanandroid/os/Handler;

    .line 8
    new-instance v0, Lccsansan/af/getDownloadingList;

    invoke-direct {v0, p1}, Lccsansan/af/getDownloadingList;-><init>(Lccsanandroid/content/Context;)V

    iput-object v0, p0, Lccsansan/af/addDownloadListener;->addDownloadListener:Lccsansan/af/getDownloadingList;

    .line 9
    iput-object p2, p0, Lccsansan/af/addDownloadListener;->getDownloadingList:Lccsansan/af/unifiedDownload;

    .line 10
    iput-object p1, p0, Lccsansan/af/addDownloadListener;->unifiedDownload:Lccsanandroid/content/Context;

    return-void
.end method

.method static synthetic getDownloadingList(Lccsansan/af/addDownloadListener;)Lccsansan/af/getDownloadingList;
    .locals 0

    .line 1
    iget-object p0, p0, Lccsansan/af/addDownloadListener;->addDownloadListener:Lccsansan/af/getDownloadingList;

    return-object p0
.end method

.method static synthetic removeDownloadListener(Lccsansan/af/addDownloadListener;)Lccsansan/af/unifiedDownload;
    .locals 0

    .line 1
    iget-object p0, p0, Lccsansan/af/addDownloadListener;->getDownloadingList:Lccsansan/af/unifiedDownload;

    return-object p0
.end method


# virtual methods
.method public asyncInvoke(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .annotation runtime Lccsanandroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    iget-object v0, p0, Lccsansan/af/addDownloadListener;->IncentiveDownloadUtils:Lccsanandroid/os/Handler;

    new-instance v7, Lccsansan/af/addDownloadListener$addDownloadListener;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lccsansan/af/addDownloadListener$addDownloadListener;-><init>(Lccsansan/af/addDownloadListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v7}, Lccsanandroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public getGAID()Ljava/lang/String;
    .locals 1
    .annotation runtime Lccsanandroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    iget-object v0, p0, Lccsansan/af/addDownloadListener;->unifiedDownload:Lccsanandroid/content/Context;

    invoke-static {v0}, Lccsansan/bw/getMinIntervalToReturn;->getDownloadingList(Lccsanandroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public syncInvoke(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .annotation runtime Lccsanandroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    iget-object v0, p0, Lccsansan/af/addDownloadListener;->addDownloadListener:Lccsansan/af/getDownloadingList;

    iget-object v5, p0, Lccsansan/af/addDownloadListener;->getDownloadingList:Lccsansan/af/unifiedDownload;

    const/4 v3, 0x0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    invoke-virtual/range {v0 .. v5}, Lccsansan/af/getDownloadingList;->addDownloadListener(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lccsansan/af/unifiedDownload;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
