.class Lccsanandroidx/core/view/WindowCompat$Impl16;
.super Ljava/lang/Object;
.source "WindowCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsanandroidx/core/view/WindowCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Impl16"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 143
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static setDecorFitsSystemWindows(Lccsanandroid/view/Window;Z)V
    .locals 4
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

    .line 146
    const/16 v0, 0x700

    .line 150
    .local v0, "decorFitsFlags":I
    invoke-virtual {p0}, Lccsanandroid/view/Window;->getDecorView()Lccsanandroid/view/View;

    move-result-object v1

    .line 151
    .local v1, "decorView":Lccsanandroid/view/View;
    invoke-virtual {v1}, Lccsanandroid/view/View;->getSystemUiVisibility()I

    move-result v2

    .line 152
    .local v2, "sysUiVis":I
    if-eqz p1, :cond_0

    .line 153
    and-int/lit16 v3, v2, -0x701

    goto :goto_0

    .line 154
    :cond_0
    or-int/lit16 v3, v2, 0x700

    .line 152
    :goto_0
    invoke-virtual {v1, v3}, Lccsanandroid/view/View;->setSystemUiVisibility(I)V

    .line 155
    return-void
.end method
