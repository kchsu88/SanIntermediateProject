.class Lccsansan/bx/unifiedDownload$addDownloadListener$addDownloadListener;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lccsanandroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsansan/bx/unifiedDownload$addDownloadListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic removeDownloadListener:Lccsansan/bx/unifiedDownload$addDownloadListener;


# direct methods
.method constructor <init>(Lccsansan/bx/unifiedDownload$addDownloadListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lccsansan/bx/unifiedDownload$addDownloadListener$addDownloadListener;->removeDownloadListener:Lccsansan/bx/unifiedDownload$addDownloadListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Lccsanandroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lccsansan/bx/unifiedDownload$addDownloadListener$addDownloadListener;->removeDownloadListener:Lccsansan/bx/unifiedDownload$addDownloadListener;

    invoke-static {p1}, Lccsansan/bx/unifiedDownload$addDownloadListener;->unifiedDownload(Lccsansan/bx/unifiedDownload$addDownloadListener;)Lccsansan/bx/unifiedDownload$removeDownloadListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lccsansan/bx/unifiedDownload$addDownloadListener$addDownloadListener;->removeDownloadListener:Lccsansan/bx/unifiedDownload$addDownloadListener;

    invoke-static {p1}, Lccsansan/bx/unifiedDownload$addDownloadListener;->unifiedDownload(Lccsansan/bx/unifiedDownload$addDownloadListener;)Lccsansan/bx/unifiedDownload$removeDownloadListener;

    move-result-object p1

    iget-object v0, p0, Lccsansan/bx/unifiedDownload$addDownloadListener$addDownloadListener;->removeDownloadListener:Lccsansan/bx/unifiedDownload$addDownloadListener;

    invoke-interface {p1, v0}, Lccsansan/bx/unifiedDownload$removeDownloadListener;->getDownloadingList(Lccsanandroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    :cond_0
    return-void
.end method
