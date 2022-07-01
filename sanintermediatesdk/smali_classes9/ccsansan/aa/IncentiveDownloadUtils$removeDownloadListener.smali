.class final Lccsansan/aa/IncentiveDownloadUtils$removeDownloadListener;
.super Lccsancom/san/ads/Task;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsansan/aa/IncentiveDownloadUtils;->unifiedDownload()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lccsancom/san/ads/Task;-><init>()V

    return-void
.end method


# virtual methods
.method public execute()V
    .locals 6

    .line 1
    invoke-static {}, Lccsansan/q/addDownloadListener;->IncentiveDownloadUtils()Lccsansan/q/removeDownloadListener;

    move-result-object v0

    sget-object v1, Lccsansan/cs/unifiedDownload;->APP:Lccsansan/cs/unifiedDownload;

    invoke-virtual {v0, v1}, Lccsansan/q/removeDownloadListener;->IncentiveDownloadUtils(Lccsansan/cs/unifiedDownload;)Ljava/util/List;

    move-result-object v0

    .line 2
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v1

    if-eqz v0, :cond_5

    .line 4
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_0

    goto :goto_2

    .line 7
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lccsancom/san/xz/base/XzRecord;

    .line 10
    invoke-virtual {v2}, Lccsancom/san/xz/base/XzRecord;->getLocalItem()Lccsansan/ae/getDownloadingList;

    move-result-object v3

    .line 11
    instance-of v4, v3, Lccsansan/ae/unifiedDownload;

    const/4 v5, 0x0

    if-eqz v4, :cond_1

    .line 12
    check-cast v3, Lccsansan/ae/unifiedDownload;

    invoke-virtual {v3}, Lccsansan/ae/unifiedDownload;->getDownloadingList()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 11
    :cond_1
    move-object v3, v5

    .line 14
    :goto_1
    invoke-static {v3}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 15
    invoke-static {v1}, Lccsansan/m/unifiedDownload;->getDownloadingList(Lccsanandroid/content/Context;)Lccsansan/m/unifiedDownload;

    move-result-object v4

    invoke-virtual {v2}, Lccsancom/san/xz/base/XzRecord;->getXzUrl()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v3, v5}, Lccsansan/m/unifiedDownload;->getDownloadingList(Ljava/lang/String;Ljava/lang/String;)Lccsansan/m/getDownloadedList;

    move-result-object v5

    :cond_2
    if-nez v5, :cond_3

    return-void

    .line 21
    :cond_3
    invoke-virtual {v2}, Lccsancom/san/xz/base/XzRecord;->getStatus()Lccsancom/san/xz/base/XzRecord$Status;

    move-result-object v4

    sget-object v5, Lccsancom/san/xz/base/XzRecord$Status;->PROCESSING:Lccsancom/san/xz/base/XzRecord$Status;

    if-eq v4, v5, :cond_4

    invoke-virtual {v2}, Lccsancom/san/xz/base/XzRecord;->getStatus()Lccsancom/san/xz/base/XzRecord$Status;

    move-result-object v4

    sget-object v5, Lccsancom/san/xz/base/XzRecord$Status;->WAITING:Lccsancom/san/xz/base/XzRecord$Status;

    if-eq v4, v5, :cond_4

    return-void

    .line 25
    :cond_4
    invoke-virtual {v2}, Lccsancom/san/xz/base/XzRecord;->getXzUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v3}, Lccsansan/au/addDownloadListener;->getDownloadingList(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    :goto_2
    return-void
.end method
