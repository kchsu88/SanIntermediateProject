.class Lccsansan/au/addDownloadListener$removeDownloadListener$IncentiveDownloadUtils;
.super Lccsancom/san/ads/Task;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsansan/au/addDownloadListener$removeDownloadListener;->removeDownloadListener(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic IncentiveDownloadUtils:J

.field final synthetic addDownloadListener:Ljava/lang/String;

.field final synthetic getDownloadingList:Ljava/lang/String;

.field final synthetic removeDownloadListener:Ljava/lang/String;

.field final synthetic unifiedDownload:Ljava/lang/String;


# direct methods
.method constructor <init>(Lccsansan/au/addDownloadListener$removeDownloadListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lccsansan/au/addDownloadListener$removeDownloadListener$IncentiveDownloadUtils;->removeDownloadListener:Ljava/lang/String;

    iput-object p3, p0, Lccsansan/au/addDownloadListener$removeDownloadListener$IncentiveDownloadUtils;->unifiedDownload:Ljava/lang/String;

    iput-object p4, p0, Lccsansan/au/addDownloadListener$removeDownloadListener$IncentiveDownloadUtils;->addDownloadListener:Ljava/lang/String;

    iput-wide p5, p0, Lccsansan/au/addDownloadListener$removeDownloadListener$IncentiveDownloadUtils;->IncentiveDownloadUtils:J

    iput-object p7, p0, Lccsansan/au/addDownloadListener$removeDownloadListener$IncentiveDownloadUtils;->getDownloadingList:Ljava/lang/String;

    invoke-direct {p0}, Lccsancom/san/ads/Task;-><init>()V

    return-void
.end method


# virtual methods
.method public execute()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lccsansan/au/addDownloadListener$removeDownloadListener$IncentiveDownloadUtils;->removeDownloadListener:Ljava/lang/String;

    iget-object v1, p0, Lccsansan/au/addDownloadListener$removeDownloadListener$IncentiveDownloadUtils;->unifiedDownload:Ljava/lang/String;

    iget-object v2, p0, Lccsansan/au/addDownloadListener$removeDownloadListener$IncentiveDownloadUtils;->addDownloadListener:Ljava/lang/String;

    iget-wide v3, p0, Lccsansan/au/addDownloadListener$removeDownloadListener$IncentiveDownloadUtils;->IncentiveDownloadUtils:J

    iget-object v5, p0, Lccsansan/au/addDownloadListener$removeDownloadListener$IncentiveDownloadUtils;->getDownloadingList:Ljava/lang/String;

    invoke-static/range {v0 .. v5}, Lccsansan/au/addDownloadListener;->removeDownloadListener(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V

    return-void
.end method
