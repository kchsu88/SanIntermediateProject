.class final Lccsanandroidx/transition/Slide$1;
.super Lccsanandroidx/transition/Slide$CalculateSlideHorizontal;
.source "Slide.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsanandroidx/transition/Slide;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 1

    .line 93
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lccsanandroidx/transition/Slide$CalculateSlideHorizontal;-><init>(Lccsanandroidx/transition/Slide$1;)V

    return-void
.end method


# virtual methods
.method public getGoneX(Lccsanandroid/view/ViewGroup;Lccsanandroid/view/View;)F
    .locals 2
    .param p1, "sceneRoot"    # Lccsanandroid/view/ViewGroup;
    .param p2, "view"    # Lccsanandroid/view/View;

    .line 96
    invoke-virtual {p2}, Lccsanandroid/view/View;->getTranslationX()F

    move-result v0

    invoke-virtual {p1}, Lccsanandroid/view/ViewGroup;->getWidth()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v0, v1

    return v0
.end method
