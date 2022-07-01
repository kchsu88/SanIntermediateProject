.class public final Lccsancom/mbridge/msdk/video/signal/a/n;
.super Lccsancom/mbridge/msdk/video/signal/a/g;
.source "JSVideoModule.java"


# instance fields
.field private a:Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;


# direct methods
.method public constructor <init>(Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;)V
    .locals 0

    .line 8
    invoke-direct {p0}, Lccsancom/mbridge/msdk/video/signal/a/g;-><init>()V

    .line 9
    iput-object p1, p0, Lccsancom/mbridge/msdk/video/signal/a/n;->a:Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;

    .line 10
    return-void
.end method


# virtual methods
.method public final alertWebViewShowed()V
    .locals 1

    .line 169
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/signal/a/n;->a:Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;

    if-eqz v0, :cond_0

    .line 170
    invoke-virtual {v0}, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;->alertWebViewShowed()V

    goto :goto_0

    .line 172
    :cond_0
    invoke-super {p0}, Lccsancom/mbridge/msdk/video/signal/a/g;->alertWebViewShowed()V

    .line 174
    :goto_0
    return-void
.end method

.method public final closeVideoOperate(II)V
    .locals 1

    .line 46
    invoke-super {p0, p1, p2}, Lccsancom/mbridge/msdk/video/signal/a/g;->closeVideoOperate(II)V

    .line 47
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/signal/a/n;->a:Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;

    if-eqz v0, :cond_0

    .line 48
    invoke-virtual {v0, p1, p2}, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;->closeVideoOperate(II)V

    .line 50
    :cond_0
    return-void
.end method

.method public final dismissAllAlert()V
    .locals 1

    .line 187
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/signal/a/n;->a:Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;

    if-eqz v0, :cond_0

    .line 188
    invoke-virtual {v0}, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;->dismissAllAlert()V

    goto :goto_0

    .line 190
    :cond_0
    invoke-super {p0}, Lccsancom/mbridge/msdk/video/signal/a/g;->dismissAllAlert()V

    .line 192
    :goto_0
    return-void
.end method

.method public final getBorderViewHeight()I
    .locals 1

    .line 115
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/signal/a/n;->a:Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;

    if-eqz v0, :cond_0

    .line 116
    invoke-virtual {v0}, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;->getBorderViewHeight()I

    move-result v0

    return v0

    .line 118
    :cond_0
    invoke-super {p0}, Lccsancom/mbridge/msdk/video/signal/a/g;->getBorderViewHeight()I

    move-result v0

    return v0
.end method

.method public final getBorderViewLeft()I
    .locals 1

    .line 142
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/signal/a/n;->a:Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;

    if-eqz v0, :cond_0

    .line 143
    invoke-virtual {v0}, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;->getBorderViewLeft()I

    move-result v0

    return v0

    .line 145
    :cond_0
    invoke-super {p0}, Lccsancom/mbridge/msdk/video/signal/a/g;->getBorderViewLeft()I

    move-result v0

    return v0
.end method

.method public final getBorderViewRadius()I
    .locals 1

    .line 124
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/signal/a/n;->a:Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;

    if-eqz v0, :cond_0

    .line 125
    invoke-virtual {v0}, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;->getBorderViewRadius()I

    move-result v0

    return v0

    .line 127
    :cond_0
    invoke-super {p0}, Lccsancom/mbridge/msdk/video/signal/a/g;->getBorderViewRadius()I

    move-result v0

    return v0
.end method

.method public final getBorderViewTop()I
    .locals 1

    .line 133
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/signal/a/n;->a:Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;

    if-eqz v0, :cond_0

    .line 134
    invoke-virtual {v0}, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;->getBorderViewTop()I

    move-result v0

    return v0

    .line 136
    :cond_0
    invoke-super {p0}, Lccsancom/mbridge/msdk/video/signal/a/g;->getBorderViewTop()I

    move-result v0

    return v0
.end method

.method public final getBorderViewWidth()I
    .locals 1

    .line 106
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/signal/a/n;->a:Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;

    if-eqz v0, :cond_0

    .line 107
    invoke-virtual {v0}, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;->getBorderViewWidth()I

    move-result v0

    return v0

    .line 109
    :cond_0
    invoke-super {p0}, Lccsancom/mbridge/msdk/video/signal/a/g;->getBorderViewWidth()I

    move-result v0

    return v0
.end method

.method public final getCurrentProgress()Ljava/lang/String;
    .locals 1

    .line 62
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/signal/a/n;->a:Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;

    if-eqz v0, :cond_0

    .line 63
    invoke-virtual {v0}, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;->getCurrentProgress()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 65
    :cond_0
    invoke-super {p0}, Lccsancom/mbridge/msdk/video/signal/a/g;->getCurrentProgress()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final hideAlertView(I)V
    .locals 1

    .line 160
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/signal/a/n;->a:Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;

    if-eqz v0, :cond_0

    .line 161
    invoke-virtual {v0, p1}, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;->hideAlertView(I)V

    goto :goto_0

    .line 163
    :cond_0
    invoke-super {p0, p1}, Lccsancom/mbridge/msdk/video/signal/a/g;->hideAlertView(I)V

    .line 165
    :goto_0
    return-void
.end method

.method public final isH5Canvas()Z
    .locals 1

    .line 97
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/signal/a/n;->a:Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;

    if-eqz v0, :cond_0

    .line 98
    invoke-virtual {v0}, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;->isH5Canvas()Z

    move-result v0

    return v0

    .line 100
    :cond_0
    invoke-super {p0}, Lccsancom/mbridge/msdk/video/signal/a/g;->isH5Canvas()Z

    move-result v0

    return v0
.end method

.method public final progressOperate(II)V
    .locals 1

    .line 54
    invoke-super {p0, p1, p2}, Lccsancom/mbridge/msdk/video/signal/a/g;->progressOperate(II)V

    .line 55
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/signal/a/n;->a:Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;

    if-eqz v0, :cond_0

    .line 56
    invoke-virtual {v0, p1, p2}, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;->progressOperate(II)V

    .line 58
    :cond_0
    return-void
.end method

.method public final setCover(Z)V
    .locals 1

    .line 80
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/signal/a/n;->a:Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;

    if-eqz v0, :cond_0

    .line 81
    invoke-virtual {v0, p1}, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;->setCover(Z)V

    goto :goto_0

    .line 83
    :cond_0
    invoke-super {p0, p1}, Lccsancom/mbridge/msdk/video/signal/a/g;->setCover(Z)V

    .line 85
    :goto_0
    return-void
.end method

.method public final setMiniEndCardState(Z)V
    .locals 1

    .line 196
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/signal/a/n;->a:Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;

    if-eqz v0, :cond_0

    .line 197
    invoke-virtual {v0, p1}, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;->setMiniEndCardState(Z)V

    goto :goto_0

    .line 199
    :cond_0
    invoke-super {p0, p1}, Lccsancom/mbridge/msdk/video/signal/a/g;->setMiniEndCardState(Z)V

    .line 201
    :goto_0
    return-void
.end method

.method public final setScaleFitXY(I)V
    .locals 1

    .line 88
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/signal/a/n;->a:Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;

    if-eqz v0, :cond_0

    .line 89
    invoke-virtual {v0, p1}, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;->setScaleFitXY(I)V

    goto :goto_0

    .line 91
    :cond_0
    invoke-super {p0, p1}, Lccsancom/mbridge/msdk/video/signal/a/g;->setScaleFitXY(I)V

    .line 93
    :goto_0
    return-void
.end method

.method public final setVisible(I)V
    .locals 1

    .line 71
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/signal/a/n;->a:Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;

    if-eqz v0, :cond_0

    .line 72
    invoke-virtual {v0, p1}, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;->setVisible(I)V

    goto :goto_0

    .line 74
    :cond_0
    invoke-super {p0, p1}, Lccsancom/mbridge/msdk/video/signal/a/g;->setVisible(I)V

    .line 76
    :goto_0
    return-void
.end method

.method public final showAlertView()V
    .locals 1

    .line 178
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/signal/a/n;->a:Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;

    if-eqz v0, :cond_0

    .line 179
    invoke-virtual {v0}, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;->showAlertView()V

    goto :goto_0

    .line 181
    :cond_0
    invoke-super {p0}, Lccsancom/mbridge/msdk/video/signal/a/g;->showAlertView()V

    .line 183
    :goto_0
    return-void
.end method

.method public final showIVRewardAlertView(Ljava/lang/String;)V
    .locals 1

    .line 151
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/signal/a/n;->a:Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;

    if-eqz v0, :cond_0

    .line 152
    invoke-virtual {v0, p1}, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;->showIVRewardAlertView(Ljava/lang/String;)V

    goto :goto_0

    .line 154
    :cond_0
    invoke-super {p0, p1}, Lccsancom/mbridge/msdk/video/signal/a/g;->showIVRewardAlertView(Ljava/lang/String;)V

    .line 156
    :goto_0
    return-void
.end method

.method public final showVideoLocation(IIIIIIIII)V
    .locals 11

    .line 14
    invoke-super/range {p0 .. p9}, Lccsancom/mbridge/msdk/video/signal/a/g;->showVideoLocation(IIIIIIIII)V

    .line 15
    move-object v0, p0

    iget-object v1, v0, Lccsancom/mbridge/msdk/video/signal/a/n;->a:Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;

    if-eqz v1, :cond_0

    .line 16
    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    invoke-virtual/range {v1 .. v10}, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;->showVideoLocation(IIIIIIIII)V

    .line 18
    :cond_0
    return-void
.end method

.method public final soundOperate(II)V
    .locals 1

    .line 22
    invoke-super {p0, p1, p2}, Lccsancom/mbridge/msdk/video/signal/a/g;->soundOperate(II)V

    .line 23
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/signal/a/n;->a:Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;

    if-eqz v0, :cond_0

    .line 24
    invoke-virtual {v0, p1, p2}, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;->soundOperate(II)V

    .line 26
    :cond_0
    return-void
.end method

.method public final soundOperate(IILjava/lang/String;)V
    .locals 1

    .line 30
    invoke-super {p0, p1, p2, p3}, Lccsancom/mbridge/msdk/video/signal/a/g;->soundOperate(IILjava/lang/String;)V

    .line 31
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/signal/a/n;->a:Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;

    if-eqz v0, :cond_0

    .line 32
    invoke-virtual {v0, p1, p2, p3}, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;->soundOperate(IILjava/lang/String;)V

    .line 34
    :cond_0
    return-void
.end method

.method public final videoOperate(I)V
    .locals 1

    .line 38
    invoke-super {p0, p1}, Lccsancom/mbridge/msdk/video/signal/a/g;->videoOperate(I)V

    .line 39
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/signal/a/n;->a:Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;

    if-eqz v0, :cond_0

    .line 40
    invoke-virtual {v0, p1}, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;->videoOperate(I)V

    .line 42
    :cond_0
    return-void
.end method
