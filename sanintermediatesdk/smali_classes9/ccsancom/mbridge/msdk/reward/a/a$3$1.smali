.class final Lccsancom/mbridge/msdk/reward/a/a$3$1;
.super Ljava/lang/Object;
.source "RewardVideoController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/mbridge/msdk/reward/a/a$3;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

.field final synthetic b:Ljava/util/List;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Ljava/lang/String;

.field final synthetic f:Lccsancom/mbridge/msdk/reward/a/a$3;


# direct methods
.method constructor <init>(Lccsancom/mbridge/msdk/reward/a/a$3;Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1022
    iput-object p1, p0, Lccsancom/mbridge/msdk/reward/a/a$3$1;->f:Lccsancom/mbridge/msdk/reward/a/a$3;

    iput-object p2, p0, Lccsancom/mbridge/msdk/reward/a/a$3$1;->a:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    iput-object p3, p0, Lccsancom/mbridge/msdk/reward/a/a$3$1;->b:Ljava/util/List;

    iput-object p4, p0, Lccsancom/mbridge/msdk/reward/a/a$3$1;->c:Ljava/lang/String;

    iput-object p5, p0, Lccsancom/mbridge/msdk/reward/a/a$3$1;->d:Ljava/lang/String;

    iput-object p6, p0, Lccsancom/mbridge/msdk/reward/a/a$3$1;->e:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 18

    .line 1025
    move-object/from16 v0, p0

    invoke-static {}, Lccsancom/mbridge/msdk/reward/adapter/c;->a()Lccsancom/mbridge/msdk/reward/adapter/c;

    move-result-object v1

    iget-object v2, v0, Lccsancom/mbridge/msdk/reward/a/a$3$1;->f:Lccsancom/mbridge/msdk/reward/a/a$3;

    iget-object v2, v2, Lccsancom/mbridge/msdk/reward/a/a$3;->e:Lccsancom/mbridge/msdk/reward/a/a;

    invoke-static {v2}, Lccsancom/mbridge/msdk/reward/a/a;->r(Lccsancom/mbridge/msdk/reward/a/a;)Z

    move-result v2

    iget-object v3, v0, Lccsancom/mbridge/msdk/reward/a/a$3$1;->f:Lccsancom/mbridge/msdk/reward/a/a$3;

    iget-object v3, v3, Lccsancom/mbridge/msdk/reward/a/a$3;->e:Lccsancom/mbridge/msdk/reward/a/a;

    invoke-static {v3}, Lccsancom/mbridge/msdk/reward/a/a;->q(Lccsancom/mbridge/msdk/reward/a/a;)Lccsanandroid/os/Handler;

    move-result-object v3

    iget-object v4, v0, Lccsancom/mbridge/msdk/reward/a/a$3$1;->f:Lccsancom/mbridge/msdk/reward/a/a$3;

    iget-object v4, v4, Lccsancom/mbridge/msdk/reward/a/a$3;->e:Lccsancom/mbridge/msdk/reward/a/a;

    invoke-static {v4}, Lccsancom/mbridge/msdk/reward/a/a;->p(Lccsancom/mbridge/msdk/reward/a/a;)Z

    move-result v4

    iget-object v5, v0, Lccsancom/mbridge/msdk/reward/a/a$3$1;->f:Lccsancom/mbridge/msdk/reward/a/a$3;

    iget-object v5, v5, Lccsancom/mbridge/msdk/reward/a/a$3;->e:Lccsancom/mbridge/msdk/reward/a/a;

    invoke-static {v5}, Lccsancom/mbridge/msdk/reward/a/a;->i(Lccsancom/mbridge/msdk/reward/a/a;)Z

    move-result v5

    iget-object v6, v0, Lccsancom/mbridge/msdk/reward/a/a$3$1;->a:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v6}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getRewardTemplateMode()Lccsancom/mbridge/msdk/foundation/entity/CampaignEx$c;

    move-result-object v6

    invoke-virtual {v6}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx$c;->d()Ljava/lang/String;

    move-result-object v7

    iget-object v6, v0, Lccsancom/mbridge/msdk/reward/a/a$3$1;->f:Lccsancom/mbridge/msdk/reward/a/a$3;

    iget-object v6, v6, Lccsancom/mbridge/msdk/reward/a/a$3;->e:Lccsancom/mbridge/msdk/reward/a/a;

    invoke-static {v6}, Lccsancom/mbridge/msdk/reward/a/a;->s(Lccsancom/mbridge/msdk/reward/a/a;)I

    move-result v8

    iget-object v6, v0, Lccsancom/mbridge/msdk/reward/a/a$3$1;->f:Lccsancom/mbridge/msdk/reward/a/a$3;

    iget-object v9, v6, Lccsancom/mbridge/msdk/reward/a/a$3;->b:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    iget-object v10, v0, Lccsancom/mbridge/msdk/reward/a/a$3$1;->b:Ljava/util/List;

    invoke-static {}, Lccsancom/mbridge/msdk/videocommon/download/g;->a()Lccsancom/mbridge/msdk/videocommon/download/g;

    move-result-object v6

    iget-object v11, v0, Lccsancom/mbridge/msdk/reward/a/a$3$1;->a:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v11}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getRewardTemplateMode()Lccsancom/mbridge/msdk/foundation/entity/CampaignEx$c;

    move-result-object v11

    invoke-virtual {v11}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx$c;->d()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v6, v11}, Lccsancom/mbridge/msdk/videocommon/download/g;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    iget-object v12, v0, Lccsancom/mbridge/msdk/reward/a/a$3$1;->c:Ljava/lang/String;

    iget-object v13, v0, Lccsancom/mbridge/msdk/reward/a/a$3$1;->d:Ljava/lang/String;

    iget-object v14, v0, Lccsancom/mbridge/msdk/reward/a/a$3$1;->e:Ljava/lang/String;

    iget-object v6, v0, Lccsancom/mbridge/msdk/reward/a/a$3$1;->a:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v6}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getRequestIdNotice()Ljava/lang/String;

    move-result-object v15

    iget-object v6, v0, Lccsancom/mbridge/msdk/reward/a/a$3$1;->f:Lccsancom/mbridge/msdk/reward/a/a$3;

    iget-object v6, v6, Lccsancom/mbridge/msdk/reward/a/a$3;->e:Lccsancom/mbridge/msdk/reward/a/a;

    invoke-static {v6}, Lccsancom/mbridge/msdk/reward/a/a;->l(Lccsancom/mbridge/msdk/reward/a/a;)Lccsancom/mbridge/msdk/videocommon/d/c;

    move-result-object v16

    new-instance v6, Lccsancom/mbridge/msdk/reward/a/a$3$1$1;

    move-object/from16 v17, v6

    invoke-direct {v6, v0}, Lccsancom/mbridge/msdk/reward/a/a$3$1$1;-><init>(Lccsancom/mbridge/msdk/reward/a/a$3$1;)V

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v17}, Lccsancom/mbridge/msdk/reward/adapter/c;->a(ZLccsanandroid/os/Handler;ZZLccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;Ljava/lang/String;ILccsancom/mbridge/msdk/foundation/entity/CampaignEx;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lccsancom/mbridge/msdk/videocommon/d/c;Lccsancom/mbridge/msdk/reward/adapter/c$j;)V

    .line 1064
    return-void
.end method
