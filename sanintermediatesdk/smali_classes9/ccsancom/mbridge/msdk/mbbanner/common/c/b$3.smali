.class final Lccsancom/mbridge/msdk/mbbanner/common/c/b$3;
.super Ljava/lang/Object;
.source "BannerLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/mbridge/msdk/mbbanner/common/c/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lccsancom/mbridge/msdk/foundation/entity/CampaignUnit;

.field final synthetic b:Lccsancom/mbridge/msdk/mbbanner/common/c/b;


# direct methods
.method constructor <init>(Lccsancom/mbridge/msdk/mbbanner/common/c/b;Lccsancom/mbridge/msdk/foundation/entity/CampaignUnit;)V
    .locals 0

    .line 345
    iput-object p1, p0, Lccsancom/mbridge/msdk/mbbanner/common/c/b$3;->b:Lccsancom/mbridge/msdk/mbbanner/common/c/b;

    iput-object p2, p0, Lccsancom/mbridge/msdk/mbbanner/common/c/b$3;->a:Lccsancom/mbridge/msdk/foundation/entity/CampaignUnit;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 349
    iget-object v0, p0, Lccsancom/mbridge/msdk/mbbanner/common/c/b$3;->b:Lccsancom/mbridge/msdk/mbbanner/common/c/b;

    invoke-static {v0}, Lccsancom/mbridge/msdk/mbbanner/common/c/b;->e(Lccsancom/mbridge/msdk/mbbanner/common/c/b;)Lccsanandroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lccsancom/mbridge/msdk/foundation/db/f;->a(Lccsanandroid/content/Context;)Lccsancom/mbridge/msdk/foundation/db/f;

    move-result-object v0

    invoke-static {v0}, Lccsancom/mbridge/msdk/foundation/db/j;->a(Lccsancom/mbridge/msdk/foundation/db/e;)Lccsancom/mbridge/msdk/foundation/db/j;

    move-result-object v0

    .line 350
    invoke-virtual {v0}, Lccsancom/mbridge/msdk/foundation/db/j;->b()V

    .line 352
    iget-object v0, p0, Lccsancom/mbridge/msdk/mbbanner/common/c/b$3;->a:Lccsancom/mbridge/msdk/foundation/entity/CampaignUnit;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/foundation/entity/CampaignUnit;->getAds()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lccsancom/mbridge/msdk/mbbanner/common/c/b$3;->a:Lccsancom/mbridge/msdk/foundation/entity/CampaignUnit;

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/foundation/entity/CampaignUnit;->getAds()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 353
    iget-object v0, p0, Lccsancom/mbridge/msdk/mbbanner/common/c/b$3;->b:Lccsancom/mbridge/msdk/mbbanner/common/c/b;

    invoke-static {v0}, Lccsancom/mbridge/msdk/mbbanner/common/c/b;->e(Lccsancom/mbridge/msdk/mbbanner/common/c/b;)Lccsanandroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lccsancom/mbridge/msdk/mbbanner/common/c/b$3;->a:Lccsancom/mbridge/msdk/foundation/entity/CampaignUnit;

    invoke-virtual {v1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignUnit;->getAds()Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {v0, v1}, Lccsancom/mbridge/msdk/mbbanner/common/util/BannerUtils;->uisList(Lccsanandroid/content/Context;Ljava/util/List;)V

    .line 355
    :cond_0
    return-void
.end method
