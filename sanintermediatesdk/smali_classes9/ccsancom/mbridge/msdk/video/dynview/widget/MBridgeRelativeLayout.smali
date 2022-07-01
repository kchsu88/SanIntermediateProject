.class public Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeRelativeLayout;
.super Lccsanandroid/widget/RelativeLayout;
.source "MBridgeRelativeLayout.java"


# instance fields
.field private a:Lccsancom/mbridge/msdk/video/dynview/endcard/c;

.field private b:Z

.field private c:Lccsanandroid/animation/AnimatorSet;

.field private d:Z

.field private e:Lccsancom/mbridge/msdk/video/dynview/endcard/a;


# direct methods
.method public constructor <init>(Lccsanandroid/content/Context;)V
    .locals 0

    .line 24
    invoke-direct {p0, p1}, Lccsanandroid/widget/RelativeLayout;-><init>(Lccsanandroid/content/Context;)V

    .line 25
    return-void
.end method

.method public constructor <init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;)V
    .locals 0

    .line 28
    invoke-direct {p0, p1, p2}, Lccsanandroid/widget/RelativeLayout;-><init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;)V

    .line 29
    return-void
.end method

.method public constructor <init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;I)V
    .locals 0

    .line 32
    invoke-direct {p0, p1, p2, p3}, Lccsanandroid/widget/RelativeLayout;-><init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;I)V

    .line 33
    return-void
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 1

    .line 49
    invoke-super {p0}, Lccsanandroid/widget/RelativeLayout;->onAttachedToWindow()V

    .line 50
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeRelativeLayout;->c:Lccsanandroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    .line 52
    :try_start_0
    invoke-virtual {v0}, Lccsanandroid/animation/AnimatorSet;->start()V
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

.method protected onDetachedFromWindow()V
    .locals 2

    .line 61
    invoke-super {p0}, Lccsanandroid/widget/RelativeLayout;->onDetachedFromWindow()V

    .line 62
    iget-boolean v0, p0, Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeRelativeLayout;->b:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeRelativeLayout;->a:Lccsancom/mbridge/msdk/video/dynview/endcard/c;

    if-eqz v0, :cond_0

    .line 63
    const/4 v1, 0x1

    iput-boolean v1, p0, Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeRelativeLayout;->b:Z

    .line 64
    invoke-interface {v0}, Lccsancom/mbridge/msdk/video/dynview/endcard/c;->a()V

    .line 67
    :cond_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeRelativeLayout;->c:Lccsanandroid/animation/AnimatorSet;

    if-eqz v0, :cond_1

    .line 69
    :try_start_0
    invoke-virtual {v0}, Lccsanandroid/animation/AnimatorSet;->cancel()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 72
    goto :goto_0

    .line 70
    :catch_0
    move-exception v0

    .line 71
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 74
    :cond_1
    :goto_0
    return-void
.end method

.method protected onVisibilityChanged(Lccsanandroid/view/View;I)V
    .locals 0

    .line 78
    invoke-super {p0, p1, p2}, Lccsanandroid/widget/RelativeLayout;->onVisibilityChanged(Lccsanandroid/view/View;I)V

    .line 79
    instance-of p1, p1, Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeRelativeLayout;

    if-eqz p1, :cond_0

    if-nez p2, :cond_0

    .line 80
    iget-object p1, p0, Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeRelativeLayout;->e:Lccsancom/mbridge/msdk/video/dynview/endcard/a;

    if-eqz p1, :cond_0

    iget-boolean p2, p0, Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeRelativeLayout;->d:Z

    if-nez p2, :cond_0

    .line 81
    const/4 p2, 0x1

    iput-boolean p2, p0, Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeRelativeLayout;->d:Z

    .line 82
    invoke-interface {p1}, Lccsancom/mbridge/msdk/video/dynview/endcard/a;->a()V

    .line 85
    :cond_0
    return-void
.end method

.method public setAnimatorSet(Lccsanandroid/animation/AnimatorSet;)V
    .locals 0

    .line 36
    iput-object p1, p0, Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeRelativeLayout;->c:Lccsanandroid/animation/AnimatorSet;

    .line 37
    return-void
.end method

.method public setMoreOfferCacheReportCallBack(Lccsancom/mbridge/msdk/video/dynview/endcard/a;)V
    .locals 0

    .line 44
    iput-object p1, p0, Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeRelativeLayout;->e:Lccsancom/mbridge/msdk/video/dynview/endcard/a;

    .line 45
    return-void
.end method

.method public setMoreOfferShowFailedCallBack(Lccsancom/mbridge/msdk/video/dynview/endcard/c;)V
    .locals 0

    .line 40
    iput-object p1, p0, Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeRelativeLayout;->a:Lccsancom/mbridge/msdk/video/dynview/endcard/c;

    .line 41
    return-void
.end method
