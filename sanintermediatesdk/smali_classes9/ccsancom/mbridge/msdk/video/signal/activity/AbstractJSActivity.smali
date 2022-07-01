.class public abstract Lccsancom/mbridge/msdk/video/signal/activity/AbstractJSActivity;
.super Lccsancom/mbridge/msdk/activity/MBBaseActivity;
.source "AbstractJSActivity.java"

# interfaces
.implements Lccsancom/mbridge/msdk/video/signal/factory/IJSFactory;


# static fields
.field protected static final TAG:Ljava/lang/String; = "AbstractJSActivity"


# instance fields
.field protected jsFactory:Lccsancom/mbridge/msdk/video/signal/factory/IJSFactory;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 17
    invoke-direct {p0}, Lccsancom/mbridge/msdk/activity/MBBaseActivity;-><init>()V

    .line 19
    new-instance v0, Lccsancom/mbridge/msdk/video/signal/factory/a;

    invoke-direct {v0}, Lccsancom/mbridge/msdk/video/signal/factory/a;-><init>()V

    iput-object v0, p0, Lccsancom/mbridge/msdk/video/signal/activity/AbstractJSActivity;->jsFactory:Lccsancom/mbridge/msdk/video/signal/factory/IJSFactory;

    return-void
.end method


# virtual methods
.method public canBackPress()Z
    .locals 1

    .line 109
    const/4 v0, 0x0

    return v0
.end method

.method public getActivityProxy()Lccsancom/mbridge/msdk/video/signal/a;
    .locals 1

    .line 75
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/signal/activity/AbstractJSActivity;->jsFactory:Lccsancom/mbridge/msdk/video/signal/factory/IJSFactory;

    invoke-interface {v0}, Lccsancom/mbridge/msdk/video/signal/factory/IJSFactory;->getActivityProxy()Lccsancom/mbridge/msdk/video/signal/a;

    move-result-object v0

    return-object v0
.end method

.method public getIJSRewardVideoV1()Lccsancom/mbridge/msdk/video/signal/h;
    .locals 1

    .line 100
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/signal/activity/AbstractJSActivity;->jsFactory:Lccsancom/mbridge/msdk/video/signal/factory/IJSFactory;

    invoke-interface {v0}, Lccsancom/mbridge/msdk/video/signal/factory/IJSFactory;->getIJSRewardVideoV1()Lccsancom/mbridge/msdk/video/signal/h;

    move-result-object v0

    return-object v0
.end method

.method public getJSBTModule()Lccsancom/mbridge/msdk/video/signal/b;
    .locals 1

    .line 105
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/signal/activity/AbstractJSActivity;->jsFactory:Lccsancom/mbridge/msdk/video/signal/factory/IJSFactory;

    invoke-interface {v0}, Lccsancom/mbridge/msdk/video/signal/factory/IJSFactory;->getJSBTModule()Lccsancom/mbridge/msdk/video/signal/b;

    move-result-object v0

    return-object v0
.end method

.method public getJSCommon()Lccsancom/mbridge/msdk/video/signal/c;
    .locals 1

    .line 80
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/signal/activity/AbstractJSActivity;->jsFactory:Lccsancom/mbridge/msdk/video/signal/factory/IJSFactory;

    invoke-interface {v0}, Lccsancom/mbridge/msdk/video/signal/factory/IJSFactory;->getJSCommon()Lccsancom/mbridge/msdk/video/signal/c;

    move-result-object v0

    return-object v0
.end method

.method public getJSContainerModule()Lccsancom/mbridge/msdk/video/signal/e;
    .locals 1

    .line 95
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/signal/activity/AbstractJSActivity;->jsFactory:Lccsancom/mbridge/msdk/video/signal/factory/IJSFactory;

    invoke-interface {v0}, Lccsancom/mbridge/msdk/video/signal/factory/IJSFactory;->getJSContainerModule()Lccsancom/mbridge/msdk/video/signal/e;

    move-result-object v0

    return-object v0
.end method

.method public getJSNotifyProxy()Lccsancom/mbridge/msdk/video/signal/f;
    .locals 1

    .line 90
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/signal/activity/AbstractJSActivity;->jsFactory:Lccsancom/mbridge/msdk/video/signal/factory/IJSFactory;

    invoke-interface {v0}, Lccsancom/mbridge/msdk/video/signal/factory/IJSFactory;->getJSNotifyProxy()Lccsancom/mbridge/msdk/video/signal/f;

    move-result-object v0

    return-object v0
.end method

.method public getJSVideoModule()Lccsancom/mbridge/msdk/video/signal/i;
    .locals 1

    .line 85
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/signal/activity/AbstractJSActivity;->jsFactory:Lccsancom/mbridge/msdk/video/signal/factory/IJSFactory;

    invoke-interface {v0}, Lccsancom/mbridge/msdk/video/signal/factory/IJSFactory;->getJSVideoModule()Lccsancom/mbridge/msdk/video/signal/i;

    move-result-object v0

    return-object v0
.end method

.method public onBackPressed()V
    .locals 2

    .line 58
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/video/signal/activity/AbstractJSActivity;->getJSCommon()Lccsancom/mbridge/msdk/video/signal/c;

    move-result-object v0

    invoke-interface {v0}, Lccsancom/mbridge/msdk/video/signal/c;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 59
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/video/signal/activity/AbstractJSActivity;->getJSContainerModule()Lccsancom/mbridge/msdk/video/signal/e;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lccsancom/mbridge/msdk/video/signal/activity/AbstractJSActivity;->getJSContainerModule()Lccsancom/mbridge/msdk/video/signal/e;

    move-result-object v0

    invoke-interface {v0}, Lccsancom/mbridge/msdk/video/signal/e;->miniCardShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 62
    :cond_0
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/video/signal/activity/AbstractJSActivity;->getActivityProxy()Lccsancom/mbridge/msdk/video/signal/a;

    move-result-object v0

    invoke-interface {v0}, Lccsancom/mbridge/msdk/video/signal/a;->g()V

    goto :goto_0

    .line 65
    :cond_1
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/video/signal/activity/AbstractJSActivity;->canBackPress()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 66
    invoke-super {p0}, Lccsancom/mbridge/msdk/activity/MBBaseActivity;->onBackPressed()V

    goto :goto_0

    .line 68
    :cond_2
    const-string v0, "AbstractJSActivity"

    const-string v1, "onBackPressed can\'t excute"

    invoke-static {v0, v1}, Lccsancom/mbridge/msdk/foundation/tools/q;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    :goto_0
    return-void
.end method

.method public onConfigurationChanged(Lccsanandroid/content/res/Configuration;)V
    .locals 1

    .line 50
    invoke-super {p0, p1}, Lccsancom/mbridge/msdk/activity/MBBaseActivity;->onConfigurationChanged(Lccsanandroid/content/res/Configuration;)V

    .line 51
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/video/signal/activity/AbstractJSActivity;->getJSCommon()Lccsancom/mbridge/msdk/video/signal/c;

    move-result-object v0

    invoke-interface {v0}, Lccsancom/mbridge/msdk/video/signal/c;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 52
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/video/signal/activity/AbstractJSActivity;->getActivityProxy()Lccsancom/mbridge/msdk/video/signal/a;

    move-result-object v0

    invoke-interface {v0, p1}, Lccsancom/mbridge/msdk/video/signal/a;->a(Lccsanandroid/content/res/Configuration;)V

    .line 54
    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .line 45
    invoke-super {p0}, Lccsancom/mbridge/msdk/activity/MBBaseActivity;->onDestroy()V

    .line 46
    return-void
.end method

.method public onPause()V
    .locals 2

    .line 36
    invoke-super {p0}, Lccsancom/mbridge/msdk/activity/MBBaseActivity;->onPause()V

    .line 37
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/video/signal/activity/AbstractJSActivity;->getJSCommon()Lccsancom/mbridge/msdk/video/signal/c;

    move-result-object v0

    invoke-interface {v0}, Lccsancom/mbridge/msdk/video/signal/c;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 38
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/video/signal/activity/AbstractJSActivity;->getActivityProxy()Lccsancom/mbridge/msdk/video/signal/a;

    move-result-object v0

    invoke-interface {v0}, Lccsancom/mbridge/msdk/video/signal/a;->a()V

    .line 40
    :cond_0
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/video/signal/activity/AbstractJSActivity;->getActivityProxy()Lccsancom/mbridge/msdk/video/signal/a;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lccsancom/mbridge/msdk/video/signal/a;->a(I)V

    .line 41
    return-void
.end method

.method public onResume()V
    .locals 2

    .line 27
    invoke-super {p0}, Lccsancom/mbridge/msdk/activity/MBBaseActivity;->onResume()V

    .line 28
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/video/signal/activity/AbstractJSActivity;->getJSCommon()Lccsancom/mbridge/msdk/video/signal/c;

    move-result-object v0

    invoke-interface {v0}, Lccsancom/mbridge/msdk/video/signal/c;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 29
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/video/signal/activity/AbstractJSActivity;->getActivityProxy()Lccsancom/mbridge/msdk/video/signal/a;

    move-result-object v0

    invoke-interface {v0}, Lccsancom/mbridge/msdk/video/signal/a;->b()V

    .line 31
    :cond_0
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/video/signal/activity/AbstractJSActivity;->getActivityProxy()Lccsancom/mbridge/msdk/video/signal/a;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lccsancom/mbridge/msdk/video/signal/a;->a(I)V

    .line 32
    return-void
.end method

.method public registerJsFactory(Lccsancom/mbridge/msdk/video/signal/factory/IJSFactory;)V
    .locals 0

    .line 22
    iput-object p1, p0, Lccsancom/mbridge/msdk/video/signal/activity/AbstractJSActivity;->jsFactory:Lccsancom/mbridge/msdk/video/signal/factory/IJSFactory;

    .line 23
    return-void
.end method
