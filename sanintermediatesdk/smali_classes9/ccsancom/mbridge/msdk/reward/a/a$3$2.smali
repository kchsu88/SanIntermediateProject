.class final Lccsancom/mbridge/msdk/reward/a/a$3$2;
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
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Ljava/util/List;

.field final synthetic e:Lccsancom/mbridge/msdk/reward/a/a$3;


# direct methods
.method constructor <init>(Lccsancom/mbridge/msdk/reward/a/a$3;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .locals 0

    .line 1094
    iput-object p1, p0, Lccsancom/mbridge/msdk/reward/a/a$3$2;->e:Lccsancom/mbridge/msdk/reward/a/a$3;

    iput-object p2, p0, Lccsancom/mbridge/msdk/reward/a/a$3$2;->a:Ljava/lang/String;

    iput-object p3, p0, Lccsancom/mbridge/msdk/reward/a/a$3$2;->b:Ljava/lang/String;

    iput-object p4, p0, Lccsancom/mbridge/msdk/reward/a/a$3$2;->c:Ljava/lang/String;

    iput-object p5, p0, Lccsancom/mbridge/msdk/reward/a/a$3$2;->d:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 20

    .line 1097
    move-object/from16 v0, p0

    invoke-static {}, Lccsancom/mbridge/msdk/reward/adapter/c;->a()Lccsancom/mbridge/msdk/reward/adapter/c;

    move-result-object v1

    iget-object v2, v0, Lccsancom/mbridge/msdk/reward/a/a$3$2;->e:Lccsancom/mbridge/msdk/reward/a/a$3;

    iget-object v2, v2, Lccsancom/mbridge/msdk/reward/a/a$3;->e:Lccsancom/mbridge/msdk/reward/a/a;

    invoke-static {v2}, Lccsancom/mbridge/msdk/reward/a/a;->r(Lccsancom/mbridge/msdk/reward/a/a;)Z

    move-result v2

    iget-object v3, v0, Lccsancom/mbridge/msdk/reward/a/a$3$2;->e:Lccsancom/mbridge/msdk/reward/a/a$3;

    iget-object v3, v3, Lccsancom/mbridge/msdk/reward/a/a$3;->e:Lccsancom/mbridge/msdk/reward/a/a;

    invoke-static {v3}, Lccsancom/mbridge/msdk/reward/a/a;->q(Lccsancom/mbridge/msdk/reward/a/a;)Lccsanandroid/os/Handler;

    move-result-object v3

    iget-object v4, v0, Lccsancom/mbridge/msdk/reward/a/a$3$2;->e:Lccsancom/mbridge/msdk/reward/a/a$3;

    iget-object v4, v4, Lccsancom/mbridge/msdk/reward/a/a$3;->e:Lccsancom/mbridge/msdk/reward/a/a;

    invoke-static {v4}, Lccsancom/mbridge/msdk/reward/a/a;->p(Lccsancom/mbridge/msdk/reward/a/a;)Z

    move-result v4

    iget-object v5, v0, Lccsancom/mbridge/msdk/reward/a/a$3$2;->e:Lccsancom/mbridge/msdk/reward/a/a$3;

    iget-object v5, v5, Lccsancom/mbridge/msdk/reward/a/a$3;->e:Lccsancom/mbridge/msdk/reward/a/a;

    invoke-static {v5}, Lccsancom/mbridge/msdk/reward/a/a;->i(Lccsancom/mbridge/msdk/reward/a/a;)Z

    move-result v5

    iget-object v6, v0, Lccsancom/mbridge/msdk/reward/a/a$3$2;->a:Ljava/lang/String;

    iget-object v7, v0, Lccsancom/mbridge/msdk/reward/a/a$3$2;->e:Lccsancom/mbridge/msdk/reward/a/a$3;

    iget-object v7, v7, Lccsancom/mbridge/msdk/reward/a/a$3;->b:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v7}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getRequestIdNotice()Ljava/lang/String;

    move-result-object v7

    iget-object v8, v0, Lccsancom/mbridge/msdk/reward/a/a$3$2;->b:Ljava/lang/String;

    iget-object v9, v0, Lccsancom/mbridge/msdk/reward/a/a$3$2;->c:Ljava/lang/String;

    iget-object v10, v0, Lccsancom/mbridge/msdk/reward/a/a$3$2;->e:Lccsancom/mbridge/msdk/reward/a/a$3;

    iget-object v10, v10, Lccsancom/mbridge/msdk/reward/a/a$3;->b:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v10}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getMof_template_url()Ljava/lang/String;

    move-result-object v10

    iget-object v11, v0, Lccsancom/mbridge/msdk/reward/a/a$3$2;->e:Lccsancom/mbridge/msdk/reward/a/a$3;

    iget-object v11, v11, Lccsancom/mbridge/msdk/reward/a/a$3;->e:Lccsancom/mbridge/msdk/reward/a/a;

    invoke-static {v11}, Lccsancom/mbridge/msdk/reward/a/a;->s(Lccsancom/mbridge/msdk/reward/a/a;)I

    move-result v11

    iget-object v12, v0, Lccsancom/mbridge/msdk/reward/a/a$3$2;->e:Lccsancom/mbridge/msdk/reward/a/a$3;

    iget-object v12, v12, Lccsancom/mbridge/msdk/reward/a/a$3;->b:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    iget-object v13, v0, Lccsancom/mbridge/msdk/reward/a/a$3$2;->d:Ljava/util/List;

    invoke-static {}, Lccsancom/mbridge/msdk/videocommon/download/g;->a()Lccsancom/mbridge/msdk/videocommon/download/g;

    move-result-object v14

    iget-object v15, v0, Lccsancom/mbridge/msdk/reward/a/a$3$2;->e:Lccsancom/mbridge/msdk/reward/a/a$3;

    iget-object v15, v15, Lccsancom/mbridge/msdk/reward/a/a$3;->b:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v15}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getMof_template_url()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Lccsancom/mbridge/msdk/videocommon/download/g;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    iget-object v15, v0, Lccsancom/mbridge/msdk/reward/a/a$3$2;->c:Ljava/lang/String;

    move-object/from16 v19, v1

    iget-object v1, v0, Lccsancom/mbridge/msdk/reward/a/a$3$2;->e:Lccsancom/mbridge/msdk/reward/a/a$3;

    iget-object v1, v1, Lccsancom/mbridge/msdk/reward/a/a$3;->e:Lccsancom/mbridge/msdk/reward/a/a;

    invoke-static {v1}, Lccsancom/mbridge/msdk/reward/a/a;->l(Lccsancom/mbridge/msdk/reward/a/a;)Lccsancom/mbridge/msdk/videocommon/d/c;

    move-result-object v16

    new-instance v1, Lccsancom/mbridge/msdk/reward/a/a$3$2$1;

    move-object/from16 v17, v1

    invoke-direct {v1, v0}, Lccsancom/mbridge/msdk/reward/a/a$3$2$1;-><init>(Lccsancom/mbridge/msdk/reward/a/a$3$2;)V

    const/16 v18, 0x1

    move-object/from16 v1, v19

    invoke-virtual/range {v1 .. v18}, Lccsancom/mbridge/msdk/reward/adapter/c;->a(ZLccsanandroid/os/Handler;ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILccsancom/mbridge/msdk/foundation/entity/CampaignEx;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Lccsancom/mbridge/msdk/videocommon/d/c;Lccsancom/mbridge/msdk/reward/adapter/c$j;Z)V

    .line 1138
    return-void
.end method
