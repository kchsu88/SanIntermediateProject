.class Lccsanandroidx/transition/ViewUtilsApi19;
.super Lccsanandroidx/transition/ViewUtilsBase;
.source "ViewUtilsApi19.java"


# static fields
.field private static sTryHiddenTransitionAlpha:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 31
    const/4 v0, 0x1

    sput-boolean v0, Lccsanandroidx/transition/ViewUtilsApi19;->sTryHiddenTransitionAlpha:Z

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Lccsanandroidx/transition/ViewUtilsBase;-><init>()V

    return-void
.end method


# virtual methods
.method public clearNonTransitionAlpha(Lccsanandroid/view/View;)V
    .locals 0
    .param p1, "view"    # Lccsanandroid/view/View;

    .line 72
    return-void
.end method

.method public getTransitionAlpha(Lccsanandroid/view/View;)F
    .locals 2
    .param p1, "view"    # Lccsanandroid/view/View;

    .line 52
    sget-boolean v0, Lccsanandroidx/transition/ViewUtilsApi19;->sTryHiddenTransitionAlpha:Z

    if-eqz v0, :cond_0

    .line 56
    :try_start_0
    invoke-virtual {p1}, Lccsanandroid/view/View;->getTransitionAlpha()F

    move-result v0
    :try_end_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 57
    :catch_0
    move-exception v0

    .line 58
    .local v0, "e":Ljava/lang/NoSuchMethodError;
    const/4 v1, 0x0

    sput-boolean v1, Lccsanandroidx/transition/ViewUtilsApi19;->sTryHiddenTransitionAlpha:Z

    .line 61
    .end local v0    # "e":Ljava/lang/NoSuchMethodError;
    :cond_0
    invoke-virtual {p1}, Lccsanandroid/view/View;->getAlpha()F

    move-result v0

    return v0
.end method

.method public saveNonTransitionAlpha(Lccsanandroid/view/View;)V
    .locals 0
    .param p1, "view"    # Lccsanandroid/view/View;

    .line 67
    return-void
.end method

.method public setTransitionAlpha(Lccsanandroid/view/View;F)V
    .locals 2
    .param p1, "view"    # Lccsanandroid/view/View;
    .param p2, "alpha"    # F

    .line 36
    sget-boolean v0, Lccsanandroidx/transition/ViewUtilsApi19;->sTryHiddenTransitionAlpha:Z

    if-eqz v0, :cond_0

    .line 40
    :try_start_0
    invoke-virtual {p1, p2}, Lccsanandroid/view/View;->setTransitionAlpha(F)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_0

    .line 41
    return-void

    .line 42
    :catch_0
    move-exception v0

    .line 43
    .local v0, "e":Ljava/lang/NoSuchMethodError;
    const/4 v1, 0x0

    sput-boolean v1, Lccsanandroidx/transition/ViewUtilsApi19;->sTryHiddenTransitionAlpha:Z

    .line 46
    .end local v0    # "e":Ljava/lang/NoSuchMethodError;
    :cond_0
    invoke-virtual {p1, p2}, Lccsanandroid/view/View;->setAlpha(F)V

    .line 47
    return-void
.end method
