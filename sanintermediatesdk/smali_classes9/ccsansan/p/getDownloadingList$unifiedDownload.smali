.class Lccsansan/p/getDownloadingList$unifiedDownload;
.super Lccsancom/san/ads/Task;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsansan/p/getDownloadingList;->onChange(ZLccsanandroid/net/Uri;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic getDownloadingList:Lccsansan/p/getDownloadingList;

.field final synthetic removeDownloadListener:Ljava/lang/String;


# direct methods
.method constructor <init>(Lccsansan/p/getDownloadingList;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lccsansan/p/getDownloadingList$unifiedDownload;->getDownloadingList:Lccsansan/p/getDownloadingList;

    iput-object p2, p0, Lccsansan/p/getDownloadingList$unifiedDownload;->removeDownloadListener:Ljava/lang/String;

    invoke-direct {p0}, Lccsancom/san/ads/Task;-><init>()V

    return-void
.end method


# virtual methods
.method public execute()V
    .locals 4

    .line 1
    iget-object v0, p0, Lccsansan/p/getDownloadingList$unifiedDownload;->getDownloadingList:Lccsansan/p/getDownloadingList;

    iget-object v1, p0, Lccsansan/p/getDownloadingList$unifiedDownload;->removeDownloadListener:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lccsansan/p/getDownloadingList;->getDownloadingList(Lccsansan/p/getDownloadingList;Ljava/lang/String;J)V

    return-void
.end method
