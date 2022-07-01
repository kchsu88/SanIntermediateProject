.class Lccsansan/bx/unifiedDownload$addDownloadListener;
.super Lccsanandroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsansan/bx/unifiedDownload;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "addDownloadListener"
.end annotation


# instance fields
.field private addDownloadListener:Lccsansan/bx/unifiedDownload$removeDownloadListener;

.field public getDownloadingList:Lccsanandroid/widget/ImageView;

.field private removeDownloadListener:Lccsanandroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>(Lccsansan/bx/unifiedDownload;Lccsanandroid/view/View;)V
    .locals 1

    .line 1
    invoke-direct {p0, p2}, Lccsanandroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Lccsanandroid/view/View;)V

    .line 6
    new-instance p1, Lccsansan/bx/unifiedDownload$addDownloadListener$addDownloadListener;

    invoke-direct {p1, p0}, Lccsansan/bx/unifiedDownload$addDownloadListener$addDownloadListener;-><init>(Lccsansan/bx/unifiedDownload$addDownloadListener;)V

    iput-object p1, p0, Lccsansan/bx/unifiedDownload$addDownloadListener;->removeDownloadListener:Lccsanandroid/view/View$OnClickListener;

    .line 7
    iget-object v0, p0, Lccsanandroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Lccsanandroid/view/View;

    invoke-virtual {v0, p1}, Lccsanandroid/view/View;->setOnClickListener(Lccsanandroid/view/View$OnClickListener;)V

    .line 8
    const-string p1, "san_iv_app_thumb"

    invoke-static {p1}, Lccsansan/bw/shouldTryHandlingAction;->deleteDownItem(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p2, p1}, Lccsanandroid/view/View;->findViewById(I)Lccsanandroid/view/View;

    move-result-object p1

    check-cast p1, Lccsanandroid/widget/ImageView;

    iput-object p1, p0, Lccsansan/bx/unifiedDownload$addDownloadListener;->getDownloadingList:Lccsanandroid/widget/ImageView;

    return-void
.end method

.method static synthetic unifiedDownload(Lccsansan/bx/unifiedDownload$addDownloadListener;)Lccsansan/bx/unifiedDownload$removeDownloadListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lccsansan/bx/unifiedDownload$addDownloadListener;->addDownloadListener:Lccsansan/bx/unifiedDownload$removeDownloadListener;

    return-object p0
.end method


# virtual methods
.method public removeDownloadListener(Lccsansan/bx/unifiedDownload$removeDownloadListener;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lccsansan/bx/unifiedDownload$addDownloadListener;->addDownloadListener:Lccsansan/bx/unifiedDownload$removeDownloadListener;

    return-void
.end method
