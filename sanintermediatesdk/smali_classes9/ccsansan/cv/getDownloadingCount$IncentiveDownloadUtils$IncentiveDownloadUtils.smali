.class Lccsansan/cv/getDownloadingCount$IncentiveDownloadUtils$IncentiveDownloadUtils;
.super Lccsancom/san/ads/Task;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsansan/cv/getDownloadingCount$IncentiveDownloadUtils;->addDownloadListener(ZLccsansan/cs/IncentiveDownloadUtils;Ljava/lang/Exception;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic IncentiveDownloadUtils:I

.field final synthetic addDownloadListener:Lccsansan/cs/IncentiveDownloadUtils;

.field final synthetic getDownloadingList:Z

.field final synthetic removeDownloadListener:Ljava/lang/String;


# direct methods
.method constructor <init>(Lccsansan/cv/getDownloadingCount$IncentiveDownloadUtils;Lccsansan/cs/IncentiveDownloadUtils;ZILjava/lang/String;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lccsansan/cv/getDownloadingCount$IncentiveDownloadUtils$IncentiveDownloadUtils;->addDownloadListener:Lccsansan/cs/IncentiveDownloadUtils;

    iput-boolean p3, p0, Lccsansan/cv/getDownloadingCount$IncentiveDownloadUtils$IncentiveDownloadUtils;->getDownloadingList:Z

    iput p4, p0, Lccsansan/cv/getDownloadingCount$IncentiveDownloadUtils$IncentiveDownloadUtils;->IncentiveDownloadUtils:I

    iput-object p5, p0, Lccsansan/cv/getDownloadingCount$IncentiveDownloadUtils$IncentiveDownloadUtils;->removeDownloadListener:Ljava/lang/String;

    invoke-direct {p0}, Lccsancom/san/ads/Task;-><init>()V

    return-void
.end method


# virtual methods
.method public execute()V
    .locals 5

    .line 1
    invoke-static {}, Lccsansan/cv/getDownloadingCount;->IncentiveDownloadUtils()Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lccsansan/cv/getDownloadingCount$IncentiveDownloadUtils$IncentiveDownloadUtils;->addDownloadListener:Lccsansan/cs/IncentiveDownloadUtils;

    invoke-virtual {v1}, Lccsansan/cs/IncentiveDownloadUtils;->removeDownloadListener()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsansan/cv/resume;

    if-nez v0, :cond_0

    .line 4
    invoke-static {}, Lccsansan/cv/getDownloadingCount;->IncentiveDownloadUtils()Ljava/util/Map;

    move-result-object v0

    const-string v1, "ad_statistic"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsansan/cv/resume;

    :cond_0
    if-eqz v0, :cond_1

    .line 7
    iget-boolean v1, p0, Lccsansan/cv/getDownloadingCount$IncentiveDownloadUtils$IncentiveDownloadUtils;->getDownloadingList:Z

    iget-object v2, p0, Lccsansan/cv/getDownloadingCount$IncentiveDownloadUtils$IncentiveDownloadUtils;->addDownloadListener:Lccsansan/cs/IncentiveDownloadUtils;

    iget v3, p0, Lccsansan/cv/getDownloadingCount$IncentiveDownloadUtils$IncentiveDownloadUtils;->IncentiveDownloadUtils:I

    iget-object v4, p0, Lccsansan/cv/getDownloadingCount$IncentiveDownloadUtils$IncentiveDownloadUtils;->removeDownloadListener:Ljava/lang/String;

    invoke-interface {v0, v1, v2, v3, v4}, Lccsansan/cv/resume;->addDownloadListener(ZLccsansan/cs/IncentiveDownloadUtils;ILjava/lang/String;)V

    :cond_1
    return-void
.end method
