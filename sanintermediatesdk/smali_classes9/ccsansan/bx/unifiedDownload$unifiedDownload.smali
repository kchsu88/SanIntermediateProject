.class Lccsansan/bx/unifiedDownload$unifiedDownload;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lccsansan/bx/unifiedDownload$removeDownloadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsansan/bx/unifiedDownload;->onBindViewHolder(Lccsanandroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic removeDownloadListener:I

.field final synthetic unifiedDownload:Lccsansan/bx/unifiedDownload;


# direct methods
.method constructor <init>(Lccsansan/bx/unifiedDownload;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lccsansan/bx/unifiedDownload$unifiedDownload;->unifiedDownload:Lccsansan/bx/unifiedDownload;

    iput p2, p0, Lccsansan/bx/unifiedDownload$unifiedDownload;->removeDownloadListener:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDownloadingList(Lccsanandroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lccsansan/bx/unifiedDownload$unifiedDownload;->unifiedDownload:Lccsansan/bx/unifiedDownload;

    invoke-static {p1}, Lccsansan/bx/unifiedDownload;->removeDownloadListener(Lccsansan/bx/unifiedDownload;)Lccsansan/bx/unifiedDownload$IncentiveDownloadUtils;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lccsansan/bx/unifiedDownload$unifiedDownload;->unifiedDownload:Lccsansan/bx/unifiedDownload;

    invoke-static {p1}, Lccsansan/bx/unifiedDownload;->removeDownloadListener(Lccsansan/bx/unifiedDownload;)Lccsansan/bx/unifiedDownload$IncentiveDownloadUtils;

    move-result-object p1

    iget v0, p0, Lccsansan/bx/unifiedDownload$unifiedDownload;->removeDownloadListener:I

    invoke-interface {p1, v0}, Lccsansan/bx/unifiedDownload$IncentiveDownloadUtils;->onChildViewEvent(I)V

    :cond_0
    return-void
.end method
