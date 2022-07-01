.class Lccsanandroidx/core/view/WindowInsetsControllerCompat$Impl23;
.super Lccsanandroidx/core/view/WindowInsetsControllerCompat$Impl20;
.source "WindowInsetsControllerCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsanandroidx/core/view/WindowInsetsControllerCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Impl23"
.end annotation


# direct methods
.method constructor <init>(Lccsanandroid/view/Window;Lccsanandroid/view/View;)V
    .locals 0
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

    .line 550
    invoke-direct {p0, p1, p2}, Lccsanandroidx/core/view/WindowInsetsControllerCompat$Impl20;-><init>(Lccsanandroid/view/Window;Lccsanandroid/view/View;)V

    .line 551
    return-void
.end method


# virtual methods
.method public isAppearanceLightStatusBars()Z
    .locals 1

    .line 555
    iget-object v0, p0, Lccsanandroidx/core/view/WindowInsetsControllerCompat$Impl23;->mWindow:Lccsanandroid/view/Window;

    invoke-virtual {v0}, Lccsanandroid/view/Window;->getDecorView()Lccsanandroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Lccsanandroid/view/View;->getSystemUiVisibility()I

    move-result v0

    and-int/lit16 v0, v0, 0x2000

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setAppearanceLightStatusBars(Z)V
    .locals 2
    .param p1, "isLight"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isLight"
        }
    .end annotation

    .line 561
    const/16 v0, 0x2000

    if-eqz p1, :cond_0

    .line 562
    const/high16 v1, 0x4000000

    invoke-virtual {p0, v1}, Lccsanandroidx/core/view/WindowInsetsControllerCompat$Impl23;->unsetWindowFlag(I)V

    .line 563
    const/high16 v1, -0x80000000

    invoke-virtual {p0, v1}, Lccsanandroidx/core/view/WindowInsetsControllerCompat$Impl23;->setWindowFlag(I)V

    .line 564
    invoke-virtual {p0, v0}, Lccsanandroidx/core/view/WindowInsetsControllerCompat$Impl23;->setSystemUiFlag(I)V

    goto :goto_0

    .line 566
    :cond_0
    invoke-virtual {p0, v0}, Lccsanandroidx/core/view/WindowInsetsControllerCompat$Impl23;->unsetSystemUiFlag(I)V

    .line 568
    :goto_0
    return-void
.end method
