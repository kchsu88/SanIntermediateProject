.class final Lccsancom/mbridge/msdk/video/dynview/endcard/moffer/MOfferModel$3;
.super Ljava/lang/Object;
.source "MOfferModel.java"

# interfaces
.implements Lccsancom/mbridge/msdk/video/dynview/endcard/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/mbridge/msdk/video/dynview/endcard/moffer/MOfferModel;->createMoreOfferView(Lccsanandroid/view/View;Lccsancom/mbridge/msdk/foundation/entity/CampaignUnit;Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;Ljava/lang/String;Ljava/lang/String;Lccsancom/mbridge/msdk/video/module/a/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeRelativeLayout;

.field final synthetic b:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

.field final synthetic c:Lccsanandroid/view/View;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Ljava/lang/String;

.field final synthetic f:Lccsancom/mbridge/msdk/video/dynview/endcard/moffer/MOfferModel;


# direct methods
.method constructor <init>(Lccsancom/mbridge/msdk/video/dynview/endcard/moffer/MOfferModel;Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeRelativeLayout;Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;Lccsanandroid/view/View;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 283
    iput-object p1, p0, Lccsancom/mbridge/msdk/video/dynview/endcard/moffer/MOfferModel$3;->f:Lccsancom/mbridge/msdk/video/dynview/endcard/moffer/MOfferModel;

    iput-object p2, p0, Lccsancom/mbridge/msdk/video/dynview/endcard/moffer/MOfferModel$3;->a:Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeRelativeLayout;

    iput-object p3, p0, Lccsancom/mbridge/msdk/video/dynview/endcard/moffer/MOfferModel$3;->b:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    iput-object p4, p0, Lccsancom/mbridge/msdk/video/dynview/endcard/moffer/MOfferModel$3;->c:Lccsanandroid/view/View;

    iput-object p5, p0, Lccsancom/mbridge/msdk/video/dynview/endcard/moffer/MOfferModel$3;->d:Ljava/lang/String;

    iput-object p6, p0, Lccsancom/mbridge/msdk/video/dynview/endcard/moffer/MOfferModel$3;->e:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 5

    .line 286
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/dynview/endcard/moffer/MOfferModel$3;->a:Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeRelativeLayout;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeRelativeLayout;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    .line 287
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/dynview/endcard/moffer/MOfferModel$3;->b:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    iget-object v1, p0, Lccsancom/mbridge/msdk/video/dynview/endcard/moffer/MOfferModel$3;->c:Lccsanandroid/view/View;

    invoke-virtual {v1}, Lccsanandroid/view/View;->getContext()Lccsanandroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lccsancom/mbridge/msdk/video/dynview/endcard/moffer/MOfferModel$3;->d:Ljava/lang/String;

    iget-object v3, p0, Lccsancom/mbridge/msdk/video/dynview/endcard/moffer/MOfferModel$3;->e:Ljava/lang/String;

    const-string v4, "more offer show fail"

    invoke-static {v0, v1, v4, v2, v3}, Lccsancom/mbridge/msdk/video/dynview/e/a;->a(Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;Lccsanandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 289
    :cond_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/dynview/endcard/moffer/MOfferModel$3;->f:Lccsancom/mbridge/msdk/video/dynview/endcard/moffer/MOfferModel;

    invoke-static {v0}, Lccsancom/mbridge/msdk/video/dynview/endcard/moffer/MOfferModel;->access$300(Lccsancom/mbridge/msdk/video/dynview/endcard/moffer/MOfferModel;)V

    .line 290
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/dynview/endcard/moffer/MOfferModel$3;->f:Lccsancom/mbridge/msdk/video/dynview/endcard/moffer/MOfferModel;

    invoke-static {v0}, Lccsancom/mbridge/msdk/video/dynview/endcard/moffer/MOfferModel;->access$400(Lccsancom/mbridge/msdk/video/dynview/endcard/moffer/MOfferModel;)Lccsancom/mbridge/msdk/video/dynview/endcard/a/a;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 291
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/dynview/endcard/moffer/MOfferModel$3;->f:Lccsancom/mbridge/msdk/video/dynview/endcard/moffer/MOfferModel;

    invoke-static {v0}, Lccsancom/mbridge/msdk/video/dynview/endcard/moffer/MOfferModel;->access$400(Lccsancom/mbridge/msdk/video/dynview/endcard/moffer/MOfferModel;)Lccsancom/mbridge/msdk/video/dynview/endcard/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/video/dynview/endcard/a/a;->a()V

    .line 293
    :cond_1
    return-void
.end method
