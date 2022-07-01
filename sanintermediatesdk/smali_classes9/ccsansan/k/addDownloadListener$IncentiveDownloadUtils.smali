.class final Lccsansan/k/addDownloadListener$IncentiveDownloadUtils;
.super Lccsancom/san/ads/Task;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsansan/k/addDownloadListener;->unifiedDownload(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic IncentiveDownloadUtils:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lccsansan/k/addDownloadListener$IncentiveDownloadUtils;->IncentiveDownloadUtils:Ljava/lang/String;

    invoke-direct {p0}, Lccsancom/san/ads/Task;-><init>()V

    return-void
.end method


# virtual methods
.method public execute()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    invoke-static {}, Lccsansan/q/addDownloadListener;->IncentiveDownloadUtils()Lccsansan/q/removeDownloadListener;

    move-result-object v1

    iget-object v2, p0, Lccsansan/k/addDownloadListener$IncentiveDownloadUtils;->IncentiveDownloadUtils:Ljava/lang/String;

    invoke-static {v2}, Lccsansan/k/addDownloadListener;->getDownloadingRecordByUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lccsansan/q/removeDownloadListener;->getDownloadingList(Ljava/lang/String;)Lccsancom/san/xz/base/XzRecord;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3
    invoke-static {}, Lccsansan/k/addDownloadListener;->IncentiveDownloadUtils()Lccsancom/san/xz/api/IDownloadService;

    move-result-object v1

    invoke-interface {v1, v0}, Lccsancom/san/xz/api/IDownloadService;->resume(Ljava/util/List;)V

    return-void
.end method
