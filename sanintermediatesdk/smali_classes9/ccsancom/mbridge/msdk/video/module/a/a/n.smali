.class public final Lccsancom/mbridge/msdk/video/module/a/a/n;
.super Lccsancom/mbridge/msdk/video/module/a/a/o;
.source "VideoViewJSListener.java"


# instance fields
.field private k:Lccsancom/mbridge/msdk/video/signal/factory/IJSFactory;

.field private l:I

.field private m:Z


# direct methods
.method public constructor <init>(Lccsancom/mbridge/msdk/video/signal/factory/IJSFactory;Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;Lccsancom/mbridge/msdk/videocommon/b/c;Lccsancom/mbridge/msdk/videocommon/download/a;Ljava/lang/String;Ljava/lang/String;IILccsancom/mbridge/msdk/video/module/a/a;DIZ)V
    .locals 13

    .line 23
    move-object v11, p0

    move-object v12, p1

    move-object v0, p0

    move-object v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    move-object/from16 v5, p6

    move-object/from16 v6, p9

    move-wide/from16 v7, p10

    move/from16 v9, p12

    move/from16 v10, p13

    invoke-direct/range {v0 .. v10}, Lccsancom/mbridge/msdk/video/module/a/a/o;-><init>(Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;Lccsancom/mbridge/msdk/videocommon/b/c;Lccsancom/mbridge/msdk/videocommon/download/a;Ljava/lang/String;Ljava/lang/String;Lccsancom/mbridge/msdk/video/module/a/a;DIZ)V

    .line 20
    const/4 v0, 0x0

    iput-boolean v0, v11, Lccsancom/mbridge/msdk/video/module/a/a/n;->m:Z

    .line 24
    iput-object v12, v11, Lccsancom/mbridge/msdk/video/module/a/a/n;->k:Lccsancom/mbridge/msdk/video/signal/factory/IJSFactory;

    .line 25
    move/from16 v1, p7

    iput v1, v11, Lccsancom/mbridge/msdk/video/module/a/a/n;->l:I

    .line 26
    if-nez p8, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, v11, Lccsancom/mbridge/msdk/video/module/a/a/n;->m:Z

    .line 27
    if-nez v12, :cond_1

    .line 28
    iput-boolean v0, v11, Lccsancom/mbridge/msdk/video/module/a/a/n;->a:Z

    .line 30
    :cond_1
    return-void
.end method


# virtual methods
.method public final a(ILjava/lang/Object;)V
    .locals 8

    .line 34
    iget-boolean v0, p0, Lccsancom/mbridge/msdk/video/module/a/a/n;->a:Z

    if-eqz v0, :cond_b

    .line 35
    const/4 v0, -0x1

    const/16 v1, 0x8

    const-string v2, ""

    const/4 v3, 0x3

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x2

    sparse-switch p1, :sswitch_data_0

    goto/16 :goto_7

    .line 150
    :sswitch_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/module/a/a/n;->k:Lccsancom/mbridge/msdk/video/signal/factory/IJSFactory;

    invoke-interface {v0}, Lccsancom/mbridge/msdk/video/signal/factory/IJSFactory;->getJSContainerModule()Lccsancom/mbridge/msdk/video/signal/e;

    move-result-object v0

    invoke-interface {v0}, Lccsancom/mbridge/msdk/video/signal/e;->hideAlertWebview()V

    goto/16 :goto_7

    .line 143
    :sswitch_1
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/module/a/a/n;->k:Lccsancom/mbridge/msdk/video/signal/factory/IJSFactory;

    invoke-interface {v0}, Lccsancom/mbridge/msdk/video/signal/factory/IJSFactory;->getJSNotifyProxy()Lccsancom/mbridge/msdk/video/signal/f;

    move-result-object v0

    .line 144
    const/16 v1, 0x7b

    if-ne p1, v1, :cond_0

    .line 145
    const/4 v1, 0x7

    goto :goto_0

    .line 146
    :cond_0
    const/4 v1, 0x6

    :goto_0
    nop

    .line 143
    invoke-interface {v0, v1, v2}, Lccsancom/mbridge/msdk/video/signal/f;->a(ILjava/lang/String;)V

    .line 147
    goto/16 :goto_7

    .line 129
    :sswitch_2
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/module/a/a/n;->k:Lccsancom/mbridge/msdk/video/signal/factory/IJSFactory;

    invoke-interface {v0}, Lccsancom/mbridge/msdk/video/signal/factory/IJSFactory;->getJSVideoModule()Lccsancom/mbridge/msdk/video/signal/i;

    move-result-object v0

    .line 130
    iget-object v1, p0, Lccsancom/mbridge/msdk/video/module/a/a/n;->k:Lccsancom/mbridge/msdk/video/signal/factory/IJSFactory;

    invoke-interface {v1}, Lccsancom/mbridge/msdk/video/signal/factory/IJSFactory;->getJSContainerModule()Lccsancom/mbridge/msdk/video/signal/e;

    move-result-object v1

    invoke-interface {v0}, Lccsancom/mbridge/msdk/video/signal/i;->getBorderViewWidth()I

    move-result v2

    invoke-interface {v0}, Lccsancom/mbridge/msdk/video/signal/i;->getBorderViewHeight()I

    move-result v3

    invoke-interface {v0}, Lccsancom/mbridge/msdk/video/signal/i;->getBorderViewRadius()I

    move-result v0

    invoke-interface {v1, v2, v3, v0}, Lccsancom/mbridge/msdk/video/signal/e;->configurationChanged(III)V

    .line 131
    goto/16 :goto_7

    .line 123
    :sswitch_3
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/module/a/a/n;->k:Lccsancom/mbridge/msdk/video/signal/factory/IJSFactory;

    invoke-interface {v0}, Lccsancom/mbridge/msdk/video/signal/factory/IJSFactory;->getJSCommon()Lccsancom/mbridge/msdk/video/signal/c;

    move-result-object v0

    invoke-interface {v0}, Lccsancom/mbridge/msdk/video/signal/c;->g()I

    move-result v0

    if-ne v0, v6, :cond_b

    .line 124
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/module/a/a/n;->k:Lccsancom/mbridge/msdk/video/signal/factory/IJSFactory;

    invoke-interface {v0}, Lccsancom/mbridge/msdk/video/signal/factory/IJSFactory;->getJSVideoModule()Lccsancom/mbridge/msdk/video/signal/i;

    move-result-object v0

    .line 125
    iget-object v1, p0, Lccsancom/mbridge/msdk/video/module/a/a/n;->k:Lccsancom/mbridge/msdk/video/signal/factory/IJSFactory;

    invoke-interface {v1}, Lccsancom/mbridge/msdk/video/signal/factory/IJSFactory;->getJSContainerModule()Lccsancom/mbridge/msdk/video/signal/e;

    move-result-object v2

    invoke-interface {v0}, Lccsancom/mbridge/msdk/video/signal/i;->getBorderViewTop()I

    move-result v3

    invoke-interface {v0}, Lccsancom/mbridge/msdk/video/signal/i;->getBorderViewLeft()I

    move-result v4

    invoke-interface {v0}, Lccsancom/mbridge/msdk/video/signal/i;->getBorderViewWidth()I

    move-result v5

    invoke-interface {v0}, Lccsancom/mbridge/msdk/video/signal/i;->getBorderViewHeight()I

    move-result v6

    invoke-interface {v0}, Lccsancom/mbridge/msdk/video/signal/i;->getBorderViewRadius()I

    move-result v7

    invoke-interface/range {v2 .. v7}, Lccsancom/mbridge/msdk/video/signal/e;->showMiniCard(IIIII)V

    .line 126
    goto/16 :goto_7

    .line 102
    :sswitch_4
    if-eqz p2, :cond_b

    instance-of v0, p2, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView$a;

    if-eqz v0, :cond_b

    .line 103
    move-object v0, p2

    check-cast v0, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView$a;

    .line 104
    iput-boolean v5, p0, Lccsancom/mbridge/msdk/video/module/a/a/n;->m:Z

    .line 105
    iget-object v1, p0, Lccsancom/mbridge/msdk/video/module/a/a/n;->k:Lccsancom/mbridge/msdk/video/signal/factory/IJSFactory;

    invoke-interface {v1}, Lccsancom/mbridge/msdk/video/signal/factory/IJSFactory;->getJSNotifyProxy()Lccsancom/mbridge/msdk/video/signal/f;

    move-result-object v1

    invoke-interface {v1, v0}, Lccsancom/mbridge/msdk/video/signal/f;->a(Lccsancom/mbridge/msdk/video/module/MBridgeVideoView$a;)V

    .line 106
    goto/16 :goto_7

    .line 118
    :sswitch_5
    iget-boolean v0, p0, Lccsancom/mbridge/msdk/video/module/a/a/n;->m:Z

    if-nez v0, :cond_b

    .line 119
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/module/a/a/n;->k:Lccsancom/mbridge/msdk/video/signal/factory/IJSFactory;

    invoke-interface {v0}, Lccsancom/mbridge/msdk/video/signal/factory/IJSFactory;->getJSVideoModule()Lccsancom/mbridge/msdk/video/signal/i;

    move-result-object v0

    invoke-interface {v0, v4, v5}, Lccsancom/mbridge/msdk/video/signal/i;->closeVideoOperate(II)V

    goto/16 :goto_7

    .line 112
    :sswitch_6
    iget-object v1, p0, Lccsancom/mbridge/msdk/video/module/a/a/n;->k:Lccsancom/mbridge/msdk/video/signal/factory/IJSFactory;

    invoke-interface {v1}, Lccsancom/mbridge/msdk/video/signal/factory/IJSFactory;->getJSVideoModule()Lccsancom/mbridge/msdk/video/signal/i;

    move-result-object v1

    invoke-interface {v1}, Lccsancom/mbridge/msdk/video/signal/i;->isH5Canvas()Z

    move-result v1

    if-nez v1, :cond_1

    .line 113
    iget-object v1, p0, Lccsancom/mbridge/msdk/video/module/a/a/n;->k:Lccsancom/mbridge/msdk/video/signal/factory/IJSFactory;

    invoke-interface {v1}, Lccsancom/mbridge/msdk/video/signal/factory/IJSFactory;->getJSVideoModule()Lccsancom/mbridge/msdk/video/signal/i;

    move-result-object v1

    invoke-interface {v1, v4, v6}, Lccsancom/mbridge/msdk/video/signal/i;->closeVideoOperate(II)V

    .line 115
    :cond_1
    iget-object v1, p0, Lccsancom/mbridge/msdk/video/module/a/a/n;->k:Lccsancom/mbridge/msdk/video/signal/factory/IJSFactory;

    invoke-interface {v1}, Lccsancom/mbridge/msdk/video/signal/factory/IJSFactory;->getJSNotifyProxy()Lccsancom/mbridge/msdk/video/signal/f;

    move-result-object v1

    invoke-interface {v1, v0}, Lccsancom/mbridge/msdk/video/signal/f;->a(I)V

    .line 116
    goto/16 :goto_7

    .line 43
    :sswitch_7
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/module/a/a/n;->k:Lccsancom/mbridge/msdk/video/signal/factory/IJSFactory;

    invoke-interface {v0}, Lccsancom/mbridge/msdk/video/signal/factory/IJSFactory;->getJSVideoModule()Lccsancom/mbridge/msdk/video/signal/i;

    move-result-object v0

    invoke-interface {v0, v3}, Lccsancom/mbridge/msdk/video/signal/i;->videoOperate(I)V

    .line 44
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/module/a/a/n;->b:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getVideo_end_type()I

    move-result v0

    if-eq v0, v3, :cond_2

    .line 45
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/module/a/a/n;->k:Lccsancom/mbridge/msdk/video/signal/factory/IJSFactory;

    invoke-interface {v0}, Lccsancom/mbridge/msdk/video/signal/factory/IJSFactory;->getJSVideoModule()Lccsancom/mbridge/msdk/video/signal/i;

    move-result-object v0

    invoke-interface {v0, v1}, Lccsancom/mbridge/msdk/video/signal/i;->setVisible(I)V

    goto :goto_1

    .line 47
    :cond_2
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/module/a/a/n;->k:Lccsancom/mbridge/msdk/video/signal/factory/IJSFactory;

    invoke-interface {v0}, Lccsancom/mbridge/msdk/video/signal/factory/IJSFactory;->getJSVideoModule()Lccsancom/mbridge/msdk/video/signal/i;

    move-result-object v0

    invoke-interface {v0, v4}, Lccsancom/mbridge/msdk/video/signal/i;->setVisible(I)V

    .line 49
    :goto_1
    nop

    .line 50
    const/16 v0, 0xc

    if-ne p1, v0, :cond_3

    .line 51
    const/4 v5, 0x2

    .line 53
    :cond_3
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/module/a/a/n;->k:Lccsancom/mbridge/msdk/video/signal/factory/IJSFactory;

    invoke-interface {v0}, Lccsancom/mbridge/msdk/video/signal/factory/IJSFactory;->getJSNotifyProxy()Lccsancom/mbridge/msdk/video/signal/f;

    move-result-object v0

    invoke-interface {v0, v5}, Lccsancom/mbridge/msdk/video/signal/f;->a(I)V

    .line 54
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/module/a/a/n;->k:Lccsancom/mbridge/msdk/video/signal/factory/IJSFactory;

    invoke-interface {v0}, Lccsancom/mbridge/msdk/video/signal/factory/IJSFactory;->getJSCommon()Lccsancom/mbridge/msdk/video/signal/c;

    move-result-object v0

    invoke-interface {v0}, Lccsancom/mbridge/msdk/video/signal/c;->g()I

    move-result v0

    if-ne v0, v6, :cond_4

    .line 55
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/module/a/a/n;->k:Lccsancom/mbridge/msdk/video/signal/factory/IJSFactory;

    invoke-interface {v0}, Lccsancom/mbridge/msdk/video/signal/factory/IJSFactory;->getJSVideoModule()Lccsancom/mbridge/msdk/video/signal/i;

    move-result-object v0

    invoke-interface {v0, v4}, Lccsancom/mbridge/msdk/video/signal/i;->setVisible(I)V

    .line 56
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/module/a/a/n;->k:Lccsancom/mbridge/msdk/video/signal/factory/IJSFactory;

    invoke-interface {v0}, Lccsancom/mbridge/msdk/video/signal/factory/IJSFactory;->getJSVideoModule()Lccsancom/mbridge/msdk/video/signal/i;

    move-result-object v0

    .line 57
    iget-object v1, p0, Lccsancom/mbridge/msdk/video/module/a/a/n;->k:Lccsancom/mbridge/msdk/video/signal/factory/IJSFactory;

    invoke-interface {v1}, Lccsancom/mbridge/msdk/video/signal/factory/IJSFactory;->getJSContainerModule()Lccsancom/mbridge/msdk/video/signal/e;

    move-result-object v2

    invoke-interface {v0}, Lccsancom/mbridge/msdk/video/signal/i;->getBorderViewTop()I

    move-result v3

    invoke-interface {v0}, Lccsancom/mbridge/msdk/video/signal/i;->getBorderViewLeft()I

    move-result v4

    invoke-interface {v0}, Lccsancom/mbridge/msdk/video/signal/i;->getBorderViewWidth()I

    move-result v5

    invoke-interface {v0}, Lccsancom/mbridge/msdk/video/signal/i;->getBorderViewHeight()I

    move-result v6

    invoke-interface {v0}, Lccsancom/mbridge/msdk/video/signal/i;->getBorderViewRadius()I

    move-result v7

    invoke-interface/range {v2 .. v7}, Lccsancom/mbridge/msdk/video/signal/e;->showMiniCard(IIIII)V

    .line 58
    goto :goto_2

    .line 59
    :cond_4
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/module/a/a/n;->k:Lccsancom/mbridge/msdk/video/signal/factory/IJSFactory;

    invoke-interface {v0}, Lccsancom/mbridge/msdk/video/signal/factory/IJSFactory;->getJSContainerModule()Lccsancom/mbridge/msdk/video/signal/e;

    move-result-object v0

    iget-object v1, p0, Lccsancom/mbridge/msdk/video/module/a/a/n;->b:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getVideo_end_type()I

    move-result v1

    invoke-interface {v0, v1}, Lccsancom/mbridge/msdk/video/signal/e;->showEndcard(I)V

    .line 62
    :goto_2
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/module/a/a/n;->k:Lccsancom/mbridge/msdk/video/signal/factory/IJSFactory;

    invoke-interface {v0}, Lccsancom/mbridge/msdk/video/signal/factory/IJSFactory;->getJSVideoModule()Lccsancom/mbridge/msdk/video/signal/i;

    move-result-object v0

    invoke-interface {v0}, Lccsancom/mbridge/msdk/video/signal/i;->dismissAllAlert()V

    .line 63
    goto/16 :goto_7

    .line 109
    :sswitch_8
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/module/a/a/n;->k:Lccsancom/mbridge/msdk/video/signal/factory/IJSFactory;

    invoke-interface {v0}, Lccsancom/mbridge/msdk/video/signal/factory/IJSFactory;->getJSNotifyProxy()Lccsancom/mbridge/msdk/video/signal/f;

    move-result-object v0

    invoke-interface {v0, v4}, Lccsancom/mbridge/msdk/video/signal/f;->a(I)V

    .line 110
    goto/16 :goto_7

    .line 134
    :sswitch_9
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/module/a/a/n;->k:Lccsancom/mbridge/msdk/video/signal/factory/IJSFactory;

    invoke-interface {v0}, Lccsancom/mbridge/msdk/video/signal/factory/IJSFactory;->getJSContainerModule()Lccsancom/mbridge/msdk/video/signal/e;

    move-result-object v0

    invoke-interface {v0}, Lccsancom/mbridge/msdk/video/signal/e;->showAlertWebView()Z

    move-result v0

    if-nez v0, :cond_5

    .line 135
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/module/a/a/n;->k:Lccsancom/mbridge/msdk/video/signal/factory/IJSFactory;

    invoke-interface {v0}, Lccsancom/mbridge/msdk/video/signal/factory/IJSFactory;->getJSVideoModule()Lccsancom/mbridge/msdk/video/signal/i;

    move-result-object v0

    invoke-interface {v0}, Lccsancom/mbridge/msdk/video/signal/i;->showAlertView()V

    goto/16 :goto_7

    .line 137
    :cond_5
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/module/a/a/n;->k:Lccsancom/mbridge/msdk/video/signal/factory/IJSFactory;

    invoke-interface {v0}, Lccsancom/mbridge/msdk/video/signal/factory/IJSFactory;->getJSVideoModule()Lccsancom/mbridge/msdk/video/signal/i;

    move-result-object v0

    invoke-interface {v0}, Lccsancom/mbridge/msdk/video/signal/i;->alertWebViewShowed()V

    .line 139
    goto/16 :goto_7

    .line 89
    :sswitch_a
    if-eqz p2, :cond_b

    instance-of v1, p2, Ljava/lang/Integer;

    if-eqz v1, :cond_b

    .line 90
    move-object v1, p2

    check-cast v1, Ljava/lang/Integer;

    .line 91
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, v5, :cond_6

    .line 92
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_3

    .line 94
    :cond_6
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 96
    :goto_3
    iget-object v3, p0, Lccsancom/mbridge/msdk/video/module/a/a/n;->k:Lccsancom/mbridge/msdk/video/signal/factory/IJSFactory;

    invoke-interface {v3}, Lccsancom/mbridge/msdk/video/signal/factory/IJSFactory;->getJSVideoModule()Lccsancom/mbridge/msdk/video/signal/i;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-interface {v3, v4, v0}, Lccsancom/mbridge/msdk/video/signal/i;->soundOperate(II)V

    .line 97
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/module/a/a/n;->k:Lccsancom/mbridge/msdk/video/signal/factory/IJSFactory;

    invoke-interface {v0}, Lccsancom/mbridge/msdk/video/signal/factory/IJSFactory;->getJSNotifyProxy()Lccsancom/mbridge/msdk/video/signal/f;

    move-result-object v0

    const/4 v3, 0x5

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v3, v1}, Lccsancom/mbridge/msdk/video/signal/f;->a(ILjava/lang/String;)V

    .line 98
    goto/16 :goto_7

    .line 66
    :sswitch_b
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/module/a/a/n;->k:Lccsancom/mbridge/msdk/video/signal/factory/IJSFactory;

    invoke-interface {v0}, Lccsancom/mbridge/msdk/video/signal/factory/IJSFactory;->getJSVideoModule()Lccsancom/mbridge/msdk/video/signal/i;

    move-result-object v0

    invoke-interface {v0}, Lccsancom/mbridge/msdk/video/signal/i;->dismissAllAlert()V

    .line 67
    if-ne p1, v6, :cond_7

    .line 68
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/module/a/a/n;->k:Lccsancom/mbridge/msdk/video/signal/factory/IJSFactory;

    invoke-interface {v0}, Lccsancom/mbridge/msdk/video/signal/factory/IJSFactory;->getJSNotifyProxy()Lccsancom/mbridge/msdk/video/signal/f;

    move-result-object v0

    invoke-interface {v0, v6, v2}, Lccsancom/mbridge/msdk/video/signal/f;->a(ILjava/lang/String;)V

    .line 70
    :cond_7
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/module/a/a/n;->k:Lccsancom/mbridge/msdk/video/signal/factory/IJSFactory;

    invoke-interface {v0}, Lccsancom/mbridge/msdk/video/signal/factory/IJSFactory;->getJSVideoModule()Lccsancom/mbridge/msdk/video/signal/i;

    move-result-object v0

    invoke-interface {v0, v3}, Lccsancom/mbridge/msdk/video/signal/i;->videoOperate(I)V

    .line 71
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/module/a/a/n;->k:Lccsancom/mbridge/msdk/video/signal/factory/IJSFactory;

    invoke-interface {v0}, Lccsancom/mbridge/msdk/video/signal/factory/IJSFactory;->getJSCommon()Lccsancom/mbridge/msdk/video/signal/c;

    move-result-object v0

    invoke-interface {v0}, Lccsancom/mbridge/msdk/video/signal/c;->g()I

    move-result v0

    if-ne v0, v6, :cond_8

    .line 72
    goto :goto_5

    .line 74
    :cond_8
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/module/a/a/n;->b:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getVideo_end_type()I

    move-result v0

    if-eq v0, v3, :cond_9

    .line 75
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/module/a/a/n;->k:Lccsancom/mbridge/msdk/video/signal/factory/IJSFactory;

    invoke-interface {v0}, Lccsancom/mbridge/msdk/video/signal/factory/IJSFactory;->getJSVideoModule()Lccsancom/mbridge/msdk/video/signal/i;

    move-result-object v0

    invoke-interface {v0, v1}, Lccsancom/mbridge/msdk/video/signal/i;->setVisible(I)V

    goto :goto_4

    .line 77
    :cond_9
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/module/a/a/n;->k:Lccsancom/mbridge/msdk/video/signal/factory/IJSFactory;

    invoke-interface {v0}, Lccsancom/mbridge/msdk/video/signal/factory/IJSFactory;->getJSVideoModule()Lccsancom/mbridge/msdk/video/signal/i;

    move-result-object v0

    invoke-interface {v0, v4}, Lccsancom/mbridge/msdk/video/signal/i;->setVisible(I)V

    .line 80
    :goto_4
    iget v0, p0, Lccsancom/mbridge/msdk/video/module/a/a/n;->l:I

    if-ne v0, v6, :cond_a

    iget-object v0, p0, Lccsancom/mbridge/msdk/video/module/a/a/n;->k:Lccsancom/mbridge/msdk/video/signal/factory/IJSFactory;

    invoke-interface {v0}, Lccsancom/mbridge/msdk/video/signal/factory/IJSFactory;->getJSContainerModule()Lccsancom/mbridge/msdk/video/signal/e;

    move-result-object v0

    invoke-interface {v0}, Lccsancom/mbridge/msdk/video/signal/e;->endCardShowing()Z

    move-result v0

    if-nez v0, :cond_a

    .line 81
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/module/a/a/n;->k:Lccsancom/mbridge/msdk/video/signal/factory/IJSFactory;

    invoke-interface {v0}, Lccsancom/mbridge/msdk/video/signal/factory/IJSFactory;->getJSContainerModule()Lccsancom/mbridge/msdk/video/signal/e;

    move-result-object v0

    iget-object v1, p0, Lccsancom/mbridge/msdk/video/module/a/a/n;->b:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getVideo_end_type()I

    move-result v1

    invoke-interface {v0, v1}, Lccsancom/mbridge/msdk/video/signal/e;->showEndcard(I)V

    goto :goto_6

    .line 83
    :cond_a
    :goto_5
    const/16 p1, 0x10

    .line 86
    :goto_6
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/module/a/a/n;->k:Lccsancom/mbridge/msdk/video/signal/factory/IJSFactory;

    invoke-interface {v0}, Lccsancom/mbridge/msdk/video/signal/factory/IJSFactory;->getJSNotifyProxy()Lccsancom/mbridge/msdk/video/signal/f;

    move-result-object v0

    invoke-interface {v0, v5}, Lccsancom/mbridge/msdk/video/signal/f;->a(I)V

    .line 87
    goto :goto_7

    .line 37
    :sswitch_c
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/module/a/a/n;->k:Lccsancom/mbridge/msdk/video/signal/factory/IJSFactory;

    invoke-interface {v0}, Lccsancom/mbridge/msdk/video/signal/factory/IJSFactory;->getJSContainerModule()Lccsancom/mbridge/msdk/video/signal/e;

    move-result-object v0

    invoke-interface {v0}, Lccsancom/mbridge/msdk/video/signal/e;->endCardShowing()Z

    move-result v0

    if-nez v0, :cond_b

    .line 38
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/module/a/a/n;->k:Lccsancom/mbridge/msdk/video/signal/factory/IJSFactory;

    invoke-interface {v0}, Lccsancom/mbridge/msdk/video/signal/factory/IJSFactory;->getJSNotifyProxy()Lccsancom/mbridge/msdk/video/signal/f;

    move-result-object v0

    invoke-interface {v0, v5, v2}, Lccsancom/mbridge/msdk/video/signal/f;->a(ILjava/lang/String;)V

    .line 154
    :cond_b
    :goto_7
    invoke-super {p0, p1, p2}, Lccsancom/mbridge/msdk/video/module/a/a/o;->a(ILjava/lang/Object;)V

    .line 155
    return-void

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_c
        0x2 -> :sswitch_b
        0x5 -> :sswitch_a
        0x6 -> :sswitch_b
        0x8 -> :sswitch_9
        0xa -> :sswitch_8
        0xb -> :sswitch_7
        0xc -> :sswitch_7
        0xd -> :sswitch_6
        0xe -> :sswitch_5
        0xf -> :sswitch_4
        0x72 -> :sswitch_3
        0x74 -> :sswitch_2
        0x7b -> :sswitch_1
        0x7c -> :sswitch_1
        0x7d -> :sswitch_0
    .end sparse-switch
.end method
