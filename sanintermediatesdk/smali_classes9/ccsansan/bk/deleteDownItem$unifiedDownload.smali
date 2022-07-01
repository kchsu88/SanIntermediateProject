.class Lccsansan/bk/deleteDownItem$unifiedDownload;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;
.implements Ljava/util/concurrent/Delayed;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsansan/bk/deleteDownItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "unifiedDownload"
.end annotation


# instance fields
.field final IncentiveDownloadUtils:Lccsansan/bk/deleteDownItem;

.field final unifiedDownload:Lccsansan/bk/getDownloadingList;


# direct methods
.method public constructor <init>(Lccsansan/bk/deleteDownItem;Lccsansan/bk/getDownloadingList;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lccsansan/bk/deleteDownItem$unifiedDownload;->IncentiveDownloadUtils:Lccsansan/bk/deleteDownItem;

    .line 3
    iput-object p2, p0, Lccsansan/bk/deleteDownItem$unifiedDownload;->unifiedDownload:Lccsansan/bk/getDownloadingList;

    return-void
.end method


# virtual methods
.method public addDownloadListener(Ljava/util/concurrent/Delayed;)I
    .locals 1

    .line 1
    iget-object v0, p0, Lccsansan/bk/deleteDownItem$unifiedDownload;->unifiedDownload:Lccsansan/bk/getDownloadingList;

    invoke-virtual {v0, p1}, Lccsansan/bk/getDownloadingList;->IncentiveDownloadUtils(Ljava/util/concurrent/Delayed;)I

    move-result p1

    return p1
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Ljava/util/concurrent/Delayed;

    invoke-virtual {p0, p1}, Lccsansan/bk/deleteDownItem$unifiedDownload;->addDownloadListener(Ljava/util/concurrent/Delayed;)I

    move-result p1

    return p1
.end method

.method public getDelay(Ljava/util/concurrent/TimeUnit;)J
    .locals 2

    .line 1
    iget-object v0, p0, Lccsansan/bk/deleteDownItem$unifiedDownload;->unifiedDownload:Lccsansan/bk/getDownloadingList;

    invoke-virtual {v0, p1}, Lccsansan/bk/getDownloadingList;->getDelay(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    return-wide v0
.end method

.method public run()V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lccsansan/bk/deleteDownItem$unifiedDownload;->unifiedDownload:Lccsansan/bk/getDownloadingList;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    iget-object v0, p0, Lccsansan/bk/deleteDownItem$unifiedDownload;->IncentiveDownloadUtils:Lccsansan/bk/deleteDownItem;

    invoke-virtual {v0}, Lccsansan/bk/deleteDownItem;->unifiedDownload()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lccsansan/bk/deleteDownItem$unifiedDownload;->IncentiveDownloadUtils:Lccsansan/bk/deleteDownItem;

    invoke-virtual {v1}, Lccsansan/bk/deleteDownItem;->unifiedDownload()V

    .line 4
    throw v0
.end method
