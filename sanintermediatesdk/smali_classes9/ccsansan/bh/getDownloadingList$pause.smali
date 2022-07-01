.class final Lccsansan/bh/getDownloadingList$pause;
.super Lccsancom/san/ads/Task;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsansan/bh/getDownloadingList;->getDownloadingList(IJLccsancom/san/convert/database/ConvertIntent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic IncentiveDownloadUtils:Lccsancom/san/convert/database/ConvertIntent;

.field final synthetic addDownloadListener:I

.field final synthetic getDownloadingList:J


# direct methods
.method constructor <init>(IJLccsancom/san/convert/database/ConvertIntent;)V
    .locals 0

    .line 1
    iput p1, p0, Lccsansan/bh/getDownloadingList$pause;->addDownloadListener:I

    iput-wide p2, p0, Lccsansan/bh/getDownloadingList$pause;->getDownloadingList:J

    iput-object p4, p0, Lccsansan/bh/getDownloadingList$pause;->IncentiveDownloadUtils:Lccsancom/san/convert/database/ConvertIntent;

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
    iget v1, p0, Lccsansan/bh/getDownloadingList$pause;->addDownloadListener:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "session_id"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-wide v1, p0, Lccsansan/bh/getDownloadingList$pause;->getDownloadingList:J

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    const-string v2, "session_cost"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    iget-object v1, p0, Lccsansan/bh/getDownloadingList$pause;->IncentiveDownloadUtils:Lccsancom/san/convert/database/ConvertIntent;

    const-string v2, "AD_CONVERT"

    const-string v3, "create_session"

    invoke-static {v2, v3, v0, v1}, Lccsansan/bh/getDownloadingList;->addDownloadListener(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Lccsancom/san/convert/database/ConvertIntent;)V

    return-void
.end method
