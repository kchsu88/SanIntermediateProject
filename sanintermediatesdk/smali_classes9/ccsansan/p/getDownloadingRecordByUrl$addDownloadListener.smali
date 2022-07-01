.class final Lccsansan/p/getDownloadingRecordByUrl$addDownloadListener;
.super Lccsancom/san/ads/Task;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsansan/p/getDownloadingRecordByUrl;->getDownloadingList()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lccsancom/san/ads/Task;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public execute()V
    .locals 0

    .line 1
    invoke-static {}, Lccsansan/p/getDownloadingRecordByUrl;->removeDownloadListener()V

    .line 3
    invoke-static {}, Lccsansan/p/getDownloadingRecordByUrl;->unifiedDownload()V

    return-void
.end method
