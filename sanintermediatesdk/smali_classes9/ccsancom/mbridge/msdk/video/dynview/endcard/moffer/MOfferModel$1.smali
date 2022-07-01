.class final Lccsancom/mbridge/msdk/video/dynview/endcard/moffer/MOfferModel$1;
.super Lccsancom/mbridge/msdk/video/dynview/e/a/a;
.source "MOfferModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/mbridge/msdk/video/dynview/endcard/moffer/MOfferModel;->bulidMofferAd(Lccsanandroid/view/View;Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;Lccsancom/mbridge/msdk/video/module/a/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lccsancom/mbridge/msdk/foundation/same/net/h/d;

.field final synthetic b:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

.field final synthetic c:Lccsanandroid/view/View;

.field final synthetic g:Lccsancom/mbridge/msdk/video/module/a/a;

.field final synthetic h:Lccsancom/mbridge/msdk/video/dynview/endcard/moffer/MOfferModel;


# direct methods
.method constructor <init>(Lccsancom/mbridge/msdk/video/dynview/endcard/moffer/MOfferModel;Lccsancom/mbridge/msdk/foundation/same/net/h/d;Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;Lccsanandroid/view/View;Lccsancom/mbridge/msdk/video/module/a/a;)V
    .locals 0

    .line 146
    iput-object p1, p0, Lccsancom/mbridge/msdk/video/dynview/endcard/moffer/MOfferModel$1;->h:Lccsancom/mbridge/msdk/video/dynview/endcard/moffer/MOfferModel;

    iput-object p2, p0, Lccsancom/mbridge/msdk/video/dynview/endcard/moffer/MOfferModel$1;->a:Lccsancom/mbridge/msdk/foundation/same/net/h/d;

    iput-object p3, p0, Lccsancom/mbridge/msdk/video/dynview/endcard/moffer/MOfferModel$1;->b:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    iput-object p4, p0, Lccsancom/mbridge/msdk/video/dynview/endcard/moffer/MOfferModel$1;->c:Lccsanandroid/view/View;

    iput-object p5, p0, Lccsancom/mbridge/msdk/video/dynview/endcard/moffer/MOfferModel$1;->g:Lccsancom/mbridge/msdk/video/module/a/a;

    invoke-direct {p0}, Lccsancom/mbridge/msdk/video/dynview/e/a/a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(ILjava/lang/String;)V
    .locals 6

    .line 160
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/dynview/endcard/moffer/MOfferModel$1;->a:Lccsancom/mbridge/msdk/foundation/same/net/h/d;

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/foundation/same/net/h/d;->b()Ljava/util/Map;

    move-result-object v0

    const-string v1, "unit_id"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 161
    iget-object v1, p0, Lccsancom/mbridge/msdk/video/dynview/endcard/moffer/MOfferModel$1;->a:Lccsancom/mbridge/msdk/foundation/same/net/h/d;

    invoke-virtual {v1}, Lccsancom/mbridge/msdk/foundation/same/net/h/d;->b()Ljava/util/Map;

    move-result-object v1

    const-string v2, "r_id"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 162
    iget-object v2, p0, Lccsancom/mbridge/msdk/video/dynview/endcard/moffer/MOfferModel$1;->b:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-static {}, Lccsancom/mbridge/msdk/foundation/controller/a;->d()Lccsancom/mbridge/msdk/foundation/controller/a;

    move-result-object v3

    invoke-virtual {v3}, Lccsancom/mbridge/msdk/foundation/controller/a;->f()Lccsanandroid/content/Context;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "more offer load failed errorCode:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "errorMsg:"

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, v3, p1, v0, v1}, Lccsancom/mbridge/msdk/video/dynview/e/a;->a(Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;Lccsanandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    return-void
.end method

.method public final a(Ljava/util/List;Lccsancom/mbridge/msdk/foundation/entity/CampaignUnit;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lccsancom/mbridge/msdk/foundation/same/net/c/b;",
            ">;",
            "Lccsancom/mbridge/msdk/foundation/entity/CampaignUnit;",
            ")V"
        }
    .end annotation

    .line 150
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lccsancom/mbridge/msdk/foundation/entity/CampaignUnit;->getAds()Ljava/util/ArrayList;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p2}, Lccsancom/mbridge/msdk/foundation/entity/CampaignUnit;->getAds()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 v0, 0x5

    if-lt p1, v0, :cond_0

    .line 151
    iget-object p1, p0, Lccsancom/mbridge/msdk/video/dynview/endcard/moffer/MOfferModel$1;->a:Lccsancom/mbridge/msdk/foundation/same/net/h/d;

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/same/net/h/d;->b()Ljava/util/Map;

    move-result-object p1

    const-string v0, "unit_id"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object v4, p1

    check-cast v4, Ljava/lang/String;

    .line 152
    iget-object p1, p0, Lccsancom/mbridge/msdk/video/dynview/endcard/moffer/MOfferModel$1;->a:Lccsancom/mbridge/msdk/foundation/same/net/h/d;

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/same/net/h/d;->b()Ljava/util/Map;

    move-result-object p1

    const-string v0, "r_id"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object v5, p1

    check-cast v5, Ljava/lang/String;

    .line 153
    iget-object p1, p0, Lccsancom/mbridge/msdk/video/dynview/endcard/moffer/MOfferModel$1;->b:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-static {}, Lccsancom/mbridge/msdk/foundation/controller/a;->d()Lccsancom/mbridge/msdk/foundation/controller/a;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/foundation/controller/a;->f()Lccsanandroid/content/Context;

    move-result-object v0

    const-string v1, "more offer load success"

    invoke-static {p1, v0, v1, v4, v5}, Lccsancom/mbridge/msdk/video/dynview/e/a;->a(Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;Lccsanandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/dynview/endcard/moffer/MOfferModel$1;->h:Lccsancom/mbridge/msdk/video/dynview/endcard/moffer/MOfferModel;

    iget-object v1, p0, Lccsancom/mbridge/msdk/video/dynview/endcard/moffer/MOfferModel$1;->c:Lccsanandroid/view/View;

    iget-object v3, p0, Lccsancom/mbridge/msdk/video/dynview/endcard/moffer/MOfferModel$1;->b:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    iget-object v6, p0, Lccsancom/mbridge/msdk/video/dynview/endcard/moffer/MOfferModel$1;->g:Lccsancom/mbridge/msdk/video/module/a/a;

    move-object v2, p2

    invoke-static/range {v0 .. v6}, Lccsancom/mbridge/msdk/video/dynview/endcard/moffer/MOfferModel;->access$000(Lccsancom/mbridge/msdk/video/dynview/endcard/moffer/MOfferModel;Lccsanandroid/view/View;Lccsancom/mbridge/msdk/foundation/entity/CampaignUnit;Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;Ljava/lang/String;Ljava/lang/String;Lccsancom/mbridge/msdk/video/module/a/a;)V

    .line 156
    :cond_0
    return-void
.end method
