.class Lccsansan/p/getDownloadingList$IncentiveDownloadUtils;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsansan/p/getDownloadingList;->IncentiveDownloadUtils(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic addDownloadListener:Lccsansan/p/getDownloadingList;

.field final synthetic getDownloadingList:Ljava/lang/String;

.field final synthetic removeDownloadListener:Ljava/lang/String;

.field final synthetic unifiedDownload:Ljava/lang/String;


# direct methods
.method constructor <init>(Lccsansan/p/getDownloadingList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lccsansan/p/getDownloadingList$IncentiveDownloadUtils;->addDownloadListener:Lccsansan/p/getDownloadingList;

    iput-object p2, p0, Lccsansan/p/getDownloadingList$IncentiveDownloadUtils;->unifiedDownload:Ljava/lang/String;

    iput-object p3, p0, Lccsansan/p/getDownloadingList$IncentiveDownloadUtils;->removeDownloadListener:Ljava/lang/String;

    iput-object p4, p0, Lccsansan/p/getDownloadingList$IncentiveDownloadUtils;->getDownloadingList:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lccsansan/p/getDownloadingList$IncentiveDownloadUtils;->unifiedDownload:Ljava/lang/String;

    invoke-static {v0}, Lccsanandroid/net/Uri;->parse(Ljava/lang/String;)Lccsanandroid/net/Uri;

    move-result-object v0

    .line 2
    const-string v1, "referrer"

    invoke-virtual {v0, v1}, Lccsanandroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateReferrer() referrer : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AD.CPI.Observer"

    invoke-static {v2, v1}, Lccsansan/ch/IncentiveDownloadUtils;->getDownloadingList(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    iget-object v1, p0, Lccsansan/p/getDownloadingList$IncentiveDownloadUtils;->addDownloadListener:Lccsansan/p/getDownloadingList;

    invoke-static {v1}, Lccsansan/p/getDownloadingList;->addDownloadListener(Lccsansan/p/getDownloadingList;)Lccsanandroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lccsansan/m/unifiedDownload;->getDownloadingList(Lccsanandroid/content/Context;)Lccsansan/m/unifiedDownload;

    move-result-object v1

    iget-object v2, p0, Lccsansan/p/getDownloadingList$IncentiveDownloadUtils;->removeDownloadListener:Ljava/lang/String;

    iget-object v3, p0, Lccsansan/p/getDownloadingList$IncentiveDownloadUtils;->getDownloadingList:Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v0}, Lccsansan/m/unifiedDownload;->getDownloadingList(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method
