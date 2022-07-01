.class public Lccsancom/mbridge/msdk/video/module/MBridgePlayableView;
.super Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;
.source "MBridgePlayableView.java"


# direct methods
.method public constructor <init>(Lccsanandroid/content/Context;)V
    .locals 0

    .line 10
    invoke-direct {p0, p1}, Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;-><init>(Lccsanandroid/content/Context;)V

    .line 11
    return-void
.end method

.method public constructor <init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;)V
    .locals 0

    .line 14
    invoke-direct {p0, p1, p2}, Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;-><init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;)V

    .line 15
    return-void
.end method


# virtual methods
.method protected final a()Ljava/lang/String;
    .locals 1

    .line 24
    invoke-super {p0}, Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public init(Lccsanandroid/content/Context;)V
    .locals 0

    .line 19
    invoke-super {p0, p1}, Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;->init(Lccsanandroid/content/Context;)V

    .line 20
    return-void
.end method

.method public onBackPress()V
    .locals 0

    .line 34
    invoke-super {p0}, Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;->onBackPress()V

    .line 35
    return-void
.end method

.method public preLoadData(Lccsancom/mbridge/msdk/video/signal/factory/b;)V
    .locals 0

    .line 29
    invoke-super {p0, p1}, Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;->preLoadData(Lccsancom/mbridge/msdk/video/signal/factory/b;)V

    .line 30
    const/4 p1, 0x1

    invoke-super {p0, p1}, Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;->setLoadPlayable(Z)V

    .line 31
    return-void
.end method
