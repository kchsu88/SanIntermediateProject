.class Lccsansan/db/getDownloadingRecordByUrl$removeDownloadListener;
.super Lccsancom/san/ads/Task$UICallBackTask;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsansan/db/getDownloadingRecordByUrl;->addDownloadListener(Lccsanandroid/content/Context;Lccsansan/db/getDownloadingRecordByUrl$unifiedDownload;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private IncentiveDownloadUtils:Ljava/lang/String;

.field final synthetic addDownloadListener:Lccsansan/db/getDownloadingRecordByUrl;

.field final synthetic getDownloadingList:Lccsansan/db/getDownloadingRecordByUrl$unifiedDownload;

.field final synthetic removeDownloadListener:Ljava/lang/String;


# direct methods
.method constructor <init>(Lccsansan/db/getDownloadingRecordByUrl;Ljava/lang/String;Lccsansan/db/getDownloadingRecordByUrl$unifiedDownload;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lccsansan/db/getDownloadingRecordByUrl$removeDownloadListener;->addDownloadListener:Lccsansan/db/getDownloadingRecordByUrl;

    iput-object p2, p0, Lccsansan/db/getDownloadingRecordByUrl$removeDownloadListener;->removeDownloadListener:Ljava/lang/String;

    iput-object p3, p0, Lccsansan/db/getDownloadingRecordByUrl$removeDownloadListener;->getDownloadingList:Lccsansan/db/getDownloadingRecordByUrl$unifiedDownload;

    invoke-direct {p0}, Lccsancom/san/ads/Task$UICallBackTask;-><init>()V

    return-void
.end method


# virtual methods
.method public callBackOnUIThread()V
    .locals 3

    .line 1
    iget-object v0, p0, Lccsansan/db/getDownloadingRecordByUrl$removeDownloadListener;->addDownloadListener:Lccsansan/db/getDownloadingRecordByUrl;

    iget-object v1, p0, Lccsansan/db/getDownloadingRecordByUrl$removeDownloadListener;->IncentiveDownloadUtils:Ljava/lang/String;

    iget-object v2, p0, Lccsansan/db/getDownloadingRecordByUrl$removeDownloadListener;->getDownloadingList:Lccsansan/db/getDownloadingRecordByUrl$unifiedDownload;

    invoke-static {v0, v1, v2}, Lccsansan/db/getDownloadingRecordByUrl;->IncentiveDownloadUtils(Lccsansan/db/getDownloadingRecordByUrl;Ljava/lang/String;Lccsansan/db/getDownloadingRecordByUrl$unifiedDownload;)V

    return-void
.end method

.method public execute()V
    .locals 1

    .line 1
    iget-object v0, p0, Lccsansan/db/getDownloadingRecordByUrl$removeDownloadListener;->removeDownloadListener:Ljava/lang/String;

    invoke-static {v0}, Lccsanandroid/webkit/URLUtil;->isNetworkUrl(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lccsansan/db/getDownloadingRecordByUrl$removeDownloadListener;->removeDownloadListener:Ljava/lang/String;

    iput-object v0, p0, Lccsansan/db/getDownloadingRecordByUrl$removeDownloadListener;->IncentiveDownloadUtils:Ljava/lang/String;

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lccsansan/db/getDownloadingRecordByUrl$removeDownloadListener;->removeDownloadListener:Ljava/lang/String;

    invoke-static {v0}, Lccsansan/ab/getDownloadingList;->addDownloadListener(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lccsansan/db/getDownloadingRecordByUrl$removeDownloadListener;->IncentiveDownloadUtils:Ljava/lang/String;

    :goto_0
    return-void
.end method
