.class Lccsansan/aq/removeDownloadListener$addDownloadListener;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsansan/aq/removeDownloadListener;->asyncInvoke(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic IncentiveDownloadUtils:Ljava/lang/String;

.field final synthetic addDownloadListener:Ljava/lang/String;

.field final synthetic getDownloadingList:Ljava/lang/String;

.field final synthetic removeDownloadListener:Lccsansan/aq/removeDownloadListener;

.field final synthetic unifiedDownload:Ljava/lang/String;


# direct methods
.method constructor <init>(Lccsansan/aq/removeDownloadListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lccsansan/aq/removeDownloadListener$addDownloadListener;->removeDownloadListener:Lccsansan/aq/removeDownloadListener;

    iput-object p2, p0, Lccsansan/aq/removeDownloadListener$addDownloadListener;->getDownloadingList:Ljava/lang/String;

    iput-object p3, p0, Lccsansan/aq/removeDownloadListener$addDownloadListener;->addDownloadListener:Ljava/lang/String;

    iput-object p4, p0, Lccsansan/aq/removeDownloadListener$addDownloadListener;->IncentiveDownloadUtils:Ljava/lang/String;

    iput-object p5, p0, Lccsansan/aq/removeDownloadListener$addDownloadListener;->unifiedDownload:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .line 1
    :try_start_0
    iget-object v0, p0, Lccsansan/aq/removeDownloadListener$addDownloadListener;->removeDownloadListener:Lccsansan/aq/removeDownloadListener;

    invoke-static {v0}, Lccsansan/aq/removeDownloadListener;->addDownloadListener(Lccsansan/aq/removeDownloadListener;)Lccsansan/aq/getDownloadingList;

    move-result-object v1

    iget-object v2, p0, Lccsansan/aq/removeDownloadListener$addDownloadListener;->getDownloadingList:Ljava/lang/String;

    iget-object v3, p0, Lccsansan/aq/removeDownloadListener$addDownloadListener;->addDownloadListener:Ljava/lang/String;

    iget-object v4, p0, Lccsansan/aq/removeDownloadListener$addDownloadListener;->IncentiveDownloadUtils:Ljava/lang/String;

    iget-object v5, p0, Lccsansan/aq/removeDownloadListener$addDownloadListener;->unifiedDownload:Ljava/lang/String;

    const/4 v6, 0x1

    iget-object v0, p0, Lccsansan/aq/removeDownloadListener$addDownloadListener;->removeDownloadListener:Lccsansan/aq/removeDownloadListener;

    invoke-static {v0}, Lccsansan/aq/removeDownloadListener;->removeDownloadListener(Lccsansan/aq/removeDownloadListener;)Lccsansan/an/getDownloadingList;

    move-result-object v7

    iget-object v0, p0, Lccsansan/aq/removeDownloadListener$addDownloadListener;->removeDownloadListener:Lccsansan/aq/removeDownloadListener;

    invoke-static {v0}, Lccsansan/aq/removeDownloadListener;->IncentiveDownloadUtils(Lccsansan/aq/removeDownloadListener;)Lccsansan/bm/getDownloadingRecordByUrl;

    move-result-object v8

    invoke-virtual/range {v1 .. v8}, Lccsansan/aq/getDownloadingList;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILccsansan/an/getDownloadingList;Lccsansan/bm/getDownloadingRecordByUrl;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 3
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Hybrid"

    invoke-static {v1, v0}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
