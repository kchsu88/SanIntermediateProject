.class public final Lccsancom/mbridge/msdk/video/module/a/a/c;
.super Lccsancom/mbridge/msdk/video/module/a/a/d;
.source "ContainerViewJSListener.java"


# instance fields
.field private j:Lccsancom/mbridge/msdk/video/signal/factory/IJSFactory;


# direct methods
.method public constructor <init>(Lccsancom/mbridge/msdk/video/signal/factory/IJSFactory;Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;Lccsancom/mbridge/msdk/videocommon/b/c;Lccsancom/mbridge/msdk/videocommon/download/a;Ljava/lang/String;Ljava/lang/String;Lccsancom/mbridge/msdk/video/module/a/a;IZ)V
    .locals 11

    .line 16
    move-object v9, p0

    move-object v10, p1

    move-object v0, p0

    move-object v1, p2

    move-object v2, p4

    move-object v3, p3

    move-object/from16 v4, p5

    move-object/from16 v5, p6

    move-object/from16 v6, p7

    move/from16 v7, p8

    move/from16 v8, p9

    invoke-direct/range {v0 .. v8}, Lccsancom/mbridge/msdk/video/module/a/a/d;-><init>(Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;Lccsancom/mbridge/msdk/videocommon/download/a;Lccsancom/mbridge/msdk/videocommon/b/c;Ljava/lang/String;Ljava/lang/String;Lccsancom/mbridge/msdk/video/module/a/a;IZ)V

    .line 17
    iput-object v10, v9, Lccsancom/mbridge/msdk/video/module/a/a/c;->j:Lccsancom/mbridge/msdk/video/signal/factory/IJSFactory;

    .line 18
    if-nez v10, :cond_0

    .line 19
    const/4 v0, 0x0

    iput-boolean v0, v9, Lccsancom/mbridge/msdk/video/module/a/a/c;->a:Z

    .line 21
    :cond_0
    return-void
.end method


# virtual methods
.method public final a(ILjava/lang/Object;)V
    .locals 4

    .line 25
    iget-boolean v0, p0, Lccsancom/mbridge/msdk/video/module/a/a/c;->a:Z

    const/4 v1, -0x1

    if-eqz v0, :cond_1

    .line 26
    const/4 v0, 0x1

    sparse-switch p1, :sswitch_data_0

    goto/16 :goto_0

    .line 51
    :sswitch_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/module/a/a/c;->j:Lccsancom/mbridge/msdk/video/signal/factory/IJSFactory;

    invoke-interface {v0}, Lccsancom/mbridge/msdk/video/signal/factory/IJSFactory;->getJSVideoModule()Lccsancom/mbridge/msdk/video/signal/i;

    move-result-object v0

    .line 52
    iget-object v1, p0, Lccsancom/mbridge/msdk/video/module/a/a/c;->j:Lccsancom/mbridge/msdk/video/signal/factory/IJSFactory;

    invoke-interface {v1}, Lccsancom/mbridge/msdk/video/signal/factory/IJSFactory;->getJSContainerModule()Lccsancom/mbridge/msdk/video/signal/e;

    move-result-object v1

    invoke-interface {v0}, Lccsancom/mbridge/msdk/video/signal/i;->getBorderViewWidth()I

    move-result v2

    invoke-interface {v0}, Lccsancom/mbridge/msdk/video/signal/i;->getBorderViewHeight()I

    move-result v3

    invoke-interface {v0}, Lccsancom/mbridge/msdk/video/signal/i;->getBorderViewRadius()I

    move-result v0

    invoke-interface {v1, v2, v3, v0}, Lccsancom/mbridge/msdk/video/signal/e;->resizeMiniCard(III)V

    .line 53
    goto/16 :goto_0

    .line 28
    :sswitch_1
    iget-object v1, p0, Lccsancom/mbridge/msdk/video/module/a/a/c;->j:Lccsancom/mbridge/msdk/video/signal/factory/IJSFactory;

    invoke-interface {v1}, Lccsancom/mbridge/msdk/video/signal/factory/IJSFactory;->getJSVideoModule()Lccsancom/mbridge/msdk/video/signal/i;

    move-result-object v1

    invoke-interface {v1, v0}, Lccsancom/mbridge/msdk/video/signal/i;->setCover(Z)V

    .line 29
    iget-object v1, p0, Lccsancom/mbridge/msdk/video/module/a/a/c;->j:Lccsancom/mbridge/msdk/video/signal/factory/IJSFactory;

    invoke-interface {v1}, Lccsancom/mbridge/msdk/video/signal/factory/IJSFactory;->getJSVideoModule()Lccsancom/mbridge/msdk/video/signal/i;

    move-result-object v1

    invoke-interface {v1, v0}, Lccsancom/mbridge/msdk/video/signal/i;->setMiniEndCardState(Z)V

    .line 30
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/module/a/a/c;->j:Lccsancom/mbridge/msdk/video/signal/factory/IJSFactory;

    invoke-interface {v0}, Lccsancom/mbridge/msdk/video/signal/factory/IJSFactory;->getJSVideoModule()Lccsancom/mbridge/msdk/video/signal/i;

    move-result-object v0

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Lccsancom/mbridge/msdk/video/signal/i;->videoOperate(I)V

    .line 31
    goto :goto_0

    .line 33
    :sswitch_2
    iget-object v2, p0, Lccsancom/mbridge/msdk/video/module/a/a/c;->j:Lccsancom/mbridge/msdk/video/signal/factory/IJSFactory;

    invoke-interface {v2}, Lccsancom/mbridge/msdk/video/signal/factory/IJSFactory;->getJSContainerModule()Lccsancom/mbridge/msdk/video/signal/e;

    move-result-object v2

    invoke-interface {v2, v1}, Lccsancom/mbridge/msdk/video/signal/e;->showVideoClickView(I)V

    .line 34
    iget-object v1, p0, Lccsancom/mbridge/msdk/video/module/a/a/c;->j:Lccsancom/mbridge/msdk/video/signal/factory/IJSFactory;

    invoke-interface {v1}, Lccsancom/mbridge/msdk/video/signal/factory/IJSFactory;->getJSVideoModule()Lccsancom/mbridge/msdk/video/signal/i;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lccsancom/mbridge/msdk/video/signal/i;->setCover(Z)V

    .line 35
    iget-object v1, p0, Lccsancom/mbridge/msdk/video/module/a/a/c;->j:Lccsancom/mbridge/msdk/video/signal/factory/IJSFactory;

    invoke-interface {v1}, Lccsancom/mbridge/msdk/video/signal/factory/IJSFactory;->getJSVideoModule()Lccsancom/mbridge/msdk/video/signal/i;

    move-result-object v1

    invoke-interface {v1, v2}, Lccsancom/mbridge/msdk/video/signal/i;->setMiniEndCardState(Z)V

    .line 36
    iget-object v1, p0, Lccsancom/mbridge/msdk/video/module/a/a/c;->j:Lccsancom/mbridge/msdk/video/signal/factory/IJSFactory;

    invoke-interface {v1}, Lccsancom/mbridge/msdk/video/signal/factory/IJSFactory;->getJSVideoModule()Lccsancom/mbridge/msdk/video/signal/i;

    move-result-object v1

    invoke-interface {v1, v0}, Lccsancom/mbridge/msdk/video/signal/i;->videoOperate(I)V

    .line 37
    goto :goto_0

    .line 46
    :sswitch_3
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 47
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/module/a/a/c;->j:Lccsancom/mbridge/msdk/video/signal/factory/IJSFactory;

    invoke-interface {v0}, Lccsancom/mbridge/msdk/video/signal/factory/IJSFactory;->getJSNotifyProxy()Lccsancom/mbridge/msdk/video/signal/f;

    move-result-object v0

    const/4 v2, 0x3

    invoke-interface {v0, v2, p1}, Lccsancom/mbridge/msdk/video/signal/f;->a(ILjava/lang/String;)V

    .line 48
    nop

    .line 49
    const/4 p1, -0x1

    goto :goto_0

    .line 44
    :sswitch_4
    goto :goto_0

    .line 41
    :sswitch_5
    goto :goto_0

    .line 39
    :sswitch_6
    goto :goto_0

    .line 55
    :sswitch_7
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/module/a/a/c;->j:Lccsancom/mbridge/msdk/video/signal/factory/IJSFactory;

    invoke-interface {v0}, Lccsancom/mbridge/msdk/video/signal/factory/IJSFactory;->getJSContainerModule()Lccsancom/mbridge/msdk/video/signal/e;

    move-result-object v0

    invoke-interface {v0}, Lccsancom/mbridge/msdk/video/signal/e;->showAlertWebView()Z

    move-result v0

    if-nez v0, :cond_0

    .line 56
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/module/a/a/c;->j:Lccsancom/mbridge/msdk/video/signal/factory/IJSFactory;

    invoke-interface {v0}, Lccsancom/mbridge/msdk/video/signal/factory/IJSFactory;->getJSVideoModule()Lccsancom/mbridge/msdk/video/signal/i;

    move-result-object v0

    invoke-interface {v0}, Lccsancom/mbridge/msdk/video/signal/i;->showAlertView()V

    goto :goto_0

    .line 58
    :cond_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/module/a/a/c;->j:Lccsancom/mbridge/msdk/video/signal/factory/IJSFactory;

    invoke-interface {v0}, Lccsancom/mbridge/msdk/video/signal/factory/IJSFactory;->getJSVideoModule()Lccsancom/mbridge/msdk/video/signal/i;

    move-result-object v0

    invoke-interface {v0}, Lccsancom/mbridge/msdk/video/signal/i;->alertWebViewShowed()V

    .line 64
    :cond_1
    :goto_0
    invoke-super {p0, p1, p2}, Lccsancom/mbridge/msdk/video/module/a/a/d;->a(ILjava/lang/Object;)V

    .line 65
    return-void

    :sswitch_data_0
    .sparse-switch
        0x8 -> :sswitch_7
        0x64 -> :sswitch_6
        0x65 -> :sswitch_5
        0x67 -> :sswitch_4
        0x69 -> :sswitch_3
        0x6b -> :sswitch_2
        0x70 -> :sswitch_1
        0x73 -> :sswitch_0
    .end sparse-switch
.end method
