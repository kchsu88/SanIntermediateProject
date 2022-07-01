.class Lccsancom/san/ads/core/ConfigManager$1;
.super Lccsancom/san/ads/Task;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/san/ads/core/ConfigManager;->tryToSyncAdConfig(Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic addDownloadListener:Ljava/lang/String;

.field final synthetic getDownloadingList:Z

.field final synthetic unifiedDownload:Lccsancom/san/ads/core/ConfigManager;


# direct methods
.method constructor <init>(Lccsancom/san/ads/core/ConfigManager;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    .line 1
    iput-object p1, p0, Lccsancom/san/ads/core/ConfigManager$1;->unifiedDownload:Lccsancom/san/ads/core/ConfigManager;

    iput-object p3, p0, Lccsancom/san/ads/core/ConfigManager$1;->addDownloadListener:Ljava/lang/String;

    iput-boolean p4, p0, Lccsancom/san/ads/core/ConfigManager$1;->getDownloadingList:Z

    invoke-direct {p0, p2}, Lccsancom/san/ads/Task;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public execute()V
    .locals 4

    .line 1
    iget-object v0, p0, Lccsancom/san/ads/core/ConfigManager$1;->unifiedDownload:Lccsancom/san/ads/core/ConfigManager;

    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lccsancom/san/ads/core/ConfigManager$1;->addDownloadListener:Ljava/lang/String;

    iget-boolean v3, p0, Lccsancom/san/ads/core/ConfigManager$1;->getDownloadingList:Z

    invoke-virtual {v0, v1, v2, v3}, Lccsancom/san/ads/core/ConfigManager;->sync(Lccsanandroid/content/Context;Ljava/lang/String;Z)Z

    return-void
.end method
