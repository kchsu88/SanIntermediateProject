.class Lccsansan/bs/addDownloadListener$unifiedDownload;
.super Lccsancom/san/ads/Task$UICallBackTask;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsansan/bs/addDownloadListener;->IncentiveDownloadUtils(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic getDownloadingList:Ljava/lang/String;


# direct methods
.method constructor <init>(Lccsansan/bs/addDownloadListener;JLjava/lang/String;)V
    .locals 0

    .line 1
    iput-object p4, p0, Lccsansan/bs/addDownloadListener$unifiedDownload;->getDownloadingList:Ljava/lang/String;

    invoke-direct {p0, p2, p3}, Lccsancom/san/ads/Task$UICallBackTask;-><init>(J)V

    return-void
.end method


# virtual methods
.method public callBackOnUIThread()V
    .locals 2

    .line 1
    iget-object v0, p0, Lccsansan/bs/addDownloadListener$unifiedDownload;->getDownloadingList:Ljava/lang/String;

    const-string v1, "direct_active"

    invoke-static {v0, v1}, Lccsancom/san/bridge/addDownloadListener;->IncentiveDownloadUtils(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
