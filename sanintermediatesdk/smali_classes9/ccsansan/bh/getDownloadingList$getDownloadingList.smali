.class final Lccsansan/bh/getDownloadingList$getDownloadingList;
.super Lccsancom/san/ads/Task;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsansan/bh/getDownloadingList;->unifiedDownload(ZZZZLccsancom/san/convert/database/ConvertIntent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic IncentiveDownloadUtils:Z

.field final synthetic addDownloadListener:Z

.field final synthetic getDownloadingList:Z

.field final synthetic removeDownloadListener:Z

.field final synthetic unifiedDownload:Lccsancom/san/convert/database/ConvertIntent;


# direct methods
.method constructor <init>(ZZZZLccsancom/san/convert/database/ConvertIntent;)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lccsansan/bh/getDownloadingList$getDownloadingList;->removeDownloadListener:Z

    iput-boolean p2, p0, Lccsansan/bh/getDownloadingList$getDownloadingList;->addDownloadListener:Z

    iput-boolean p3, p0, Lccsansan/bh/getDownloadingList$getDownloadingList;->IncentiveDownloadUtils:Z

    iput-boolean p4, p0, Lccsansan/bh/getDownloadingList$getDownloadingList;->getDownloadingList:Z

    iput-object p5, p0, Lccsansan/bh/getDownloadingList$getDownloadingList;->unifiedDownload:Lccsancom/san/convert/database/ConvertIntent;

    invoke-direct {p0}, Lccsancom/san/ads/Task;-><init>()V

    return-void
.end method


# virtual methods
.method public execute()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2
    iget-boolean v1, p0, Lccsansan/bh/getDownloadingList$getDownloadingList;->removeDownloadListener:Z

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    const-string v2, "now_is_background"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-boolean v1, p0, Lccsansan/bh/getDownloadingList$getDownloadingList;->addDownloadListener:Z

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    const-string v2, "now_lock_screen"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    iget-boolean v1, p0, Lccsansan/bh/getDownloadingList$getDownloadingList;->IncentiveDownloadUtils:Z

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    const-string v2, "now_usage_stats"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    iget-boolean v1, p0, Lccsansan/bh/getDownloadingList$getDownloadingList;->getDownloadingList:Z

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    const-string v2, "now_draw_overlay"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    iget-object v1, p0, Lccsansan/bh/getDownloadingList$getDownloadingList;->unifiedDownload:Lccsancom/san/convert/database/ConvertIntent;

    const-string v2, "AD_CONVERT"

    const-string v3, "process_start"

    invoke-static {v2, v3, v0, v1}, Lccsansan/bh/getDownloadingList;->addDownloadListener(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Lccsancom/san/convert/database/ConvertIntent;)V

    return-void
.end method
