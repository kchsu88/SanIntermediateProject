.class Lccsanandroidx/core/view/WindowInsetsAnimationControllerCompat$Impl30;
.super Lccsanandroidx/core/view/WindowInsetsAnimationControllerCompat$Impl;
.source "WindowInsetsAnimationControllerCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsanandroidx/core/view/WindowInsetsAnimationControllerCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Impl30"
.end annotation


# instance fields
.field private final mController:Lccsanandroid/view/WindowInsetsAnimationController;


# direct methods
.method constructor <init>(Lccsanandroid/view/WindowInsetsAnimationController;)V
    .locals 0
    .param p1, "controller"    # Lccsanandroid/view/WindowInsetsAnimationController;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "controller"
        }
    .end annotation

    .line 298
    invoke-direct {p0}, Lccsanandroidx/core/view/WindowInsetsAnimationControllerCompat$Impl;-><init>()V

    .line 299
    iput-object p1, p0, Lccsanandroidx/core/view/WindowInsetsAnimationControllerCompat$Impl30;->mController:Lccsanandroid/view/WindowInsetsAnimationController;

    .line 300
    return-void
.end method


# virtual methods
.method finish(Z)V
    .locals 1
    .param p1, "shown"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "shown"
        }
    .end annotation

    .line 345
    iget-object v0, p0, Lccsanandroidx/core/view/WindowInsetsAnimationControllerCompat$Impl30;->mController:Lccsanandroid/view/WindowInsetsAnimationController;

    invoke-interface {v0, p1}, Lccsanandroid/view/WindowInsetsAnimationController;->finish(Z)V

    .line 346
    return-void
.end method

.method public getCurrentAlpha()F
    .locals 1

    .line 327
    iget-object v0, p0, Lccsanandroidx/core/view/WindowInsetsAnimationControllerCompat$Impl30;->mController:Lccsanandroid/view/WindowInsetsAnimationController;

    invoke-interface {v0}, Lccsanandroid/view/WindowInsetsAnimationController;->getCurrentAlpha()F

    move-result v0

    return v0
.end method

.method public getCurrentFraction()F
    .locals 1

    .line 322
    iget-object v0, p0, Lccsanandroidx/core/view/WindowInsetsAnimationControllerCompat$Impl30;->mController:Lccsanandroid/view/WindowInsetsAnimationController;

    invoke-interface {v0}, Lccsanandroid/view/WindowInsetsAnimationController;->getCurrentFraction()F

    move-result v0

    return v0
.end method

.method public getCurrentInsets()Lccsanandroidx/core/graphics/Insets;
    .locals 1

    .line 317
    iget-object v0, p0, Lccsanandroidx/core/view/WindowInsetsAnimationControllerCompat$Impl30;->mController:Lccsanandroid/view/WindowInsetsAnimationController;

    invoke-interface {v0}, Lccsanandroid/view/WindowInsetsAnimationController;->getCurrentInsets()Lccsanandroid/graphics/Insets;

    move-result-object v0

    invoke-static {v0}, Lccsanandroidx/core/graphics/Insets;->toCompatInsets(Lccsanandroid/graphics/Insets;)Lccsanandroidx/core/graphics/Insets;

    move-result-object v0

    return-object v0
.end method

.method public getHiddenStateInsets()Lccsanandroidx/core/graphics/Insets;
    .locals 1

    .line 305
    iget-object v0, p0, Lccsanandroidx/core/view/WindowInsetsAnimationControllerCompat$Impl30;->mController:Lccsanandroid/view/WindowInsetsAnimationController;

    invoke-interface {v0}, Lccsanandroid/view/WindowInsetsAnimationController;->getHiddenStateInsets()Lccsanandroid/graphics/Insets;

    move-result-object v0

    invoke-static {v0}, Lccsanandroidx/core/graphics/Insets;->toCompatInsets(Lccsanandroid/graphics/Insets;)Lccsanandroidx/core/graphics/Insets;

    move-result-object v0

    return-object v0
.end method

.method public getShownStateInsets()Lccsanandroidx/core/graphics/Insets;
    .locals 1

    .line 311
    iget-object v0, p0, Lccsanandroidx/core/view/WindowInsetsAnimationControllerCompat$Impl30;->mController:Lccsanandroid/view/WindowInsetsAnimationController;

    invoke-interface {v0}, Lccsanandroid/view/WindowInsetsAnimationController;->getShownStateInsets()Lccsanandroid/graphics/Insets;

    move-result-object v0

    invoke-static {v0}, Lccsanandroidx/core/graphics/Insets;->toCompatInsets(Lccsanandroid/graphics/Insets;)Lccsanandroidx/core/graphics/Insets;

    move-result-object v0

    return-object v0
.end method

.method public getTypes()I
    .locals 1

    .line 332
    iget-object v0, p0, Lccsanandroidx/core/view/WindowInsetsAnimationControllerCompat$Impl30;->mController:Lccsanandroid/view/WindowInsetsAnimationController;

    invoke-interface {v0}, Lccsanandroid/view/WindowInsetsAnimationController;->getTypes()I

    move-result v0

    return v0
.end method

.method isCancelled()Z
    .locals 1

    .line 360
    iget-object v0, p0, Lccsanandroidx/core/view/WindowInsetsAnimationControllerCompat$Impl30;->mController:Lccsanandroid/view/WindowInsetsAnimationController;

    invoke-interface {v0}, Lccsanandroid/view/WindowInsetsAnimationController;->isCancelled()Z

    move-result v0

    return v0
.end method

.method isFinished()Z
    .locals 1

    .line 355
    iget-object v0, p0, Lccsanandroidx/core/view/WindowInsetsAnimationControllerCompat$Impl30;->mController:Lccsanandroid/view/WindowInsetsAnimationController;

    invoke-interface {v0}, Lccsanandroid/view/WindowInsetsAnimationController;->isFinished()Z

    move-result v0

    return v0
.end method

.method public isReady()Z
    .locals 1

    .line 350
    iget-object v0, p0, Lccsanandroidx/core/view/WindowInsetsAnimationControllerCompat$Impl30;->mController:Lccsanandroid/view/WindowInsetsAnimationController;

    invoke-interface {v0}, Lccsanandroid/view/WindowInsetsAnimationController;->isReady()Z

    move-result v0

    return v0
.end method

.method public setInsetsAndAlpha(Lccsanandroidx/core/graphics/Insets;FF)V
    .locals 2
    .param p1, "insets"    # Lccsanandroidx/core/graphics/Insets;
    .param p2, "alpha"    # F
    .param p3, "fraction"    # F
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "insets",
            "alpha",
            "fraction"
        }
    .end annotation

    .line 337
    iget-object v0, p0, Lccsanandroidx/core/view/WindowInsetsAnimationControllerCompat$Impl30;->mController:Lccsanandroid/view/WindowInsetsAnimationController;

    if-nez p1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lccsanandroidx/core/graphics/Insets;->toPlatformInsets()Lccsanandroid/graphics/Insets;

    move-result-object v1

    :goto_0
    invoke-interface {v0, v1, p2, p3}, Lccsanandroid/view/WindowInsetsAnimationController;->setInsetsAndAlpha(Lccsanandroid/graphics/Insets;FF)V

    .line 341
    return-void
.end method
