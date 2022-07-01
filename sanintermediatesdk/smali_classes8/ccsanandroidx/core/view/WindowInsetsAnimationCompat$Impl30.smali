.class Lccsanandroidx/core/view/WindowInsetsAnimationCompat$Impl30;
.super Lccsanandroidx/core/view/WindowInsetsAnimationCompat$Impl;
.source "WindowInsetsAnimationCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsanandroidx/core/view/WindowInsetsAnimationCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Impl30"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsanandroidx/core/view/WindowInsetsAnimationCompat$Impl30$ProxyCallback;
    }
.end annotation


# instance fields
.field private final mWrapped:Lccsanandroid/view/WindowInsetsAnimation;


# direct methods
.method constructor <init>(ILccsanandroid/view/animation/Interpolator;J)V
    .locals 1
    .param p1, "typeMask"    # I
    .param p2, "interpolator"    # Lccsanandroid/view/animation/Interpolator;
    .param p3, "durationMillis"    # J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "typeMask",
            "interpolator",
            "durationMillis"
        }
    .end annotation

    .line 928
    new-instance v0, Lccsanandroid/view/WindowInsetsAnimation;

    invoke-direct {v0, p1, p2, p3, p4}, Lccsanandroid/view/WindowInsetsAnimation;-><init>(ILccsanandroid/view/animation/Interpolator;J)V

    invoke-direct {p0, v0}, Lccsanandroidx/core/view/WindowInsetsAnimationCompat$Impl30;-><init>(Lccsanandroid/view/WindowInsetsAnimation;)V

    .line 929
    return-void
.end method

.method constructor <init>(Lccsanandroid/view/WindowInsetsAnimation;)V
    .locals 4
    .param p1, "wrapped"    # Lccsanandroid/view/WindowInsetsAnimation;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "wrapped"
        }
    .end annotation

    .line 923
    const/4 v0, 0x0

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    invoke-direct {p0, v0, v1, v2, v3}, Lccsanandroidx/core/view/WindowInsetsAnimationCompat$Impl;-><init>(ILccsanandroid/view/animation/Interpolator;J)V

    .line 924
    iput-object p1, p0, Lccsanandroidx/core/view/WindowInsetsAnimationCompat$Impl30;->mWrapped:Lccsanandroid/view/WindowInsetsAnimation;

    .line 925
    return-void
.end method

.method public static createPlatformBounds(Lccsanandroidx/core/view/WindowInsetsAnimationCompat$BoundsCompat;)Lccsanandroid/view/WindowInsetsAnimation$Bounds;
    .locals 3
    .param p0, "bounds"    # Lccsanandroidx/core/view/WindowInsetsAnimationCompat$BoundsCompat;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bounds"
        }
    .end annotation

    .line 1043
    new-instance v0, Lccsanandroid/view/WindowInsetsAnimation$Bounds;

    invoke-virtual {p0}, Lccsanandroidx/core/view/WindowInsetsAnimationCompat$BoundsCompat;->getLowerBound()Lccsanandroidx/core/graphics/Insets;

    move-result-object v1

    invoke-virtual {v1}, Lccsanandroidx/core/graphics/Insets;->toPlatformInsets()Lccsanandroid/graphics/Insets;

    move-result-object v1

    .line 1044
    invoke-virtual {p0}, Lccsanandroidx/core/view/WindowInsetsAnimationCompat$BoundsCompat;->getUpperBound()Lccsanandroidx/core/graphics/Insets;

    move-result-object v2

    invoke-virtual {v2}, Lccsanandroidx/core/graphics/Insets;->toPlatformInsets()Lccsanandroid/graphics/Insets;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lccsanandroid/view/WindowInsetsAnimation$Bounds;-><init>(Lccsanandroid/graphics/Insets;Lccsanandroid/graphics/Insets;)V

    .line 1043
    return-object v0
.end method

.method public static getHigherBounds(Lccsanandroid/view/WindowInsetsAnimation$Bounds;)Lccsanandroidx/core/graphics/Insets;
    .locals 1
    .param p0, "bounds"    # Lccsanandroid/view/WindowInsetsAnimation$Bounds;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bounds"
        }
    .end annotation

    .line 1054
    invoke-virtual {p0}, Lccsanandroid/view/WindowInsetsAnimation$Bounds;->getUpperBound()Lccsanandroid/graphics/Insets;

    move-result-object v0

    invoke-static {v0}, Lccsanandroidx/core/graphics/Insets;->toCompatInsets(Lccsanandroid/graphics/Insets;)Lccsanandroidx/core/graphics/Insets;

    move-result-object v0

    return-object v0
.end method

.method public static getLowerBounds(Lccsanandroid/view/WindowInsetsAnimation$Bounds;)Lccsanandroidx/core/graphics/Insets;
    .locals 1
    .param p0, "bounds"    # Lccsanandroid/view/WindowInsetsAnimation$Bounds;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bounds"
        }
    .end annotation

    .line 1049
    invoke-virtual {p0}, Lccsanandroid/view/WindowInsetsAnimation$Bounds;->getLowerBound()Lccsanandroid/graphics/Insets;

    move-result-object v0

    invoke-static {v0}, Lccsanandroidx/core/graphics/Insets;->toCompatInsets(Lccsanandroid/graphics/Insets;)Lccsanandroidx/core/graphics/Insets;

    move-result-object v0

    return-object v0
.end method

.method public static setCallback(Lccsanandroid/view/View;Lccsanandroidx/core/view/WindowInsetsAnimationCompat$Callback;)V
    .locals 1
    .param p0, "view"    # Lccsanandroid/view/View;
    .param p1, "callback"    # Lccsanandroidx/core/view/WindowInsetsAnimationCompat$Callback;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "view",
            "callback"
        }
    .end annotation

    .line 1036
    if-eqz p1, :cond_0

    new-instance v0, Lccsanandroidx/core/view/WindowInsetsAnimationCompat$Impl30$ProxyCallback;

    invoke-direct {v0, p1}, Lccsanandroidx/core/view/WindowInsetsAnimationCompat$Impl30$ProxyCallback;-><init>(Lccsanandroidx/core/view/WindowInsetsAnimationCompat$Callback;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1037
    .local v0, "platformCallback":Lccsanandroid/view/WindowInsetsAnimation$Callback;
    :goto_0
    invoke-virtual {p0, v0}, Lccsanandroid/view/View;->setWindowInsetsAnimationCallback(Lccsanandroid/view/WindowInsetsAnimation$Callback;)V

    .line 1038
    return-void
.end method


# virtual methods
.method public getDurationMillis()J
    .locals 2

    .line 944
    iget-object v0, p0, Lccsanandroidx/core/view/WindowInsetsAnimationCompat$Impl30;->mWrapped:Lccsanandroid/view/WindowInsetsAnimation;

    invoke-virtual {v0}, Lccsanandroid/view/WindowInsetsAnimation;->getDurationMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public getFraction()F
    .locals 1

    .line 949
    iget-object v0, p0, Lccsanandroidx/core/view/WindowInsetsAnimationCompat$Impl30;->mWrapped:Lccsanandroid/view/WindowInsetsAnimation;

    invoke-virtual {v0}, Lccsanandroid/view/WindowInsetsAnimation;->getFraction()F

    move-result v0

    return v0
.end method

.method public getInterpolatedFraction()F
    .locals 1

    .line 959
    iget-object v0, p0, Lccsanandroidx/core/view/WindowInsetsAnimationCompat$Impl30;->mWrapped:Lccsanandroid/view/WindowInsetsAnimation;

    invoke-virtual {v0}, Lccsanandroid/view/WindowInsetsAnimation;->getInterpolatedFraction()F

    move-result v0

    return v0
.end method

.method public getInterpolator()Lccsanandroid/view/animation/Interpolator;
    .locals 1

    .line 939
    iget-object v0, p0, Lccsanandroidx/core/view/WindowInsetsAnimationCompat$Impl30;->mWrapped:Lccsanandroid/view/WindowInsetsAnimation;

    invoke-virtual {v0}, Lccsanandroid/view/WindowInsetsAnimation;->getInterpolator()Lccsanandroid/view/animation/Interpolator;

    move-result-object v0

    return-object v0
.end method

.method public getTypeMask()I
    .locals 1

    .line 933
    iget-object v0, p0, Lccsanandroidx/core/view/WindowInsetsAnimationCompat$Impl30;->mWrapped:Lccsanandroid/view/WindowInsetsAnimation;

    invoke-virtual {v0}, Lccsanandroid/view/WindowInsetsAnimation;->getTypeMask()I

    move-result v0

    return v0
.end method

.method public setFraction(F)V
    .locals 1
    .param p1, "fraction"    # F
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "fraction"
        }
    .end annotation

    .line 954
    iget-object v0, p0, Lccsanandroidx/core/view/WindowInsetsAnimationCompat$Impl30;->mWrapped:Lccsanandroid/view/WindowInsetsAnimation;

    invoke-virtual {v0, p1}, Lccsanandroid/view/WindowInsetsAnimation;->setFraction(F)V

    .line 955
    return-void
.end method
