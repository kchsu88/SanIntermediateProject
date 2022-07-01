.class Lccsansan/p/addDownloadListener$removeDownloadListener;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lccsansan/p/addDownloadListener$getDownloadingRecordByUrl;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsansan/p/addDownloadListener;->unifiedDownload()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic removeDownloadListener:Lccsansan/p/addDownloadListener;


# direct methods
.method constructor <init>(Lccsansan/p/addDownloadListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lccsansan/p/addDownloadListener$removeDownloadListener;->removeDownloadListener:Lccsansan/p/addDownloadListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public IncentiveDownloadUtils(Lccsansan/p/addDownloadListener$getDownloadingList;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-static {}, Lccsancom/san/ads/TaskHelper;->getInstance()Lccsancom/san/ads/TaskHelper;

    move-result-object p2

    new-instance v0, Lccsansan/p/addDownloadListener$removeDownloadListener$addDownloadListener;

    invoke-direct {v0, p0, p1}, Lccsansan/p/addDownloadListener$removeDownloadListener$addDownloadListener;-><init>(Lccsansan/p/addDownloadListener$removeDownloadListener;Lccsansan/p/addDownloadListener$getDownloadingList;)V

    invoke-virtual {p2, v0}, Lccsancom/san/ads/TaskHelper;->run(Lccsancom/san/ads/Task;)V

    return-void
.end method

.method public addDownloadListener(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public addDownloadListener(Lccsansan/p/addDownloadListener$getDownloadingList;Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lccsansan/p/addDownloadListener$removeDownloadListener;->removeDownloadListener:Lccsansan/p/addDownloadListener;

    invoke-static {v0, p1, p2}, Lccsansan/p/addDownloadListener;->removeDownloadListener(Lccsansan/p/addDownloadListener;Lccsansan/p/addDownloadListener$getDownloadingList;Ljava/lang/String;)V

    return-void
.end method
