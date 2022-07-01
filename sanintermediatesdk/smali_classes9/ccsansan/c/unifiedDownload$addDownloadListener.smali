.class final Lccsansan/c/unifiedDownload$addDownloadListener;
.super Lccsancom/san/ads/Task;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsansan/c/unifiedDownload;->removeDownloadListener(Lccsanandroid/content/Context;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic getDownloadingList:Lccsanandroid/content/Context;

.field final synthetic removeDownloadListener:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Lccsanandroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lccsansan/c/unifiedDownload$addDownloadListener;->getDownloadingList:Lccsanandroid/content/Context;

    iput-object p3, p0, Lccsansan/c/unifiedDownload$addDownloadListener;->removeDownloadListener:Ljava/lang/String;

    invoke-direct {p0, p1}, Lccsancom/san/ads/Task;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public execute()V
    .locals 4

    .line 1
    new-instance v0, Lccsansan/bw/AdError;

    iget-object v1, p0, Lccsansan/c/unifiedDownload$addDownloadListener;->getDownloadingList:Lccsanandroid/content/Context;

    invoke-virtual {v1}, Lccsanandroid/content/Context;->getApplicationContext()Lccsanandroid/content/Context;

    move-result-object v1

    const-string v2, "background_worker"

    invoke-direct {v0, v1, v2}, Lccsansan/bw/AdError;-><init>(Lccsanandroid/content/Context;Ljava/lang/String;)V

    iget-object v1, p0, Lccsansan/c/unifiedDownload$addDownloadListener;->removeDownloadListener:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lccsansan/bw/AdError;->IncentiveDownloadUtils(Ljava/lang/String;J)Z

    return-void
.end method
