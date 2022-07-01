.class final Lccsansan/cc/unifiedDownload$removeDownloadListener;
.super Lccsancom/san/ads/Task;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsansan/cc/unifiedDownload;->addDownloadListener(Lccsanandroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic IncentiveDownloadUtils:Lccsanandroid/content/Context;


# direct methods
.method constructor <init>(Lccsanandroid/content/Context;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lccsansan/cc/unifiedDownload$removeDownloadListener;->IncentiveDownloadUtils:Lccsanandroid/content/Context;

    invoke-direct {p0}, Lccsancom/san/ads/Task;-><init>()V

    return-void
.end method


# virtual methods
.method public execute()V
    .locals 1

    .line 1
    invoke-static {}, Lccsansan/cj/getDownloadedList;->getDownloadingList()Lccsansan/cj/getDownloadedList;

    move-result-object v0

    invoke-virtual {v0}, Lccsansan/cj/getDownloadedList;->addDownloadListener()V

    .line 2
    iget-object v0, p0, Lccsansan/cc/unifiedDownload$removeDownloadListener;->IncentiveDownloadUtils:Lccsanandroid/content/Context;

    invoke-static {v0}, Lccsansan/cc/unifiedDownload;->removeDownloadListener(Lccsanandroid/content/Context;)V

    return-void
.end method
