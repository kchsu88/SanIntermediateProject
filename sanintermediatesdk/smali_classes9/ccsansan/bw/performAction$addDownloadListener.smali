.class final Lccsansan/bw/performAction$addDownloadListener;
.super Lccsancom/san/ads/Task$UICallBackTask;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsansan/bw/performAction;->unifiedDownload(Lccsanandroid/graphics/Bitmap;Lccsansan/bw/performAction$IncentiveDownloadUtils;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field private addDownloadListener:Lccsanandroid/graphics/Bitmap;

.field final synthetic getDownloadingList:Lccsansan/bw/performAction$IncentiveDownloadUtils;

.field final synthetic unifiedDownload:Lccsanandroid/graphics/Bitmap;


# direct methods
.method constructor <init>(Lccsanandroid/graphics/Bitmap;Lccsansan/bw/performAction$IncentiveDownloadUtils;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lccsansan/bw/performAction$addDownloadListener;->unifiedDownload:Lccsanandroid/graphics/Bitmap;

    iput-object p2, p0, Lccsansan/bw/performAction$addDownloadListener;->getDownloadingList:Lccsansan/bw/performAction$IncentiveDownloadUtils;

    invoke-direct {p0}, Lccsancom/san/ads/Task$UICallBackTask;-><init>()V

    .line 2
    const/4 p1, 0x0

    iput-object p1, p0, Lccsansan/bw/performAction$addDownloadListener;->addDownloadListener:Lccsanandroid/graphics/Bitmap;

    return-void
.end method


# virtual methods
.method public callBackOnUIThread()V
    .locals 2

    .line 1
    iget-object v0, p0, Lccsansan/bw/performAction$addDownloadListener;->getDownloadingList:Lccsansan/bw/performAction$IncentiveDownloadUtils;

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v1, p0, Lccsansan/bw/performAction$addDownloadListener;->addDownloadListener:Lccsanandroid/graphics/Bitmap;

    invoke-interface {v0, v1}, Lccsansan/bw/performAction$IncentiveDownloadUtils;->a(Lccsanandroid/graphics/Bitmap;)V

    return-void
.end method

.method public execute()V
    .locals 2

    .line 1
    iget-object v0, p0, Lccsansan/bw/performAction$addDownloadListener;->unifiedDownload:Lccsanandroid/graphics/Bitmap;

    const/4 v1, 0x5

    invoke-static {v0, v1, v1}, Lccsansan/bw/performAction;->IncentiveDownloadUtils(Lccsanandroid/graphics/Bitmap;II)Lccsanandroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lccsansan/bw/performAction$addDownloadListener;->addDownloadListener:Lccsanandroid/graphics/Bitmap;

    return-void
.end method
