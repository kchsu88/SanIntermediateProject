.class Lccsansan/ar/removeDownloadListener$unifiedDownload;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsansan/ar/removeDownloadListener;->getDownloadingList(Lccsansan/ai/removeDownloadListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic getDownloadingList:Lccsansan/ar/removeDownloadListener;

.field final synthetic unifiedDownload:Lccsansan/ai/removeDownloadListener;


# direct methods
.method constructor <init>(Lccsansan/ar/removeDownloadListener;Lccsansan/ai/removeDownloadListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lccsansan/ar/removeDownloadListener$unifiedDownload;->getDownloadingList:Lccsansan/ar/removeDownloadListener;

    iput-object p2, p0, Lccsansan/ar/removeDownloadListener$unifiedDownload;->unifiedDownload:Lccsansan/ai/removeDownloadListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lccsansan/ar/removeDownloadListener$unifiedDownload;->getDownloadingList:Lccsansan/ar/removeDownloadListener;

    iget-object v1, p0, Lccsansan/ar/removeDownloadListener$unifiedDownload;->unifiedDownload:Lccsansan/ai/removeDownloadListener;

    invoke-static {v0, v1}, Lccsansan/ar/removeDownloadListener;->removeDownloadListener(Lccsansan/ar/removeDownloadListener;Lccsansan/ai/removeDownloadListener;)V

    .line 2
    sget-object v0, Lccsansan/ar/getDownloadingList$addDownloadListener;->DEFAULT:Lccsansan/ar/getDownloadingList$addDownloadListener;

    .line 3
    sget-object v0, Lccsansan/ar/removeDownloadListener$IncentiveDownloadUtils;->getDownloadingList:[I

    iget-object v1, p0, Lccsansan/ar/removeDownloadListener$unifiedDownload;->unifiedDownload:Lccsansan/ai/removeDownloadListener;

    invoke-virtual {v1}, Lccsansan/ai/removeDownloadListener;->unifiedDownload()Lccsansan/ai/removeDownloadListener$getDownloadingList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 11
    sget-object v0, Lccsansan/ar/getDownloadingList$addDownloadListener;->CUSTOM_EVENT:Lccsansan/ar/getDownloadingList$addDownloadListener;

    goto :goto_0

    .line 12
    :cond_0
    sget-object v0, Lccsansan/ar/getDownloadingList$addDownloadListener;->PAGE_OUT_EVENT:Lccsansan/ar/getDownloadingList$addDownloadListener;

    goto :goto_0

    .line 13
    :cond_1
    iget-object v0, p0, Lccsansan/ar/removeDownloadListener$unifiedDownload;->unifiedDownload:Lccsansan/ai/removeDownloadListener;

    invoke-virtual {v0}, Lccsansan/ai/removeDownloadListener;->removeDownloadListener()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lccsansan/ai/getDownloadingList;->addDownloadListener(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lccsansan/ar/getDownloadingList$addDownloadListener;->IN_HOMEPAGE:Lccsansan/ar/getDownloadingList$addDownloadListener;

    goto :goto_0

    :cond_2
    sget-object v0, Lccsansan/ar/getDownloadingList$addDownloadListener;->PAGE_IN_EVENT:Lccsansan/ar/getDownloadingList$addDownloadListener;

    .line 22
    :goto_0
    sget-object v1, Lccsansan/ar/getDownloadingList$addDownloadListener;->IN_HOMEPAGE:Lccsansan/ar/getDownloadingList$addDownloadListener;

    if-ne v0, v1, :cond_3

    const-string v1, "homepage"

    goto :goto_1

    :cond_3
    const-string v1, "add_event"

    .line 23
    :goto_1
    iget-object v2, p0, Lccsansan/ar/removeDownloadListener$unifiedDownload;->getDownloadingList:Lccsansan/ar/removeDownloadListener;

    invoke-static {v2, v0, v1}, Lccsansan/ar/removeDownloadListener;->addDownloadListener(Lccsansan/ar/removeDownloadListener;Lccsansan/ar/getDownloadingList$addDownloadListener;Ljava/lang/String;)Z

    return-void
.end method
