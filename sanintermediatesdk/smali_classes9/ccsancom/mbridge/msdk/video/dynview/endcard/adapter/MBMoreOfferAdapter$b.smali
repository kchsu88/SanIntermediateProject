.class final Lccsancom/mbridge/msdk/video/dynview/endcard/adapter/MBMoreOfferAdapter$b;
.super Lccsanandroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "MBMoreOfferAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/mbridge/msdk/video/dynview/endcard/adapter/MBMoreOfferAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation


# instance fields
.field a:Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeImageView;

.field b:Lccsanandroid/widget/TextView;


# direct methods
.method public constructor <init>(Lccsanandroid/view/View;)V
    .locals 4

    .line 114
    invoke-direct {p0, p1}, Lccsanandroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Lccsanandroid/view/View;)V

    .line 115
    invoke-virtual {p1}, Lccsanandroid/view/View;->getContext()Lccsanandroid/content/Context;

    move-result-object v0

    const-string v1, "mbridge_reward_end_card_item_iv"

    const-string v2, "id"

    invoke-static {v0, v1, v2}, Lccsancom/mbridge/msdk/foundation/tools/k;->a(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 116
    invoke-virtual {p1, v0}, Lccsanandroid/view/View;->findViewById(I)Lccsanandroid/view/View;

    move-result-object v0

    check-cast v0, Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeImageView;

    iput-object v0, p0, Lccsancom/mbridge/msdk/video/dynview/endcard/adapter/MBMoreOfferAdapter$b;->a:Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeImageView;

    .line 117
    if-eqz v0, :cond_0

    .line 118
    invoke-virtual {p1}, Lccsanandroid/view/View;->getContext()Lccsanandroid/content/Context;

    move-result-object v1

    const/high16 v3, 0x40400000    # 3.0f

    invoke-static {v1, v3}, Lccsancom/mbridge/msdk/foundation/tools/u;->b(Lccsanandroid/content/Context;F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeImageView;->setRadius(F)V

    .line 120
    :cond_0
    invoke-virtual {p1}, Lccsanandroid/view/View;->getContext()Lccsanandroid/content/Context;

    move-result-object v0

    const-string v1, "mbridge_reward_end_card_item_title_tv"

    invoke-static {v0, v1, v2}, Lccsancom/mbridge/msdk/foundation/tools/k;->a(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 121
    invoke-virtual {p1, v0}, Lccsanandroid/view/View;->findViewById(I)Lccsanandroid/view/View;

    move-result-object p1

    check-cast p1, Lccsanandroid/widget/TextView;

    iput-object p1, p0, Lccsancom/mbridge/msdk/video/dynview/endcard/adapter/MBMoreOfferAdapter$b;->b:Lccsanandroid/widget/TextView;

    .line 122
    return-void
.end method
