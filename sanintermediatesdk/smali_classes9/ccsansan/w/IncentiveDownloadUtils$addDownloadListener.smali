.class final Lccsansan/w/IncentiveDownloadUtils$addDownloadListener;
.super Lccsancom/san/ads/Task;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsansan/w/IncentiveDownloadUtils;->IncentiveDownloadUtils(Lccsanandroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic unifiedDownload:Lccsanandroid/content/Context;


# direct methods
.method constructor <init>(Lccsanandroid/content/Context;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lccsansan/w/IncentiveDownloadUtils$addDownloadListener;->unifiedDownload:Lccsanandroid/content/Context;

    invoke-direct {p0}, Lccsancom/san/ads/Task;-><init>()V

    return-void
.end method


# virtual methods
.method public execute()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lccsansan/w/IncentiveDownloadUtils$addDownloadListener;->unifiedDownload:Lccsanandroid/content/Context;

    const-string v1, "need_alive_collect"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lccsansan/bw/performActionWhenOffline;->getDownloadingList(Lccsanandroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lccsansan/az/IncentiveDownloadUtils;->addDownloadListener()Lccsansan/az/IncentiveDownloadUtils;

    move-result-object v0

    iget-object v1, p0, Lccsansan/w/IncentiveDownloadUtils$addDownloadListener;->unifiedDownload:Lccsanandroid/content/Context;

    invoke-virtual {v0, v1}, Lccsansan/az/IncentiveDownloadUtils;->removeDownloadListener(Lccsanandroid/content/Context;)V

    .line 3
    :cond_0
    iget-object v0, p0, Lccsansan/w/IncentiveDownloadUtils$addDownloadListener;->unifiedDownload:Lccsanandroid/content/Context;

    const/4 v1, 0x0

    const-string v2, "need_differ_collect"

    invoke-static {v0, v2, v1}, Lccsansan/bw/performActionWhenOffline;->getDownloadingList(Lccsanandroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    :try_start_0
    iget-object v0, p0, Lccsansan/w/IncentiveDownloadUtils$addDownloadListener;->unifiedDownload:Lccsanandroid/content/Context;

    invoke-static {v0}, Lccsansan/w/IncentiveDownloadUtils;->getDownloadingList(Lccsanandroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 7
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 8
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lccsansan/w/IncentiveDownloadUtils$addDownloadListener;->unifiedDownload:Lccsanandroid/content/Context;

    invoke-virtual {v3}, Lccsanandroid/content/Context;->getApplicationInfo()Lccsanandroid/content/pm/ApplicationInfo;

    move-result-object v3

    iget v3, v3, Lccsanandroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "targetSdkVersion"

    invoke-virtual {v1, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget v4, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "SDK_INT"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    const-string v2, "code"

    const-string v3, "-1"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v2, "e"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    iget-object v0, p0, Lccsansan/w/IncentiveDownloadUtils$addDownloadListener;->unifiedDownload:Lccsanandroid/content/Context;

    const-string v2, "P_DIFFER"

    invoke-static {v0, v2, v1}, Lccsansan/dl/getDownloadingList;->removeDownloadListener(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/util/HashMap;)V

    :cond_1
    :goto_0
    return-void
.end method
