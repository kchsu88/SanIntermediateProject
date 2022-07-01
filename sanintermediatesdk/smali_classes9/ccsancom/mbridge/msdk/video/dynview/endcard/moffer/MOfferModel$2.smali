.class final Lccsancom/mbridge/msdk/video/dynview/endcard/moffer/MOfferModel$2;
.super Ljava/lang/Object;
.source "MOfferModel.java"

# interfaces
.implements Lccsancom/mbridge/msdk/video/dynview/endcard/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/mbridge/msdk/video/dynview/endcard/moffer/MOfferModel;->createMoreOfferView(Lccsanandroid/view/View;Lccsancom/mbridge/msdk/foundation/entity/CampaignUnit;Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;Ljava/lang/String;Ljava/lang/String;Lccsancom/mbridge/msdk/video/module/a/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

.field final synthetic b:Lccsanandroid/view/View;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Lccsancom/mbridge/msdk/foundation/entity/CampaignUnit;

.field final synthetic f:Lccsancom/mbridge/msdk/video/dynview/endcard/moffer/MOfferModel;


# direct methods
.method constructor <init>(Lccsancom/mbridge/msdk/video/dynview/endcard/moffer/MOfferModel;Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;Lccsanandroid/view/View;Ljava/lang/String;Ljava/lang/String;Lccsancom/mbridge/msdk/foundation/entity/CampaignUnit;)V
    .locals 0

    .line 263
    iput-object p1, p0, Lccsancom/mbridge/msdk/video/dynview/endcard/moffer/MOfferModel$2;->f:Lccsancom/mbridge/msdk/video/dynview/endcard/moffer/MOfferModel;

    iput-object p2, p0, Lccsancom/mbridge/msdk/video/dynview/endcard/moffer/MOfferModel$2;->a:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    iput-object p3, p0, Lccsancom/mbridge/msdk/video/dynview/endcard/moffer/MOfferModel$2;->b:Lccsanandroid/view/View;

    iput-object p4, p0, Lccsancom/mbridge/msdk/video/dynview/endcard/moffer/MOfferModel$2;->c:Ljava/lang/String;

    iput-object p5, p0, Lccsancom/mbridge/msdk/video/dynview/endcard/moffer/MOfferModel$2;->d:Ljava/lang/String;

    iput-object p6, p0, Lccsancom/mbridge/msdk/video/dynview/endcard/moffer/MOfferModel$2;->e:Lccsancom/mbridge/msdk/foundation/entity/CampaignUnit;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 8

    .line 266
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/dynview/endcard/moffer/MOfferModel$2;->f:Lccsancom/mbridge/msdk/video/dynview/endcard/moffer/MOfferModel;

    invoke-static {v0}, Lccsancom/mbridge/msdk/video/dynview/endcard/moffer/MOfferModel;->access$100(Lccsancom/mbridge/msdk/video/dynview/endcard/moffer/MOfferModel;)Ljava/util/List;

    move-result-object v0

    const-string v1, "117361"

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 267
    const/4 v0, 0x0

    :goto_0
    iget-object v3, p0, Lccsancom/mbridge/msdk/video/dynview/endcard/moffer/MOfferModel$2;->f:Lccsancom/mbridge/msdk/video/dynview/endcard/moffer/MOfferModel;

    invoke-static {v3}, Lccsancom/mbridge/msdk/video/dynview/endcard/moffer/MOfferModel;->access$100(Lccsancom/mbridge/msdk/video/dynview/endcard/moffer/MOfferModel;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 269
    iget-object v3, p0, Lccsancom/mbridge/msdk/video/dynview/endcard/moffer/MOfferModel$2;->a:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    iget-object v4, p0, Lccsancom/mbridge/msdk/video/dynview/endcard/moffer/MOfferModel$2;->b:Lccsanandroid/view/View;

    invoke-virtual {v4}, Lccsanandroid/view/View;->getContext()Lccsanandroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lccsancom/mbridge/msdk/video/dynview/endcard/moffer/MOfferModel$2;->c:Ljava/lang/String;

    iget-object v6, p0, Lccsancom/mbridge/msdk/video/dynview/endcard/moffer/MOfferModel$2;->d:Ljava/lang/String;

    const-string v7, "more offer show"

    invoke-static {v3, v4, v7, v5, v6}, Lccsancom/mbridge/msdk/video/dynview/e/a;->a(Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;Lccsanandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 271
    iget-object v3, p0, Lccsancom/mbridge/msdk/video/dynview/endcard/moffer/MOfferModel$2;->e:Lccsancom/mbridge/msdk/foundation/entity/CampaignUnit;

    iget-object v4, p0, Lccsancom/mbridge/msdk/video/dynview/endcard/moffer/MOfferModel$2;->f:Lccsancom/mbridge/msdk/video/dynview/endcard/moffer/MOfferModel;

    invoke-static {v4}, Lccsancom/mbridge/msdk/video/dynview/endcard/moffer/MOfferModel;->access$100(Lccsancom/mbridge/msdk/video/dynview/endcard/moffer/MOfferModel;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v3, v4, v2, v1}, Lccsancom/mbridge/msdk/video/dynview/e/a;->a(Lccsancom/mbridge/msdk/foundation/entity/CampaignUnit;IILjava/lang/String;)V

    .line 267
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 274
    :cond_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/dynview/endcard/moffer/MOfferModel$2;->f:Lccsancom/mbridge/msdk/video/dynview/endcard/moffer/MOfferModel;

    invoke-static {v0}, Lccsancom/mbridge/msdk/video/dynview/endcard/moffer/MOfferModel;->access$200(Lccsancom/mbridge/msdk/video/dynview/endcard/moffer/MOfferModel;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 275
    nop

    :goto_1
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/dynview/endcard/moffer/MOfferModel$2;->f:Lccsancom/mbridge/msdk/video/dynview/endcard/moffer/MOfferModel;

    invoke-static {v0}, Lccsancom/mbridge/msdk/video/dynview/endcard/moffer/MOfferModel;->access$200(Lccsancom/mbridge/msdk/video/dynview/endcard/moffer/MOfferModel;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_1

    .line 276
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/dynview/endcard/moffer/MOfferModel$2;->e:Lccsancom/mbridge/msdk/foundation/entity/CampaignUnit;

    iget-object v3, p0, Lccsancom/mbridge/msdk/video/dynview/endcard/moffer/MOfferModel$2;->f:Lccsancom/mbridge/msdk/video/dynview/endcard/moffer/MOfferModel;

    invoke-static {v3}, Lccsancom/mbridge/msdk/video/dynview/endcard/moffer/MOfferModel;->access$200(Lccsancom/mbridge/msdk/video/dynview/endcard/moffer/MOfferModel;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, 0x1

    invoke-static {v0, v3, v4, v1}, Lccsancom/mbridge/msdk/video/dynview/e/a;->a(Lccsancom/mbridge/msdk/foundation/entity/CampaignUnit;IILjava/lang/String;)V

    .line 275
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 279
    :cond_1
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/dynview/endcard/moffer/MOfferModel$2;->f:Lccsancom/mbridge/msdk/video/dynview/endcard/moffer/MOfferModel;

    invoke-static {v0}, Lccsancom/mbridge/msdk/video/dynview/endcard/moffer/MOfferModel;->access$300(Lccsancom/mbridge/msdk/video/dynview/endcard/moffer/MOfferModel;)V

    .line 280
    return-void
.end method
