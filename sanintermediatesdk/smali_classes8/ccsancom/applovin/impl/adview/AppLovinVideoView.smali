.class public Lccsancom/applovin/impl/adview/AppLovinVideoView;
.super Lccsanandroid/widget/VideoView;


# direct methods
.method public constructor <init>(Lccsanandroid/content/Context;Lccsancom/applovin/impl/sdk/k;)V
    .locals 1

    const/4 p2, 0x0

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lccsanandroid/widget/VideoView;-><init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public setVideoSize(II)V
    .locals 1

    invoke-virtual {p0}, Lccsancom/applovin/impl/adview/AppLovinVideoView;->getHolder()Lccsanandroid/view/SurfaceHolder;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lccsanandroid/view/SurfaceHolder;->setFixedSize(II)V

    invoke-virtual {p0}, Lccsancom/applovin/impl/adview/AppLovinVideoView;->requestLayout()V

    invoke-virtual {p0}, Lccsancom/applovin/impl/adview/AppLovinVideoView;->invalidate()V

    return-void
.end method
