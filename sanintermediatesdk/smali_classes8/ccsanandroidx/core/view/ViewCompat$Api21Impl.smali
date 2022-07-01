.class Lccsanandroidx/core/view/ViewCompat$Api21Impl;
.super Ljava/lang/Object;
.source "ViewCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsanandroidx/core/view/ViewCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Api21Impl"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 4735
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4737
    return-void
.end method

.method static callCompatInsetAnimationCallback(Lccsanandroid/view/WindowInsets;Lccsanandroid/view/View;)V
    .locals 1
    .param p0, "insets"    # Lccsanandroid/view/WindowInsets;
    .param p1, "v"    # Lccsanandroid/view/View;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "insets",
            "v"
        }
    .end annotation

    .line 4819
    sget v0, Lccsanandroidx/core/R$id;->tag_window_insets_animation_callback:I

    .line 4820
    invoke-virtual {p1, v0}, Lccsanandroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsanandroid/view/View$OnApplyWindowInsetsListener;

    .line 4822
    .local v0, "insetsAnimationCallback":Lccsanandroid/view/View$OnApplyWindowInsetsListener;
    if-eqz v0, :cond_0

    .line 4823
    invoke-interface {v0, p1, p0}, Lccsanandroid/view/View$OnApplyWindowInsetsListener;->onApplyWindowInsets(Lccsanandroid/view/View;Lccsanandroid/view/WindowInsets;)Lccsanandroid/view/WindowInsets;

    .line 4825
    :cond_0
    return-void
.end method

.method static computeSystemWindowInsets(Lccsanandroid/view/View;Lccsanandroidx/core/view/WindowInsetsCompat;Lccsanandroid/graphics/Rect;)Lccsanandroidx/core/view/WindowInsetsCompat;
    .locals 2
    .param p0, "v"    # Lccsanandroid/view/View;
    .param p1, "insets"    # Lccsanandroidx/core/view/WindowInsetsCompat;
    .param p2, "outLocalInsets"    # Lccsanandroid/graphics/Rect;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "v",
            "insets",
            "outLocalInsets"
        }
    .end annotation

    .line 4746
    invoke-virtual {p1}, Lccsanandroidx/core/view/WindowInsetsCompat;->toWindowInsets()Lccsanandroid/view/WindowInsets;

    move-result-object v0

    .line 4747
    .local v0, "platformInsets":Lccsanandroid/view/WindowInsets;
    if-eqz v0, :cond_0

    .line 4748
    nop

    .line 4749
    invoke-virtual {p0, v0, p2}, Lccsanandroid/view/View;->computeSystemWindowInsets(Lccsanandroid/view/WindowInsets;Lccsanandroid/graphics/Rect;)Lccsanandroid/view/WindowInsets;

    move-result-object v1

    .line 4748
    invoke-static {v1, p0}, Lccsanandroidx/core/view/WindowInsetsCompat;->toWindowInsetsCompat(Lccsanandroid/view/WindowInsets;Lccsanandroid/view/View;)Lccsanandroidx/core/view/WindowInsetsCompat;

    move-result-object v1

    return-object v1

    .line 4751
    :cond_0
    invoke-virtual {p2}, Lccsanandroid/graphics/Rect;->setEmpty()V

    .line 4752
    return-object p1
.end method

.method public static getRootWindowInsets(Lccsanandroid/view/View;)Lccsanandroidx/core/view/WindowInsetsCompat;
    .locals 1
    .param p0, "v"    # Lccsanandroid/view/View;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    .line 4741
    invoke-static {p0}, Lccsanandroidx/core/view/WindowInsetsCompat$Api21ReflectionHolder;->getRootWindowInsets(Lccsanandroid/view/View;)Lccsanandroidx/core/view/WindowInsetsCompat;

    move-result-object v0

    return-object v0
.end method

.method static setOnApplyWindowInsetsListener(Lccsanandroid/view/View;Lccsanandroidx/core/view/OnApplyWindowInsetsListener;)V
    .locals 2
    .param p0, "v"    # Lccsanandroid/view/View;
    .param p1, "listener"    # Lccsanandroidx/core/view/OnApplyWindowInsetsListener;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "v",
            "listener"
        }
    .end annotation

    .line 4760
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-ge v0, v1, :cond_0

    .line 4761
    sget v0, Lccsanandroidx/core/R$id;->tag_on_apply_window_listener:I

    invoke-virtual {p0, v0, p1}, Lccsanandroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 4764
    :cond_0
    if-nez p1, :cond_1

    .line 4767
    sget v0, Lccsanandroidx/core/R$id;->tag_window_insets_animation_callback:I

    .line 4768
    invoke-virtual {p0, v0}, Lccsanandroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsanandroid/view/View$OnApplyWindowInsetsListener;

    .line 4770
    .local v0, "compatInsetsAnimationCallback":Lccsanandroid/view/View$OnApplyWindowInsetsListener;
    invoke-virtual {p0, v0}, Lccsanandroid/view/View;->setOnApplyWindowInsetsListener(Lccsanandroid/view/View$OnApplyWindowInsetsListener;)V

    .line 4771
    return-void

    .line 4774
    .end local v0    # "compatInsetsAnimationCallback":Lccsanandroid/view/View$OnApplyWindowInsetsListener;
    :cond_1
    new-instance v0, Lccsanandroidx/core/view/ViewCompat$Api21Impl$1;

    invoke-direct {v0, p0, p1}, Lccsanandroidx/core/view/ViewCompat$Api21Impl$1;-><init>(Lccsanandroid/view/View;Lccsanandroidx/core/view/OnApplyWindowInsetsListener;)V

    invoke-virtual {p0, v0}, Lccsanandroid/view/View;->setOnApplyWindowInsetsListener(Lccsanandroid/view/View$OnApplyWindowInsetsListener;)V

    .line 4809
    return-void
.end method
