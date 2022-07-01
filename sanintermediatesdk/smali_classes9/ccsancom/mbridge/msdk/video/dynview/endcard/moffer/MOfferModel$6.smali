.class final Lccsancom/mbridge/msdk/video/dynview/endcard/moffer/MOfferModel$6;
.super Ljava/lang/Object;
.source "MOfferModel.java"

# interfaces
.implements Lccsancom/mbridge/msdk/video/dynview/endcard/adapter/MBMoreOfferAdapter$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/mbridge/msdk/video/dynview/endcard/moffer/MOfferModel;->buildAdapter(Lccsanandroid/content/Context;Lccsanandroid/view/View;Lccsanandroidx/recyclerview/widget/RecyclerView;Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeRelativeLayout;Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;Lccsancom/mbridge/msdk/foundation/entity/CampaignUnit;Ljava/lang/String;Ljava/lang/String;Lccsancom/mbridge/msdk/video/module/a/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lccsancom/mbridge/msdk/foundation/entity/CampaignUnit;

.field final synthetic b:Lccsancom/mbridge/msdk/video/module/a/a;

.field final synthetic c:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Ljava/lang/String;

.field final synthetic f:Lccsancom/mbridge/msdk/video/dynview/endcard/moffer/MOfferModel;


# direct methods
.method constructor <init>(Lccsancom/mbridge/msdk/video/dynview/endcard/moffer/MOfferModel;Lccsancom/mbridge/msdk/foundation/entity/CampaignUnit;Lccsancom/mbridge/msdk/video/module/a/a;Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 367
    iput-object p1, p0, Lccsancom/mbridge/msdk/video/dynview/endcard/moffer/MOfferModel$6;->f:Lccsancom/mbridge/msdk/video/dynview/endcard/moffer/MOfferModel;

    iput-object p2, p0, Lccsancom/mbridge/msdk/video/dynview/endcard/moffer/MOfferModel$6;->a:Lccsancom/mbridge/msdk/foundation/entity/CampaignUnit;

    iput-object p3, p0, Lccsancom/mbridge/msdk/video/dynview/endcard/moffer/MOfferModel$6;->b:Lccsancom/mbridge/msdk/video/module/a/a;

    iput-object p4, p0, Lccsancom/mbridge/msdk/video/dynview/endcard/moffer/MOfferModel$6;->c:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    iput-object p5, p0, Lccsancom/mbridge/msdk/video/dynview/endcard/moffer/MOfferModel$6;->d:Ljava/lang/String;

    iput-object p6, p0, Lccsancom/mbridge/msdk/video/dynview/endcard/moffer/MOfferModel$6;->e:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 5

    .line 370
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/dynview/endcard/moffer/MOfferModel$6;->a:Lccsancom/mbridge/msdk/foundation/entity/CampaignUnit;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lccsancom/mbridge/msdk/foundation/entity/CampaignUnit;->ads:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lccsancom/mbridge/msdk/video/dynview/endcard/moffer/MOfferModel$6;->a:Lccsancom/mbridge/msdk/foundation/entity/CampaignUnit;

    iget-object v0, v0, Lccsancom/mbridge/msdk/foundation/entity/CampaignUnit;->ads:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 371
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/dynview/endcard/moffer/MOfferModel$6;->a:Lccsancom/mbridge/msdk/foundation/entity/CampaignUnit;

    iget-object v0, v0, Lccsancom/mbridge/msdk/foundation/entity/CampaignUnit;->ads:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    .line 372
    if-eqz p1, :cond_1

    .line 373
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/dynview/endcard/moffer/MOfferModel$6;->b:Lccsancom/mbridge/msdk/video/module/a/a;

    if-eqz v0, :cond_0

    .line 374
    iget-object v1, p0, Lccsancom/mbridge/msdk/video/dynview/endcard/moffer/MOfferModel$6;->f:Lccsancom/mbridge/msdk/video/dynview/endcard/moffer/MOfferModel;

    invoke-static {v1, v0}, Lccsancom/mbridge/msdk/video/dynview/endcard/moffer/MOfferModel;->access$600(Lccsancom/mbridge/msdk/video/dynview/endcard/moffer/MOfferModel;Lccsancom/mbridge/msdk/video/module/a/a;)V

    .line 377
    :cond_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/dynview/endcard/moffer/MOfferModel$6;->c:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-static {}, Lccsancom/mbridge/msdk/foundation/controller/a;->d()Lccsancom/mbridge/msdk/foundation/controller/a;

    move-result-object v1

    invoke-virtual {v1}, Lccsancom/mbridge/msdk/foundation/controller/a;->f()Lccsanandroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lccsancom/mbridge/msdk/video/dynview/endcard/moffer/MOfferModel$6;->d:Ljava/lang/String;

    iget-object v3, p0, Lccsancom/mbridge/msdk/video/dynview/endcard/moffer/MOfferModel$6;->e:Ljava/lang/String;

    const-string v4, "more offer click"

    invoke-static {v0, v1, v4, v2, v3}, Lccsancom/mbridge/msdk/video/dynview/e/a;->a(Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;Lccsanandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 378
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/controller/a;->d()Lccsancom/mbridge/msdk/foundation/controller/a;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/foundation/controller/a;->f()Lccsanandroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lccsancom/mbridge/msdk/video/dynview/endcard/moffer/MOfferModel$6;->d:Ljava/lang/String;

    invoke-static {v0, p1, v1}, Lccsancom/mbridge/msdk/video/dynview/e/a;->a(Lccsanandroid/content/Context;Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;Ljava/lang/String;)V

    .line 381
    :cond_1
    return-void
.end method
