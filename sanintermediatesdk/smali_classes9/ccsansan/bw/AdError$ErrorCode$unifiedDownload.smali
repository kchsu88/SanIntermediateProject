.class Lccsansan/bw/AdError$ErrorCode$unifiedDownload;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lccsanandroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsansan/bw/AdError$ErrorCode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic addDownloadListener:Lccsansan/bw/AdError$ErrorCode;


# direct methods
.method constructor <init>(Lccsansan/bw/AdError$ErrorCode;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lccsansan/bw/AdError$ErrorCode$unifiedDownload;->addDownloadListener:Lccsansan/bw/AdError$ErrorCode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Lccsanandroid/os/Message;)Z
    .locals 9

    .line 1
    iget-object p1, p0, Lccsansan/bw/AdError$ErrorCode$unifiedDownload;->addDownloadListener:Lccsansan/bw/AdError$ErrorCode;

    invoke-static {p1}, Lccsansan/bw/AdError$ErrorCode;->removeDownloadListener(Lccsansan/bw/AdError$ErrorCode;)Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    return v0

    .line 5
    :cond_0
    iget-object p1, p0, Lccsansan/bw/AdError$ErrorCode$unifiedDownload;->addDownloadListener:Lccsansan/bw/AdError$ErrorCode;

    invoke-static {p1}, Lccsansan/bw/AdError$ErrorCode;->unifiedDownload(Lccsansan/bw/AdError$ErrorCode;)J

    move-result-wide v1

    invoke-static {}, Lccsanandroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    sub-long/2addr v1, v3

    const-wide/16 v3, 0x0

    cmp-long p1, v1, v3

    if-gtz p1, :cond_1

    .line 8
    iget-object p1, p0, Lccsansan/bw/AdError$ErrorCode$unifiedDownload;->addDownloadListener:Lccsansan/bw/AdError$ErrorCode;

    invoke-virtual {p1}, Lccsansan/bw/AdError$ErrorCode;->addDownloadListener()V

    goto :goto_1

    .line 10
    :cond_1
    invoke-static {}, Lccsanandroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    .line 11
    iget-object p1, p0, Lccsansan/bw/AdError$ErrorCode$unifiedDownload;->addDownloadListener:Lccsansan/bw/AdError$ErrorCode;

    invoke-virtual {p1, v1, v2}, Lccsansan/bw/AdError$ErrorCode;->addDownloadListener(J)V

    .line 13
    iget-object p1, p0, Lccsansan/bw/AdError$ErrorCode$unifiedDownload;->addDownloadListener:Lccsansan/bw/AdError$ErrorCode;

    invoke-static {p1}, Lccsansan/bw/AdError$ErrorCode;->addDownloadListener(Lccsansan/bw/AdError$ErrorCode;)J

    move-result-wide v7

    cmp-long p1, v1, v7

    if-gez p1, :cond_2

    .line 14
    iget-object p1, p0, Lccsansan/bw/AdError$ErrorCode$unifiedDownload;->addDownloadListener:Lccsansan/bw/AdError$ErrorCode;

    invoke-static {p1}, Lccsansan/bw/AdError$ErrorCode;->getDownloadingList(Lccsansan/bw/AdError$ErrorCode;)Lccsanandroid/os/Handler;

    move-result-object p1

    iget-object v3, p0, Lccsansan/bw/AdError$ErrorCode$unifiedDownload;->addDownloadListener:Lccsansan/bw/AdError$ErrorCode;

    invoke-static {v3}, Lccsansan/bw/AdError$ErrorCode;->getDownloadingList(Lccsansan/bw/AdError$ErrorCode;)Lccsanandroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v0}, Lccsanandroid/os/Handler;->obtainMessage(I)Lccsanandroid/os/Message;

    move-result-object v3

    invoke-virtual {p1, v3, v1, v2}, Lccsanandroid/os/Handler;->sendMessageDelayed(Lccsanandroid/os/Message;J)Z

    goto :goto_1

    .line 17
    :cond_2
    iget-object p1, p0, Lccsansan/bw/AdError$ErrorCode$unifiedDownload;->addDownloadListener:Lccsansan/bw/AdError$ErrorCode;

    invoke-static {p1}, Lccsansan/bw/AdError$ErrorCode;->addDownloadListener(Lccsansan/bw/AdError$ErrorCode;)J

    move-result-wide v1

    add-long/2addr v5, v1

    invoke-static {}, Lccsanandroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    sub-long/2addr v5, v1

    :goto_0
    cmp-long p1, v5, v3

    if-gez p1, :cond_3

    .line 22
    iget-object p1, p0, Lccsansan/bw/AdError$ErrorCode$unifiedDownload;->addDownloadListener:Lccsansan/bw/AdError$ErrorCode;

    invoke-static {p1}, Lccsansan/bw/AdError$ErrorCode;->addDownloadListener(Lccsansan/bw/AdError$ErrorCode;)J

    move-result-wide v1

    add-long/2addr v5, v1

    goto :goto_0

    .line 24
    :cond_3
    iget-object p1, p0, Lccsansan/bw/AdError$ErrorCode$unifiedDownload;->addDownloadListener:Lccsansan/bw/AdError$ErrorCode;

    invoke-static {p1}, Lccsansan/bw/AdError$ErrorCode;->getDownloadingList(Lccsansan/bw/AdError$ErrorCode;)Lccsanandroid/os/Handler;

    move-result-object p1

    iget-object v1, p0, Lccsansan/bw/AdError$ErrorCode$unifiedDownload;->addDownloadListener:Lccsansan/bw/AdError$ErrorCode;

    invoke-static {v1}, Lccsansan/bw/AdError$ErrorCode;->getDownloadingList(Lccsansan/bw/AdError$ErrorCode;)Lccsanandroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Lccsanandroid/os/Handler;->obtainMessage(I)Lccsanandroid/os/Message;

    move-result-object v1

    invoke-virtual {p1, v1, v5, v6}, Lccsanandroid/os/Handler;->sendMessageDelayed(Lccsanandroid/os/Message;J)Z

    :goto_1
    return v0
.end method
