.class final Lccsansan/y/getDownloadingList$getDownloadingList;
.super Lccsancom/san/ads/Task;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsansan/y/getDownloadingList;->getDownloadingList(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/util/HashMap;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic IncentiveDownloadUtils:Lccsanandroid/content/Context;

.field final synthetic getDownloadingList:Ljava/util/HashMap;

.field final synthetic unifiedDownload:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Lccsanandroid/content/Context;Ljava/lang/String;Ljava/util/HashMap;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lccsansan/y/getDownloadingList$getDownloadingList;->IncentiveDownloadUtils:Lccsanandroid/content/Context;

    iput-object p3, p0, Lccsansan/y/getDownloadingList$getDownloadingList;->unifiedDownload:Ljava/lang/String;

    iput-object p4, p0, Lccsansan/y/getDownloadingList$getDownloadingList;->getDownloadingList:Ljava/util/HashMap;

    invoke-direct {p0, p1}, Lccsancom/san/ads/Task;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public execute()V
    .locals 5

    .line 1
    invoke-static {}, Lccsansan/y/getDownloadingList;->addDownloadListener()Lccsansan/y/getDownloadingList;

    move-result-object v0

    invoke-static {v0}, Lccsansan/y/getDownloadingList;->getDownloadingList(Lccsansan/y/getDownloadingList;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lccsansan/y/unifiedDownload;

    .line 2
    invoke-virtual {v1}, Lccsansan/y/unifiedDownload;->getDownloadingList()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3
    iget-object v2, p0, Lccsansan/y/getDownloadingList$getDownloadingList;->IncentiveDownloadUtils:Lccsanandroid/content/Context;

    iget-object v3, p0, Lccsansan/y/getDownloadingList$getDownloadingList;->unifiedDownload:Ljava/lang/String;

    iget-object v4, p0, Lccsansan/y/getDownloadingList$getDownloadingList;->getDownloadingList:Ljava/util/HashMap;

    invoke-virtual {v1, v2, v3, v4}, Lccsansan/y/unifiedDownload;->IncentiveDownloadUtils(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/util/HashMap;)V

    goto :goto_0

    .line 5
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "#onRandomEvent(): Finish ->"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lccsansan/y/getDownloadingList$getDownloadingList;->unifiedDownload:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SanStats"

    invoke-static {v1, v0}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
