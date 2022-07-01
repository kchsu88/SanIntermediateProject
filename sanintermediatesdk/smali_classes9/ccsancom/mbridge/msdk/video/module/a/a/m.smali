.class public final Lccsancom/mbridge/msdk/video/module/a/a/m;
.super Lccsancom/mbridge/msdk/video/module/a/a/o;
.source "VideoViewDefaultListener.java"


# instance fields
.field private k:Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;

.field private l:Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;

.field private m:I

.field private n:Ljava/util/Timer;

.field private o:Lccsanandroid/os/Handler;

.field private p:Z

.field private q:I


# direct methods
.method public constructor <init>(Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;Lccsancom/mbridge/msdk/videocommon/b/c;Lccsancom/mbridge/msdk/videocommon/download/a;Ljava/lang/String;Ljava/lang/String;IILccsancom/mbridge/msdk/video/module/a/a;DIZ)V
    .locals 14

    .line 38
    move-object v11, p0

    move-object v12, p1

    move-object/from16 v13, p2

    move-object v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    move-object/from16 v3, p5

    move-object/from16 v4, p6

    move-object/from16 v5, p7

    move-object/from16 v6, p10

    move-wide/from16 v7, p11

    move/from16 v9, p13

    move/from16 v10, p14

    invoke-direct/range {v0 .. v10}, Lccsancom/mbridge/msdk/video/module/a/a/o;-><init>(Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;Lccsancom/mbridge/msdk/videocommon/b/c;Lccsancom/mbridge/msdk/videocommon/download/a;Ljava/lang/String;Ljava/lang/String;Lccsancom/mbridge/msdk/video/module/a/a;DIZ)V

    .line 31
    new-instance v0, Lccsanandroid/os/Handler;

    invoke-direct {v0}, Lccsanandroid/os/Handler;-><init>()V

    iput-object v0, v11, Lccsancom/mbridge/msdk/video/module/a/a/m;->o:Lccsanandroid/os/Handler;

    .line 33
    const/4 v0, 0x0

    iput-boolean v0, v11, Lccsancom/mbridge/msdk/video/module/a/a/m;->p:Z

    .line 39
    iput-object v12, v11, Lccsancom/mbridge/msdk/video/module/a/a/m;->k:Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;

    .line 40
    iput-object v13, v11, Lccsancom/mbridge/msdk/video/module/a/a/m;->l:Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;

    .line 41
    move/from16 v1, p8

    iput v1, v11, Lccsancom/mbridge/msdk/video/module/a/a/m;->q:I

    .line 42
    move/from16 v1, p9

    iput v1, v11, Lccsancom/mbridge/msdk/video/module/a/a/m;->m:I

    .line 43
    if-eqz v12, :cond_1

    .line 44
    invoke-virtual {p1}, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;->getVideoSkipTime()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, v11, Lccsancom/mbridge/msdk/video/module/a/a/m;->p:Z

    .line 46
    :cond_1
    if-eqz v12, :cond_2

    if-nez v13, :cond_3

    .line 47
    :cond_2
    iput-boolean v0, v11, Lccsancom/mbridge/msdk/video/module/a/a/m;->a:Z

    .line 49
    :cond_3
    return-void
.end method

.method static synthetic a(Lccsancom/mbridge/msdk/video/module/a/a/m;)Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;
    .locals 0

    .line 20
    iget-object p0, p0, Lccsancom/mbridge/msdk/video/module/a/a/m;->l:Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;

    return-object p0
.end method

.method static synthetic b(Lccsancom/mbridge/msdk/video/module/a/a/m;)Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;
    .locals 0

    .line 20
    iget-object p0, p0, Lccsancom/mbridge/msdk/video/module/a/a/m;->k:Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;

    return-object p0
.end method

.method static synthetic c(Lccsancom/mbridge/msdk/video/module/a/a/m;)Lccsanandroid/os/Handler;
    .locals 0

    .line 20
    iget-object p0, p0, Lccsancom/mbridge/msdk/video/module/a/a/m;->o:Lccsanandroid/os/Handler;

    return-object p0
.end method

.method private i()V
    .locals 1

    .line 167
    :try_start_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/module/a/a/m;->n:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 168
    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 169
    const/4 v0, 0x0

    iput-object v0, p0, Lccsancom/mbridge/msdk/video/module/a/a/m;->n:Ljava/util/Timer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 173
    :cond_0
    goto :goto_0

    .line 171
    :catch_0
    move-exception v0

    .line 172
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 174
    :goto_0
    return-void
.end method


# virtual methods
.method public final a(ILjava/lang/Object;)V
    .locals 6

    .line 53
    iget-boolean v0, p0, Lccsancom/mbridge/msdk/video/module/a/a/m;->a:Z

    if-eqz v0, :cond_8

    .line 54
    const/4 v0, -0x1

    const/4 v1, 0x3

    const/4 v2, 0x1

    const/4 v3, 0x2

    const/4 v4, 0x0

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_3

    .line 113
    :pswitch_1
    if-eqz p2, :cond_8

    instance-of v0, p2, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView$a;

    if-eqz v0, :cond_8

    .line 114
    move-object v0, p2

    check-cast v0, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView$a;

    .line 115
    iget-object v1, p0, Lccsancom/mbridge/msdk/video/module/a/a/m;->l:Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;

    invoke-virtual {v1}, Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;->getVideoInteractiveType()I

    move-result v1

    .line 116
    if-ltz v1, :cond_0

    iget v5, v0, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView$a;->a:I

    if-lt v5, v1, :cond_0

    .line 117
    iget-object v1, p0, Lccsancom/mbridge/msdk/video/module/a/a/m;->l:Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;

    invoke-virtual {v1, v2}, Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;->showVideoClickView(I)V

    .line 118
    iget-object v1, p0, Lccsancom/mbridge/msdk/video/module/a/a/m;->k:Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;

    invoke-virtual {v1, v4, v2}, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;->soundOperate(II)V

    .line 120
    :cond_0
    iget-boolean v1, v0, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView$a;->c:Z

    iput-boolean v1, p0, Lccsancom/mbridge/msdk/video/module/a/a/m;->p:Z

    .line 121
    iget v1, p0, Lccsancom/mbridge/msdk/video/module/a/a/m;->m:I

    if-ltz v1, :cond_1

    iget v0, v0, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView$a;->a:I

    iget v1, p0, Lccsancom/mbridge/msdk/video/module/a/a/m;->m:I

    if-lt v0, v1, :cond_1

    iget-boolean v0, p0, Lccsancom/mbridge/msdk/video/module/a/a/m;->p:Z

    if-nez v0, :cond_1

    .line 122
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/module/a/a/m;->k:Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;

    invoke-virtual {v0, v4, v3}, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;->closeVideoOperate(II)V

    .line 123
    iput-boolean v2, p0, Lccsancom/mbridge/msdk/video/module/a/a/m;->p:Z

    .line 125
    :cond_1
    goto/16 :goto_3

    .line 138
    :pswitch_2
    iget-boolean v0, p0, Lccsancom/mbridge/msdk/video/module/a/a/m;->p:Z

    if-nez v0, :cond_8

    .line 139
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/module/a/a/m;->k:Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;

    invoke-virtual {v0, v4, v2}, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;->closeVideoOperate(II)V

    goto/16 :goto_3

    .line 134
    :pswitch_3
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/module/a/a/m;->k:Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;

    invoke-virtual {v0, v4, v3}, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;->closeVideoOperate(II)V

    .line 135
    goto/16 :goto_3

    .line 80
    :pswitch_4
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/module/a/a/m;->k:Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;

    invoke-virtual {v0, v1}, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;->videoOperate(I)V

    .line 81
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/module/a/a/m;->k:Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;->dismissAllAlert()V

    .line 82
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/module/a/a/m;->b:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getVideo_end_type()I

    move-result v0

    if-eq v0, v1, :cond_2

    .line 83
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/module/a/a/m;->k:Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;->setVisibility(I)V

    goto :goto_0

    .line 85
    :cond_2
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/module/a/a/m;->k:Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;

    invoke-virtual {v0, v4}, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;->setVisibility(I)V

    .line 87
    :goto_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/module/a/a/m;->l:Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;

    iget-object v1, p0, Lccsancom/mbridge/msdk/video/module/a/a/m;->b:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getVideo_end_type()I

    move-result v1

    invoke-virtual {v0, v1}, Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;->showEndcard(I)V

    .line 88
    goto/16 :goto_3

    .line 129
    :pswitch_5
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/module/a/a/m;->k:Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;

    invoke-virtual {v0, v4, v3}, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;->soundOperate(II)V

    .line 130
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/module/a/a/m;->k:Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;

    invoke-virtual {v0, v4, v3}, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;->progressOperate(II)V

    .line 131
    goto/16 :goto_3

    .line 143
    :pswitch_6
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/module/a/a/m;->l:Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;

    if-eqz v0, :cond_4

    .line 144
    invoke-virtual {v0}, Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;->showAlertWebView()Z

    move-result v0

    if-nez v0, :cond_3

    .line 145
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/module/a/a/m;->k:Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;

    if-eqz v0, :cond_8

    .line 146
    invoke-virtual {v0}, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;->showAlertView()V

    goto/16 :goto_3

    .line 149
    :cond_3
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/module/a/a/m;->k:Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;

    if-eqz v0, :cond_8

    .line 150
    invoke-virtual {v0}, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;->alertWebViewShowed()V

    goto/16 :goto_3

    .line 154
    :cond_4
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/module/a/a/m;->k:Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;

    if-eqz v0, :cond_8

    .line 155
    invoke-virtual {v0}, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;->showAlertView()V

    goto/16 :goto_3

    .line 101
    :pswitch_7
    if-eqz p2, :cond_8

    instance-of v1, p2, Ljava/lang/Integer;

    if-eqz v1, :cond_8

    .line 102
    move-object v1, p2

    check-cast v1, Ljava/lang/Integer;

    .line 103
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, v2, :cond_5

    .line 104
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_1

    .line 106
    :cond_5
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 108
    :goto_1
    iget-object v2, p0, Lccsancom/mbridge/msdk/video/module/a/a/m;->k:Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v2, v1, v0}, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;->soundOperate(II)V

    .line 109
    goto/16 :goto_3

    .line 91
    :pswitch_8
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/module/a/a/m;->k:Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;->dismissAllAlert()V

    .line 92
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/module/a/a/m;->k:Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;

    invoke-virtual {v0, v1}, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;->videoOperate(I)V

    .line 93
    iget v0, p0, Lccsancom/mbridge/msdk/video/module/a/a/m;->q:I

    if-ne v0, v3, :cond_6

    iget-object v0, p0, Lccsancom/mbridge/msdk/video/module/a/a/m;->l:Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;->endCardShowing()Z

    move-result v0

    if-nez v0, :cond_6

    .line 94
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/module/a/a/m;->l:Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;

    iget-object v1, p0, Lccsancom/mbridge/msdk/video/module/a/a/m;->b:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getVideo_end_type()I

    move-result v1

    invoke-virtual {v0, v1}, Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;->showEndcard(I)V

    goto :goto_3

    .line 96
    :cond_6
    const/16 p1, 0x10

    .line 98
    goto :goto_3

    .line 56
    :pswitch_9
    iget-object v1, p0, Lccsancom/mbridge/msdk/video/module/a/a/m;->l:Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;

    invoke-virtual {v1}, Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;->endCardShowing()Z

    move-result v1

    if-nez v1, :cond_8

    .line 57
    iget-object v1, p0, Lccsancom/mbridge/msdk/video/module/a/a/m;->l:Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;

    invoke-virtual {v1}, Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;->getVideoInteractiveType()I

    move-result v1

    packed-switch v1, :pswitch_data_1

    goto :goto_3

    .line 64
    :pswitch_a
    iget-object v1, p0, Lccsancom/mbridge/msdk/video/module/a/a/m;->l:Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;

    invoke-virtual {v1}, Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;->isLast()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 65
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/module/a/a/m;->l:Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;

    invoke-virtual {v0, v2}, Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;->showVideoClickView(I)V

    .line 66
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/module/a/a/m;->k:Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;

    invoke-virtual {v0, v4, v2}, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;->soundOperate(II)V

    .line 67
    nop

    .line 1178
    :try_start_0
    invoke-direct {p0}, Lccsancom/mbridge/msdk/video/module/a/a/m;->i()V

    .line 1179
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lccsancom/mbridge/msdk/video/module/a/a/m;->n:Ljava/util/Timer;

    .line 1180
    new-instance v0, Lccsancom/mbridge/msdk/video/module/a/a/m$1;

    invoke-direct {v0, p0}, Lccsancom/mbridge/msdk/video/module/a/a/m$1;-><init>(Lccsancom/mbridge/msdk/video/module/a/a/m;)V

    .line 1198
    iget-object v1, p0, Lccsancom/mbridge/msdk/video/module/a/a/m;->n:Ljava/util/Timer;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v1, v0, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1201
    goto :goto_2

    .line 1199
    :catch_0
    move-exception v0

    .line 1200
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 67
    :goto_2
    goto :goto_3

    .line 69
    :cond_7
    iget-object v1, p0, Lccsancom/mbridge/msdk/video/module/a/a/m;->l:Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;

    invoke-virtual {v1, v0}, Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;->showVideoClickView(I)V

    .line 70
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/module/a/a/m;->k:Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;

    invoke-virtual {v0, v4, v3}, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;->soundOperate(II)V

    .line 71
    invoke-direct {p0}, Lccsancom/mbridge/msdk/video/module/a/a/m;->i()V

    goto :goto_3

    .line 59
    :pswitch_b
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/module/a/a/m;->l:Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;->miniCardLoaded()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 60
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/module/a/a/m;->l:Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;

    invoke-virtual {v0, v3}, Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;->showVideoClickView(I)V

    .line 161
    :cond_8
    :goto_3
    invoke-super {p0, p1, p2}, Lccsancom/mbridge/msdk/video/module/a/a/o;->a(ILjava/lang/Object;)V

    .line 162
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_9
        :pswitch_8
        :pswitch_0
        :pswitch_0
        :pswitch_7
        :pswitch_8
        :pswitch_0
        :pswitch_6
        :pswitch_0
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch -0x2
        :pswitch_b
        :pswitch_a
    .end packed-switch
.end method
