.class final Lccsancom/mbridge/msdk/video/dynview/endcard/moffer/MOfferModel$7;
.super Ljava/lang/Object;
.source "MOfferModel.java"

# interfaces
.implements Lccsanandroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/mbridge/msdk/video/dynview/endcard/moffer/MOfferModel;->addLikeTextView(Lccsanandroid/view/View;Lccsanandroidx/recyclerview/widget/RecyclerView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lccsanandroidx/recyclerview/widget/RecyclerView;

.field final synthetic b:Lccsancom/mbridge/msdk/video/dynview/endcard/moffer/MOfferModel;


# direct methods
.method constructor <init>(Lccsancom/mbridge/msdk/video/dynview/endcard/moffer/MOfferModel;Lccsanandroidx/recyclerview/widget/RecyclerView;)V
    .locals 0

    .line 399
    iput-object p1, p0, Lccsancom/mbridge/msdk/video/dynview/endcard/moffer/MOfferModel$7;->b:Lccsancom/mbridge/msdk/video/dynview/endcard/moffer/MOfferModel;

    iput-object p2, p0, Lccsancom/mbridge/msdk/video/dynview/endcard/moffer/MOfferModel$7;->a:Lccsanandroidx/recyclerview/widget/RecyclerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Lccsanandroid/view/View;)V
    .locals 3

    .line 402
    new-instance p1, Lccsancom/mbridge/msdk/video/dynview/g/b;

    invoke-direct {p1}, Lccsancom/mbridge/msdk/video/dynview/g/b;-><init>()V

    iget-object v0, p0, Lccsancom/mbridge/msdk/video/dynview/endcard/moffer/MOfferModel$7;->a:Lccsanandroidx/recyclerview/widget/RecyclerView;

    const-wide/16 v1, 0x12c

    invoke-virtual {p1, v0, v1, v2}, Lccsancom/mbridge/msdk/video/dynview/g/b;->a(Lccsanandroid/view/View;J)V

    .line 403
    return-void
.end method
