.class final Lccsancom/mbridge/msdk/reward/adapter/d$6;
.super Ljava/lang/Object;
.source "RewardMVVideoAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/mbridge/msdk/reward/adapter/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lccsancom/mbridge/msdk/foundation/entity/CampaignUnit;

.field final synthetic b:Lccsancom/mbridge/msdk/reward/adapter/d;


# direct methods
.method constructor <init>(Lccsancom/mbridge/msdk/reward/adapter/d;Lccsancom/mbridge/msdk/foundation/entity/CampaignUnit;)V
    .locals 0

    .line 2920
    iput-object p1, p0, Lccsancom/mbridge/msdk/reward/adapter/d$6;->b:Lccsancom/mbridge/msdk/reward/adapter/d;

    iput-object p2, p0, Lccsancom/mbridge/msdk/reward/adapter/d$6;->a:Lccsancom/mbridge/msdk/foundation/entity/CampaignUnit;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 2924
    iget-object v0, p0, Lccsancom/mbridge/msdk/reward/adapter/d$6;->b:Lccsancom/mbridge/msdk/reward/adapter/d;

    invoke-static {v0}, Lccsancom/mbridge/msdk/reward/adapter/d;->h(Lccsancom/mbridge/msdk/reward/adapter/d;)Lccsanandroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lccsancom/mbridge/msdk/foundation/db/f;->a(Lccsanandroid/content/Context;)Lccsancom/mbridge/msdk/foundation/db/f;

    move-result-object v0

    invoke-static {v0}, Lccsancom/mbridge/msdk/foundation/db/j;->a(Lccsancom/mbridge/msdk/foundation/db/e;)Lccsancom/mbridge/msdk/foundation/db/j;

    move-result-object v0

    .line 2925
    invoke-virtual {v0}, Lccsancom/mbridge/msdk/foundation/db/j;->b()V

    .line 2927
    iget-object v0, p0, Lccsancom/mbridge/msdk/reward/adapter/d$6;->a:Lccsancom/mbridge/msdk/foundation/entity/CampaignUnit;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/foundation/entity/CampaignUnit;->getAds()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lccsancom/mbridge/msdk/reward/adapter/d$6;->a:Lccsancom/mbridge/msdk/foundation/entity/CampaignUnit;

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/foundation/entity/CampaignUnit;->getAds()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 2928
    iget-object v0, p0, Lccsancom/mbridge/msdk/reward/adapter/d$6;->b:Lccsancom/mbridge/msdk/reward/adapter/d;

    iget-object v1, p0, Lccsancom/mbridge/msdk/reward/adapter/d$6;->a:Lccsancom/mbridge/msdk/foundation/entity/CampaignUnit;

    invoke-virtual {v1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignUnit;->getAds()Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {v0, v1}, Lccsancom/mbridge/msdk/reward/adapter/d;->a(Lccsancom/mbridge/msdk/reward/adapter/d;Ljava/util/List;)V

    .line 2930
    :cond_0
    return-void
.end method
