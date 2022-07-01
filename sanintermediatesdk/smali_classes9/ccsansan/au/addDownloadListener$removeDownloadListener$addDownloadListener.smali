.class Lccsansan/au/addDownloadListener$removeDownloadListener$addDownloadListener;
.super Lccsancom/san/ads/Task;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsansan/au/addDownloadListener$removeDownloadListener;->getDownloadingList(Ljava/lang/String;Ljava/lang/String;JJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic IncentiveDownloadUtils:Ljava/lang/String;

.field final synthetic addDownloadListener:J

.field final synthetic getDownloadingList:Ljava/lang/String;


# direct methods
.method constructor <init>(Lccsansan/au/addDownloadListener$removeDownloadListener;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 0

    .line 1
    iput-object p2, p0, Lccsansan/au/addDownloadListener$removeDownloadListener$addDownloadListener;->getDownloadingList:Ljava/lang/String;

    iput-object p3, p0, Lccsansan/au/addDownloadListener$removeDownloadListener$addDownloadListener;->IncentiveDownloadUtils:Ljava/lang/String;

    iput-wide p4, p0, Lccsansan/au/addDownloadListener$removeDownloadListener$addDownloadListener;->addDownloadListener:J

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
    iget-object v0, p0, Lccsansan/au/addDownloadListener$removeDownloadListener$addDownloadListener;->getDownloadingList:Ljava/lang/String;

    iget-object v1, p0, Lccsansan/au/addDownloadListener$removeDownloadListener$addDownloadListener;->IncentiveDownloadUtils:Ljava/lang/String;

    iget-wide v2, p0, Lccsansan/au/addDownloadListener$removeDownloadListener$addDownloadListener;->addDownloadListener:J

    invoke-static {v0, v1, v2, v3}, Lccsansan/au/addDownloadListener;->addDownloadListener(Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method
