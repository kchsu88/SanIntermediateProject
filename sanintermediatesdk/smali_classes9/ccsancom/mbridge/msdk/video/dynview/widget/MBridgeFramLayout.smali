.class public Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeFramLayout;
.super Lccsanandroid/widget/FrameLayout;
.source "MBridgeFramLayout.java"


# instance fields
.field private a:Lccsanandroid/animation/AnimatorSet;


# direct methods
.method public constructor <init>(Lccsanandroid/content/Context;)V
    .locals 0

    .line 20
    invoke-direct {p0, p1}, Lccsanandroid/widget/FrameLayout;-><init>(Lccsanandroid/content/Context;)V

    .line 21
    return-void
.end method

.method public constructor <init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;)V
    .locals 0

    .line 24
    invoke-direct {p0, p1, p2}, Lccsanandroid/widget/FrameLayout;-><init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;)V

    .line 25
    return-void
.end method

.method public constructor <init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;I)V
    .locals 0

    .line 28
    invoke-direct {p0, p1, p2, p3}, Lccsanandroid/widget/FrameLayout;-><init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;I)V

    .line 29
    return-void
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 1

    .line 37
    invoke-super {p0}, Lccsanandroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 38
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeFramLayout;->a:Lccsanandroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    .line 40
    :try_start_0
    invoke-virtual {v0}, Lccsanandroid/animation/AnimatorSet;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 43
    goto :goto_0

    .line 41
    :catch_0
    move-exception v0

    .line 42
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 45
    :cond_0
    :goto_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 49
    invoke-super {p0}, Lccsanandroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 50
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeFramLayout;->a:Lccsanandroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    .line 52
    :try_start_0
    invoke-virtual {v0}, Lccsanandroid/animation/AnimatorSet;->cancel()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 55
    goto :goto_0

    .line 53
    :catch_0
    move-exception v0

    .line 54
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 57
    :cond_0
    :goto_0
    return-void
.end method

.method public setAnimatorSet(Lccsanandroid/animation/AnimatorSet;)V
    .locals 0

    .line 32
    iput-object p1, p0, Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeFramLayout;->a:Lccsanandroid/animation/AnimatorSet;

    .line 33
    return-void
.end method
