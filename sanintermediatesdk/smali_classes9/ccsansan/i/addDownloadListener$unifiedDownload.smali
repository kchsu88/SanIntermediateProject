.class Lccsansan/i/addDownloadListener$unifiedDownload;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lccsanandroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsansan/i/addDownloadListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic addDownloadListener:Lccsansan/i/addDownloadListener;


# direct methods
.method constructor <init>(Lccsansan/i/addDownloadListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lccsansan/i/addDownloadListener$unifiedDownload;->addDownloadListener:Lccsansan/i/addDownloadListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Lccsanandroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lccsansan/i/addDownloadListener$unifiedDownload;->addDownloadListener:Lccsansan/i/addDownloadListener;

    iget-object v0, p1, Lccsansan/i/addDownloadListener;->getDownloadingList:Lccsansan/dg/unifiedDownload;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lccsansan/dg/unifiedDownload;->getDownloadStatusByUrl()Z

    move-result v0

    invoke-static {p1, v0}, Lccsansan/i/addDownloadListener;->unifiedDownload(Lccsansan/i/addDownloadListener;Z)Z

    .line 3
    iget-object p1, p0, Lccsansan/i/addDownloadListener$unifiedDownload;->addDownloadListener:Lccsansan/i/addDownloadListener;

    invoke-static {p1}, Lccsansan/i/addDownloadListener;->unifiedDownload(Lccsansan/i/addDownloadListener;)Z

    move-result v0

    invoke-virtual {p1, v0}, Lccsansan/i/addDownloadListener;->removeDownloadListener(Z)V

    :cond_0
    return-void
.end method
