.class public Lccsancom/mbridge/msdk/video/dynview/endcard/adapter/MBMoreOfferAdapter;
.super Lccsanandroidx/recyclerview/widget/RecyclerView$Adapter;
.source "MBMoreOfferAdapter.java"

# interfaces
.implements Lccsancom/mbridge/msdk/system/NoProGuard;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsancom/mbridge/msdk/video/dynview/endcard/adapter/MBMoreOfferAdapter$b;,
        Lccsancom/mbridge/msdk/video/dynview/endcard/adapter/MBMoreOfferAdapter$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lccsanandroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lccsancom/mbridge/msdk/video/dynview/endcard/adapter/MBMoreOfferAdapter$b;",
        ">;",
        "Lccsancom/mbridge/msdk/system/NoProGuard;"
    }
.end annotation


# instance fields
.field private bitmapSuccessCount:I

.field private campaignExList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;",
            ">;"
        }
    .end annotation
.end field

.field private isShowMoreOffer:Z

.field public listener:Lccsancom/mbridge/msdk/video/dynview/endcard/adapter/MBMoreOfferAdapter$a;

.field private moreOfferShowCallBack:Lccsancom/mbridge/msdk/video/dynview/endcard/b;

.field private rewardEndCardurl:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 27
    invoke-direct {p0}, Lccsanandroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 30
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lccsancom/mbridge/msdk/video/dynview/endcard/adapter/MBMoreOfferAdapter;->campaignExList:Ljava/util/List;

    .line 32
    const-string v0, ""

    iput-object v0, p0, Lccsancom/mbridge/msdk/video/dynview/endcard/adapter/MBMoreOfferAdapter;->rewardEndCardurl:Ljava/lang/String;

    .line 33
    const/4 v0, 0x0

    iput v0, p0, Lccsancom/mbridge/msdk/video/dynview/endcard/adapter/MBMoreOfferAdapter;->bitmapSuccessCount:I

    return-void
.end method

.method static synthetic access$000(Lccsancom/mbridge/msdk/video/dynview/endcard/adapter/MBMoreOfferAdapter;)I
    .locals 0

    .line 27
    iget p0, p0, Lccsancom/mbridge/msdk/video/dynview/endcard/adapter/MBMoreOfferAdapter;->bitmapSuccessCount:I

    return p0
.end method

.method static synthetic access$008(Lccsancom/mbridge/msdk/video/dynview/endcard/adapter/MBMoreOfferAdapter;)I
    .locals 2

    .line 27
    iget v0, p0, Lccsancom/mbridge/msdk/video/dynview/endcard/adapter/MBMoreOfferAdapter;->bitmapSuccessCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lccsancom/mbridge/msdk/video/dynview/endcard/adapter/MBMoreOfferAdapter;->bitmapSuccessCount:I

    return v0
.end method

.method static synthetic access$100(Lccsancom/mbridge/msdk/video/dynview/endcard/adapter/MBMoreOfferAdapter;)Z
    .locals 0

    .line 27
    iget-boolean p0, p0, Lccsancom/mbridge/msdk/video/dynview/endcard/adapter/MBMoreOfferAdapter;->isShowMoreOffer:Z

    return p0
.end method

.method static synthetic access$102(Lccsancom/mbridge/msdk/video/dynview/endcard/adapter/MBMoreOfferAdapter;Z)Z
    .locals 0

    .line 27
    iput-boolean p1, p0, Lccsancom/mbridge/msdk/video/dynview/endcard/adapter/MBMoreOfferAdapter;->isShowMoreOffer:Z

    return p1
.end method

.method static synthetic access$200(Lccsancom/mbridge/msdk/video/dynview/endcard/adapter/MBMoreOfferAdapter;)Lccsancom/mbridge/msdk/video/dynview/endcard/b;
    .locals 0

    .line 27
    iget-object p0, p0, Lccsancom/mbridge/msdk/video/dynview/endcard/adapter/MBMoreOfferAdapter;->moreOfferShowCallBack:Lccsancom/mbridge/msdk/video/dynview/endcard/b;

    return-object p0
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 103
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/dynview/endcard/adapter/MBMoreOfferAdapter;->campaignExList:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 104
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0

    .line 106
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Lccsanandroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 27
    check-cast p1, Lccsancom/mbridge/msdk/video/dynview/endcard/adapter/MBMoreOfferAdapter$b;

    invoke-virtual {p0, p1, p2}, Lccsancom/mbridge/msdk/video/dynview/endcard/adapter/MBMoreOfferAdapter;->onBindViewHolder(Lccsancom/mbridge/msdk/video/dynview/endcard/adapter/MBMoreOfferAdapter$b;I)V

    return-void
.end method

.method public onBindViewHolder(Lccsancom/mbridge/msdk/video/dynview/endcard/adapter/MBMoreOfferAdapter$b;I)V
    .locals 3

    .line 64
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/dynview/endcard/adapter/MBMoreOfferAdapter;->campaignExList:Ljava/util/List;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 65
    iget-object v0, p1, Lccsancom/mbridge/msdk/video/dynview/endcard/adapter/MBMoreOfferAdapter$b;->itemView:Lccsanandroid/view/View;

    invoke-virtual {v0}, Lccsanandroid/view/View;->getContext()Lccsanandroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lccsancom/mbridge/msdk/foundation/same/c/b;->a(Lccsanandroid/content/Context;)Lccsancom/mbridge/msdk/foundation/same/c/b;

    move-result-object v0

    iget-object v1, p0, Lccsancom/mbridge/msdk/video/dynview/endcard/adapter/MBMoreOfferAdapter;->campaignExList:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getIconUrl()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lccsancom/mbridge/msdk/video/dynview/endcard/adapter/MBMoreOfferAdapter$1;

    invoke-direct {v2, p0, p1}, Lccsancom/mbridge/msdk/video/dynview/endcard/adapter/MBMoreOfferAdapter$1;-><init>(Lccsancom/mbridge/msdk/video/dynview/endcard/adapter/MBMoreOfferAdapter;Lccsancom/mbridge/msdk/video/dynview/endcard/adapter/MBMoreOfferAdapter$b;)V

    invoke-virtual {v0, v1, v2}, Lccsancom/mbridge/msdk/foundation/same/c/b;->a(Ljava/lang/String;Lccsancom/mbridge/msdk/foundation/same/c/c;)V

    .line 82
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/dynview/endcard/adapter/MBMoreOfferAdapter;->campaignExList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getAppName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 83
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/dynview/endcard/adapter/MBMoreOfferAdapter;->rewardEndCardurl:Ljava/lang/String;

    const-string v1, "mof_textmod"

    invoke-static {v0, v1}, Lccsancom/mbridge/msdk/foundation/tools/y;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 84
    invoke-static {v0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 85
    iget-object v0, p1, Lccsancom/mbridge/msdk/video/dynview/endcard/adapter/MBMoreOfferAdapter$b;->b:Lccsanandroid/widget/TextView;

    iget-object v1, p0, Lccsancom/mbridge/msdk/video/dynview/endcard/adapter/MBMoreOfferAdapter;->campaignExList:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getAppName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lccsanandroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 87
    :cond_0
    iget-object v0, p1, Lccsancom/mbridge/msdk/video/dynview/endcard/adapter/MBMoreOfferAdapter$b;->b:Lccsanandroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lccsanandroid/widget/TextView;->setVisibility(I)V

    .line 90
    :cond_1
    :goto_0
    iget-object p1, p1, Lccsancom/mbridge/msdk/video/dynview/endcard/adapter/MBMoreOfferAdapter$b;->itemView:Lccsanandroid/view/View;

    new-instance v0, Lccsancom/mbridge/msdk/video/dynview/endcard/adapter/MBMoreOfferAdapter$2;

    invoke-direct {v0, p0, p2}, Lccsancom/mbridge/msdk/video/dynview/endcard/adapter/MBMoreOfferAdapter$2;-><init>(Lccsancom/mbridge/msdk/video/dynview/endcard/adapter/MBMoreOfferAdapter;I)V

    invoke-virtual {p1, v0}, Lccsanandroid/view/View;->setOnClickListener(Lccsanandroid/view/View$OnClickListener;)V

    .line 99
    :cond_2
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Lccsanandroid/view/ViewGroup;I)Lccsanandroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 27
    invoke-virtual {p0, p1, p2}, Lccsancom/mbridge/msdk/video/dynview/endcard/adapter/MBMoreOfferAdapter;->onCreateViewHolder(Lccsanandroid/view/ViewGroup;I)Lccsancom/mbridge/msdk/video/dynview/endcard/adapter/MBMoreOfferAdapter$b;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Lccsanandroid/view/ViewGroup;I)Lccsancom/mbridge/msdk/video/dynview/endcard/adapter/MBMoreOfferAdapter$b;
    .locals 2

    .line 56
    invoke-virtual {p1}, Lccsanandroid/view/ViewGroup;->getContext()Lccsanandroid/content/Context;

    move-result-object p2

    const-string v0, "ccsan_mbridge_reward_end_card_more_offer_item"

    const-string v1, "layout"

    invoke-static {p2, v0, v1}, Lccsancom/mbridge/msdk/foundation/tools/k;->a(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result p2

    .line 57
    invoke-virtual {p1}, Lccsanandroid/view/ViewGroup;->getContext()Lccsanandroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lccsanandroid/view/LayoutInflater;->from(Lccsanandroid/content/Context;)Lccsanandroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p2, p1, v1}, Lccsanandroid/view/LayoutInflater;->inflate(ILccsanandroid/view/ViewGroup;Z)Lccsanandroid/view/View;

    move-result-object p1

    .line 58
    new-instance p2, Lccsancom/mbridge/msdk/video/dynview/endcard/adapter/MBMoreOfferAdapter$b;

    invoke-direct {p2, p1}, Lccsancom/mbridge/msdk/video/dynview/endcard/adapter/MBMoreOfferAdapter$b;-><init>(Lccsanandroid/view/View;)V

    return-object p2
.end method

.method public setMoreOfferData(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;",
            ">;)V"
        }
    .end annotation

    .line 126
    iput-object p1, p0, Lccsancom/mbridge/msdk/video/dynview/endcard/adapter/MBMoreOfferAdapter;->campaignExList:Ljava/util/List;

    .line 127
    return-void
.end method

.method public setMoreOfferShowCallBack(Lccsancom/mbridge/msdk/video/dynview/endcard/b;)V
    .locals 0

    .line 51
    iput-object p1, p0, Lccsancom/mbridge/msdk/video/dynview/endcard/adapter/MBMoreOfferAdapter;->moreOfferShowCallBack:Lccsancom/mbridge/msdk/video/dynview/endcard/b;

    .line 52
    return-void
.end method

.method public setOnItemClickListener(Lccsancom/mbridge/msdk/video/dynview/endcard/adapter/MBMoreOfferAdapter$a;)V
    .locals 0

    .line 43
    iput-object p1, p0, Lccsancom/mbridge/msdk/video/dynview/endcard/adapter/MBMoreOfferAdapter;->listener:Lccsancom/mbridge/msdk/video/dynview/endcard/adapter/MBMoreOfferAdapter$a;

    .line 44
    return-void
.end method

.method public setRewardEndCardurl(Ljava/lang/String;)V
    .locals 0

    .line 47
    iput-object p1, p0, Lccsancom/mbridge/msdk/video/dynview/endcard/adapter/MBMoreOfferAdapter;->rewardEndCardurl:Ljava/lang/String;

    .line 48
    return-void
.end method
