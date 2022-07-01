.class public final Lccsancom/mbridge/msdk/video/module/a/a/b;
.super Lccsancom/mbridge/msdk/video/module/a/a/d;
.source "ContainerViewDefaultListener.java"


# instance fields
.field private j:Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;

.field private k:Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;


# direct methods
.method public constructor <init>(Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;Lccsancom/mbridge/msdk/videocommon/b/c;Lccsancom/mbridge/msdk/videocommon/download/a;Ljava/lang/String;Ljava/lang/String;Lccsancom/mbridge/msdk/video/module/a/a;IZ)V
    .locals 12

    .line 18
    move-object v9, p0

    move-object v10, p1

    move-object v11, p2

    move-object v0, p0

    move-object v1, p3

    move-object/from16 v2, p5

    move-object/from16 v3, p4

    move-object/from16 v4, p6

    move-object/from16 v5, p7

    move-object/from16 v6, p8

    move/from16 v7, p9

    move/from16 v8, p10

    invoke-direct/range {v0 .. v8}, Lccsancom/mbridge/msdk/video/module/a/a/d;-><init>(Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;Lccsancom/mbridge/msdk/videocommon/download/a;Lccsancom/mbridge/msdk/videocommon/b/c;Ljava/lang/String;Ljava/lang/String;Lccsancom/mbridge/msdk/video/module/a/a;IZ)V

    .line 19
    iput-object v10, v9, Lccsancom/mbridge/msdk/video/module/a/a/b;->j:Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;

    .line 20
    iput-object v11, v9, Lccsancom/mbridge/msdk/video/module/a/a/b;->k:Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;

    .line 21
    if-eqz v10, :cond_0

    if-nez v11, :cond_1

    .line 22
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, v9, Lccsancom/mbridge/msdk/video/module/a/a/b;->a:Z

    .line 24
    :cond_1
    return-void
.end method


# virtual methods
.method public final a(ILjava/lang/Object;)V
    .locals 4

    .line 28
    iget-boolean v0, p0, Lccsancom/mbridge/msdk/video/module/a/a/b;->a:Z

    if-eqz v0, :cond_2

    .line 29
    const/4 v0, 0x1

    sparse-switch p1, :sswitch_data_0

    goto :goto_0

    .line 51
    :sswitch_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/module/a/a/b;->k:Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;

    iget-object v1, p0, Lccsancom/mbridge/msdk/video/module/a/a/b;->j:Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;

    invoke-virtual {v1}, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;->getBorderViewWidth()I

    move-result v1

    iget-object v2, p0, Lccsancom/mbridge/msdk/video/module/a/a/b;->j:Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;

    invoke-virtual {v2}, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;->getBorderViewHeight()I

    move-result v2

    iget-object v3, p0, Lccsancom/mbridge/msdk/video/module/a/a/b;->j:Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;

    invoke-virtual {v3}, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;->getBorderViewRadius()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;->resizeMiniCard(III)V

    .line 52
    goto :goto_0

    .line 31
    :sswitch_1
    iget-object v1, p0, Lccsancom/mbridge/msdk/video/module/a/a/b;->j:Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;

    invoke-virtual {v1, v0}, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;->setCover(Z)V

    .line 32
    iget-object v1, p0, Lccsancom/mbridge/msdk/video/module/a/a/b;->j:Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;

    invoke-virtual {v1, v0}, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;->setMiniEndCardState(Z)V

    .line 33
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/module/a/a/b;->j:Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;->videoOperate(I)V

    .line 34
    goto :goto_0

    .line 36
    :sswitch_2
    iget-object v1, p0, Lccsancom/mbridge/msdk/video/module/a/a/b;->k:Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;->showVideoClickView(I)V

    .line 37
    iget-object v1, p0, Lccsancom/mbridge/msdk/video/module/a/a/b;->j:Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;->setCover(Z)V

    .line 38
    iget-object v1, p0, Lccsancom/mbridge/msdk/video/module/a/a/b;->j:Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;

    invoke-virtual {v1, v2}, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;->setMiniEndCardState(Z)V

    .line 39
    iget-object v1, p0, Lccsancom/mbridge/msdk/video/module/a/a/b;->j:Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;

    invoke-virtual {v1, v0}, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;->videoOperate(I)V

    .line 40
    goto :goto_0

    .line 49
    :sswitch_3
    goto :goto_0

    .line 47
    :sswitch_4
    goto :goto_0

    .line 44
    :sswitch_5
    goto :goto_0

    .line 42
    :sswitch_6
    goto :goto_0

    .line 54
    :sswitch_7
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/module/a/a/b;->k:Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;

    if-eqz v0, :cond_1

    .line 55
    invoke-virtual {v0}, Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;->showAlertWebView()Z

    move-result v0

    if-nez v0, :cond_0

    .line 56
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/module/a/a/b;->j:Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;

    if-eqz v0, :cond_2

    .line 57
    invoke-virtual {v0}, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;->showAlertView()V

    goto :goto_0

    .line 60
    :cond_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/module/a/a/b;->j:Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;

    if-eqz v0, :cond_2

    .line 61
    invoke-virtual {v0}, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;->alertWebViewShowed()V

    goto :goto_0

    .line 65
    :cond_1
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/module/a/a/b;->j:Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;

    if-eqz v0, :cond_2

    .line 66
    invoke-virtual {v0}, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;->showAlertView()V

    .line 72
    :cond_2
    :goto_0
    invoke-super {p0, p1, p2}, Lccsancom/mbridge/msdk/video/module/a/a/d;->a(ILjava/lang/Object;)V

    .line 73
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
