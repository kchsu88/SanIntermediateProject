.class Lccsancom/san/mads/base/removeDownloadListener$addDownloadListener;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lccsansan/dt/unifiedDownload;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/san/mads/base/removeDownloadListener;->addDownloadListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic removeDownloadListener:Lccsancom/san/mads/base/removeDownloadListener;


# direct methods
.method constructor <init>(Lccsancom/san/mads/base/removeDownloadListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lccsancom/san/mads/base/removeDownloadListener$addDownloadListener;->removeDownloadListener:Lccsancom/san/mads/base/removeDownloadListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public addDownloadListener(Ljava/lang/String;)V
    .locals 2

    .line 3
    :try_start_0
    new-instance v0, Lccsanorg/json/JSONObject;

    invoke-direct {v0, p1}, Lccsanorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 4
    iget-object p1, p0, Lccsancom/san/mads/base/removeDownloadListener$addDownloadListener;->removeDownloadListener:Lccsancom/san/mads/base/removeDownloadListener;

    invoke-static {p1}, Lccsancom/san/mads/base/removeDownloadListener;->removeDownloadListener(Lccsancom/san/mads/base/removeDownloadListener;)V

    .line 5
    iget-object p1, p0, Lccsancom/san/mads/base/removeDownloadListener$addDownloadListener;->removeDownloadListener:Lccsancom/san/mads/base/removeDownloadListener;

    invoke-static {p1}, Lccsancom/san/mads/base/removeDownloadListener;->IncentiveDownloadUtils(Lccsancom/san/mads/base/removeDownloadListener;)V

    .line 7
    iget-object p1, p0, Lccsancom/san/mads/base/removeDownloadListener$addDownloadListener;->removeDownloadListener:Lccsancom/san/mads/base/removeDownloadListener;

    iget-object p1, p1, Lccsancom/san/mads/base/removeDownloadListener;->getDownloadStatusByUrl:Lccsancom/san/ads/AdInfo;

    invoke-virtual {p1}, Lccsancom/san/ads/AdInfo;->getRid()Ljava/lang/String;

    move-result-object p1

    .line 8
    iget-object v1, p0, Lccsancom/san/mads/base/removeDownloadListener$addDownloadListener;->removeDownloadListener:Lccsancom/san/mads/base/removeDownloadListener;

    invoke-virtual {v1}, Lccsancom/san/mads/base/removeDownloadListener;->getDownloadedCount()Lccsansan/dt/removeDownloadListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 9
    invoke-virtual {v1}, Lccsansan/dt/removeDownloadListener;->hasDelayTimeRestrictions()Ljava/lang/String;

    move-result-object p1

    .line 10
    :cond_0
    sget-object v1, Lccsansan/dt/IncentiveSDK;->CACHE:Lccsansan/dt/IncentiveSDK;

    invoke-static {v0, v1, p1}, Lccsansan/di/IncentiveDownloadUtils;->removeDownloadListener(Lccsanorg/json/JSONObject;Lccsansan/dt/IncentiveSDK;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 12
    iget-object v0, p0, Lccsancom/san/mads/base/removeDownloadListener$addDownloadListener;->removeDownloadListener:Lccsancom/san/mads/base/removeDownloadListener;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    const/4 v1, -0x1

    invoke-static {v0, v1, p1}, Lccsancom/san/mads/base/removeDownloadListener;->getDownloadingList(Lccsancom/san/mads/base/removeDownloadListener;ILjava/lang/String;)V

    :goto_0
    return-void
.end method

.method public unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lccsancom/san/mads/base/removeDownloadListener$addDownloadListener;->removeDownloadListener:Lccsancom/san/mads/base/removeDownloadListener;

    invoke-static {v0, p1}, Lccsancom/san/mads/base/removeDownloadListener;->unifiedDownload(Lccsancom/san/mads/base/removeDownloadListener;Ljava/lang/String;)I

    move-result p1

    .line 2
    iget-object v0, p0, Lccsancom/san/mads/base/removeDownloadListener$addDownloadListener;->removeDownloadListener:Lccsancom/san/mads/base/removeDownloadListener;

    invoke-static {v0, p1, p2}, Lccsancom/san/mads/base/removeDownloadListener;->getDownloadingList(Lccsancom/san/mads/base/removeDownloadListener;ILjava/lang/String;)V

    return-void
.end method
