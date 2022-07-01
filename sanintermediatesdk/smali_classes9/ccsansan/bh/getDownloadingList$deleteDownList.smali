.class final Lccsansan/bh/getDownloadingList$deleteDownList;
.super Lccsancom/san/ads/Task;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsansan/bh/getDownloadingList;->getDownloadingList(Ljava/lang/String;ZZZLccsancom/san/convert/database/ConvertIntent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic IncentiveDownloadUtils:Z

.field final synthetic addDownloadListener:Z

.field final synthetic getDownloadingList:Lccsancom/san/convert/database/ConvertIntent;

.field final synthetic removeDownloadListener:Z

.field final synthetic unifiedDownload:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;ZZZLccsancom/san/convert/database/ConvertIntent;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lccsansan/bh/getDownloadingList$deleteDownList;->unifiedDownload:Ljava/lang/String;

    iput-boolean p2, p0, Lccsansan/bh/getDownloadingList$deleteDownList;->removeDownloadListener:Z

    iput-boolean p3, p0, Lccsansan/bh/getDownloadingList$deleteDownList;->addDownloadListener:Z

    iput-boolean p4, p0, Lccsansan/bh/getDownloadingList$deleteDownList;->IncentiveDownloadUtils:Z

    iput-object p5, p0, Lccsansan/bh/getDownloadingList$deleteDownList;->getDownloadingList:Lccsancom/san/convert/database/ConvertIntent;

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
    iget-object v1, p0, Lccsansan/bh/getDownloadingList$deleteDownList;->unifiedDownload:Ljava/lang/String;

    const-string v2, "launch_way"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-boolean v1, p0, Lccsansan/bh/getDownloadingList$deleteDownList;->removeDownloadListener:Z

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    const-string v2, "launch_is_background"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    iget-boolean v1, p0, Lccsansan/bh/getDownloadingList$deleteDownList;->addDownloadListener:Z

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    const-string v2, "launch_lock_screen"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    iget-boolean v1, p0, Lccsansan/bh/getDownloadingList$deleteDownList;->IncentiveDownloadUtils:Z

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    const-string v2, "launch_draw_overlay"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    iget-object v1, p0, Lccsansan/bh/getDownloadingList$deleteDownList;->getDownloadingList:Lccsancom/san/convert/database/ConvertIntent;

    const-string v2, "AD_CONVERT"

    const-string v3, "launch_activity"

    invoke-static {v2, v3, v0, v1}, Lccsansan/bh/getDownloadingList;->addDownloadListener(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Lccsancom/san/convert/database/ConvertIntent;)V

    return-void
.end method
