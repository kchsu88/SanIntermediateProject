.class final Lccsancom/mbridge/msdk/reward/adapter/d$3$1;
.super Ljava/lang/Object;
.source "RewardMVVideoAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/mbridge/msdk/reward/adapter/d$3;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Ljava/util/List;

.field final synthetic f:Lccsancom/mbridge/msdk/reward/adapter/d$3;


# direct methods
.method constructor <init>(Lccsancom/mbridge/msdk/reward/adapter/d$3;Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .locals 0

    .line 1544
    iput-object p1, p0, Lccsancom/mbridge/msdk/reward/adapter/d$3$1;->f:Lccsancom/mbridge/msdk/reward/adapter/d$3;

    iput-object p2, p0, Lccsancom/mbridge/msdk/reward/adapter/d$3$1;->a:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    iput-object p3, p0, Lccsancom/mbridge/msdk/reward/adapter/d$3$1;->b:Ljava/lang/String;

    iput-object p4, p0, Lccsancom/mbridge/msdk/reward/adapter/d$3$1;->c:Ljava/lang/String;

    iput-object p5, p0, Lccsancom/mbridge/msdk/reward/adapter/d$3$1;->d:Ljava/lang/String;

    iput-object p6, p0, Lccsancom/mbridge/msdk/reward/adapter/d$3$1;->e:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 18

    .line 2081
    move-object/from16 v0, p0

    invoke-static {}, Lccsancom/mbridge/msdk/reward/adapter/c$m;->a()Lccsancom/mbridge/msdk/reward/adapter/c;

    move-result-object v1

    .line 1547
    iget-object v2, v0, Lccsancom/mbridge/msdk/reward/adapter/d$3$1;->f:Lccsancom/mbridge/msdk/reward/adapter/d$3;

    iget-object v2, v2, Lccsancom/mbridge/msdk/reward/adapter/d$3;->d:Lccsancom/mbridge/msdk/reward/adapter/d;

    invoke-static {v2}, Lccsancom/mbridge/msdk/reward/adapter/d;->l(Lccsancom/mbridge/msdk/reward/adapter/d;)Z

    move-result v2

    iget-object v3, v0, Lccsancom/mbridge/msdk/reward/adapter/d$3$1;->f:Lccsancom/mbridge/msdk/reward/adapter/d$3;

    iget-object v3, v3, Lccsancom/mbridge/msdk/reward/adapter/d$3;->d:Lccsancom/mbridge/msdk/reward/adapter/d;

    invoke-static {v3}, Lccsancom/mbridge/msdk/reward/adapter/d;->i(Lccsancom/mbridge/msdk/reward/adapter/d;)Lccsanandroid/os/Handler;

    move-result-object v3

    iget-object v4, v0, Lccsancom/mbridge/msdk/reward/adapter/d$3$1;->f:Lccsancom/mbridge/msdk/reward/adapter/d$3;

    iget-object v4, v4, Lccsancom/mbridge/msdk/reward/adapter/d$3;->d:Lccsancom/mbridge/msdk/reward/adapter/d;

    invoke-static {v4}, Lccsancom/mbridge/msdk/reward/adapter/d;->m(Lccsancom/mbridge/msdk/reward/adapter/d;)Z

    move-result v4

    iget-object v5, v0, Lccsancom/mbridge/msdk/reward/adapter/d$3$1;->f:Lccsancom/mbridge/msdk/reward/adapter/d$3;

    iget-object v5, v5, Lccsancom/mbridge/msdk/reward/adapter/d$3;->d:Lccsancom/mbridge/msdk/reward/adapter/d;

    invoke-static {v5}, Lccsancom/mbridge/msdk/reward/adapter/d;->f(Lccsancom/mbridge/msdk/reward/adapter/d;)Z

    move-result v5

    iget-object v6, v0, Lccsancom/mbridge/msdk/reward/adapter/d$3$1;->a:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v6}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getRewardTemplateMode()Lccsancom/mbridge/msdk/foundation/entity/CampaignEx$c;

    move-result-object v6

    invoke-virtual {v6}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx$c;->d()Ljava/lang/String;

    move-result-object v7

    iget-object v6, v0, Lccsancom/mbridge/msdk/reward/adapter/d$3$1;->f:Lccsancom/mbridge/msdk/reward/adapter/d$3;

    iget-object v6, v6, Lccsancom/mbridge/msdk/reward/adapter/d$3;->d:Lccsancom/mbridge/msdk/reward/adapter/d;

    invoke-static {v6}, Lccsancom/mbridge/msdk/reward/adapter/d;->o(Lccsancom/mbridge/msdk/reward/adapter/d;)I

    move-result v8

    iget-object v6, v0, Lccsancom/mbridge/msdk/reward/adapter/d$3$1;->f:Lccsancom/mbridge/msdk/reward/adapter/d$3;

    iget-object v9, v6, Lccsancom/mbridge/msdk/reward/adapter/d$3;->b:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    iget-object v6, v0, Lccsancom/mbridge/msdk/reward/adapter/d$3$1;->f:Lccsancom/mbridge/msdk/reward/adapter/d$3;

    iget-object v6, v6, Lccsancom/mbridge/msdk/reward/adapter/d$3;->d:Lccsancom/mbridge/msdk/reward/adapter/d;

    invoke-static {v6}, Lccsancom/mbridge/msdk/reward/adapter/d;->c(Lccsancom/mbridge/msdk/reward/adapter/d;)Ljava/util/List;

    move-result-object v10

    invoke-static {}, Lccsancom/mbridge/msdk/videocommon/download/g;->a()Lccsancom/mbridge/msdk/videocommon/download/g;

    move-result-object v6

    iget-object v11, v0, Lccsancom/mbridge/msdk/reward/adapter/d$3$1;->a:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v11}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getRewardTemplateMode()Lccsancom/mbridge/msdk/foundation/entity/CampaignEx$c;

    move-result-object v11

    invoke-virtual {v11}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx$c;->d()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v6, v11}, Lccsancom/mbridge/msdk/videocommon/download/g;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    iget-object v12, v0, Lccsancom/mbridge/msdk/reward/adapter/d$3$1;->b:Ljava/lang/String;

    iget-object v13, v0, Lccsancom/mbridge/msdk/reward/adapter/d$3$1;->c:Ljava/lang/String;

    iget-object v14, v0, Lccsancom/mbridge/msdk/reward/adapter/d$3$1;->d:Ljava/lang/String;

    iget-object v6, v0, Lccsancom/mbridge/msdk/reward/adapter/d$3$1;->a:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v6}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getRequestIdNotice()Ljava/lang/String;

    move-result-object v15

    iget-object v6, v0, Lccsancom/mbridge/msdk/reward/adapter/d$3$1;->f:Lccsancom/mbridge/msdk/reward/adapter/d$3;

    iget-object v6, v6, Lccsancom/mbridge/msdk/reward/adapter/d$3;->d:Lccsancom/mbridge/msdk/reward/adapter/d;

    invoke-static {v6}, Lccsancom/mbridge/msdk/reward/adapter/d;->p(Lccsancom/mbridge/msdk/reward/adapter/d;)Lccsancom/mbridge/msdk/videocommon/d/c;

    move-result-object v16

    new-instance v6, Lccsancom/mbridge/msdk/reward/adapter/d$3$1$1;

    move-object/from16 v17, v6

    invoke-direct {v6, v0}, Lccsancom/mbridge/msdk/reward/adapter/d$3$1$1;-><init>(Lccsancom/mbridge/msdk/reward/adapter/d$3$1;)V

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v17}, Lccsancom/mbridge/msdk/reward/adapter/c;->a(ZLccsanandroid/os/Handler;ZZLccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;Ljava/lang/String;ILccsancom/mbridge/msdk/foundation/entity/CampaignEx;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lccsancom/mbridge/msdk/videocommon/d/c;Lccsancom/mbridge/msdk/reward/adapter/c$j;)V

    .line 1614
    return-void
.end method
