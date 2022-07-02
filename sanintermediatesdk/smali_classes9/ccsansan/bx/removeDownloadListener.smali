.class public Lccsansan/bx/removeDownloadListener;
.super Lccsanandroidx/recyclerview/widget/RecyclerView$Adapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsansan/bx/removeDownloadListener$getDownloadingList;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lccsanandroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lccsansan/bx/removeDownloadListener$getDownloadingList;",
        ">;"
    }
.end annotation


# instance fields
.field private IncentiveDownloadUtils:Lccsanandroid/content/Context;

.field private addDownloadListener:Z

.field private getDownloadingList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private removeDownloadListener:Lccsanandroid/view/LayoutInflater;

.field private unifiedDownload:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lccsansan/dt/deleteDownItem$unifiedDownload;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lccsanandroid/content/Context;Lccsansan/dt/deleteDownItem$IncentiveDownloadUtils;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lccsanandroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lccsansan/bx/removeDownloadListener;->addDownloadListener:Z

    .line 10
    iput-object p1, p0, Lccsansan/bx/removeDownloadListener;->IncentiveDownloadUtils:Lccsanandroid/content/Context;

    .line 12
    iget-object v1, p2, Lccsansan/dt/deleteDownItem$IncentiveDownloadUtils;->getDownloadingCount:Ljava/util/List;

    iput-object v1, p0, Lccsansan/bx/removeDownloadListener;->unifiedDownload:Ljava/util/List;

    .line 13
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsansan/dt/deleteDownItem$unifiedDownload;

    if-eqz v0, :cond_0

    .line 14
    iget v1, v0, Lccsansan/dt/deleteDownItem$unifiedDownload;->unifiedDownload:I

    iget v0, v0, Lccsansan/dt/deleteDownItem$unifiedDownload;->getDownloadingList:I

    if-le v1, v0, :cond_0

    const/4 v0, 0x1

    .line 15
    iput-boolean v0, p0, Lccsansan/bx/removeDownloadListener;->addDownloadListener:Z

    .line 18
    :cond_0
    invoke-virtual {p2}, Lccsansan/dt/deleteDownItem$IncentiveDownloadUtils;->removeDownloadListener()Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lccsansan/bx/removeDownloadListener;->getDownloadingList:Ljava/util/List;

    .line 19
    invoke-static {p1}, Lccsanandroid/view/LayoutInflater;->from(Lccsanandroid/content/Context;)Lccsanandroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lccsansan/bx/removeDownloadListener;->removeDownloadListener:Lccsanandroid/view/LayoutInflater;

    return-void
.end method

.method static synthetic getDownloadingList(Lccsansan/bx/removeDownloadListener;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lccsansan/bx/removeDownloadListener;->getDownloadingList:Ljava/util/List;

    return-object p0
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lccsansan/bx/removeDownloadListener;->unifiedDownload:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public synthetic onBindViewHolder(Lccsanandroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 1
    check-cast p1, Lccsansan/bx/removeDownloadListener$getDownloadingList;

    invoke-virtual {p0, p1, p2}, Lccsansan/bx/removeDownloadListener;->removeDownloadListener(Lccsansan/bx/removeDownloadListener$getDownloadingList;I)V

    return-void
.end method

.method public synthetic onCreateViewHolder(Lccsanandroid/view/ViewGroup;I)Lccsanandroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lccsansan/bx/removeDownloadListener;->unifiedDownload(Lccsanandroid/view/ViewGroup;I)Lccsansan/bx/removeDownloadListener$getDownloadingList;

    move-result-object p1

    return-object p1
.end method

.method public removeDownloadListener(Lccsansan/bx/removeDownloadListener$getDownloadingList;I)V
    .locals 7

    .line 8
    iget-object v0, p0, Lccsansan/bx/removeDownloadListener;->unifiedDownload:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsansan/dt/deleteDownItem$unifiedDownload;

    .line 11
    invoke-static {}, Lccsancom/san/ads/SanImageLoader;->getInstance()Lccsancom/san/ads/SanImageLoader;

    move-result-object v1

    iget-object v2, p0, Lccsansan/bx/removeDownloadListener;->IncentiveDownloadUtils:Lccsanandroid/content/Context;

    invoke-virtual {v0}, Lccsansan/dt/deleteDownItem$unifiedDownload;->removeDownloadListener()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p1, Lccsansan/bx/removeDownloadListener$getDownloadingList;->addDownloadListener:Lccsanandroid/widget/ImageView;

    .line 12
    const-string v0, "ccsan_san_app_icon_bg"

    invoke-static {v0}, Lccsansan/bw/shouldTryHandlingAction;->addDownloadListener(Ljava/lang/String;)I

    move-result v5

    iget-object v0, p0, Lccsansan/bx/removeDownloadListener;->IncentiveDownloadUtils:Lccsanandroid/content/Context;

    .line 13
    invoke-virtual {v0}, Lccsanandroid/content/Context;->getResources()Lccsanandroid/content/res/Resources;

    move-result-object v0

    const-string v6, "san_common_dimens_15dp"

    invoke-static {v6}, Lccsansan/bw/shouldTryHandlingAction;->unifiedDownload(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v0, v6}, Lccsanandroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    .line 14
    invoke-virtual/range {v1 .. v6}, Lccsancom/san/ads/SanImageLoader;->loadLandingRoundCornerUrl(Lccsanandroid/content/Context;Ljava/lang/String;Lccsanandroid/widget/ImageView;II)V

    .line 18
    iget-object p1, p1, Lccsansan/bx/removeDownloadListener$getDownloadingList;->addDownloadListener:Lccsanandroid/widget/ImageView;

    new-instance v0, Lccsansan/bx/removeDownloadListener$addDownloadListener;

    invoke-direct {v0, p0, p2}, Lccsansan/bx/removeDownloadListener$addDownloadListener;-><init>(Lccsansan/bx/removeDownloadListener;I)V

    invoke-virtual {p1, v0}, Lccsanandroid/widget/ImageView;->setOnClickListener(Lccsanandroid/view/View$OnClickListener;)V

    return-void
.end method

.method public unifiedDownload(Lccsanandroid/view/ViewGroup;I)Lccsansan/bx/removeDownloadListener$getDownloadingList;
    .locals 2

    .line 2
    iget-object p2, p0, Lccsansan/bx/removeDownloadListener;->removeDownloadListener:Lccsanandroid/view/LayoutInflater;

    iget-boolean v0, p0, Lccsansan/bx/removeDownloadListener;->addDownloadListener:Z

    if-eqz v0, :cond_0

    const-string v0, "ccsan_san_landing_page_gp_item_por"

    goto :goto_0

    :cond_0
    const-string v0, "ccsan_san_landing_page_gp_gallery_item"

    .line 3
    :goto_0
    invoke-static {v0}, Lccsansan/bw/shouldTryHandlingAction;->getDownloadedRecordByUrl(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    .line 4
    invoke-virtual {p2, v0, p1, v1}, Lccsanandroid/view/LayoutInflater;->inflate(ILccsanandroid/view/ViewGroup;Z)Lccsanandroid/view/View;

    move-result-object p1

    .line 7
    new-instance p2, Lccsansan/bx/removeDownloadListener$getDownloadingList;

    invoke-direct {p2, p0, p1}, Lccsansan/bx/removeDownloadListener$getDownloadingList;-><init>(Lccsansan/bx/removeDownloadListener;Lccsanandroid/view/View;)V

    return-object p2
.end method
