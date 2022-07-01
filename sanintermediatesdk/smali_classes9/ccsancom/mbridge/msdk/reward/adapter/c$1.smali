.class final Lccsancom/mbridge/msdk/reward/adapter/c$1;
.super Ljava/lang/Object;
.source "RewardCampaignsResourceManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/mbridge/msdk/reward/adapter/c;->a(Lccsanandroid/content/Context;ZIZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lccsancom/mbridge/msdk/reward/adapter/c$c;Lccsancom/mbridge/msdk/reward/adapter/c$i;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lccsanandroid/content/Context;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:I

.field final synthetic e:Ljava/lang/String;

.field final synthetic f:Ljava/lang/String;

.field final synthetic g:Lccsancom/mbridge/msdk/reward/adapter/c$i;

.field final synthetic h:Lccsancom/mbridge/msdk/reward/adapter/c;


# direct methods
.method constructor <init>(Lccsancom/mbridge/msdk/reward/adapter/c;Ljava/util/List;Lccsanandroid/content/Context;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lccsancom/mbridge/msdk/reward/adapter/c$i;)V
    .locals 0

    .line 91
    iput-object p1, p0, Lccsancom/mbridge/msdk/reward/adapter/c$1;->h:Lccsancom/mbridge/msdk/reward/adapter/c;

    iput-object p2, p0, Lccsancom/mbridge/msdk/reward/adapter/c$1;->a:Ljava/util/List;

    iput-object p3, p0, Lccsancom/mbridge/msdk/reward/adapter/c$1;->b:Lccsanandroid/content/Context;

    iput-object p4, p0, Lccsancom/mbridge/msdk/reward/adapter/c$1;->c:Ljava/lang/String;

    iput p5, p0, Lccsancom/mbridge/msdk/reward/adapter/c$1;->d:I

    iput-object p6, p0, Lccsancom/mbridge/msdk/reward/adapter/c$1;->e:Ljava/lang/String;

    iput-object p7, p0, Lccsancom/mbridge/msdk/reward/adapter/c$1;->f:Ljava/lang/String;

    iput-object p8, p0, Lccsancom/mbridge/msdk/reward/adapter/c$1;->g:Lccsancom/mbridge/msdk/reward/adapter/c$i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 21

    .line 94
    move-object/from16 v1, p0

    const-string v2, "RewardCampaignsResourceManager"

    iget-object v0, v1, Lccsancom/mbridge/msdk/reward/adapter/c$1;->a:Ljava/util/List;

    if-eqz v0, :cond_16

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_16

    .line 96
    :try_start_0
    invoke-static {}, Lccsancom/mbridge/msdk/videocommon/download/i;->a()Lccsancom/mbridge/msdk/videocommon/download/i;

    move-result-object v0

    iget-object v3, v1, Lccsancom/mbridge/msdk/reward/adapter/c$1;->a:Ljava/util/List;

    invoke-virtual {v0, v3}, Lccsancom/mbridge/msdk/videocommon/download/i;->a(Ljava/util/List;)V

    .line 97
    invoke-static {}, Lccsancom/mbridge/msdk/videocommon/download/c;->getInstance()Lccsancom/mbridge/msdk/videocommon/download/c;

    move-result-object v4

    iget-object v5, v1, Lccsancom/mbridge/msdk/reward/adapter/c$1;->b:Lccsanandroid/content/Context;

    iget-object v6, v1, Lccsancom/mbridge/msdk/reward/adapter/c$1;->c:Ljava/lang/String;

    iget-object v7, v1, Lccsancom/mbridge/msdk/reward/adapter/c$1;->a:Ljava/util/List;

    iget v8, v1, Lccsancom/mbridge/msdk/reward/adapter/c$1;->d:I

    new-instance v9, Lccsancom/mbridge/msdk/reward/adapter/c$f;

    iget-object v0, v1, Lccsancom/mbridge/msdk/reward/adapter/c$1;->h:Lccsancom/mbridge/msdk/reward/adapter/c;

    invoke-static {v0}, Lccsancom/mbridge/msdk/reward/adapter/c;->a(Lccsancom/mbridge/msdk/reward/adapter/c;)Lccsancom/mbridge/msdk/reward/adapter/c$h;

    move-result-object v0

    iget-object v3, v1, Lccsancom/mbridge/msdk/reward/adapter/c$1;->e:Ljava/lang/String;

    iget-object v10, v1, Lccsancom/mbridge/msdk/reward/adapter/c$1;->c:Ljava/lang/String;

    iget-object v11, v1, Lccsancom/mbridge/msdk/reward/adapter/c$1;->f:Ljava/lang/String;

    invoke-direct {v9, v0, v3, v10, v11}, Lccsancom/mbridge/msdk/reward/adapter/c$f;-><init>(Lccsanandroid/os/Handler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {v4 .. v9}, Lccsancom/mbridge/msdk/videocommon/download/c;->createUnitCache(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/util/List;ILccsancom/mbridge/msdk/videocommon/listener/a;)Lccsancom/mbridge/msdk/videocommon/download/k;

    .line 98
    invoke-static {}, Lccsancom/mbridge/msdk/videocommon/download/c;->getInstance()Lccsancom/mbridge/msdk/videocommon/download/c;

    move-result-object v0

    iget-object v3, v1, Lccsancom/mbridge/msdk/reward/adapter/c$1;->c:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lccsancom/mbridge/msdk/videocommon/download/c;->load(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 103
    goto :goto_0

    .line 99
    :catch_0
    move-exception v0

    .line 100
    sget-boolean v3, Lccsancom/mbridge/msdk/MBridgeConstans;->DEBUG:Z

    if-eqz v3, :cond_0

    .line 101
    invoke-virtual {v0}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    :cond_0
    :goto_0
    iget-object v0, v1, Lccsancom/mbridge/msdk/reward/adapter/c$1;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v14, v0

    check-cast v14, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    .line 106
    invoke-virtual {v14}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getRewardTemplateMode()Lccsancom/mbridge/msdk/foundation/entity/CampaignEx$c;

    move-result-object v15

    .line 107
    const-string v13, ".zip"

    if-eqz v15, :cond_4

    invoke-virtual {v14}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getMof_template_url()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lccsancom/mbridge/msdk/foundation/tools/u;->f(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 108
    invoke-virtual {v15}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx$c;->d()Ljava/lang/String;

    move-result-object v0

    .line 109
    invoke-static {v0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 110
    invoke-virtual {v0, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 112
    :try_start_1
    invoke-static {}, Lccsancom/mbridge/msdk/videocommon/download/g;->a()Lccsancom/mbridge/msdk/videocommon/download/g;

    move-result-object v12

    new-instance v11, Lccsancom/mbridge/msdk/reward/adapter/c$g;

    iget-object v5, v1, Lccsancom/mbridge/msdk/reward/adapter/c$1;->b:Lccsanandroid/content/Context;

    iget-object v6, v1, Lccsancom/mbridge/msdk/reward/adapter/c$1;->e:Ljava/lang/String;

    iget-object v7, v1, Lccsancom/mbridge/msdk/reward/adapter/c$1;->c:Ljava/lang/String;

    iget-object v8, v1, Lccsancom/mbridge/msdk/reward/adapter/c$1;->f:Ljava/lang/String;

    const/16 v10, 0x35b

    iget-object v4, v1, Lccsancom/mbridge/msdk/reward/adapter/c$1;->h:Lccsancom/mbridge/msdk/reward/adapter/c;

    invoke-static {v4}, Lccsancom/mbridge/msdk/reward/adapter/c;->a(Lccsancom/mbridge/msdk/reward/adapter/c;)Lccsancom/mbridge/msdk/reward/adapter/c$h;

    move-result-object v16

    iget-object v9, v1, Lccsancom/mbridge/msdk/reward/adapter/c$1;->g:Lccsancom/mbridge/msdk/reward/adapter/c$i;

    iget-object v4, v1, Lccsancom/mbridge/msdk/reward/adapter/c$1;->a:Ljava/util/List;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    move-object/from16 v17, v4

    move-object v4, v11

    move-object/from16 v18, v9

    move-object v9, v14

    move-object/from16 v19, v11

    move-object/from16 v11, v16

    move-object/from16 v20, v12

    move-object/from16 v12, v18

    move-object/from16 v16, v3

    move-object v3, v13

    move-object/from16 v13, v17

    :try_start_2
    invoke-direct/range {v4 .. v13}, Lccsancom/mbridge/msdk/reward/adapter/c$g;-><init>(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;ILccsanandroid/os/Handler;Lccsancom/mbridge/msdk/reward/adapter/c$i;Ljava/util/List;)V

    move-object/from16 v5, v19

    move-object/from16 v4, v20

    invoke-virtual {v4, v0, v5}, Lccsancom/mbridge/msdk/videocommon/download/g;->b(Ljava/lang/String;Lccsancom/mbridge/msdk/videocommon/download/g$a;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_3

    .line 113
    :catch_1
    move-exception v0

    goto :goto_2

    :catch_2
    move-exception v0

    move-object/from16 v16, v3

    move-object v3, v13

    .line 114
    :goto_2
    sget-boolean v4, Lccsancom/mbridge/msdk/MBridgeConstans;->DEBUG:Z

    if-eqz v4, :cond_1

    .line 115
    invoke-virtual {v0}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    :cond_1
    :goto_3
    move-object/from16 v18, v15

    goto :goto_5

    .line 120
    :cond_2
    move-object/from16 v16, v3

    move-object v3, v13

    :try_start_3
    invoke-static {}, Lccsancom/mbridge/msdk/videocommon/download/g;->a()Lccsancom/mbridge/msdk/videocommon/download/g;

    move-result-object v13

    new-instance v12, Lccsancom/mbridge/msdk/reward/adapter/c$d;

    const/16 v5, 0x35b

    iget-object v6, v1, Lccsancom/mbridge/msdk/reward/adapter/c$1;->e:Ljava/lang/String;

    iget-object v7, v1, Lccsancom/mbridge/msdk/reward/adapter/c$1;->c:Ljava/lang/String;

    iget-object v8, v1, Lccsancom/mbridge/msdk/reward/adapter/c$1;->f:Ljava/lang/String;

    iget-object v10, v1, Lccsancom/mbridge/msdk/reward/adapter/c$1;->g:Lccsancom/mbridge/msdk/reward/adapter/c$i;

    iget-object v4, v1, Lccsancom/mbridge/msdk/reward/adapter/c$1;->h:Lccsancom/mbridge/msdk/reward/adapter/c;

    invoke-static {v4}, Lccsancom/mbridge/msdk/reward/adapter/c;->a(Lccsancom/mbridge/msdk/reward/adapter/c;)Lccsancom/mbridge/msdk/reward/adapter/c$h;

    move-result-object v11

    iget-object v9, v1, Lccsancom/mbridge/msdk/reward/adapter/c$1;->a:Ljava/util/List;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4

    move-object v4, v12

    move-object/from16 v17, v9

    move-object v9, v14

    move-object/from16 v18, v15

    move-object v15, v12

    move-object/from16 v12, v17

    :try_start_4
    invoke-direct/range {v4 .. v12}, Lccsancom/mbridge/msdk/reward/adapter/c$d;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;Lccsancom/mbridge/msdk/reward/adapter/c$i;Lccsanandroid/os/Handler;Ljava/util/List;)V

    invoke-virtual {v13, v0, v15}, Lccsancom/mbridge/msdk/videocommon/download/g;->b(Ljava/lang/String;Lccsancom/mbridge/msdk/videocommon/download/g$a;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 125
    goto :goto_5

    .line 121
    :catch_3
    move-exception v0

    goto :goto_4

    :catch_4
    move-exception v0

    move-object/from16 v18, v15

    .line 122
    :goto_4
    sget-boolean v4, Lccsancom/mbridge/msdk/MBridgeConstans;->DEBUG:Z

    if-eqz v4, :cond_5

    .line 123
    invoke-virtual {v0}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .line 109
    :cond_3
    move-object/from16 v16, v3

    move-object v3, v13

    move-object/from16 v18, v15

    goto :goto_5

    .line 107
    :cond_4
    move-object/from16 v16, v3

    move-object v3, v13

    move-object/from16 v18, v15

    .line 130
    :cond_5
    :goto_5
    invoke-virtual {v14}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getendcard_url()Ljava/lang/String;

    move-result-object v0

    .line 131
    invoke-static {v0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_b

    invoke-virtual {v14}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getMof_template_url()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lccsancom/mbridge/msdk/foundation/tools/u;->f(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_b

    .line 132
    invoke-static {v0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_a

    invoke-virtual {v14}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->isMraid()Z

    move-result v4

    if-nez v4, :cond_a

    .line 133
    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v4, :cond_8

    const-string v4, "md5filename"

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 134
    nop

    .line 135
    invoke-static {}, Lccsancom/mbridge/msdk/videocommon/download/g;->a()Lccsancom/mbridge/msdk/videocommon/download/g;

    move-result-object v4

    invoke-virtual {v4, v0}, Lccsancom/mbridge/msdk/videocommon/download/g;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_6

    .line 136
    const/4 v15, 0x0

    goto :goto_6

    .line 135
    :cond_6
    const/4 v15, 0x1

    .line 139
    :goto_6
    :try_start_5
    new-instance v13, Lccsancom/mbridge/msdk/reward/adapter/c$g;

    iget-object v5, v1, Lccsancom/mbridge/msdk/reward/adapter/c$1;->b:Lccsanandroid/content/Context;

    iget-object v6, v1, Lccsancom/mbridge/msdk/reward/adapter/c$1;->e:Ljava/lang/String;

    iget-object v7, v1, Lccsancom/mbridge/msdk/reward/adapter/c$1;->c:Ljava/lang/String;

    iget-object v8, v1, Lccsancom/mbridge/msdk/reward/adapter/c$1;->f:Ljava/lang/String;

    const/16 v10, 0x1f1

    iget-object v4, v1, Lccsancom/mbridge/msdk/reward/adapter/c$1;->h:Lccsancom/mbridge/msdk/reward/adapter/c;

    invoke-static {v4}, Lccsancom/mbridge/msdk/reward/adapter/c;->a(Lccsancom/mbridge/msdk/reward/adapter/c;)Lccsancom/mbridge/msdk/reward/adapter/c$h;

    move-result-object v11

    iget-object v12, v1, Lccsancom/mbridge/msdk/reward/adapter/c$1;->g:Lccsancom/mbridge/msdk/reward/adapter/c$i;

    iget-object v9, v1, Lccsancom/mbridge/msdk/reward/adapter/c$1;->a:Ljava/util/List;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_6

    move-object v4, v13

    move-object/from16 v17, v9

    move-object v9, v14

    move-object/from16 v19, v3

    move-object v3, v13

    move-object/from16 v13, v17

    :try_start_6
    invoke-direct/range {v4 .. v13}, Lccsancom/mbridge/msdk/reward/adapter/c$g;-><init>(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;ILccsanandroid/os/Handler;Lccsancom/mbridge/msdk/reward/adapter/c$i;Ljava/util/List;)V

    .line 140
    invoke-virtual {v3, v15}, Lccsancom/mbridge/msdk/reward/adapter/c$g;->a(Z)V

    .line 141
    invoke-static {}, Lccsancom/mbridge/msdk/videocommon/download/g;->a()Lccsancom/mbridge/msdk/videocommon/download/g;

    move-result-object v4

    invoke-virtual {v4, v0, v3}, Lccsancom/mbridge/msdk/videocommon/download/g;->b(Ljava/lang/String;Lccsancom/mbridge/msdk/videocommon/download/g$a;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5

    .line 146
    goto :goto_8

    .line 142
    :catch_5
    move-exception v0

    goto :goto_7

    :catch_6
    move-exception v0

    move-object/from16 v19, v3

    .line 143
    :goto_7
    sget-boolean v3, Lccsancom/mbridge/msdk/MBridgeConstans;->DEBUG:Z

    if-eqz v3, :cond_7

    .line 144
    invoke-virtual {v0}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    :cond_7
    :goto_8
    goto :goto_a

    .line 133
    :cond_8
    move-object/from16 v19, v3

    .line 148
    nop

    .line 149
    invoke-static {}, Lccsancom/mbridge/msdk/videocommon/download/h;->a()Lccsancom/mbridge/msdk/videocommon/download/h;

    move-result-object v3

    invoke-virtual {v3, v0}, Lccsancom/mbridge/msdk/videocommon/download/h;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_9

    .line 150
    const/4 v3, 0x0

    goto :goto_9

    .line 149
    :cond_9
    const/4 v3, 0x1

    .line 153
    :goto_9
    :try_start_7
    new-instance v13, Lccsancom/mbridge/msdk/reward/adapter/c$d;

    const/16 v5, 0x1f1

    iget-object v6, v1, Lccsancom/mbridge/msdk/reward/adapter/c$1;->e:Ljava/lang/String;

    iget-object v7, v1, Lccsancom/mbridge/msdk/reward/adapter/c$1;->c:Ljava/lang/String;

    iget-object v8, v1, Lccsancom/mbridge/msdk/reward/adapter/c$1;->f:Ljava/lang/String;

    iget-object v10, v1, Lccsancom/mbridge/msdk/reward/adapter/c$1;->g:Lccsancom/mbridge/msdk/reward/adapter/c$i;

    iget-object v4, v1, Lccsancom/mbridge/msdk/reward/adapter/c$1;->h:Lccsancom/mbridge/msdk/reward/adapter/c;

    invoke-static {v4}, Lccsancom/mbridge/msdk/reward/adapter/c;->a(Lccsancom/mbridge/msdk/reward/adapter/c;)Lccsancom/mbridge/msdk/reward/adapter/c$h;

    move-result-object v11

    iget-object v12, v1, Lccsancom/mbridge/msdk/reward/adapter/c$1;->a:Ljava/util/List;

    move-object v4, v13

    move-object v9, v14

    invoke-direct/range {v4 .. v12}, Lccsancom/mbridge/msdk/reward/adapter/c$d;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;Lccsancom/mbridge/msdk/reward/adapter/c$i;Lccsanandroid/os/Handler;Ljava/util/List;)V

    .line 154
    invoke-virtual {v13, v3}, Lccsancom/mbridge/msdk/reward/adapter/c$d;->a(Z)V

    .line 155
    invoke-static {}, Lccsancom/mbridge/msdk/videocommon/download/g;->a()Lccsancom/mbridge/msdk/videocommon/download/g;

    move-result-object v3

    invoke-virtual {v3, v0, v13}, Lccsancom/mbridge/msdk/videocommon/download/g;->b(Ljava/lang/String;Lccsancom/mbridge/msdk/videocommon/download/g$a;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_7

    .line 160
    goto :goto_a

    .line 156
    :catch_7
    move-exception v0

    .line 157
    sget-boolean v3, Lccsancom/mbridge/msdk/MBridgeConstans;->DEBUG:Z

    if-eqz v3, :cond_c

    .line 158
    invoke-virtual {v0}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_a

    .line 132
    :cond_a
    move-object/from16 v19, v3

    goto :goto_a

    .line 131
    :cond_b
    move-object/from16 v19, v3

    .line 165
    :cond_c
    :goto_a
    invoke-virtual {v14}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getEndScreenUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_d

    invoke-virtual {v14}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getMof_template_url()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lccsancom/mbridge/msdk/foundation/tools/u;->f(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 166
    invoke-static {}, Lccsancom/mbridge/msdk/videocommon/download/g;->a()Lccsancom/mbridge/msdk/videocommon/download/g;

    move-result-object v0

    invoke-virtual {v14}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getEndScreenUrl()Ljava/lang/String;

    move-result-object v3

    .line 1198
    const/4 v4, 0x0

    move-object v5, v4

    check-cast v5, Lccsancom/mbridge/msdk/videocommon/download/g$b;

    invoke-virtual {v0, v3, v4}, Lccsancom/mbridge/msdk/videocommon/download/g;->a(Ljava/lang/String;Lccsancom/mbridge/msdk/videocommon/download/g$a;)V

    .line 169
    :cond_d
    invoke-virtual {v14}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getIconUrl()Ljava/lang/String;

    move-result-object v0

    .line 170
    invoke-static {v0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_e

    .line 172
    :try_start_8
    iget-object v3, v1, Lccsancom/mbridge/msdk/reward/adapter/c$1;->b:Lccsanandroid/content/Context;

    invoke-static {v3}, Lccsancom/mbridge/msdk/foundation/same/c/b;->a(Lccsanandroid/content/Context;)Lccsancom/mbridge/msdk/foundation/same/c/b;

    move-result-object v3

    new-instance v11, Lccsancom/mbridge/msdk/reward/adapter/c$e;

    iget-object v4, v1, Lccsancom/mbridge/msdk/reward/adapter/c$1;->h:Lccsancom/mbridge/msdk/reward/adapter/c;

    invoke-static {v4}, Lccsancom/mbridge/msdk/reward/adapter/c;->a(Lccsancom/mbridge/msdk/reward/adapter/c;)Lccsancom/mbridge/msdk/reward/adapter/c$h;

    move-result-object v5

    const/4 v6, 0x0

    iget-object v7, v1, Lccsancom/mbridge/msdk/reward/adapter/c$1;->e:Ljava/lang/String;

    iget-object v8, v1, Lccsancom/mbridge/msdk/reward/adapter/c$1;->c:Ljava/lang/String;

    iget-object v9, v1, Lccsancom/mbridge/msdk/reward/adapter/c$1;->f:Ljava/lang/String;

    move-object v4, v11

    move-object v10, v14

    invoke-direct/range {v4 .. v10}, Lccsancom/mbridge/msdk/reward/adapter/c$e;-><init>(Lccsanandroid/os/Handler;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;)V

    invoke-virtual {v3, v0, v11}, Lccsancom/mbridge/msdk/foundation/same/c/b;->a(Ljava/lang/String;Lccsancom/mbridge/msdk/foundation/same/c/c;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_8

    .line 177
    goto :goto_b

    .line 173
    :catch_8
    move-exception v0

    .line 174
    sget-boolean v3, Lccsancom/mbridge/msdk/MBridgeConstans;->DEBUG:Z

    if-eqz v3, :cond_e

    .line 175
    invoke-virtual {v0}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    :cond_e
    :goto_b
    invoke-virtual {v14}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getImageUrl()Ljava/lang/String;

    move-result-object v0

    .line 180
    invoke-static {v0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_f

    .line 182
    :try_start_9
    iget-object v3, v1, Lccsancom/mbridge/msdk/reward/adapter/c$1;->b:Lccsanandroid/content/Context;

    invoke-static {v3}, Lccsancom/mbridge/msdk/foundation/same/c/b;->a(Lccsanandroid/content/Context;)Lccsancom/mbridge/msdk/foundation/same/c/b;

    move-result-object v3

    new-instance v11, Lccsancom/mbridge/msdk/reward/adapter/c$e;

    iget-object v4, v1, Lccsancom/mbridge/msdk/reward/adapter/c$1;->h:Lccsancom/mbridge/msdk/reward/adapter/c;

    invoke-static {v4}, Lccsancom/mbridge/msdk/reward/adapter/c;->a(Lccsancom/mbridge/msdk/reward/adapter/c;)Lccsancom/mbridge/msdk/reward/adapter/c$h;

    move-result-object v5

    const/4 v6, 0x0

    iget-object v7, v1, Lccsancom/mbridge/msdk/reward/adapter/c$1;->e:Ljava/lang/String;

    iget-object v8, v1, Lccsancom/mbridge/msdk/reward/adapter/c$1;->c:Ljava/lang/String;

    iget-object v9, v1, Lccsancom/mbridge/msdk/reward/adapter/c$1;->f:Ljava/lang/String;

    move-object v4, v11

    move-object v10, v14

    invoke-direct/range {v4 .. v10}, Lccsancom/mbridge/msdk/reward/adapter/c$e;-><init>(Lccsanandroid/os/Handler;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;)V

    invoke-virtual {v3, v0, v11}, Lccsancom/mbridge/msdk/foundation/same/c/b;->a(Ljava/lang/String;Lccsancom/mbridge/msdk/foundation/same/c/c;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_9

    .line 187
    goto :goto_c

    .line 183
    :catch_9
    move-exception v0

    .line 184
    sget-boolean v3, Lccsancom/mbridge/msdk/MBridgeConstans;->DEBUG:Z

    if-eqz v3, :cond_f

    .line 185
    invoke-virtual {v0}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    :cond_f
    :goto_c
    if-eqz v18, :cond_15

    .line 191
    invoke-virtual/range {v18 .. v18}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx$c;->c()Ljava/lang/String;

    move-result-object v0

    .line 192
    invoke-static {v0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_12

    invoke-virtual {v14}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getMof_template_url()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lccsancom/mbridge/msdk/foundation/tools/u;->f(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_12

    .line 193
    move-object/from16 v3, v19

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_11

    .line 195
    :try_start_a
    invoke-static {}, Lccsancom/mbridge/msdk/videocommon/download/g;->a()Lccsancom/mbridge/msdk/videocommon/download/g;

    move-result-object v3

    new-instance v15, Lccsancom/mbridge/msdk/reward/adapter/c$g;

    iget-object v5, v1, Lccsancom/mbridge/msdk/reward/adapter/c$1;->b:Lccsanandroid/content/Context;

    iget-object v6, v1, Lccsancom/mbridge/msdk/reward/adapter/c$1;->e:Ljava/lang/String;

    iget-object v7, v1, Lccsancom/mbridge/msdk/reward/adapter/c$1;->c:Ljava/lang/String;

    iget-object v8, v1, Lccsancom/mbridge/msdk/reward/adapter/c$1;->f:Ljava/lang/String;

    const/16 v10, 0x139

    iget-object v4, v1, Lccsancom/mbridge/msdk/reward/adapter/c$1;->h:Lccsancom/mbridge/msdk/reward/adapter/c;

    invoke-static {v4}, Lccsancom/mbridge/msdk/reward/adapter/c;->a(Lccsancom/mbridge/msdk/reward/adapter/c;)Lccsancom/mbridge/msdk/reward/adapter/c$h;

    move-result-object v11

    iget-object v12, v1, Lccsancom/mbridge/msdk/reward/adapter/c$1;->g:Lccsancom/mbridge/msdk/reward/adapter/c$i;

    iget-object v13, v1, Lccsancom/mbridge/msdk/reward/adapter/c$1;->a:Ljava/util/List;

    move-object v4, v15

    move-object v9, v14

    invoke-direct/range {v4 .. v13}, Lccsancom/mbridge/msdk/reward/adapter/c$g;-><init>(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;ILccsanandroid/os/Handler;Lccsancom/mbridge/msdk/reward/adapter/c$i;Ljava/util/List;)V

    invoke-virtual {v3, v0, v15}, Lccsancom/mbridge/msdk/videocommon/download/g;->b(Ljava/lang/String;Lccsancom/mbridge/msdk/videocommon/download/g$a;)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_a

    goto :goto_d

    .line 196
    :catch_a
    move-exception v0

    .line 197
    sget-boolean v3, Lccsancom/mbridge/msdk/MBridgeConstans;->DEBUG:Z

    if-eqz v3, :cond_10

    .line 198
    invoke-virtual {v0}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    :cond_10
    :goto_d
    goto :goto_e

    .line 203
    :cond_11
    :try_start_b
    invoke-static {}, Lccsancom/mbridge/msdk/videocommon/download/g;->a()Lccsancom/mbridge/msdk/videocommon/download/g;

    move-result-object v3

    new-instance v13, Lccsancom/mbridge/msdk/reward/adapter/c$d;

    const/16 v5, 0x139

    iget-object v6, v1, Lccsancom/mbridge/msdk/reward/adapter/c$1;->e:Ljava/lang/String;

    iget-object v7, v1, Lccsancom/mbridge/msdk/reward/adapter/c$1;->c:Ljava/lang/String;

    iget-object v8, v1, Lccsancom/mbridge/msdk/reward/adapter/c$1;->f:Ljava/lang/String;

    iget-object v10, v1, Lccsancom/mbridge/msdk/reward/adapter/c$1;->g:Lccsancom/mbridge/msdk/reward/adapter/c$i;

    iget-object v4, v1, Lccsancom/mbridge/msdk/reward/adapter/c$1;->h:Lccsancom/mbridge/msdk/reward/adapter/c;

    invoke-static {v4}, Lccsancom/mbridge/msdk/reward/adapter/c;->a(Lccsancom/mbridge/msdk/reward/adapter/c;)Lccsancom/mbridge/msdk/reward/adapter/c$h;

    move-result-object v11

    iget-object v12, v1, Lccsancom/mbridge/msdk/reward/adapter/c$1;->a:Ljava/util/List;

    move-object v4, v13

    move-object v9, v14

    invoke-direct/range {v4 .. v12}, Lccsancom/mbridge/msdk/reward/adapter/c$d;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;Lccsancom/mbridge/msdk/reward/adapter/c$i;Lccsanandroid/os/Handler;Ljava/util/List;)V

    invoke-virtual {v3, v0, v13}, Lccsancom/mbridge/msdk/videocommon/download/g;->b(Ljava/lang/String;Lccsancom/mbridge/msdk/videocommon/download/g$a;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_b

    .line 208
    goto :goto_e

    .line 204
    :catch_b
    move-exception v0

    .line 205
    sget-boolean v3, Lccsancom/mbridge/msdk/MBridgeConstans;->DEBUG:Z

    if-eqz v3, :cond_12

    .line 206
    invoke-virtual {v0}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    :cond_12
    :goto_e
    invoke-virtual/range {v18 .. v18}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx$c;->e()Ljava/util/List;

    move-result-object v0

    .line 213
    if-eqz v0, :cond_15

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_15

    .line 214
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_f
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_15

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx$c$a;

    .line 215
    if-eqz v0, :cond_14

    iget-object v4, v0, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx$c$a;->b:Ljava/util/List;

    if-eqz v4, :cond_14

    iget-object v4, v0, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx$c$a;->b:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_14

    .line 216
    iget-object v0, v0, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx$c$a;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_10
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 217
    invoke-static {v0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_13

    .line 219
    :try_start_c
    iget-object v4, v1, Lccsancom/mbridge/msdk/reward/adapter/c$1;->b:Lccsanandroid/content/Context;

    invoke-static {v4}, Lccsancom/mbridge/msdk/foundation/same/c/b;->a(Lccsanandroid/content/Context;)Lccsancom/mbridge/msdk/foundation/same/c/b;

    move-result-object v12

    new-instance v13, Lccsancom/mbridge/msdk/reward/adapter/c$e;

    iget-object v4, v1, Lccsancom/mbridge/msdk/reward/adapter/c$1;->h:Lccsancom/mbridge/msdk/reward/adapter/c;

    invoke-static {v4}, Lccsancom/mbridge/msdk/reward/adapter/c;->a(Lccsancom/mbridge/msdk/reward/adapter/c;)Lccsancom/mbridge/msdk/reward/adapter/c$h;

    move-result-object v5

    const/4 v6, 0x1

    iget-object v7, v1, Lccsancom/mbridge/msdk/reward/adapter/c$1;->e:Ljava/lang/String;

    iget-object v8, v1, Lccsancom/mbridge/msdk/reward/adapter/c$1;->c:Ljava/lang/String;

    iget-object v9, v1, Lccsancom/mbridge/msdk/reward/adapter/c$1;->f:Ljava/lang/String;

    move-object v4, v13

    move-object v10, v14

    invoke-direct/range {v4 .. v10}, Lccsancom/mbridge/msdk/reward/adapter/c$e;-><init>(Lccsanandroid/os/Handler;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;)V

    invoke-virtual {v12, v0, v13}, Lccsancom/mbridge/msdk/foundation/same/c/b;->a(Ljava/lang/String;Lccsancom/mbridge/msdk/foundation/same/c/c;)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_c

    .line 224
    goto :goto_11

    .line 220
    :catch_c
    move-exception v0

    .line 221
    sget-boolean v4, Lccsancom/mbridge/msdk/MBridgeConstans;->DEBUG:Z

    if-eqz v4, :cond_13

    .line 222
    invoke-virtual {v0}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    :cond_13
    :goto_11
    goto :goto_10

    .line 228
    :cond_14
    goto :goto_f

    .line 231
    :cond_15
    move-object/from16 v3, v16

    goto/16 :goto_1

    .line 233
    :cond_16
    return-void
.end method
