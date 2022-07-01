.class final Lccsancom/mbridge/msdk/video/dynview/endcard/moffer/MOfferModel$5;
.super Ljava/lang/Object;
.source "MOfferModel.java"

# interfaces
.implements Lccsancom/mbridge/msdk/video/dynview/endcard/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/mbridge/msdk/video/dynview/endcard/moffer/MOfferModel;->buildAdapter(Lccsanandroid/content/Context;Lccsanandroid/view/View;Lccsanandroidx/recyclerview/widget/RecyclerView;Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeRelativeLayout;Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;Lccsancom/mbridge/msdk/foundation/entity/CampaignUnit;Ljava/lang/String;Ljava/lang/String;Lccsancom/mbridge/msdk/video/module/a/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeRelativeLayout;

.field final synthetic b:Lccsanandroid/view/View;

.field final synthetic c:Lccsancom/mbridge/msdk/video/dynview/endcard/moffer/MOfferModel;


# direct methods
.method constructor <init>(Lccsancom/mbridge/msdk/video/dynview/endcard/moffer/MOfferModel;Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeRelativeLayout;Lccsanandroid/view/View;)V
    .locals 0

    .line 353
    iput-object p1, p0, Lccsancom/mbridge/msdk/video/dynview/endcard/moffer/MOfferModel$5;->c:Lccsancom/mbridge/msdk/video/dynview/endcard/moffer/MOfferModel;

    iput-object p2, p0, Lccsancom/mbridge/msdk/video/dynview/endcard/moffer/MOfferModel$5;->a:Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeRelativeLayout;

    iput-object p3, p0, Lccsancom/mbridge/msdk/video/dynview/endcard/moffer/MOfferModel$5;->b:Lccsanandroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 17

    .line 356
    move-object/from16 v0, p0

    iget-object v1, v0, Lccsancom/mbridge/msdk/video/dynview/endcard/moffer/MOfferModel$5;->a:Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeRelativeLayout;

    if-eqz v1, :cond_0

    .line 357
    iget-object v1, v0, Lccsancom/mbridge/msdk/video/dynview/endcard/moffer/MOfferModel$5;->b:Lccsanandroid/view/View;

    iget-object v2, v0, Lccsancom/mbridge/msdk/video/dynview/endcard/moffer/MOfferModel$5;->c:Lccsancom/mbridge/msdk/video/dynview/endcard/moffer/MOfferModel;

    const-string v3, "mbridge_native_ec_layout"

    invoke-static {v2, v3}, Lccsancom/mbridge/msdk/video/dynview/endcard/moffer/MOfferModel;->access$500(Lccsancom/mbridge/msdk/video/dynview/endcard/moffer/MOfferModel;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lccsanandroid/view/View;->findViewById(I)Lccsanandroid/view/View;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lccsanandroid/widget/RelativeLayout;

    .line 358
    new-instance v2, Lccsancom/mbridge/msdk/video/dynview/g/b;

    invoke-direct {v2}, Lccsancom/mbridge/msdk/video/dynview/g/b;-><init>()V

    const/4 v4, 0x0

    invoke-static {}, Lccsancom/mbridge/msdk/foundation/controller/a;->d()Lccsancom/mbridge/msdk/foundation/controller/a;

    move-result-object v1

    invoke-virtual {v1}, Lccsancom/mbridge/msdk/foundation/controller/a;->f()Lccsanandroid/content/Context;

    move-result-object v1

    const/high16 v8, 0x42a00000    # 80.0f

    invoke-static {v1, v8}, Lccsancom/mbridge/msdk/foundation/tools/u;->b(Lccsanandroid/content/Context;F)I

    move-result v5

    const-wide/16 v6, 0x1f4

    invoke-virtual/range {v2 .. v7}, Lccsancom/mbridge/msdk/video/dynview/g/b;->a(Lccsanandroid/view/View;IIJ)V

    .line 359
    new-instance v9, Lccsancom/mbridge/msdk/video/dynview/g/b;

    invoke-direct {v9}, Lccsancom/mbridge/msdk/video/dynview/g/b;-><init>()V

    iget-object v10, v0, Lccsancom/mbridge/msdk/video/dynview/endcard/moffer/MOfferModel$5;->a:Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeRelativeLayout;

    const/4 v11, 0x0

    invoke-static {}, Lccsancom/mbridge/msdk/foundation/controller/a;->d()Lccsancom/mbridge/msdk/foundation/controller/a;

    move-result-object v1

    invoke-virtual {v1}, Lccsancom/mbridge/msdk/foundation/controller/a;->f()Lccsanandroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lccsancom/mbridge/msdk/foundation/tools/u;->h(Lccsanandroid/content/Context;)I

    move-result v12

    const/4 v13, 0x0

    invoke-static {}, Lccsancom/mbridge/msdk/foundation/controller/a;->d()Lccsancom/mbridge/msdk/foundation/controller/a;

    move-result-object v1

    invoke-virtual {v1}, Lccsancom/mbridge/msdk/foundation/controller/a;->f()Lccsanandroid/content/Context;

    move-result-object v1

    invoke-static {v1, v8}, Lccsancom/mbridge/msdk/foundation/tools/u;->b(Lccsanandroid/content/Context;F)I

    move-result v14

    const-wide/16 v15, 0x1f4

    invoke-virtual/range {v9 .. v16}, Lccsancom/mbridge/msdk/video/dynview/g/b;->a(Lccsanandroid/view/View;IIIIJ)V

    .line 361
    :cond_0
    return-void
.end method
