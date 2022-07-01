.class Lccsansan/m/unifiedDownload$unifiedDownload;
.super Lccsancom/san/ads/Task;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsansan/m/unifiedDownload;->IncentiveDownloadUtils(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic addDownloadListener:Ljava/lang/String;

.field final synthetic removeDownloadListener:Lccsansan/m/unifiedDownload;


# direct methods
.method constructor <init>(Lccsansan/m/unifiedDownload;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lccsansan/m/unifiedDownload$unifiedDownload;->removeDownloadListener:Lccsansan/m/unifiedDownload;

    iput-object p2, p0, Lccsansan/m/unifiedDownload$unifiedDownload;->addDownloadListener:Ljava/lang/String;

    invoke-direct {p0}, Lccsancom/san/ads/Task;-><init>()V

    return-void
.end method


# virtual methods
.method public execute()V
    .locals 2

    .line 1
    iget-object v0, p0, Lccsansan/m/unifiedDownload$unifiedDownload;->removeDownloadListener:Lccsansan/m/unifiedDownload;

    iget-object v1, p0, Lccsansan/m/unifiedDownload$unifiedDownload;->addDownloadListener:Ljava/lang/String;

    invoke-static {v0, v1}, Lccsansan/m/unifiedDownload;->addDownloadListener(Lccsansan/m/unifiedDownload;Ljava/lang/String;)Z

    return-void
.end method
