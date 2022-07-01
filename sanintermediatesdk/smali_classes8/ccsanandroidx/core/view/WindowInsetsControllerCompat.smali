.class public final Lccsanandroidx/core/view/WindowInsetsControllerCompat;
.super Ljava/lang/Object;
.source "WindowInsetsControllerCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsanandroidx/core/view/WindowInsetsControllerCompat$Impl30;,
        Lccsanandroidx/core/view/WindowInsetsControllerCompat$Impl26;,
        Lccsanandroidx/core/view/WindowInsetsControllerCompat$Impl23;,
        Lccsanandroidx/core/view/WindowInsetsControllerCompat$Impl20;,
        Lccsanandroidx/core/view/WindowInsetsControllerCompat$Impl;,
        Lccsanandroidx/core/view/WindowInsetsControllerCompat$OnControllableInsetsChangedListener;
    }
.end annotation


# static fields
.field public static final BEHAVIOR_SHOW_BARS_BY_SWIPE:I = 0x1

.field public static final BEHAVIOR_SHOW_BARS_BY_TOUCH:I = 0x0

.field public static final BEHAVIOR_SHOW_TRANSIENT_BARS_BY_SWIPE:I = 0x2


# instance fields
.field private final mImpl:Lccsanandroidx/core/view/WindowInsetsControllerCompat$Impl;


# direct methods
.method public constructor <init>(Lccsanandroid/view/Window;Lccsanandroid/view/View;)V
    .locals 2
    .param p1, "window"    # Lccsanandroid/view/Window;
    .param p2, "view"    # Lccsanandroid/view/View;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "window",
            "view"
        }
    .end annotation

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_0

    .line 98
    new-instance v0, Lccsanandroidx/core/view/WindowInsetsControllerCompat$Impl30;

    invoke-direct {v0, p1, p0}, Lccsanandroidx/core/view/WindowInsetsControllerCompat$Impl30;-><init>(Lccsanandroid/view/Window;Lccsanandroidx/core/view/WindowInsetsControllerCompat;)V

    iput-object v0, p0, Lccsanandroidx/core/view/WindowInsetsControllerCompat;->mImpl:Lccsanandroidx/core/view/WindowInsetsControllerCompat$Impl;

    goto :goto_0

    .line 99
    :cond_0
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_1

    .line 100
    new-instance v0, Lccsanandroidx/core/view/WindowInsetsControllerCompat$Impl26;

    invoke-direct {v0, p1, p2}, Lccsanandroidx/core/view/WindowInsetsControllerCompat$Impl26;-><init>(Lccsanandroid/view/Window;Lccsanandroid/view/View;)V

    iput-object v0, p0, Lccsanandroidx/core/view/WindowInsetsControllerCompat;->mImpl:Lccsanandroidx/core/view/WindowInsetsControllerCompat$Impl;

    goto :goto_0

    .line 101
    :cond_1
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_2

    .line 102
    new-instance v0, Lccsanandroidx/core/view/WindowInsetsControllerCompat$Impl23;

    invoke-direct {v0, p1, p2}, Lccsanandroidx/core/view/WindowInsetsControllerCompat$Impl23;-><init>(Lccsanandroid/view/Window;Lccsanandroid/view/View;)V

    iput-object v0, p0, Lccsanandroidx/core/view/WindowInsetsControllerCompat;->mImpl:Lccsanandroidx/core/view/WindowInsetsControllerCompat$Impl;

    goto :goto_0

    .line 103
    :cond_2
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x14

    if-lt v0, v1, :cond_3

    .line 104
    new-instance v0, Lccsanandroidx/core/view/WindowInsetsControllerCompat$Impl20;

    invoke-direct {v0, p1, p2}, Lccsanandroidx/core/view/WindowInsetsControllerCompat$Impl20;-><init>(Lccsanandroid/view/Window;Lccsanandroid/view/View;)V

    iput-object v0, p0, Lccsanandroidx/core/view/WindowInsetsControllerCompat;->mImpl:Lccsanandroidx/core/view/WindowInsetsControllerCompat$Impl;

    goto :goto_0

    .line 106
    :cond_3
    new-instance v0, Lccsanandroidx/core/view/WindowInsetsControllerCompat$Impl;

    invoke-direct {v0}, Lccsanandroidx/core/view/WindowInsetsControllerCompat$Impl;-><init>()V

    iput-object v0, p0, Lccsanandroidx/core/view/WindowInsetsControllerCompat;->mImpl:Lccsanandroidx/core/view/WindowInsetsControllerCompat$Impl;

    .line 108
    :goto_0
    return-void
.end method

.method private constructor <init>(Lccsanandroid/view/WindowInsetsController;)V
    .locals 2
    .param p1, "insetsController"    # Lccsanandroid/view/WindowInsetsController;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "insetsController"
        }
    .end annotation

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_0

    .line 90
    new-instance v0, Lccsanandroidx/core/view/WindowInsetsControllerCompat$Impl30;

    invoke-direct {v0, p1, p0}, Lccsanandroidx/core/view/WindowInsetsControllerCompat$Impl30;-><init>(Lccsanandroid/view/WindowInsetsController;Lccsanandroidx/core/view/WindowInsetsControllerCompat;)V

    iput-object v0, p0, Lccsanandroidx/core/view/WindowInsetsControllerCompat;->mImpl:Lccsanandroidx/core/view/WindowInsetsControllerCompat$Impl;

    goto :goto_0

    .line 92
    :cond_0
    new-instance v0, Lccsanandroidx/core/view/WindowInsetsControllerCompat$Impl;

    invoke-direct {v0}, Lccsanandroidx/core/view/WindowInsetsControllerCompat$Impl;-><init>()V

    iput-object v0, p0, Lccsanandroidx/core/view/WindowInsetsControllerCompat;->mImpl:Lccsanandroidx/core/view/WindowInsetsControllerCompat$Impl;

    .line 94
    :goto_0
    return-void
.end method

.method public static toWindowInsetsControllerCompat(Lccsanandroid/view/WindowInsetsController;)Lccsanandroidx/core/view/WindowInsetsControllerCompat;
    .locals 1
    .param p0, "insetsController"    # Lccsanandroid/view/WindowInsetsController;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "insetsController"
        }
    .end annotation

    .line 122
    new-instance v0, Lccsanandroidx/core/view/WindowInsetsControllerCompat;

    invoke-direct {v0, p0}, Lccsanandroidx/core/view/WindowInsetsControllerCompat;-><init>(Lccsanandroid/view/WindowInsetsController;)V

    return-object v0
.end method


# virtual methods
.method public addOnControllableInsetsChangedListener(Lccsanandroidx/core/view/WindowInsetsControllerCompat$OnControllableInsetsChangedListener;)V
    .locals 1
    .param p1, "listener"    # Lccsanandroidx/core/view/WindowInsetsControllerCompat$OnControllableInsetsChangedListener;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    .line 289
    iget-object v0, p0, Lccsanandroidx/core/view/WindowInsetsControllerCompat;->mImpl:Lccsanandroidx/core/view/WindowInsetsControllerCompat$Impl;

    invoke-virtual {v0, p1}, Lccsanandroidx/core/view/WindowInsetsControllerCompat$Impl;->addOnControllableInsetsChangedListener(Lccsanandroidx/core/view/WindowInsetsControllerCompat$OnControllableInsetsChangedListener;)V

    .line 290
    return-void
.end method

.method public controlWindowInsetsAnimation(IJLccsanandroid/view/animation/Interpolator;Lccsanandroid/os/CancellationSignal;Lccsanandroidx/core/view/WindowInsetsAnimationControlListenerCompat;)V
    .locals 7
    .param p1, "types"    # I
    .param p2, "durationMillis"    # J
    .param p4, "interpolator"    # Lccsanandroid/view/animation/Interpolator;
    .param p5, "cancellationSignal"    # Lccsanandroid/os/CancellationSignal;
    .param p6, "listener"    # Lccsanandroidx/core/view/WindowInsetsAnimationControlListenerCompat;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "types",
            "durationMillis",
            "interpolator",
            "cancellationSignal",
            "listener"
        }
    .end annotation

    .line 250
    iget-object v0, p0, Lccsanandroidx/core/view/WindowInsetsControllerCompat;->mImpl:Lccsanandroidx/core/view/WindowInsetsControllerCompat$Impl;

    move v1, p1

    move-wide v2, p2

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lccsanandroidx/core/view/WindowInsetsControllerCompat$Impl;->controlWindowInsetsAnimation(IJLccsanandroid/view/animation/Interpolator;Lccsanandroid/os/CancellationSignal;Lccsanandroidx/core/view/WindowInsetsAnimationControlListenerCompat;)V

    .line 255
    return-void
.end method

.method public getSystemBarsBehavior()I
    .locals 1

    .line 275
    iget-object v0, p0, Lccsanandroidx/core/view/WindowInsetsControllerCompat;->mImpl:Lccsanandroidx/core/view/WindowInsetsControllerCompat$Impl;

    invoke-virtual {v0}, Lccsanandroidx/core/view/WindowInsetsControllerCompat$Impl;->getSystemBarsBehavior()I

    move-result v0

    return v0
.end method

.method public hide(I)V
    .locals 1
    .param p1, "types"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "types"
        }
    .end annotation

    .line 162
    iget-object v0, p0, Lccsanandroidx/core/view/WindowInsetsControllerCompat;->mImpl:Lccsanandroidx/core/view/WindowInsetsControllerCompat$Impl;

    invoke-virtual {v0, p1}, Lccsanandroidx/core/view/WindowInsetsControllerCompat$Impl;->hide(I)V

    .line 163
    return-void
.end method

.method public isAppearanceLightNavigationBars()Z
    .locals 1

    .line 199
    iget-object v0, p0, Lccsanandroidx/core/view/WindowInsetsControllerCompat;->mImpl:Lccsanandroidx/core/view/WindowInsetsControllerCompat$Impl;

    invoke-virtual {v0}, Lccsanandroidx/core/view/WindowInsetsControllerCompat$Impl;->isAppearanceLightNavigationBars()Z

    move-result v0

    return v0
.end method

.method public isAppearanceLightStatusBars()Z
    .locals 1

    .line 175
    iget-object v0, p0, Lccsanandroidx/core/view/WindowInsetsControllerCompat;->mImpl:Lccsanandroidx/core/view/WindowInsetsControllerCompat$Impl;

    invoke-virtual {v0}, Lccsanandroidx/core/view/WindowInsetsControllerCompat$Impl;->isAppearanceLightStatusBars()Z

    move-result v0

    return v0
.end method

.method public removeOnControllableInsetsChangedListener(Lccsanandroidx/core/view/WindowInsetsControllerCompat$OnControllableInsetsChangedListener;)V
    .locals 1
    .param p1, "listener"    # Lccsanandroidx/core/view/WindowInsetsControllerCompat$OnControllableInsetsChangedListener;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    .line 304
    iget-object v0, p0, Lccsanandroidx/core/view/WindowInsetsControllerCompat;->mImpl:Lccsanandroidx/core/view/WindowInsetsControllerCompat$Impl;

    invoke-virtual {v0, p1}, Lccsanandroidx/core/view/WindowInsetsControllerCompat$Impl;->removeOnControllableInsetsChangedListener(Lccsanandroidx/core/view/WindowInsetsControllerCompat$OnControllableInsetsChangedListener;)V

    .line 305
    return-void
.end method

.method public setAppearanceLightNavigationBars(Z)V
    .locals 1
    .param p1, "isLight"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isLight"
        }
    .end annotation

    .line 211
    iget-object v0, p0, Lccsanandroidx/core/view/WindowInsetsControllerCompat;->mImpl:Lccsanandroidx/core/view/WindowInsetsControllerCompat$Impl;

    invoke-virtual {v0, p1}, Lccsanandroidx/core/view/WindowInsetsControllerCompat$Impl;->setAppearanceLightNavigationBars(Z)V

    .line 212
    return-void
.end method

.method public setAppearanceLightStatusBars(Z)V
    .locals 1
    .param p1, "isLight"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isLight"
        }
    .end annotation

    .line 187
    iget-object v0, p0, Lccsanandroidx/core/view/WindowInsetsControllerCompat;->mImpl:Lccsanandroidx/core/view/WindowInsetsControllerCompat$Impl;

    invoke-virtual {v0, p1}, Lccsanandroidx/core/view/WindowInsetsControllerCompat$Impl;->setAppearanceLightStatusBars(Z)V

    .line 188
    return-void
.end method

.method public setSystemBarsBehavior(I)V
    .locals 1
    .param p1, "behavior"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "behavior"
        }
    .end annotation

    .line 264
    iget-object v0, p0, Lccsanandroidx/core/view/WindowInsetsControllerCompat;->mImpl:Lccsanandroidx/core/view/WindowInsetsControllerCompat$Impl;

    invoke-virtual {v0, p1}, Lccsanandroidx/core/view/WindowInsetsControllerCompat$Impl;->setSystemBarsBehavior(I)V

    .line 265
    return-void
.end method

.method public show(I)V
    .locals 1
    .param p1, "types"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "types"
        }
    .end annotation

    .line 148
    iget-object v0, p0, Lccsanandroidx/core/view/WindowInsetsControllerCompat;->mImpl:Lccsanandroidx/core/view/WindowInsetsControllerCompat$Impl;

    invoke-virtual {v0, p1}, Lccsanandroidx/core/view/WindowInsetsControllerCompat$Impl;->show(I)V

    .line 149
    return-void
.end method
