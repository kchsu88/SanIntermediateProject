.class public Lccsansan/bg/addDownloadListener;
.super Lccsansan/an/getDownloadingList$getDownloadingList;
.source ""


# instance fields
.field private addDownloadListener:Lccsanandroid/content/Context;


# direct methods
.method public constructor <init>(Lccsanandroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lccsansan/an/getDownloadingList$getDownloadingList;-><init>()V

    .line 2
    iput-object p1, p0, Lccsansan/bg/addDownloadListener;->addDownloadListener:Lccsanandroid/content/Context;

    return-void
.end method


# virtual methods
.method public unifiedDownload(Ljava/lang/String;)I
    .locals 1

    .line 4
    invoke-static {}, Lccsansan/ah/removeDownloadListener;->unifiedDownload()Lccsansan/ah/removeDownloadListener$addDownloadListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lccsansan/ah/removeDownloadListener$addDownloadListener;->addDownloadListener(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public unifiedDownload(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILccsansan/an/removeDownloadListener;)Ljava/lang/String;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lccsanandroid/os/RemoteException;
        }
    .end annotation

    .line 1
    new-instance v0, Lccsansan/aq/getDownloadingList;

    iget-object v1, p0, Lccsansan/bg/addDownloadListener;->addDownloadListener:Lccsanandroid/content/Context;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lccsansan/aq/getDownloadingList;-><init>(Lccsanandroid/content/Context;Z)V

    .line 2
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lccsansan/aq/getDownloadingList;->unifiedDownload(Z)V

    .line 3
    new-instance v7, Lccsansan/bg/addDownloadListener$unifiedDownload;

    invoke-direct {v7, p0, p6}, Lccsansan/bg/addDownloadListener$unifiedDownload;-><init>(Lccsansan/bg/addDownloadListener;Lccsansan/an/removeDownloadListener;)V

    const/4 v6, 0x0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v7}, Lccsansan/aq/getDownloadingList;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILccsansan/an/getDownloadingList;Lccsansan/bm/getDownloadingRecordByUrl;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
