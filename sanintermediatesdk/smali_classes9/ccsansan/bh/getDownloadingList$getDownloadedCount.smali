.class final Lccsansan/bh/getDownloadingList$getDownloadedCount;
.super Lccsancom/san/ads/Task;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsansan/bh/getDownloadingList;->unifiedDownload(Ljava/lang/String;JZZZLccsancom/san/convert/database/ConvertIntent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic IncentiveDownloadUtils:Z

.field final synthetic addDownloadListener:Z

.field final synthetic getDownloadedList:Lccsancom/san/convert/database/ConvertIntent;

.field final synthetic getDownloadingList:Ljava/lang/String;

.field final synthetic removeDownloadListener:Z

.field final synthetic unifiedDownload:J


# direct methods
.method constructor <init>(Ljava/lang/String;JZZZLccsancom/san/convert/database/ConvertIntent;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lccsansan/bh/getDownloadingList$getDownloadedCount;->getDownloadingList:Ljava/lang/String;

    iput-wide p2, p0, Lccsansan/bh/getDownloadingList$getDownloadedCount;->unifiedDownload:J

    iput-boolean p4, p0, Lccsansan/bh/getDownloadingList$getDownloadedCount;->addDownloadListener:Z

    iput-boolean p5, p0, Lccsansan/bh/getDownloadingList$getDownloadedCount;->removeDownloadListener:Z

    iput-boolean p6, p0, Lccsansan/bh/getDownloadingList$getDownloadedCount;->IncentiveDownloadUtils:Z

    iput-object p7, p0, Lccsansan/bh/getDownloadingList$getDownloadedCount;->getDownloadedList:Lccsancom/san/convert/database/ConvertIntent;

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
    iget-object v1, p0, Lccsansan/bh/getDownloadingList$getDownloadedCount;->getDownloadingList:Ljava/lang/String;

    const-string v2, "launch_way"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-wide v1, p0, Lccsansan/bh/getDownloadingList$getDownloadedCount;->unifiedDownload:J

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    const-string v2, "launch_cost"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    iget-boolean v1, p0, Lccsansan/bh/getDownloadingList$getDownloadedCount;->addDownloadListener:Z

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    const-string v2, "launch_is_background"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    iget-boolean v1, p0, Lccsansan/bh/getDownloadingList$getDownloadedCount;->removeDownloadListener:Z

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    const-string v2, "launch_lock_screen"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    iget-boolean v1, p0, Lccsansan/bh/getDownloadingList$getDownloadedCount;->IncentiveDownloadUtils:Z

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    const-string v2, "launch_draw_overlay"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    iget-object v1, p0, Lccsansan/bh/getDownloadingList$getDownloadedCount;->getDownloadedList:Lccsancom/san/convert/database/ConvertIntent;

    const-string v2, "AD_CONVERT"

    const-string v3, "launch_activity_success"

    invoke-static {v2, v3, v0, v1}, Lccsansan/bh/getDownloadingList;->addDownloadListener(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Lccsancom/san/convert/database/ConvertIntent;)V

    return-void
.end method
