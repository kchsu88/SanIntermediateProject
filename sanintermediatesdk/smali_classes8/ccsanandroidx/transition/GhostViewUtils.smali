.class Lccsanandroidx/transition/GhostViewUtils;
.super Ljava/lang/Object;
.source "GhostViewUtils.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    return-void
.end method

.method static addGhost(Lccsanandroid/view/View;Lccsanandroid/view/ViewGroup;Lccsanandroid/graphics/Matrix;)Lccsanandroidx/transition/GhostView;
    .locals 2
    .param p0, "view"    # Lccsanandroid/view/View;
    .param p1, "viewGroup"    # Lccsanandroid/view/ViewGroup;
    .param p2, "matrix"    # Lccsanandroid/graphics/Matrix;

    .line 32
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-ne v0, v1, :cond_0

    .line 34
    invoke-static {p0, p1, p2}, Lccsanandroidx/transition/GhostViewPlatform;->addGhost(Lccsanandroid/view/View;Lccsanandroid/view/ViewGroup;Lccsanandroid/graphics/Matrix;)Lccsanandroidx/transition/GhostView;

    move-result-object v0

    return-object v0

    .line 36
    :cond_0
    invoke-static {p0, p1, p2}, Lccsanandroidx/transition/GhostViewPort;->addGhost(Lccsanandroid/view/View;Lccsanandroid/view/ViewGroup;Lccsanandroid/graphics/Matrix;)Lccsanandroidx/transition/GhostViewPort;

    move-result-object v0

    return-object v0
.end method

.method static removeGhost(Lccsanandroid/view/View;)V
    .locals 2
    .param p0, "view"    # Lccsanandroid/view/View;

    .line 41
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-ne v0, v1, :cond_0

    .line 43
    invoke-static {p0}, Lccsanandroidx/transition/GhostViewPlatform;->removeGhost(Lccsanandroid/view/View;)V

    goto :goto_0

    .line 45
    :cond_0
    invoke-static {p0}, Lccsanandroidx/transition/GhostViewPort;->removeGhost(Lccsanandroid/view/View;)V

    .line 47
    :goto_0
    return-void
.end method
