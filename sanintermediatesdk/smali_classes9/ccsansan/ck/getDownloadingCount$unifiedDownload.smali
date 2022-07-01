.class Lccsansan/ck/getDownloadingCount$unifiedDownload;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lccsansan/ck/getDownloadingList$getDownloadingList;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsansan/ck/getDownloadingCount;->addDownloadListener(Lccsanandroid/content/Context;Lccsansan/ck/IncentiveDownloadUtils;Lccsansan/ck/getDownloadingCount$addDownloadListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic addDownloadListener:Lccsansan/ck/getDownloadingCount$addDownloadListener;

.field final synthetic removeDownloadListener:Lccsansan/ck/getDownloadingCount;


# direct methods
.method constructor <init>(Lccsansan/ck/getDownloadingCount;Lccsansan/ck/getDownloadingCount$addDownloadListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lccsansan/ck/getDownloadingCount$unifiedDownload;->removeDownloadListener:Lccsansan/ck/getDownloadingCount;

    iput-object p2, p0, Lccsansan/ck/getDownloadingCount$unifiedDownload;->addDownloadListener:Lccsansan/ck/getDownloadingCount$addDownloadListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public IncentiveDownloadUtils(ZZLjava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lccsansan/ck/getDownloadingCount$unifiedDownload;->removeDownloadListener:Lccsansan/ck/getDownloadingCount;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lccsansan/ck/getDownloadingCount;->getDownloadingList(Lccsansan/ck/getDownloadingCount;Z)Z

    .line 2
    iget-object v0, p0, Lccsansan/ck/getDownloadingCount$unifiedDownload;->addDownloadListener:Lccsansan/ck/getDownloadingCount$addDownloadListener;

    if-eqz v0, :cond_0

    const/4 v1, 0x3

    .line 3
    invoke-interface {v0, p1, p2, p3, v1}, Lccsansan/ck/getDownloadingCount$addDownloadListener;->unifiedDownload(ZZLjava/lang/String;I)V

    :cond_0
    return-void
.end method
