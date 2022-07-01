.class Lccsanandroidx/core/view/ViewCompat$Api23Impl;
.super Ljava/lang/Object;
.source "ViewCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsanandroidx/core/view/ViewCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Api23Impl"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 4830
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4832
    return-void
.end method

.method public static getRootWindowInsets(Lccsanandroid/view/View;)Lccsanandroidx/core/view/WindowInsetsCompat;
    .locals 3
    .param p0, "v"    # Lccsanandroid/view/View;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    .line 4836
    invoke-virtual {p0}, Lccsanandroid/view/View;->getRootWindowInsets()Lccsanandroid/view/WindowInsets;

    move-result-object v0

    .line 4837
    .local v0, "wi":Lccsanandroid/view/WindowInsets;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    return-object v1

    .line 4839
    :cond_0
    invoke-static {v0}, Lccsanandroidx/core/view/WindowInsetsCompat;->toWindowInsetsCompat(Lccsanandroid/view/WindowInsets;)Lccsanandroidx/core/view/WindowInsetsCompat;

    move-result-object v1

    .line 4842
    .local v1, "insets":Lccsanandroidx/core/view/WindowInsetsCompat;
    invoke-virtual {v1, v1}, Lccsanandroidx/core/view/WindowInsetsCompat;->setRootWindowInsets(Lccsanandroidx/core/view/WindowInsetsCompat;)V

    .line 4843
    invoke-virtual {p0}, Lccsanandroid/view/View;->getRootView()Lccsanandroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Lccsanandroidx/core/view/WindowInsetsCompat;->copyRootViewBounds(Lccsanandroid/view/View;)V

    .line 4844
    return-object v1
.end method
