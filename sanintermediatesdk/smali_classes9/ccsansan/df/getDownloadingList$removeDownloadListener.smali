.class Lccsansan/df/getDownloadingList$removeDownloadListener;
.super Lccsancom/san/ads/Task;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsansan/df/getDownloadingList;->getDownloadingList(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic addDownloadListener:Z

.field final synthetic unifiedDownload:Lccsansan/df/getDownloadingList;


# direct methods
.method constructor <init>(Lccsansan/df/getDownloadingList;Ljava/lang/String;Z)V
    .locals 0

    .line 1
    iput-object p1, p0, Lccsansan/df/getDownloadingList$removeDownloadListener;->unifiedDownload:Lccsansan/df/getDownloadingList;

    iput-boolean p3, p0, Lccsansan/df/getDownloadingList$removeDownloadListener;->addDownloadListener:Z

    invoke-direct {p0, p2}, Lccsancom/san/ads/Task;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public execute()V
    .locals 3

    .line 1
    iget-object v0, p0, Lccsansan/df/getDownloadingList$removeDownloadListener;->unifiedDownload:Lccsansan/df/getDownloadingList;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lccsansan/df/getDownloadingList;->addDownloadListener(Lccsansan/df/getDownloadingList;J)J

    .line 2
    iget-object v0, p0, Lccsansan/df/getDownloadingList$removeDownloadListener;->unifiedDownload:Lccsansan/df/getDownloadingList;

    invoke-static {v0}, Lccsansan/df/getDownloadingList;->getDownloadingList(Lccsansan/df/getDownloadingList;)V

    .line 3
    iget-object v0, p0, Lccsansan/df/getDownloadingList$removeDownloadListener;->unifiedDownload:Lccsansan/df/getDownloadingList;

    invoke-static {v0}, Lccsansan/df/getDownloadingList;->removeDownloadListener(Lccsansan/df/getDownloadingList;)V

    .line 4
    invoke-static {}, Lccsansan/dr/getDownloadingList;->getDownloadingList()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    iget-boolean v1, p0, Lccsansan/df/getDownloadingList$removeDownloadListener;->addDownloadListener:Z

    invoke-static {v0, v1}, Lccsansan/dr/addDownloadListener;->getDownloadingList(ZZ)V

    return-void
.end method
