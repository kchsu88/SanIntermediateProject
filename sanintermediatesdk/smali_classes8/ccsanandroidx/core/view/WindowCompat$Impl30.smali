.class Lccsanandroidx/core/view/WindowCompat$Impl30;
.super Ljava/lang/Object;
.source "WindowCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsanandroidx/core/view/WindowCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Impl30"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 159
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getInsetsController(Lccsanandroid/view/Window;)Lccsanandroidx/core/view/WindowInsetsControllerCompat;
    .locals 2
    .param p0, "window"    # Lccsanandroid/view/Window;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "window"
        }
    .end annotation

    .line 166
    invoke-virtual {p0}, Lccsanandroid/view/Window;->getInsetsController()Lccsanandroid/view/WindowInsetsController;

    move-result-object v0

    .line 167
    .local v0, "insetsController":Lccsanandroid/view/WindowInsetsController;
    if-eqz v0, :cond_0

    .line 168
    invoke-static {v0}, Lccsanandroidx/core/view/WindowInsetsControllerCompat;->toWindowInsetsControllerCompat(Lccsanandroid/view/WindowInsetsController;)Lccsanandroidx/core/view/WindowInsetsControllerCompat;

    move-result-object v1

    return-object v1

    .line 171
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method static setDecorFitsSystemWindows(Lccsanandroid/view/Window;Z)V
    .locals 0
    .param p0, "window"    # Lccsanandroid/view/Window;
    .param p1, "decorFitsSystemWindows"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x10
        }
        names = {
            "window",
            "decorFitsSystemWindows"
        }
    .end annotation

    .line 162
    invoke-virtual {p0, p1}, Lccsanandroid/view/Window;->setDecorFitsSystemWindows(Z)V

    .line 163
    return-void
.end method
