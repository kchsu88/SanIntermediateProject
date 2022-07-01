.class public final Lccsanandroidx/core/view/WindowInsetsAnimationCompat;
.super Ljava/lang/Object;
.source "WindowInsetsAnimationCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsanandroidx/core/view/WindowInsetsAnimationCompat$Impl30;,
        Lccsanandroidx/core/view/WindowInsetsAnimationCompat$Impl21;,
        Lccsanandroidx/core/view/WindowInsetsAnimationCompat$Impl;,
        Lccsanandroidx/core/view/WindowInsetsAnimationCompat$Callback;,
        Lccsanandroidx/core/view/WindowInsetsAnimationCompat$BoundsCompat;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "WindowInsetsAnimCompat"


# instance fields
.field private mImpl:Lccsanandroidx/core/view/WindowInsetsAnimationCompat$Impl;


# direct methods
.method public constructor <init>(ILccsanandroid/view/animation/Interpolator;J)V
    .locals 2
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

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_0

    .line 76
    new-instance v0, Lccsanandroidx/core/view/WindowInsetsAnimationCompat$Impl30;

    invoke-direct {v0, p1, p2, p3, p4}, Lccsanandroidx/core/view/WindowInsetsAnimationCompat$Impl30;-><init>(ILccsanandroid/view/animation/Interpolator;J)V

    iput-object v0, p0, Lccsanandroidx/core/view/WindowInsetsAnimationCompat;->mImpl:Lccsanandroidx/core/view/WindowInsetsAnimationCompat$Impl;

    goto :goto_0

    .line 77
    :cond_0
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_1

    .line 78
    new-instance v0, Lccsanandroidx/core/view/WindowInsetsAnimationCompat$Impl21;

    invoke-direct {v0, p1, p2, p3, p4}, Lccsanandroidx/core/view/WindowInsetsAnimationCompat$Impl21;-><init>(ILccsanandroid/view/animation/Interpolator;J)V

    iput-object v0, p0, Lccsanandroidx/core/view/WindowInsetsAnimationCompat;->mImpl:Lccsanandroidx/core/view/WindowInsetsAnimationCompat$Impl;

    goto :goto_0

    .line 80
    :cond_1
    new-instance v0, Lccsanandroidx/core/view/WindowInsetsAnimationCompat$Impl;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p2, p3, p4}, Lccsanandroidx/core/view/WindowInsetsAnimationCompat$Impl;-><init>(ILccsanandroid/view/animation/Interpolator;J)V

    iput-object v0, p0, Lccsanandroidx/core/view/WindowInsetsAnimationCompat;->mImpl:Lccsanandroidx/core/view/WindowInsetsAnimationCompat$Impl;

    .line 82
    :goto_0
    return-void
.end method

.method private constructor <init>(Lccsanandroid/view/WindowInsetsAnimation;)V
    .locals 4
    .param p1, "animation"    # Lccsanandroid/view/WindowInsetsAnimation;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "animation"
        }
    .end annotation

    .line 86
    const/4 v0, 0x0

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    invoke-direct {p0, v0, v1, v2, v3}, Lccsanandroidx/core/view/WindowInsetsAnimationCompat;-><init>(ILccsanandroid/view/animation/Interpolator;J)V

    .line 87
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_0

    .line 88
    new-instance v0, Lccsanandroidx/core/view/WindowInsetsAnimationCompat$Impl30;

    invoke-direct {v0, p1}, Lccsanandroidx/core/view/WindowInsetsAnimationCompat$Impl30;-><init>(Lccsanandroid/view/WindowInsetsAnimation;)V

    iput-object v0, p0, Lccsanandroidx/core/view/WindowInsetsAnimationCompat;->mImpl:Lccsanandroidx/core/view/WindowInsetsAnimationCompat$Impl;

    .line 90
    :cond_0
    return-void
.end method

.method static setCallback(Lccsanandroid/view/View;Lccsanandroidx/core/view/WindowInsetsAnimationCompat$Callback;)V
    .locals 2
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

    .line 524
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_0

    .line 525
    invoke-static {p0, p1}, Lccsanandroidx/core/view/WindowInsetsAnimationCompat$Impl30;->setCallback(Lccsanandroid/view/View;Lccsanandroidx/core/view/WindowInsetsAnimationCompat$Callback;)V

    goto :goto_0

    .line 526
    :cond_0
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_1

    .line 527
    invoke-static {p0, p1}, Lccsanandroidx/core/view/WindowInsetsAnimationCompat$Impl21;->setCallback(Lccsanandroid/view/View;Lccsanandroidx/core/view/WindowInsetsAnimationCompat$Callback;)V

    .line 530
    :cond_1
    :goto_0
    return-void
.end method

.method static toWindowInsetsAnimationCompat(Lccsanandroid/view/WindowInsetsAnimation;)Lccsanandroidx/core/view/WindowInsetsAnimationCompat;
    .locals 1
    .param p0, "windowInsetsAnimation"    # Lccsanandroid/view/WindowInsetsAnimation;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "windowInsetsAnimation"
        }
    .end annotation

    .line 329
    new-instance v0, Lccsanandroidx/core/view/WindowInsetsAnimationCompat;

    invoke-direct {v0, p0}, Lccsanandroidx/core/view/WindowInsetsAnimationCompat;-><init>(Lccsanandroid/view/WindowInsetsAnimation;)V

    return-object v0
.end method


# virtual methods
.method public getAlpha()F
    .locals 1

    .line 194
    iget-object v0, p0, Lccsanandroidx/core/view/WindowInsetsAnimationCompat;->mImpl:Lccsanandroidx/core/view/WindowInsetsAnimationCompat$Impl;

    invoke-virtual {v0}, Lccsanandroidx/core/view/WindowInsetsAnimationCompat$Impl;->getAlpha()F

    move-result v0

    return v0
.end method

.method public getDurationMillis()J
    .locals 2

    .line 168
    iget-object v0, p0, Lccsanandroidx/core/view/WindowInsetsAnimationCompat;->mImpl:Lccsanandroidx/core/view/WindowInsetsAnimationCompat$Impl;

    invoke-virtual {v0}, Lccsanandroidx/core/view/WindowInsetsAnimationCompat$Impl;->getDurationMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public getFraction()F
    .locals 1

    .line 121
    iget-object v0, p0, Lccsanandroidx/core/view/WindowInsetsAnimationCompat;->mImpl:Lccsanandroidx/core/view/WindowInsetsAnimationCompat$Impl;

    invoke-virtual {v0}, Lccsanandroidx/core/view/WindowInsetsAnimationCompat$Impl;->getFraction()F

    move-result v0

    return v0
.end method

.method public getInterpolatedFraction()F
    .locals 1

    .line 148
    iget-object v0, p0, Lccsanandroidx/core/view/WindowInsetsAnimationCompat;->mImpl:Lccsanandroidx/core/view/WindowInsetsAnimationCompat$Impl;

    invoke-virtual {v0}, Lccsanandroidx/core/view/WindowInsetsAnimationCompat$Impl;->getInterpolatedFraction()F

    move-result v0

    return v0
.end method

.method public getInterpolator()Lccsanandroid/view/animation/Interpolator;
    .locals 1

    .line 160
    iget-object v0, p0, Lccsanandroidx/core/view/WindowInsetsAnimationCompat;->mImpl:Lccsanandroidx/core/view/WindowInsetsAnimationCompat$Impl;

    invoke-virtual {v0}, Lccsanandroidx/core/view/WindowInsetsAnimationCompat$Impl;->getInterpolator()Lccsanandroid/view/animation/Interpolator;

    move-result-object v0

    return-object v0
.end method

.method public getTypeMask()I
    .locals 1

    .line 97
    iget-object v0, p0, Lccsanandroidx/core/view/WindowInsetsAnimationCompat;->mImpl:Lccsanandroidx/core/view/WindowInsetsAnimationCompat$Impl;

    invoke-virtual {v0}, Lccsanandroidx/core/view/WindowInsetsAnimationCompat$Impl;->getTypeMask()I

    move-result v0

    return v0
.end method

.method public setAlpha(F)V
    .locals 1
    .param p1, "alpha"    # F
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "alpha"
        }
    .end annotation

    .line 209
    iget-object v0, p0, Lccsanandroidx/core/view/WindowInsetsAnimationCompat;->mImpl:Lccsanandroidx/core/view/WindowInsetsAnimationCompat$Impl;

    invoke-virtual {v0, p1}, Lccsanandroidx/core/view/WindowInsetsAnimationCompat$Impl;->setAlpha(F)V

    .line 210
    return-void
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

    .line 184
    iget-object v0, p0, Lccsanandroidx/core/view/WindowInsetsAnimationCompat;->mImpl:Lccsanandroidx/core/view/WindowInsetsAnimationCompat$Impl;

    invoke-virtual {v0, p1}, Lccsanandroidx/core/view/WindowInsetsAnimationCompat$Impl;->setFraction(F)V

    .line 185
    return-void
.end method
