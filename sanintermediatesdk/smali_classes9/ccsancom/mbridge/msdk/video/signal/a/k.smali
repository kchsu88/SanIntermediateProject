.class public final Lccsancom/mbridge/msdk/video/signal/a/k;
.super Lccsancom/mbridge/msdk/video/signal/a/d;
.source "JSContainerModule.java"


# instance fields
.field private a:Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;


# direct methods
.method public constructor <init>(Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;)V
    .locals 0

    .line 12
    invoke-direct {p0}, Lccsancom/mbridge/msdk/video/signal/a/d;-><init>()V

    .line 13
    iput-object p1, p0, Lccsancom/mbridge/msdk/video/signal/a/k;->a:Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;

    .line 14
    return-void
.end method


# virtual methods
.method public final configurationChanged(III)V
    .locals 1

    .line 191
    invoke-super {p0, p1, p2, p3}, Lccsancom/mbridge/msdk/video/signal/a/d;->configurationChanged(III)V

    .line 193
    :try_start_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/signal/a/k;->a:Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;

    if-eqz v0, :cond_0

    .line 194
    invoke-virtual {v0, p1, p2, p3}, Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;->configurationChanged(III)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 198
    :cond_0
    goto :goto_0

    .line 196
    :catchall_0
    move-exception p1

    .line 197
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 199
    :goto_0
    return-void
.end method

.method public final endCardShowing()Z
    .locals 1

    .line 120
    :try_start_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/signal/a/k;->a:Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;

    if-eqz v0, :cond_0

    .line 121
    invoke-virtual {v0}, Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;->endCardShowing()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    .line 125
    :cond_0
    goto :goto_0

    .line 123
    :catchall_0
    move-exception v0

    .line 124
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 126
    :goto_0
    invoke-super {p0}, Lccsancom/mbridge/msdk/video/signal/a/d;->endCardShowing()Z

    move-result v0

    return v0
.end method

.method public final hideAlertWebview()V
    .locals 1

    .line 203
    invoke-super {p0}, Lccsancom/mbridge/msdk/video/signal/a/d;->hideAlertWebview()V

    .line 204
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/signal/a/k;->a:Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;

    if-eqz v0, :cond_0

    .line 205
    invoke-virtual {v0}, Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;->hideAlertWebview()V

    .line 207
    :cond_0
    return-void
.end method

.method public final ivRewardAdsWithoutVideo(Ljava/lang/String;)V
    .locals 1

    .line 211
    invoke-super {p0, p1}, Lccsancom/mbridge/msdk/video/signal/a/d;->ivRewardAdsWithoutVideo(Ljava/lang/String;)V

    .line 212
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/signal/a/k;->a:Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;

    if-eqz v0, :cond_0

    .line 213
    invoke-virtual {v0, p1}, Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;->ivRewardAdsWithoutVideo(Ljava/lang/String;)V

    .line 215
    :cond_0
    return-void
.end method

.method public final miniCardShowing()Z
    .locals 1

    .line 132
    :try_start_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/signal/a/k;->a:Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;

    if-eqz v0, :cond_0

    .line 133
    invoke-virtual {v0}, Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;->miniCardShowing()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    .line 137
    :cond_0
    goto :goto_0

    .line 135
    :catchall_0
    move-exception v0

    .line 136
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 138
    :goto_0
    invoke-super {p0}, Lccsancom/mbridge/msdk/video/signal/a/d;->miniCardShowing()Z

    move-result v0

    return v0
.end method

.method public final readyStatus(I)V
    .locals 1

    .line 156
    :try_start_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/signal/a/k;->a:Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;

    if-eqz v0, :cond_0

    .line 157
    invoke-virtual {v0, p1}, Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;->readyStatus(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 161
    :cond_0
    goto :goto_0

    .line 159
    :catchall_0
    move-exception v0

    .line 160
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 162
    :goto_0
    invoke-super {p0, p1}, Lccsancom/mbridge/msdk/video/signal/a/d;->readyStatus(I)V

    .line 163
    return-void
.end method

.method public final resizeMiniCard(III)V
    .locals 1

    .line 179
    invoke-super {p0, p1, p2, p3}, Lccsancom/mbridge/msdk/video/signal/a/d;->resizeMiniCard(III)V

    .line 181
    :try_start_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/signal/a/k;->a:Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;

    if-eqz v0, :cond_0

    .line 182
    invoke-virtual {v0, p1, p2, p3}, Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;->resizeMiniCard(III)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 186
    :cond_0
    goto :goto_0

    .line 184
    :catchall_0
    move-exception p1

    .line 185
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 187
    :goto_0
    return-void
.end method

.method public final showAlertWebView()Z
    .locals 1

    .line 18
    invoke-super {p0}, Lccsancom/mbridge/msdk/video/signal/a/d;->showAlertWebView()Z

    .line 19
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/signal/a/k;->a:Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;

    if-eqz v0, :cond_0

    .line 20
    invoke-virtual {v0}, Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;->showAlertWebView()Z

    move-result v0

    return v0

    .line 22
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final showEndcard(I)V
    .locals 1

    .line 59
    invoke-super {p0, p1}, Lccsancom/mbridge/msdk/video/signal/a/d;->showEndcard(I)V

    .line 61
    :try_start_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/signal/a/k;->a:Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;

    if-eqz v0, :cond_0

    .line 62
    invoke-virtual {v0, p1}, Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;->showEndcard(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 66
    :cond_0
    goto :goto_0

    .line 64
    :catchall_0
    move-exception p1

    .line 65
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 67
    :goto_0
    return-void
.end method

.method public final showMiniCard(IIIII)V
    .locals 6

    .line 167
    invoke-super/range {p0 .. p5}, Lccsancom/mbridge/msdk/video/signal/a/d;->showMiniCard(IIIII)V

    .line 169
    :try_start_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/signal/a/k;->a:Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;

    if-eqz v0, :cond_0

    .line 170
    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;->showMiniCard(IIIII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 174
    :cond_0
    goto :goto_0

    .line 172
    :catchall_0
    move-exception p1

    .line 173
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 175
    :goto_0
    return-void
.end method

.method public final showVideoClickView(I)V
    .locals 1

    .line 27
    invoke-super {p0, p1}, Lccsancom/mbridge/msdk/video/signal/a/d;->showVideoClickView(I)V

    .line 28
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/signal/a/k;->a:Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;

    if-eqz v0, :cond_0

    .line 29
    invoke-virtual {v0, p1}, Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;->showVideoClickView(I)V

    .line 31
    :cond_0
    return-void
.end method

.method public final toggleCloseBtn(I)V
    .locals 1

    .line 71
    invoke-super {p0, p1}, Lccsancom/mbridge/msdk/video/signal/a/d;->toggleCloseBtn(I)V

    .line 73
    :try_start_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/signal/a/k;->a:Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;

    if-eqz v0, :cond_0

    .line 74
    invoke-virtual {v0, p1}, Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;->toggleCloseBtn(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 78
    :cond_0
    goto :goto_0

    .line 76
    :catchall_0
    move-exception p1

    .line 77
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 79
    :goto_0
    return-void
.end method
