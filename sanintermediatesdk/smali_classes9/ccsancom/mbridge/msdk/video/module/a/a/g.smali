.class public final Lccsancom/mbridge/msdk/video/module/a/a/g;
.super Lccsancom/mbridge/msdk/video/module/a/a/i;
.source "MiniCardProxyNotifyListener.java"


# instance fields
.field private a:Lccsancom/mbridge/msdk/video/module/MBridgeClickMiniCardView;


# direct methods
.method public constructor <init>(Lccsancom/mbridge/msdk/video/module/MBridgeClickMiniCardView;Lccsancom/mbridge/msdk/video/module/a/a;)V
    .locals 0

    .line 14
    invoke-direct {p0, p2}, Lccsancom/mbridge/msdk/video/module/a/a/i;-><init>(Lccsancom/mbridge/msdk/video/module/a/a;)V

    .line 15
    iput-object p1, p0, Lccsancom/mbridge/msdk/video/module/a/a/g;->a:Lccsancom/mbridge/msdk/video/module/MBridgeClickMiniCardView;

    .line 16
    return-void
.end method


# virtual methods
.method public final a(ILjava/lang/Object;)V
    .locals 3

    .line 21
    nop

    .line 22
    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 24
    :pswitch_0
    const/16 p1, 0x6b

    .line 25
    goto :goto_0

    .line 28
    :pswitch_1
    const/4 v0, 0x1

    .line 29
    goto :goto_0

    .line 31
    :pswitch_2
    iget-object v1, p0, Lccsancom/mbridge/msdk/video/module/a/a/g;->a:Lccsancom/mbridge/msdk/video/module/MBridgeClickMiniCardView;

    if-eqz v1, :cond_0

    .line 32
    invoke-virtual {v1}, Lccsancom/mbridge/msdk/video/module/MBridgeClickMiniCardView;->webviewshow()V

    .line 33
    iget-object v1, p0, Lccsancom/mbridge/msdk/video/module/a/a/g;->a:Lccsancom/mbridge/msdk/video/module/MBridgeClickMiniCardView;

    invoke-virtual {v1}, Lccsancom/mbridge/msdk/video/module/MBridgeClickMiniCardView;->getResources()Lccsanandroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Lccsanandroid/content/res/Resources;->getConfiguration()Lccsanandroid/content/res/Configuration;

    move-result-object v2

    invoke-virtual {v1, v2}, Lccsancom/mbridge/msdk/video/module/MBridgeClickMiniCardView;->onSelfConfigurationChanged(Lccsanandroid/content/res/Configuration;)V

    .line 37
    :cond_0
    :goto_0
    if-nez v0, :cond_1

    .line 38
    invoke-super {p0, p1, p2}, Lccsancom/mbridge/msdk/video/module/a/a/i;->a(ILjava/lang/Object;)V

    .line 40
    :cond_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
