.class public Lccsansan/bx/removeDownloadListener$getDownloadingList;
.super Lccsanandroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsansan/bx/removeDownloadListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "getDownloadingList"
.end annotation


# instance fields
.field addDownloadListener:Lccsanandroid/widget/ImageView;


# direct methods
.method public constructor <init>(Lccsansan/bx/removeDownloadListener;Lccsanandroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p2}, Lccsanandroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Lccsanandroid/view/View;)V

    .line 2
    const-string p1, "san_iv_gp_gallery_item"

    invoke-static {p1}, Lccsansan/bw/shouldTryHandlingAction;->deleteDownItem(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p2, p1}, Lccsanandroid/view/View;->findViewById(I)Lccsanandroid/view/View;

    move-result-object p1

    check-cast p1, Lccsanandroid/widget/ImageView;

    iput-object p1, p0, Lccsansan/bx/removeDownloadListener$getDownloadingList;->addDownloadListener:Lccsanandroid/widget/ImageView;

    return-void
.end method
