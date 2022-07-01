.class final Lccsansan/bw/resume$removeDownloadListener;
.super Lccsancom/san/ads/Task;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsansan/bw/resume;->getDownloadingList(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLccsanandroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic IncentiveDownloadUtils:Ljava/lang/String;

.field final synthetic addDownloadListener:Ljava/lang/String;

.field final synthetic getDownloadingList:Lccsanandroid/content/Intent;

.field final synthetic removeDownloadListener:Z

.field final synthetic unifiedDownload:Lccsanandroid/content/Context;


# direct methods
.method constructor <init>(JLccsanandroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLccsanandroid/content/Intent;)V
    .locals 0

    .line 1
    iput-object p3, p0, Lccsansan/bw/resume$removeDownloadListener;->unifiedDownload:Lccsanandroid/content/Context;

    iput-object p4, p0, Lccsansan/bw/resume$removeDownloadListener;->addDownloadListener:Ljava/lang/String;

    iput-object p5, p0, Lccsansan/bw/resume$removeDownloadListener;->IncentiveDownloadUtils:Ljava/lang/String;

    iput-boolean p6, p0, Lccsansan/bw/resume$removeDownloadListener;->removeDownloadListener:Z

    iput-object p7, p0, Lccsansan/bw/resume$removeDownloadListener;->getDownloadingList:Lccsanandroid/content/Intent;

    invoke-direct {p0, p1, p2}, Lccsancom/san/ads/Task;-><init>(J)V

    return-void
.end method


# virtual methods
.method public execute()V
    .locals 6

    .line 1
    iget-object v0, p0, Lccsansan/bw/resume$removeDownloadListener;->unifiedDownload:Lccsanandroid/content/Context;

    iget-object v1, p0, Lccsansan/bw/resume$removeDownloadListener;->addDownloadListener:Ljava/lang/String;

    iget-object v2, p0, Lccsansan/bw/resume$removeDownloadListener;->IncentiveDownloadUtils:Ljava/lang/String;

    iget-boolean v3, p0, Lccsansan/bw/resume$removeDownloadListener;->removeDownloadListener:Z

    invoke-static {}, Lccsancom/san/az/unifiedDownload;->getDownloadingList()Z

    move-result v4

    iget-object v5, p0, Lccsansan/bw/resume$removeDownloadListener;->getDownloadingList:Lccsanandroid/content/Intent;

    invoke-static/range {v0 .. v5}, Lccsansan/bn/unifiedDownload;->IncentiveDownloadUtils(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZZLccsanandroid/content/Intent;)V

    return-void
.end method
