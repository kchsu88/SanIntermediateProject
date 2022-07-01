.class final Lccsancom/mbridge/msdk/reward/a/a$3;
.super Ljava/lang/Object;
.source "RewardVideoController.java"

# interfaces
.implements Lccsancom/mbridge/msdk/reward/adapter/c$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/mbridge/msdk/reward/a/a;->a(Ljava/util/List;Lccsancom/mbridge/msdk/reward/adapter/d;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

.field final synthetic c:Lccsancom/mbridge/msdk/reward/adapter/d;

.field final synthetic d:I

.field final synthetic e:Lccsancom/mbridge/msdk/reward/a/a;


# direct methods
.method constructor <init>(Lccsancom/mbridge/msdk/reward/a/a;ZLccsancom/mbridge/msdk/foundation/entity/CampaignEx;Lccsancom/mbridge/msdk/reward/adapter/d;I)V
    .locals 0

    .line 1014
    iput-object p1, p0, Lccsancom/mbridge/msdk/reward/a/a$3;->e:Lccsancom/mbridge/msdk/reward/a/a;

    iput-boolean p2, p0, Lccsancom/mbridge/msdk/reward/a/a$3;->a:Z

    iput-object p3, p0, Lccsancom/mbridge/msdk/reward/a/a$3;->b:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    iput-object p4, p0, Lccsancom/mbridge/msdk/reward/a/a$3;->c:Lccsancom/mbridge/msdk/reward/adapter/d;

    iput p5, p0, Lccsancom/mbridge/msdk/reward/a/a$3;->d:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;",
            ">;)V"
        }
    .end annotation

    .line 1017
    move-object/from16 v7, p0

    move-object/from16 v8, p2

    move-object/from16 v9, p4

    iget-object v0, v7, Lccsancom/mbridge/msdk/reward/a/a$3;->e:Lccsancom/mbridge/msdk/reward/a/a;

    const/4 v10, 0x1

    iput-boolean v10, v0, Lccsancom/mbridge/msdk/reward/a/a;->c:Z

    .line 1019
    iget-boolean v0, v7, Lccsancom/mbridge/msdk/reward/a/a$3;->a:Z

    if-nez v0, :cond_7

    .line 1020
    invoke-interface/range {p4 .. p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    .line 1021
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getRewardTemplateMode()Lccsancom/mbridge/msdk/foundation/entity/CampaignEx$c;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v2}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getRewardTemplateMode()Lccsancom/mbridge/msdk/foundation/entity/CampaignEx$c;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx$c;->d()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, v7, Lccsancom/mbridge/msdk/reward/a/a$3;->e:Lccsancom/mbridge/msdk/reward/a/a;

    invoke-static {v0}, Lccsancom/mbridge/msdk/reward/a/a;->q(Lccsancom/mbridge/msdk/reward/a/a;)Lccsanandroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1022
    iget-object v0, v7, Lccsancom/mbridge/msdk/reward/a/a$3;->e:Lccsancom/mbridge/msdk/reward/a/a;

    invoke-static {v0}, Lccsancom/mbridge/msdk/reward/a/a;->q(Lccsancom/mbridge/msdk/reward/a/a;)Lccsanandroid/os/Handler;

    move-result-object v12

    new-instance v13, Lccsancom/mbridge/msdk/reward/a/a$3$1;

    move-object v0, v13

    move-object/from16 v1, p0

    move-object/from16 v3, p4

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    invoke-direct/range {v0 .. v6}, Lccsancom/mbridge/msdk/reward/a/a$3$1;-><init>(Lccsancom/mbridge/msdk/reward/a/a$3;Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v12, v13}, Lccsanandroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-object/from16 v3, p1

    goto/16 :goto_1

    .line 1067
    :cond_0
    iget-object v0, v7, Lccsancom/mbridge/msdk/reward/a/a$3;->c:Lccsancom/mbridge/msdk/reward/adapter/d;

    const-string v1, "RewardVideoController"

    if-eqz v0, :cond_3

    iget-boolean v3, v7, Lccsancom/mbridge/msdk/reward/a/a$3;->a:Z

    iget v4, v7, Lccsancom/mbridge/msdk/reward/a/a$3;->d:I

    invoke-virtual {v0, v9, v3, v4}, Lccsancom/mbridge/msdk/reward/adapter/d;->a(Ljava/util/List;ZI)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1068
    iget-object v0, v7, Lccsancom/mbridge/msdk/reward/a/a$3;->e:Lccsancom/mbridge/msdk/reward/a/a;

    invoke-static {v0}, Lccsancom/mbridge/msdk/reward/a/a;->d(Lccsancom/mbridge/msdk/reward/a/a;)Lccsancom/mbridge/msdk/reward/a/a$c;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1069
    iget-object v0, v7, Lccsancom/mbridge/msdk/reward/a/a$3;->e:Lccsancom/mbridge/msdk/reward/a/a;

    iget-boolean v0, v0, Lccsancom/mbridge/msdk/reward/a/a;->g:Z

    if-nez v0, :cond_1

    .line 1070
    iget-object v0, v7, Lccsancom/mbridge/msdk/reward/a/a$3;->e:Lccsancom/mbridge/msdk/reward/a/a;

    iput-boolean v10, v0, Lccsancom/mbridge/msdk/reward/a/a;->g:Z

    .line 1071
    const-string v0, "Cache onVideoLoadSuccessForCache"

    invoke-static {v1, v0}, Lccsancom/mbridge/msdk/foundation/tools/q;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1072
    iget-object v0, v7, Lccsancom/mbridge/msdk/reward/a/a$3;->e:Lccsancom/mbridge/msdk/reward/a/a;

    invoke-static {v0}, Lccsancom/mbridge/msdk/reward/a/a;->m(Lccsancom/mbridge/msdk/reward/a/a;)Lccsanandroid/content/Context;

    move-result-object v0

    iget-object v1, v7, Lccsancom/mbridge/msdk/reward/a/a$3;->e:Lccsancom/mbridge/msdk/reward/a/a;

    invoke-static {v1}, Lccsancom/mbridge/msdk/reward/a/a;->g(Lccsancom/mbridge/msdk/reward/a/a;)Ljava/lang/String;

    move-result-object v1

    const-wide/16 v2, 0x0

    invoke-static {v0, v9, v1, v2, v3}, Lccsancom/mbridge/msdk/reward/b/a;->a(Lccsanandroid/content/Context;Ljava/util/List;Ljava/lang/String;J)V

    .line 1073
    iget-object v0, v7, Lccsancom/mbridge/msdk/reward/a/a$3;->e:Lccsancom/mbridge/msdk/reward/a/a;

    invoke-static {v0}, Lccsancom/mbridge/msdk/reward/a/a;->d(Lccsancom/mbridge/msdk/reward/a/a;)Lccsancom/mbridge/msdk/reward/a/a$c;

    move-result-object v0

    move-object/from16 v3, p1

    invoke-static {v0, v3, v8}, Lccsancom/mbridge/msdk/reward/a/a$c;->b(Lccsancom/mbridge/msdk/reward/a/a$c;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1069
    :cond_1
    move-object/from16 v3, p1

    goto :goto_1

    .line 1068
    :cond_2
    move-object/from16 v3, p1

    goto :goto_1

    .line 1067
    :cond_3
    move-object/from16 v3, p1

    .line 1077
    iget-object v0, v7, Lccsancom/mbridge/msdk/reward/a/a$3;->e:Lccsancom/mbridge/msdk/reward/a/a;

    invoke-static {v0}, Lccsancom/mbridge/msdk/reward/a/a;->b(Lccsancom/mbridge/msdk/reward/a/a;)Ljava/util/List;

    move-result-object v4

    invoke-static {v0, v8, v4}, Lccsancom/mbridge/msdk/reward/a/a;->a(Lccsancom/mbridge/msdk/reward/a/a;Ljava/lang/String;Ljava/util/List;)V

    .line 1078
    iget-object v0, v7, Lccsancom/mbridge/msdk/reward/a/a$3;->e:Lccsancom/mbridge/msdk/reward/a/a;

    invoke-static {v0}, Lccsancom/mbridge/msdk/reward/a/a;->d(Lccsancom/mbridge/msdk/reward/a/a;)Lccsancom/mbridge/msdk/reward/a/a$c;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 1079
    iget-object v0, v7, Lccsancom/mbridge/msdk/reward/a/a$3;->e:Lccsancom/mbridge/msdk/reward/a/a;

    iget-boolean v0, v0, Lccsancom/mbridge/msdk/reward/a/a;->f:Z

    if-nez v0, :cond_5

    .line 1080
    iget-object v0, v7, Lccsancom/mbridge/msdk/reward/a/a$3;->e:Lccsancom/mbridge/msdk/reward/a/a;

    iput-boolean v10, v0, Lccsancom/mbridge/msdk/reward/a/a;->f:Z

    .line 1081
    const-string v0, "Cache onVideoLoadFailForCache"

    invoke-static {v1, v0}, Lccsancom/mbridge/msdk/foundation/tools/q;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1082
    iget-object v0, v7, Lccsancom/mbridge/msdk/reward/a/a$3;->e:Lccsancom/mbridge/msdk/reward/a/a;

    invoke-static {v0}, Lccsancom/mbridge/msdk/reward/a/a;->a(Lccsancom/mbridge/msdk/reward/a/a;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, v7, Lccsancom/mbridge/msdk/reward/a/a$3;->e:Lccsancom/mbridge/msdk/reward/a/a;

    invoke-static {v0}, Lccsancom/mbridge/msdk/reward/a/a;->a(Lccsancom/mbridge/msdk/reward/a/a;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_4

    .line 1083
    iget-object v0, v7, Lccsancom/mbridge/msdk/reward/a/a$3;->e:Lccsancom/mbridge/msdk/reward/a/a;

    invoke-static {v0}, Lccsancom/mbridge/msdk/reward/a/a;->a(Lccsancom/mbridge/msdk/reward/a/a;)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    iget-object v0, v7, Lccsancom/mbridge/msdk/reward/a/a$3;->e:Lccsancom/mbridge/msdk/reward/a/a;

    invoke-static {v0}, Lccsancom/mbridge/msdk/reward/a/a;->m(Lccsancom/mbridge/msdk/reward/a/a;)Lccsanandroid/content/Context;

    move-result-object v13

    iget-object v0, v7, Lccsancom/mbridge/msdk/reward/a/a$3;->e:Lccsancom/mbridge/msdk/reward/a/a;

    invoke-static {v0}, Lccsancom/mbridge/msdk/reward/a/a;->g(Lccsancom/mbridge/msdk/reward/a/a;)Ljava/lang/String;

    move-result-object v15

    iget-object v0, v7, Lccsancom/mbridge/msdk/reward/a/a$3;->e:Lccsancom/mbridge/msdk/reward/a/a;

    invoke-static {v0}, Lccsancom/mbridge/msdk/reward/a/a;->i(Lccsancom/mbridge/msdk/reward/a/a;)Z

    move-result v16

    invoke-virtual {v2}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getRequestIdNotice()Ljava/lang/String;

    move-result-object v18

    const-string v14, "have no temp but isReady false"

    move-object/from16 v17, p3

    invoke-static/range {v12 .. v18}, Lccsancom/mbridge/msdk/reward/b/a;->a(Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;Lccsanandroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    .line 1085
    :cond_4
    iget-object v0, v7, Lccsancom/mbridge/msdk/reward/a/a$3;->e:Lccsancom/mbridge/msdk/reward/a/a;

    invoke-static {v0}, Lccsancom/mbridge/msdk/reward/a/a;->d(Lccsancom/mbridge/msdk/reward/a/a;)Lccsancom/mbridge/msdk/reward/a/a$c;

    move-result-object v0

    const-string v1, "errorCode: 3503 errorMessage: have no temp but isReady false"

    invoke-static {v0, v1}, Lccsancom/mbridge/msdk/reward/a/a$c;->d(Lccsancom/mbridge/msdk/reward/a/a$c;Ljava/lang/String;)V

    .line 1090
    :cond_5
    :goto_1
    goto/16 :goto_0

    :cond_6
    goto :goto_2

    .line 1092
    :cond_7
    move-object/from16 v3, p1

    iget-object v0, v7, Lccsancom/mbridge/msdk/reward/a/a$3;->e:Lccsancom/mbridge/msdk/reward/a/a;

    iget-boolean v0, v0, Lccsancom/mbridge/msdk/reward/a/a;->d:Z

    if-eqz v0, :cond_8

    iget-object v0, v7, Lccsancom/mbridge/msdk/reward/a/a$3;->e:Lccsancom/mbridge/msdk/reward/a/a;

    iget-boolean v0, v0, Lccsancom/mbridge/msdk/reward/a/a;->e:Z

    if-nez v0, :cond_8

    iget-object v0, v7, Lccsancom/mbridge/msdk/reward/a/a$3;->e:Lccsancom/mbridge/msdk/reward/a/a;

    invoke-static {v0}, Lccsancom/mbridge/msdk/reward/a/a;->q(Lccsancom/mbridge/msdk/reward/a/a;)Lccsanandroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 1093
    iget-object v0, v7, Lccsancom/mbridge/msdk/reward/a/a$3;->e:Lccsancom/mbridge/msdk/reward/a/a;

    iput-boolean v10, v0, Lccsancom/mbridge/msdk/reward/a/a;->e:Z

    .line 1094
    iget-object v0, v7, Lccsancom/mbridge/msdk/reward/a/a$3;->e:Lccsancom/mbridge/msdk/reward/a/a;

    invoke-static {v0}, Lccsancom/mbridge/msdk/reward/a/a;->q(Lccsancom/mbridge/msdk/reward/a/a;)Lccsanandroid/os/Handler;

    move-result-object v6

    new-instance v10, Lccsancom/mbridge/msdk/reward/a/a$3$2;

    move-object v0, v10

    move-object/from16 v1, p0

    move-object/from16 v2, p3

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p4

    invoke-direct/range {v0 .. v5}, Lccsancom/mbridge/msdk/reward/a/a$3$2;-><init>(Lccsancom/mbridge/msdk/reward/a/a$3;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    invoke-virtual {v6, v10}, Lccsanandroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1142
    :cond_8
    :goto_2
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1146
    iget-object p1, p0, Lccsancom/mbridge/msdk/reward/a/a$3;->e:Lccsancom/mbridge/msdk/reward/a/a;

    const/4 p4, 0x0

    iput-boolean p4, p1, Lccsancom/mbridge/msdk/reward/a/a;->c:Z

    .line 1147
    iget-object p1, p0, Lccsancom/mbridge/msdk/reward/a/a$3;->e:Lccsancom/mbridge/msdk/reward/a/a;

    invoke-static {p1}, Lccsancom/mbridge/msdk/reward/a/a;->b(Lccsancom/mbridge/msdk/reward/a/a;)Ljava/util/List;

    move-result-object v0

    invoke-static {p1, p2, v0}, Lccsancom/mbridge/msdk/reward/a/a;->a(Lccsancom/mbridge/msdk/reward/a/a;Ljava/lang/String;Ljava/util/List;)V

    .line 1148
    iget-object p1, p0, Lccsancom/mbridge/msdk/reward/a/a$3;->e:Lccsancom/mbridge/msdk/reward/a/a;

    invoke-static {p1}, Lccsancom/mbridge/msdk/reward/a/a;->d(Lccsancom/mbridge/msdk/reward/a/a;)Lccsancom/mbridge/msdk/reward/a/a$c;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 1149
    iget-object p1, p0, Lccsancom/mbridge/msdk/reward/a/a$3;->e:Lccsancom/mbridge/msdk/reward/a/a;

    iget-boolean p1, p1, Lccsancom/mbridge/msdk/reward/a/a;->f:Z

    if-nez p1, :cond_1

    .line 1150
    iget-object p1, p0, Lccsancom/mbridge/msdk/reward/a/a$3;->e:Lccsancom/mbridge/msdk/reward/a/a;

    const/4 p2, 0x1

    iput-boolean p2, p1, Lccsancom/mbridge/msdk/reward/a/a;->f:Z

    .line 1151
    iget-object p1, p0, Lccsancom/mbridge/msdk/reward/a/a$3;->e:Lccsancom/mbridge/msdk/reward/a/a;

    invoke-static {p1}, Lccsancom/mbridge/msdk/reward/a/a;->a(Lccsancom/mbridge/msdk/reward/a/a;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lccsancom/mbridge/msdk/reward/a/a$3;->e:Lccsancom/mbridge/msdk/reward/a/a;

    invoke-static {p1}, Lccsancom/mbridge/msdk/reward/a/a;->a(Lccsancom/mbridge/msdk/reward/a/a;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_0

    .line 1152
    iget-object p1, p0, Lccsancom/mbridge/msdk/reward/a/a$3;->e:Lccsancom/mbridge/msdk/reward/a/a;

    invoke-static {p1}, Lccsancom/mbridge/msdk/reward/a/a;->a(Lccsancom/mbridge/msdk/reward/a/a;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    iget-object p1, p0, Lccsancom/mbridge/msdk/reward/a/a$3;->e:Lccsancom/mbridge/msdk/reward/a/a;

    invoke-static {p1}, Lccsancom/mbridge/msdk/reward/a/a;->m(Lccsancom/mbridge/msdk/reward/a/a;)Lccsanandroid/content/Context;

    move-result-object v1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, ""

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object p1, p0, Lccsancom/mbridge/msdk/reward/a/a$3;->e:Lccsancom/mbridge/msdk/reward/a/a;

    invoke-static {p1}, Lccsancom/mbridge/msdk/reward/a/a;->g(Lccsancom/mbridge/msdk/reward/a/a;)Ljava/lang/String;

    move-result-object v3

    iget-object p1, p0, Lccsancom/mbridge/msdk/reward/a/a$3;->e:Lccsancom/mbridge/msdk/reward/a/a;

    invoke-static {p1}, Lccsancom/mbridge/msdk/reward/a/a;->i(Lccsancom/mbridge/msdk/reward/a/a;)Z

    move-result v4

    iget-object p1, p0, Lccsancom/mbridge/msdk/reward/a/a$3;->b:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getRequestIdNotice()Ljava/lang/String;

    move-result-object v6

    move-object v5, p3

    invoke-static/range {v0 .. v6}, Lccsancom/mbridge/msdk/reward/b/a;->a(Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;Lccsanandroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    .line 1154
    :cond_0
    iget-object p1, p0, Lccsancom/mbridge/msdk/reward/a/a$3;->e:Lccsancom/mbridge/msdk/reward/a/a;

    invoke-static {p1}, Lccsancom/mbridge/msdk/reward/a/a;->d(Lccsancom/mbridge/msdk/reward/a/a;)Lccsancom/mbridge/msdk/reward/a/a$c;

    move-result-object p1

    const-string p2, "errorCode: 3201 errorMessage: campaign resource download failed"

    invoke-static {p1, p2}, Lccsancom/mbridge/msdk/reward/a/a$c;->d(Lccsancom/mbridge/msdk/reward/a/a$c;Ljava/lang/String;)V

    .line 1157
    :cond_1
    return-void
.end method
