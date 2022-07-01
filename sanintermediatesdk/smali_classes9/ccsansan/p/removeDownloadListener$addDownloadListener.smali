.class Lccsansan/p/removeDownloadListener$addDownloadListener;
.super Lccsancom/san/ads/Task;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsansan/p/removeDownloadListener;->IncentiveDownloadUtils(Ljava/lang/String;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic IncentiveDownloadUtils:Lccsansan/p/removeDownloadListener;

.field final synthetic addDownloadListener:Ljava/lang/String;

.field final synthetic removeDownloadListener:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lccsansan/p/removeDownloadListener;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lccsansan/p/removeDownloadListener$addDownloadListener;->IncentiveDownloadUtils:Lccsansan/p/removeDownloadListener;

    iput-object p2, p0, Lccsansan/p/removeDownloadListener$addDownloadListener;->addDownloadListener:Ljava/lang/String;

    iput-object p3, p0, Lccsansan/p/removeDownloadListener$addDownloadListener;->removeDownloadListener:Ljava/lang/Object;

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
    iget-object v0, p0, Lccsansan/p/removeDownloadListener$addDownloadListener;->IncentiveDownloadUtils:Lccsansan/p/removeDownloadListener;

    invoke-static {v0}, Lccsansan/p/removeDownloadListener;->getDownloadingList(Lccsansan/p/removeDownloadListener;)Lccsansan/m/getDownloadingList;

    move-result-object v0

    iget-object v1, p0, Lccsansan/p/removeDownloadListener$addDownloadListener;->IncentiveDownloadUtils:Lccsansan/p/removeDownloadListener;

    invoke-static {v1}, Lccsansan/p/removeDownloadListener;->removeDownloadListener(Lccsansan/p/removeDownloadListener;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lccsansan/p/removeDownloadListener$addDownloadListener;->addDownloadListener:Ljava/lang/String;

    iget-object v3, p0, Lccsansan/p/removeDownloadListener$addDownloadListener;->removeDownloadListener:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lccsansan/m/getDownloadingList;->removeDownloadListener(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method
