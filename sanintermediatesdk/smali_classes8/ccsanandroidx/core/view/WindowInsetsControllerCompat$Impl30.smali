.class Lccsanandroidx/core/view/WindowInsetsControllerCompat$Impl30;
.super Lccsanandroidx/core/view/WindowInsetsControllerCompat$Impl;
.source "WindowInsetsControllerCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsanandroidx/core/view/WindowInsetsControllerCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Impl30"
.end annotation


# instance fields
.field final mCompatController:Lccsanandroidx/core/view/WindowInsetsControllerCompat;

.field final mInsetsController:Lccsanandroid/view/WindowInsetsController;

.field private final mListeners:Lccsanandroidx/collection/SimpleArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lccsanandroidx/collection/SimpleArrayMap<",
            "Lccsanandroidx/core/view/WindowInsetsControllerCompat$OnControllableInsetsChangedListener;",
            "Lccsanandroid/view/WindowInsetsController$OnControllableInsetsChangedListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lccsanandroid/view/Window;Lccsanandroidx/core/view/WindowInsetsControllerCompat;)V
    .locals 1
    .param p1, "window"    # Lccsanandroid/view/Window;
    .param p2, "compatController"    # Lccsanandroidx/core/view/WindowInsetsControllerCompat;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "window",
            "compatController"
        }
    .end annotation

    .line 607
    invoke-virtual {p1}, Lccsanandroid/view/Window;->getInsetsController()Lccsanandroid/view/WindowInsetsController;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lccsanandroidx/core/view/WindowInsetsControllerCompat$Impl30;-><init>(Lccsanandroid/view/WindowInsetsController;Lccsanandroidx/core/view/WindowInsetsControllerCompat;)V

    .line 608
    return-void
.end method

.method constructor <init>(Lccsanandroid/view/WindowInsetsController;Lccsanandroidx/core/view/WindowInsetsControllerCompat;)V
    .locals 1
    .param p1, "insetsController"    # Lccsanandroid/view/WindowInsetsController;
    .param p2, "compatController"    # Lccsanandroidx/core/view/WindowInsetsControllerCompat;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "insetsController",
            "compatController"
        }
    .end annotation

    .line 611
    invoke-direct {p0}, Lccsanandroidx/core/view/WindowInsetsControllerCompat$Impl;-><init>()V

    .line 601
    new-instance v0, Lccsanandroidx/collection/SimpleArrayMap;

    invoke-direct {v0}, Lccsanandroidx/collection/SimpleArrayMap;-><init>()V

    iput-object v0, p0, Lccsanandroidx/core/view/WindowInsetsControllerCompat$Impl30;->mListeners:Lccsanandroidx/collection/SimpleArrayMap;

    .line 612
    iput-object p1, p0, Lccsanandroidx/core/view/WindowInsetsControllerCompat$Impl30;->mInsetsController:Lccsanandroid/view/WindowInsetsController;

    .line 613
    iput-object p2, p0, Lccsanandroidx/core/view/WindowInsetsControllerCompat$Impl30;->mCompatController:Lccsanandroidx/core/view/WindowInsetsControllerCompat;

    .line 614
    return-void
.end method


# virtual methods
.method addOnControllableInsetsChangedListener(Lccsanandroidx/core/view/WindowInsetsControllerCompat$OnControllableInsetsChangedListener;)V
    .locals 2
    .param p1, "listener"    # Lccsanandroidx/core/view/WindowInsetsControllerCompat$OnControllableInsetsChangedListener;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "listener"
        }
    .end annotation

    .line 731
    iget-object v0, p0, Lccsanandroidx/core/view/WindowInsetsControllerCompat$Impl30;->mListeners:Lccsanandroidx/collection/SimpleArrayMap;

    invoke-virtual {v0, p1}, Lccsanandroidx/collection/SimpleArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 733
    return-void

    .line 736
    :cond_0
    new-instance v0, Lccsanandroidx/core/view/WindowInsetsControllerCompat$Impl30$2;

    invoke-direct {v0, p0, p1}, Lccsanandroidx/core/view/WindowInsetsControllerCompat$Impl30$2;-><init>(Lccsanandroidx/core/view/WindowInsetsControllerCompat$Impl30;Lccsanandroidx/core/view/WindowInsetsControllerCompat$OnControllableInsetsChangedListener;)V

    .line 749
    .local v0, "fwListener":Lccsanandroid/view/WindowInsetsController$OnControllableInsetsChangedListener;
    iget-object v1, p0, Lccsanandroidx/core/view/WindowInsetsControllerCompat$Impl30;->mListeners:Lccsanandroidx/collection/SimpleArrayMap;

    invoke-virtual {v1, p1, v0}, Lccsanandroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 750
    iget-object v1, p0, Lccsanandroidx/core/view/WindowInsetsControllerCompat$Impl30;->mInsetsController:Lccsanandroid/view/WindowInsetsController;

    invoke-interface {v1, v0}, Lccsanandroid/view/WindowInsetsController;->addOnControllableInsetsChangedListener(Lccsanandroid/view/WindowInsetsController$OnControllableInsetsChangedListener;)V

    .line 751
    return-void
.end method

.method controlWindowInsetsAnimation(IJLccsanandroid/view/animation/Interpolator;Lccsanandroid/os/CancellationSignal;Lccsanandroidx/core/view/WindowInsetsAnimationControlListenerCompat;)V
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
            0x10
        }
        names = {
            "types",
            "durationMillis",
            "interpolator",
            "cancellationSignal",
            "listener"
        }
    .end annotation

    .line 670
    new-instance v6, Lccsanandroidx/core/view/WindowInsetsControllerCompat$Impl30$1;

    invoke-direct {v6, p0, p6}, Lccsanandroidx/core/view/WindowInsetsControllerCompat$Impl30$1;-><init>(Lccsanandroidx/core/view/WindowInsetsControllerCompat$Impl30;Lccsanandroidx/core/view/WindowInsetsAnimationControlListenerCompat;)V

    .line 696
    .local v6, "fwListener":Lccsanandroid/view/WindowInsetsAnimationControlListener;
    iget-object v0, p0, Lccsanandroidx/core/view/WindowInsetsControllerCompat$Impl30;->mInsetsController:Lccsanandroid/view/WindowInsetsController;

    move v1, p1

    move-wide v2, p2

    move-object v4, p4

    move-object v5, p5

    invoke-interface/range {v0 .. v6}, Lccsanandroid/view/WindowInsetsController;->controlWindowInsetsAnimation(IJLccsanandroid/view/animation/Interpolator;Lccsanandroid/os/CancellationSignal;Lccsanandroid/view/WindowInsetsAnimationControlListener;)V

    .line 701
    return-void
.end method

.method getSystemBarsBehavior()I
    .locals 1

    .line 723
    iget-object v0, p0, Lccsanandroidx/core/view/WindowInsetsControllerCompat$Impl30;->mInsetsController:Lccsanandroid/view/WindowInsetsController;

    invoke-interface {v0}, Lccsanandroid/view/WindowInsetsController;->getSystemBarsBehavior()I

    move-result v0

    return v0
.end method

.method hide(I)V
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

    .line 623
    iget-object v0, p0, Lccsanandroidx/core/view/WindowInsetsControllerCompat$Impl30;->mInsetsController:Lccsanandroid/view/WindowInsetsController;

    invoke-interface {v0, p1}, Lccsanandroid/view/WindowInsetsController;->hide(I)V

    .line 624
    return-void
.end method

.method public isAppearanceLightNavigationBars()Z
    .locals 1

    .line 647
    iget-object v0, p0, Lccsanandroidx/core/view/WindowInsetsControllerCompat$Impl30;->mInsetsController:Lccsanandroid/view/WindowInsetsController;

    invoke-interface {v0}, Lccsanandroid/view/WindowInsetsController;->getSystemBarsAppearance()I

    move-result v0

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isAppearanceLightStatusBars()Z
    .locals 1

    .line 628
    iget-object v0, p0, Lccsanandroidx/core/view/WindowInsetsControllerCompat$Impl30;->mInsetsController:Lccsanandroid/view/WindowInsetsController;

    invoke-interface {v0}, Lccsanandroid/view/WindowInsetsController;->getSystemBarsAppearance()I

    move-result v0

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method removeOnControllableInsetsChangedListener(Lccsanandroidx/core/view/WindowInsetsControllerCompat$OnControllableInsetsChangedListener;)V
    .locals 2
    .param p1, "listener"    # Lccsanandroidx/core/view/WindowInsetsControllerCompat$OnControllableInsetsChangedListener;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    .line 758
    iget-object v0, p0, Lccsanandroidx/core/view/WindowInsetsControllerCompat$Impl30;->mListeners:Lccsanandroidx/collection/SimpleArrayMap;

    invoke-virtual {v0, p1}, Lccsanandroidx/collection/SimpleArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsanandroid/view/WindowInsetsController$OnControllableInsetsChangedListener;

    .line 759
    .local v0, "fwListener":Lccsanandroid/view/WindowInsetsController$OnControllableInsetsChangedListener;
    if-eqz v0, :cond_0

    .line 760
    iget-object v1, p0, Lccsanandroidx/core/view/WindowInsetsControllerCompat$Impl30;->mInsetsController:Lccsanandroid/view/WindowInsetsController;

    invoke-interface {v1, v0}, Lccsanandroid/view/WindowInsetsController;->removeOnControllableInsetsChangedListener(Lccsanandroid/view/WindowInsetsController$OnControllableInsetsChangedListener;)V

    .line 762
    :cond_0
    return-void
.end method

.method public setAppearanceLightNavigationBars(Z)V
    .locals 3
    .param p1, "isLight"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isLight"
        }
    .end annotation

    .line 653
    const/16 v0, 0x10

    if-eqz p1, :cond_0

    .line 654
    iget-object v1, p0, Lccsanandroidx/core/view/WindowInsetsControllerCompat$Impl30;->mInsetsController:Lccsanandroid/view/WindowInsetsController;

    invoke-interface {v1, v0, v0}, Lccsanandroid/view/WindowInsetsController;->setSystemBarsAppearance(II)V

    goto :goto_0

    .line 658
    :cond_0
    iget-object v1, p0, Lccsanandroidx/core/view/WindowInsetsControllerCompat$Impl30;->mInsetsController:Lccsanandroid/view/WindowInsetsController;

    const/4 v2, 0x0

    invoke-interface {v1, v2, v0}, Lccsanandroid/view/WindowInsetsController;->setSystemBarsAppearance(II)V

    .line 662
    :goto_0
    return-void
.end method

.method public setAppearanceLightStatusBars(Z)V
    .locals 3
    .param p1, "isLight"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isLight"
        }
    .end annotation

    .line 634
    const/16 v0, 0x8

    if-eqz p1, :cond_0

    .line 635
    iget-object v1, p0, Lccsanandroidx/core/view/WindowInsetsControllerCompat$Impl30;->mInsetsController:Lccsanandroid/view/WindowInsetsController;

    invoke-interface {v1, v0, v0}, Lccsanandroid/view/WindowInsetsController;->setSystemBarsAppearance(II)V

    goto :goto_0

    .line 639
    :cond_0
    iget-object v1, p0, Lccsanandroidx/core/view/WindowInsetsControllerCompat$Impl30;->mInsetsController:Lccsanandroid/view/WindowInsetsController;

    const/4 v2, 0x0

    invoke-interface {v1, v2, v0}, Lccsanandroid/view/WindowInsetsController;->setSystemBarsAppearance(II)V

    .line 643
    :goto_0
    return-void
.end method

.method setSystemBarsBehavior(I)V
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

    .line 711
    iget-object v0, p0, Lccsanandroidx/core/view/WindowInsetsControllerCompat$Impl30;->mInsetsController:Lccsanandroid/view/WindowInsetsController;

    invoke-interface {v0, p1}, Lccsanandroid/view/WindowInsetsController;->setSystemBarsBehavior(I)V

    .line 712
    return-void
.end method

.method show(I)V
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

    .line 618
    iget-object v0, p0, Lccsanandroidx/core/view/WindowInsetsControllerCompat$Impl30;->mInsetsController:Lccsanandroid/view/WindowInsetsController;

    invoke-interface {v0, p1}, Lccsanandroid/view/WindowInsetsController;->show(I)V

    .line 619
    return-void
.end method
