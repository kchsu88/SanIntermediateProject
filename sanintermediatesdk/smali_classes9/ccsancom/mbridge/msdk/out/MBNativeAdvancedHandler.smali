.class public Lccsancom/mbridge/msdk/out/MBNativeAdvancedHandler;
.super Ljava/lang/Object;
.source "MBNativeAdvancedHandler.java"


# instance fields
.field private nativeAdvancedProvider:Lccsancom/mbridge/msdk/advanced/c/c;


# direct methods
.method public constructor <init>(Lccsanandroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    invoke-static {p3}, Lccsancom/mbridge/msdk/foundation/tools/u;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 19
    invoke-static {v0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 20
    invoke-static {p3, v0}, Lccsancom/mbridge/msdk/foundation/tools/u;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    :cond_0
    new-instance v0, Lccsancom/mbridge/msdk/advanced/c/c;

    invoke-direct {v0, p2, p3, p1}, Lccsancom/mbridge/msdk/advanced/c/c;-><init>(Ljava/lang/String;Ljava/lang/String;Lccsanandroid/app/Activity;)V

    iput-object v0, p0, Lccsancom/mbridge/msdk/out/MBNativeAdvancedHandler;->nativeAdvancedProvider:Lccsancom/mbridge/msdk/advanced/c/c;

    .line 23
    return-void
.end method


# virtual methods
.method public autoLoopPlay(I)V
    .locals 1

    .line 92
    iget-object v0, p0, Lccsancom/mbridge/msdk/out/MBNativeAdvancedHandler;->nativeAdvancedProvider:Lccsancom/mbridge/msdk/advanced/c/c;

    if-eqz v0, :cond_0

    .line 93
    invoke-virtual {v0, p1}, Lccsancom/mbridge/msdk/advanced/c/c;->c(I)V

    .line 95
    :cond_0
    return-void
.end method

.method public getAdViewGroup()Lccsanandroid/view/ViewGroup;
    .locals 1

    .line 125
    iget-object v0, p0, Lccsancom/mbridge/msdk/out/MBNativeAdvancedHandler;->nativeAdvancedProvider:Lccsancom/mbridge/msdk/advanced/c/c;

    if-eqz v0, :cond_0

    .line 126
    invoke-virtual {v0}, Lccsancom/mbridge/msdk/advanced/c/c;->b()Lccsancom/mbridge/msdk/advanced/view/MBOutNativeAdvancedViewGroup;

    move-result-object v0

    return-object v0

    .line 129
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getRequestId()Ljava/lang/String;
    .locals 1

    .line 60
    iget-object v0, p0, Lccsancom/mbridge/msdk/out/MBNativeAdvancedHandler;->nativeAdvancedProvider:Lccsancom/mbridge/msdk/advanced/c/c;

    if-eqz v0, :cond_0

    .line 61
    invoke-virtual {v0}, Lccsancom/mbridge/msdk/advanced/c/c;->d()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 63
    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public isReady()Z
    .locals 1

    .line 80
    const-string v0, ""

    invoke-virtual {p0, v0}, Lccsancom/mbridge/msdk/out/MBNativeAdvancedHandler;->isReady(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isReady(Ljava/lang/String;)Z
    .locals 1

    .line 84
    iget-object v0, p0, Lccsancom/mbridge/msdk/out/MBNativeAdvancedHandler;->nativeAdvancedProvider:Lccsancom/mbridge/msdk/advanced/c/c;

    if-eqz v0, :cond_0

    .line 85
    invoke-virtual {v0, p1}, Lccsancom/mbridge/msdk/advanced/c/c;->c(Ljava/lang/String;)Z

    move-result p1

    return p1

    .line 87
    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public load()V
    .locals 2

    .line 68
    iget-object v0, p0, Lccsancom/mbridge/msdk/out/MBNativeAdvancedHandler;->nativeAdvancedProvider:Lccsancom/mbridge/msdk/advanced/c/c;

    if-eqz v0, :cond_0

    .line 69
    const-string v1, ""

    invoke-virtual {v0, v1}, Lccsancom/mbridge/msdk/advanced/c/c;->b(Ljava/lang/String;)V

    .line 71
    :cond_0
    return-void
.end method

.method public loadByToken(Ljava/lang/String;)V
    .locals 1

    .line 74
    iget-object v0, p0, Lccsancom/mbridge/msdk/out/MBNativeAdvancedHandler;->nativeAdvancedProvider:Lccsancom/mbridge/msdk/advanced/c/c;

    if-eqz v0, :cond_0

    .line 75
    invoke-virtual {v0, p1}, Lccsancom/mbridge/msdk/advanced/c/c;->a(Ljava/lang/String;)V

    .line 77
    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 2

    .line 112
    iget-object v0, p0, Lccsancom/mbridge/msdk/out/MBNativeAdvancedHandler;->nativeAdvancedProvider:Lccsancom/mbridge/msdk/advanced/c/c;

    if-eqz v0, :cond_0

    .line 113
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lccsancom/mbridge/msdk/advanced/c/c;->e(I)V

    .line 115
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 2

    .line 106
    iget-object v0, p0, Lccsancom/mbridge/msdk/out/MBNativeAdvancedHandler;->nativeAdvancedProvider:Lccsancom/mbridge/msdk/advanced/c/c;

    if-eqz v0, :cond_0

    .line 107
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lccsancom/mbridge/msdk/advanced/c/c;->d(I)V

    .line 109
    :cond_0
    return-void
.end method

.method public release()V
    .locals 1

    .line 118
    iget-object v0, p0, Lccsancom/mbridge/msdk/out/MBNativeAdvancedHandler;->nativeAdvancedProvider:Lccsancom/mbridge/msdk/advanced/c/c;

    if-eqz v0, :cond_0

    .line 119
    invoke-virtual {v0}, Lccsancom/mbridge/msdk/advanced/c/c;->e()V

    .line 121
    :cond_0
    return-void
.end method

.method public setAdListener(Lccsancom/mbridge/msdk/out/NativeAdvancedAdListener;)V
    .locals 1

    .line 54
    iget-object v0, p0, Lccsancom/mbridge/msdk/out/MBNativeAdvancedHandler;->nativeAdvancedProvider:Lccsancom/mbridge/msdk/advanced/c/c;

    if-eqz v0, :cond_0

    .line 55
    invoke-virtual {v0, p1}, Lccsancom/mbridge/msdk/advanced/c/c;->a(Lccsancom/mbridge/msdk/out/NativeAdvancedAdListener;)V

    .line 57
    :cond_0
    return-void
.end method

.method public setCloseButtonState(Lccsancom/mbridge/msdk/out/MBMultiStateEnum;)V
    .locals 1

    .line 26
    nop

    .line 27
    sget-object v0, Lccsancom/mbridge/msdk/out/MBNativeAdvancedHandler$1;->$SwitchMap$com$mbridge$msdk$out$MBMultiStateEnum:[I

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/out/MBMultiStateEnum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, -0x1

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 35
    :pswitch_0
    goto :goto_0

    .line 32
    :pswitch_1
    const/4 v0, 0x1

    .line 33
    goto :goto_0

    .line 29
    :pswitch_2
    const/4 v0, 0x0

    .line 30
    nop

    .line 38
    :goto_0
    iget-object p1, p0, Lccsancom/mbridge/msdk/out/MBNativeAdvancedHandler;->nativeAdvancedProvider:Lccsancom/mbridge/msdk/advanced/c/c;

    invoke-virtual {p1, v0}, Lccsancom/mbridge/msdk/advanced/c/c;->a(I)V

    .line 39
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setNativeViewSize(II)V
    .locals 1

    .line 42
    iget-object v0, p0, Lccsancom/mbridge/msdk/out/MBNativeAdvancedHandler;->nativeAdvancedProvider:Lccsancom/mbridge/msdk/advanced/c/c;

    invoke-virtual {v0, p2, p1}, Lccsancom/mbridge/msdk/advanced/c/c;->a(II)V

    .line 43
    return-void
.end method

.method public setPlayMuteState(I)V
    .locals 1

    .line 99
    iget-object v0, p0, Lccsancom/mbridge/msdk/out/MBNativeAdvancedHandler;->nativeAdvancedProvider:Lccsancom/mbridge/msdk/advanced/c/c;

    if-eqz v0, :cond_0

    .line 100
    invoke-virtual {v0, p1}, Lccsancom/mbridge/msdk/advanced/c/c;->b(I)V

    .line 102
    :cond_0
    return-void
.end method

.method public setViewElementStyle(Lccsanorg/json/JSONObject;)V
    .locals 1

    .line 47
    iget-object v0, p0, Lccsancom/mbridge/msdk/out/MBNativeAdvancedHandler;->nativeAdvancedProvider:Lccsancom/mbridge/msdk/advanced/c/c;

    if-eqz v0, :cond_0

    .line 48
    invoke-virtual {v0, p1}, Lccsancom/mbridge/msdk/advanced/c/c;->a(Lccsanorg/json/JSONObject;)V

    .line 50
    :cond_0
    return-void
.end method
