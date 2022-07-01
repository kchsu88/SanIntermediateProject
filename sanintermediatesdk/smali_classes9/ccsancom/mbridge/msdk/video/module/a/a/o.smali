.class public Lccsancom/mbridge/msdk/video/module/a/a/o;
.super Lccsancom/mbridge/msdk/video/module/a/a/k;
.source "VideoViewStatisticsListener.java"


# instance fields
.field protected j:D

.field private k:Z

.field private l:Z

.field private m:Z

.field private n:Z

.field private o:Z

.field private p:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private q:I


# direct methods
.method public constructor <init>(Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;Lccsancom/mbridge/msdk/videocommon/b/c;Lccsancom/mbridge/msdk/videocommon/download/a;Ljava/lang/String;Ljava/lang/String;Lccsancom/mbridge/msdk/video/module/a/a;DIZ)V
    .locals 10

    .line 38
    move-object v9, p0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p3

    move-object v3, p2

    move-object v4, p4

    move-object v5, p5

    move-object/from16 v6, p6

    move/from16 v7, p9

    move/from16 v8, p10

    invoke-direct/range {v0 .. v8}, Lccsancom/mbridge/msdk/video/module/a/a/k;-><init>(Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;Lccsancom/mbridge/msdk/videocommon/download/a;Lccsancom/mbridge/msdk/videocommon/b/c;Ljava/lang/String;Ljava/lang/String;Lccsancom/mbridge/msdk/video/module/a/a;IZ)V

    .line 23
    const/4 v0, 0x0

    iput-boolean v0, v9, Lccsancom/mbridge/msdk/video/module/a/a/o;->o:Z

    .line 24
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    iput-wide v0, v9, Lccsancom/mbridge/msdk/video/module/a/a/o;->j:D

    .line 45
    const/4 v0, -0x1

    iput v0, v9, Lccsancom/mbridge/msdk/video/module/a/a/o;->q:I

    .line 39
    iget-boolean v0, v9, Lccsancom/mbridge/msdk/video/module/a/a/o;->a:Z

    if-eqz v0, :cond_0

    .line 40
    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getAdvImpList()Ljava/util/Map;

    move-result-object v0

    iput-object v0, v9, Lccsancom/mbridge/msdk/video/module/a/a/o;->p:Ljava/util/Map;

    .line 42
    :cond_0
    move-wide/from16 v0, p7

    iput-wide v0, v9, Lccsancom/mbridge/msdk/video/module/a/a/o;->j:D

    .line 43
    return-void
.end method


# virtual methods
.method public a(ILjava/lang/Object;)V
    .locals 11

    .line 49
    const-string v0, "NotifyListener"

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_2

    .line 83
    :pswitch_1
    :try_start_0
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/video/module/a/a/o;->g()V

    .line 84
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/video/module/a/a/o;->f()V

    .line 85
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/video/module/a/a/o;->e()V

    .line 86
    nop

    .line 87
    nop

    .line 88
    if-eqz p2, :cond_0

    instance-of v3, p2, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView$a;

    if-eqz v3, :cond_0

    .line 89
    move-object v1, p2

    check-cast v1, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView$a;

    iget v1, v1, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView$a;->a:I

    .line 90
    move-object v3, p2

    check-cast v3, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView$a;

    iget v3, v3, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView$a;->b:I

    move v10, v3

    move v3, v1

    move v1, v10

    goto :goto_0

    .line 92
    :cond_0
    const/4 v3, 0x0

    :goto_0
    if-nez v1, :cond_1

    iget-object v4, p0, Lccsancom/mbridge/msdk/video/module/a/a/o;->b:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    if-eqz v4, :cond_1

    .line 93
    iget-object v1, p0, Lccsancom/mbridge/msdk/video/module/a/a/o;->b:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getVideoLength()I

    move-result v1

    .line 95
    :cond_1
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/controller/a;->d()Lccsancom/mbridge/msdk/foundation/controller/a;

    move-result-object v4

    invoke-virtual {v4}, Lccsancom/mbridge/msdk/foundation/controller/a;->f()Lccsanandroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lccsancom/mbridge/msdk/video/module/a/a/o;->b:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    iget v6, p0, Lccsancom/mbridge/msdk/video/module/a/a/o;->i:I

    invoke-static {v4, v5, v3, v1, v6}, Lccsancom/mbridge/msdk/video/module/b/a;->a(Lccsanandroid/content/Context;Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;III)V

    .line 96
    iget-object v4, p0, Lccsancom/mbridge/msdk/video/module/a/a/o;->b:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    iget-object v5, p0, Lccsancom/mbridge/msdk/video/module/a/a/o;->p:Ljava/util/Map;

    iget-object v6, p0, Lccsancom/mbridge/msdk/video/module/a/a/o;->f:Ljava/lang/String;

    invoke-static {v4, v5, v6, v3}, Lccsancom/mbridge/msdk/video/module/b/a;->a(Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;Ljava/util/Map;Ljava/lang/String;I)V

    .line 97
    iget-boolean v4, p0, Lccsancom/mbridge/msdk/video/module/a/a/o;->n:Z

    if-nez v4, :cond_2

    .line 98
    iput-boolean v2, p0, Lccsancom/mbridge/msdk/video/module/a/a/o;->n:Z

    .line 99
    iget-object v4, p0, Lccsancom/mbridge/msdk/video/module/a/a/o;->b:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    iget-object v5, p0, Lccsancom/mbridge/msdk/video/module/a/a/o;->f:Ljava/lang/String;

    invoke-static {v4, v5}, Lccsancom/mbridge/msdk/video/module/b/a;->a(Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;Ljava/lang/String;)V

    .line 101
    :cond_2
    iget-boolean v4, p0, Lccsancom/mbridge/msdk/video/module/a/a/o;->o:Z

    if-nez v4, :cond_3

    int-to-double v4, v3

    int-to-double v6, v1

    iget-wide v8, p0, Lccsancom/mbridge/msdk/video/module/a/a/o;->j:D
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v6, v6, v8

    cmpl-double v1, v4, v6

    if-ltz v1, :cond_3

    .line 102
    :try_start_1
    iput-boolean v2, p0, Lccsancom/mbridge/msdk/video/module/a/a/o;->o:Z

    .line 103
    const/16 p1, 0x11

    .line 105
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPlayProgress:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    iput v3, p0, Lccsancom/mbridge/msdk/video/module/a/a/o;->q:I

    .line 107
    goto/16 :goto_2

    .line 115
    :pswitch_2
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/video/module/a/a/o;->b()V

    .line 116
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/video/module/a/a/o;->c()V

    .line 117
    goto/16 :goto_2

    .line 120
    :pswitch_3
    if-eqz p2, :cond_4

    instance-of v2, p2, Ljava/lang/String;

    if-eqz v2, :cond_4

    .line 121
    move-object v2, p2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p0, v2}, Lccsancom/mbridge/msdk/video/module/a/a/o;->a(Ljava/lang/String;)V

    .line 123
    :cond_4
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/video/module/a/a/o;->d()V

    .line 124
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/video/module/a/a/o;->b()V

    .line 125
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/video/module/a/a/o;->c()V

    .line 126
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/video/module/a/a/o;->h()V

    .line 127
    nop

    .line 2183
    invoke-static {}, Lccsancom/mbridge/msdk/videocommon/download/c;->getInstance()Lccsancom/mbridge/msdk/videocommon/download/c;

    move-result-object v2

    invoke-virtual {v2, v1}, Lccsancom/mbridge/msdk/videocommon/download/c;->b(Z)V

    goto :goto_2

    .line 110
    :pswitch_4
    nop

    .line 1183
    invoke-static {}, Lccsancom/mbridge/msdk/videocommon/download/c;->getInstance()Lccsancom/mbridge/msdk/videocommon/download/c;

    move-result-object v2

    invoke-virtual {v2, v1}, Lccsancom/mbridge/msdk/videocommon/download/c;->b(Z)V

    .line 111
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/video/module/a/a/o;->d()V

    .line 112
    goto :goto_2

    .line 80
    :pswitch_5
    goto :goto_2

    .line 53
    :pswitch_6
    iget-boolean v1, p0, Lccsancom/mbridge/msdk/video/module/a/a/o;->a:Z

    if-eqz v1, :cond_7

    if-eqz p2, :cond_7

    instance-of v1, p2, Ljava/lang/Integer;

    if-eqz v1, :cond_7

    .line 54
    move-object v1, p2

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 55
    const/4 v3, 0x2

    if-ne v1, v3, :cond_5

    .line 56
    iget-boolean v1, p0, Lccsancom/mbridge/msdk/video/module/a/a/o;->l:Z

    if-nez v1, :cond_6

    .line 57
    iput-boolean v2, p0, Lccsancom/mbridge/msdk/video/module/a/a/o;->l:Z

    .line 58
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/controller/a;->d()Lccsancom/mbridge/msdk/foundation/controller/a;

    move-result-object v1

    invoke-virtual {v1}, Lccsancom/mbridge/msdk/foundation/controller/a;->f()Lccsanandroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lccsancom/mbridge/msdk/video/module/a/a/o;->b:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-static {v1, v2}, Lccsancom/mbridge/msdk/video/module/b/a;->b(Lccsanandroid/content/Context;Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;)V

    goto :goto_1

    .line 60
    :cond_5
    if-ne v1, v2, :cond_6

    .line 61
    iget-boolean v1, p0, Lccsancom/mbridge/msdk/video/module/a/a/o;->k:Z

    if-nez v1, :cond_6

    .line 62
    iput-boolean v2, p0, Lccsancom/mbridge/msdk/video/module/a/a/o;->k:Z

    .line 63
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/controller/a;->d()Lccsancom/mbridge/msdk/foundation/controller/a;

    move-result-object v1

    invoke-virtual {v1}, Lccsancom/mbridge/msdk/foundation/controller/a;->f()Lccsanandroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lccsancom/mbridge/msdk/video/module/a/a/o;->b:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-static {v1, v2}, Lccsancom/mbridge/msdk/video/module/b/a;->c(Lccsanandroid/content/Context;Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;)V

    .line 66
    :cond_6
    :goto_1
    goto :goto_2

    .line 72
    :pswitch_7
    iget-boolean v1, p0, Lccsancom/mbridge/msdk/video/module/a/a/o;->a:Z

    if-eqz v1, :cond_7

    iget-boolean v1, p0, Lccsancom/mbridge/msdk/video/module/a/a/o;->m:Z

    if-nez v1, :cond_7

    .line 73
    iput-boolean v2, p0, Lccsancom/mbridge/msdk/video/module/a/a/o;->m:Z

    .line 74
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/video/module/a/a/o;->d()V

    .line 75
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/controller/a;->d()Lccsancom/mbridge/msdk/foundation/controller/a;

    move-result-object v1

    invoke-virtual {v1}, Lccsancom/mbridge/msdk/foundation/controller/a;->f()Lccsanandroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lccsancom/mbridge/msdk/video/module/a/a/o;->b:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-static {v1, v2}, Lccsancom/mbridge/msdk/video/module/b/a;->e(Lccsanandroid/content/Context;Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;)V

    goto :goto_2

    .line 51
    :pswitch_8
    nop

    .line 130
    :cond_7
    :goto_2
    iget-object v1, p0, Lccsancom/mbridge/msdk/video/module/a/a/o;->h:Lccsancom/mbridge/msdk/video/module/a/a;

    invoke-interface {v1, p1, p2}, Lccsancom/mbridge/msdk/video/module/a/a;->a(ILjava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 133
    goto :goto_3

    .line 131
    :catchall_0
    move-exception p1

    .line 132
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2, p1}, Lccsancom/mbridge/msdk/foundation/tools/q;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 134
    :goto_3
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_7
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_7
    .end packed-switch
.end method
