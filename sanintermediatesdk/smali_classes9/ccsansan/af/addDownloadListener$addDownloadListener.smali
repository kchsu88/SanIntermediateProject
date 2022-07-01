.class Lccsansan/af/addDownloadListener$addDownloadListener;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsansan/af/addDownloadListener;->asyncInvoke(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic IncentiveDownloadUtils:Ljava/lang/String;

.field final synthetic addDownloadListener:Ljava/lang/String;

.field final synthetic getDownloadingList:Ljava/lang/String;

.field final synthetic removeDownloadListener:Ljava/lang/String;

.field final synthetic unifiedDownload:Lccsansan/af/addDownloadListener;


# direct methods
.method constructor <init>(Lccsansan/af/addDownloadListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lccsansan/af/addDownloadListener$addDownloadListener;->unifiedDownload:Lccsansan/af/addDownloadListener;

    iput-object p2, p0, Lccsansan/af/addDownloadListener$addDownloadListener;->IncentiveDownloadUtils:Ljava/lang/String;

    iput-object p3, p0, Lccsansan/af/addDownloadListener$addDownloadListener;->addDownloadListener:Ljava/lang/String;

    iput-object p4, p0, Lccsansan/af/addDownloadListener$addDownloadListener;->removeDownloadListener:Ljava/lang/String;

    iput-object p5, p0, Lccsansan/af/addDownloadListener$addDownloadListener;->getDownloadingList:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 1
    :try_start_0
    iget-object v0, p0, Lccsansan/af/addDownloadListener$addDownloadListener;->unifiedDownload:Lccsansan/af/addDownloadListener;

    invoke-static {v0}, Lccsansan/af/addDownloadListener;->getDownloadingList(Lccsansan/af/addDownloadListener;)Lccsansan/af/getDownloadingList;

    move-result-object v1

    iget-object v2, p0, Lccsansan/af/addDownloadListener$addDownloadListener;->IncentiveDownloadUtils:Ljava/lang/String;

    iget-object v3, p0, Lccsansan/af/addDownloadListener$addDownloadListener;->addDownloadListener:Ljava/lang/String;

    iget-object v4, p0, Lccsansan/af/addDownloadListener$addDownloadListener;->removeDownloadListener:Ljava/lang/String;

    iget-object v5, p0, Lccsansan/af/addDownloadListener$addDownloadListener;->getDownloadingList:Ljava/lang/String;

    iget-object v0, p0, Lccsansan/af/addDownloadListener$addDownloadListener;->unifiedDownload:Lccsansan/af/addDownloadListener;

    invoke-static {v0}, Lccsansan/af/addDownloadListener;->removeDownloadListener(Lccsansan/af/addDownloadListener;)Lccsansan/af/unifiedDownload;

    move-result-object v6

    invoke-virtual/range {v1 .. v6}, Lccsansan/af/getDownloadingList;->addDownloadListener(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lccsansan/af/unifiedDownload;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :goto_0
    return-void
.end method
