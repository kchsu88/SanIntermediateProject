.class public Lccsansan/bx/unifiedDownload;
.super Lccsanandroidx/recyclerview/widget/RecyclerView$Adapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsansan/bx/unifiedDownload$removeDownloadListener;,
        Lccsansan/bx/unifiedDownload$addDownloadListener;,
        Lccsansan/bx/unifiedDownload$IncentiveDownloadUtils;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lccsanandroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lccsanandroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private addDownloadListener:Lccsansan/bx/unifiedDownload$IncentiveDownloadUtils;

.field private getDownloadingList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lccsansan/dt/deleteDownItem$unifiedDownload;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lccsansan/dt/deleteDownItem$unifiedDownload;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lccsanandroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 2
    iput-object p1, p0, Lccsansan/bx/unifiedDownload;->getDownloadingList:Ljava/util/List;

    return-void
.end method

.method static synthetic removeDownloadListener(Lccsansan/bx/unifiedDownload;)Lccsansan/bx/unifiedDownload$IncentiveDownloadUtils;
    .locals 0

    .line 1
    iget-object p0, p0, Lccsansan/bx/unifiedDownload;->addDownloadListener:Lccsansan/bx/unifiedDownload$IncentiveDownloadUtils;

    return-object p0
.end method

.method private removeDownloadListener(Lccsanandroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 2

    .line 2
    iget-object v0, p0, Lccsansan/bx/unifiedDownload;->getDownloadingList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsansan/dt/deleteDownItem$unifiedDownload;

    iget v0, v0, Lccsansan/dt/deleteDownItem$unifiedDownload;->getDownloadingList:I

    .line 3
    iget-object v1, p0, Lccsansan/bx/unifiedDownload;->getDownloadingList:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lccsansan/dt/deleteDownItem$unifiedDownload;

    iget p2, p2, Lccsansan/dt/deleteDownItem$unifiedDownload;->unifiedDownload:I

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    .line 5
    iget-object p1, p1, Lccsanandroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Lccsanandroid/view/View;

    invoke-virtual {p0, v0}, Lccsansan/bx/unifiedDownload;->removeDownloadListener(I)I

    move-result v0

    invoke-virtual {p0, p2}, Lccsansan/bx/unifiedDownload;->removeDownloadListener(I)I

    move-result p2

    invoke-static {p1, v0, p2}, Lccsansan/bw/setAdSize;->addDownloadListener(Lccsanandroid/view/View;II)V

    goto :goto_0

    .line 7
    :cond_0
    iget-object p1, p1, Lccsanandroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Lccsanandroid/view/View;

    const/16 p2, 0x212

    invoke-virtual {p0, p2}, Lccsansan/bx/unifiedDownload;->removeDownloadListener(I)I

    move-result p2

    const/16 v0, 0x162

    invoke-virtual {p0, v0}, Lccsansan/bx/unifiedDownload;->removeDownloadListener(I)I

    move-result v0

    invoke-static {p1, p2, v0}, Lccsansan/bw/setAdSize;->addDownloadListener(Lccsanandroid/view/View;II)V

    :goto_0
    return-void
.end method


# virtual methods
.method public getDownloadingList(Lccsansan/bx/unifiedDownload$IncentiveDownloadUtils;)V
    .locals 0

    .line 8
    iput-object p1, p0, Lccsansan/bx/unifiedDownload;->addDownloadListener:Lccsansan/bx/unifiedDownload$IncentiveDownloadUtils;

    return-void
.end method

.method public getItemCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lccsansan/bx/unifiedDownload;->getDownloadingList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public onBindViewHolder(Lccsanandroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 3

    .line 1
    invoke-direct {p0, p1, p2}, Lccsansan/bx/unifiedDownload;->removeDownloadListener(Lccsanandroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V

    .line 2
    check-cast p1, Lccsansan/bx/unifiedDownload$addDownloadListener;

    .line 3
    new-instance v0, Lccsansan/bx/unifiedDownload$unifiedDownload;

    invoke-direct {v0, p0, p2}, Lccsansan/bx/unifiedDownload$unifiedDownload;-><init>(Lccsansan/bx/unifiedDownload;I)V

    invoke-virtual {p1, v0}, Lccsansan/bx/unifiedDownload$addDownloadListener;->removeDownloadListener(Lccsansan/bx/unifiedDownload$removeDownloadListener;)V

    .line 10
    iget-object p1, p1, Lccsansan/bx/unifiedDownload$addDownloadListener;->getDownloadingList:Lccsanandroid/widget/ImageView;

    .line 11
    invoke-static {}, Lccsancom/san/ads/SanImageLoader;->getInstance()Lccsancom/san/ads/SanImageLoader;

    move-result-object v0

    invoke-virtual {p1}, Lccsanandroid/widget/ImageView;->getContext()Lccsanandroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lccsansan/bx/unifiedDownload;->getDownloadingList:Ljava/util/List;

    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lccsansan/dt/deleteDownItem$unifiedDownload;

    invoke-virtual {p2}, Lccsansan/dt/deleteDownItem$unifiedDownload;->removeDownloadListener()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, v1, p2, p1}, Lccsancom/san/ads/SanImageLoader;->loadUri(Lccsanandroid/content/Context;Ljava/lang/String;Lccsanandroid/widget/ImageView;)V

    return-void
.end method

.method public onCreateViewHolder(Lccsanandroid/view/ViewGroup;I)Lccsanandroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 2

    .line 1
    invoke-virtual {p1}, Lccsanandroid/view/ViewGroup;->getContext()Lccsanandroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lccsanandroid/view/LayoutInflater;->from(Lccsanandroid/content/Context;)Lccsanandroid/view/LayoutInflater;

    move-result-object p2

    const-string v0, "san_app_shot_image_layout"

    invoke-static {v0}, Lccsansan/bw/shouldTryHandlingAction;->getDownloadedRecordByUrl(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Lccsanandroid/view/LayoutInflater;->inflate(ILccsanandroid/view/ViewGroup;Z)Lccsanandroid/view/View;

    move-result-object p1

    .line 2
    new-instance p2, Lccsansan/bx/unifiedDownload$addDownloadListener;

    invoke-direct {p2, p0, p1}, Lccsansan/bx/unifiedDownload$addDownloadListener;-><init>(Lccsansan/bx/unifiedDownload;Lccsanandroid/view/View;)V

    return-object p2
.end method

.method public removeDownloadListener(I)I
    .locals 2

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    const/4 p1, -0x2

    return p1

    :cond_0
    const/16 v1, 0x2d0

    if-ne p1, v1, :cond_1

    return v0

    .line 9
    :cond_1
    div-int/lit8 p1, p1, 0x2

    int-to-float p1, p1

    invoke-static {p1}, Lccsansan/bw/values;->addDownloadListener(F)I

    move-result p1

    return p1
.end method
