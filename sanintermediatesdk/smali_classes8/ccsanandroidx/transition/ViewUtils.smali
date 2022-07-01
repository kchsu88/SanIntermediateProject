.class Lccsanandroidx/transition/ViewUtils;
.super Ljava/lang/Object;
.source "ViewUtils.java"


# static fields
.field static final CLIP_BOUNDS:Lccsanandroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lccsanandroid/util/Property<",
            "Lccsanandroid/view/View;",
            "Lccsanandroid/graphics/Rect;",
            ">;"
        }
    .end annotation
.end field

.field private static final IMPL:Lccsanandroidx/transition/ViewUtilsBase;

.field private static final TAG:Ljava/lang/String; = "ViewUtils"

.field static final TRANSITION_ALPHA:Lccsanandroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lccsanandroid/util/Property<",
            "Lccsanandroid/view/View;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 38
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_0

    .line 39
    new-instance v0, Lccsanandroidx/transition/ViewUtilsApi29;

    invoke-direct {v0}, Lccsanandroidx/transition/ViewUtilsApi29;-><init>()V

    sput-object v0, Lccsanandroidx/transition/ViewUtils;->IMPL:Lccsanandroidx/transition/ViewUtilsBase;

    goto :goto_0

    .line 40
    :cond_0
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_1

    .line 41
    new-instance v0, Lccsanandroidx/transition/ViewUtilsApi23;

    invoke-direct {v0}, Lccsanandroidx/transition/ViewUtilsApi23;-><init>()V

    sput-object v0, Lccsanandroidx/transition/ViewUtils;->IMPL:Lccsanandroidx/transition/ViewUtilsBase;

    goto :goto_0

    .line 42
    :cond_1
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x16

    if-lt v0, v1, :cond_2

    .line 43
    new-instance v0, Lccsanandroidx/transition/ViewUtilsApi22;

    invoke-direct {v0}, Lccsanandroidx/transition/ViewUtilsApi22;-><init>()V

    sput-object v0, Lccsanandroidx/transition/ViewUtils;->IMPL:Lccsanandroidx/transition/ViewUtilsBase;

    goto :goto_0

    .line 44
    :cond_2
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_3

    .line 45
    new-instance v0, Lccsanandroidx/transition/ViewUtilsApi21;

    invoke-direct {v0}, Lccsanandroidx/transition/ViewUtilsApi21;-><init>()V

    sput-object v0, Lccsanandroidx/transition/ViewUtils;->IMPL:Lccsanandroidx/transition/ViewUtilsBase;

    goto :goto_0

    .line 46
    :cond_3
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_4

    .line 47
    new-instance v0, Lccsanandroidx/transition/ViewUtilsApi19;

    invoke-direct {v0}, Lccsanandroidx/transition/ViewUtilsApi19;-><init>()V

    sput-object v0, Lccsanandroidx/transition/ViewUtils;->IMPL:Lccsanandroidx/transition/ViewUtilsBase;

    goto :goto_0

    .line 49
    :cond_4
    new-instance v0, Lccsanandroidx/transition/ViewUtilsBase;

    invoke-direct {v0}, Lccsanandroidx/transition/ViewUtilsBase;-><init>()V

    sput-object v0, Lccsanandroidx/transition/ViewUtils;->IMPL:Lccsanandroidx/transition/ViewUtilsBase;

    .line 56
    :goto_0
    new-instance v0, Lccsanandroidx/transition/ViewUtils$1;

    const-class v1, Ljava/lang/Float;

    const-string/jumbo v2, "translationAlpha"

    invoke-direct {v0, v1, v2}, Lccsanandroidx/transition/ViewUtils$1;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lccsanandroidx/transition/ViewUtils;->TRANSITION_ALPHA:Lccsanandroid/util/Property;

    .line 71
    new-instance v0, Lccsanandroidx/transition/ViewUtils$2;

    const-class v1, Lccsanandroid/graphics/Rect;

    const-string v2, "clipBounds"

    invoke-direct {v0, v1, v2}, Lccsanandroidx/transition/ViewUtils$2;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lccsanandroidx/transition/ViewUtils;->CLIP_BOUNDS:Lccsanandroid/util/Property;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 202
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 203
    return-void
.end method

.method static clearNonTransitionAlpha(Lccsanandroid/view/View;)V
    .locals 1
    .param p0, "view"    # Lccsanandroid/view/View;

    .line 128
    sget-object v0, Lccsanandroidx/transition/ViewUtils;->IMPL:Lccsanandroidx/transition/ViewUtilsBase;

    invoke-virtual {v0, p0}, Lccsanandroidx/transition/ViewUtilsBase;->clearNonTransitionAlpha(Lccsanandroid/view/View;)V

    .line 129
    return-void
.end method

.method static getOverlay(Lccsanandroid/view/View;)Lccsanandroidx/transition/ViewOverlayImpl;
    .locals 2
    .param p0, "view"    # Lccsanandroid/view/View;

    .line 90
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_0

    .line 91
    new-instance v0, Lccsanandroidx/transition/ViewOverlayApi18;

    invoke-direct {v0, p0}, Lccsanandroidx/transition/ViewOverlayApi18;-><init>(Lccsanandroid/view/View;)V

    return-object v0

    .line 93
    :cond_0
    invoke-static {p0}, Lccsanandroidx/transition/ViewOverlayApi14;->createFrom(Lccsanandroid/view/View;)Lccsanandroidx/transition/ViewOverlayApi14;

    move-result-object v0

    return-object v0
.end method

.method static getTransitionAlpha(Lccsanandroid/view/View;)F
    .locals 1
    .param p0, "view"    # Lccsanandroid/view/View;

    .line 111
    sget-object v0, Lccsanandroidx/transition/ViewUtils;->IMPL:Lccsanandroidx/transition/ViewUtilsBase;

    invoke-virtual {v0, p0}, Lccsanandroidx/transition/ViewUtilsBase;->getTransitionAlpha(Lccsanandroid/view/View;)F

    move-result v0

    return v0
.end method

.method static getWindowId(Lccsanandroid/view/View;)Lccsanandroidx/transition/WindowIdImpl;
    .locals 2
    .param p0, "view"    # Lccsanandroid/view/View;

    .line 100
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_0

    .line 101
    new-instance v0, Lccsanandroidx/transition/WindowIdApi18;

    invoke-direct {v0, p0}, Lccsanandroidx/transition/WindowIdApi18;-><init>(Lccsanandroid/view/View;)V

    return-object v0

    .line 103
    :cond_0
    new-instance v0, Lccsanandroidx/transition/WindowIdApi14;

    invoke-virtual {p0}, Lccsanandroid/view/View;->getWindowToken()Lccsanandroid/os/IBinder;

    move-result-object v1

    invoke-direct {v0, v1}, Lccsanandroidx/transition/WindowIdApi14;-><init>(Lccsanandroid/os/IBinder;)V

    return-object v0
.end method

.method static saveNonTransitionAlpha(Lccsanandroid/view/View;)V
    .locals 1
    .param p0, "view"    # Lccsanandroid/view/View;

    .line 119
    sget-object v0, Lccsanandroidx/transition/ViewUtils;->IMPL:Lccsanandroidx/transition/ViewUtilsBase;

    invoke-virtual {v0, p0}, Lccsanandroidx/transition/ViewUtilsBase;->saveNonTransitionAlpha(Lccsanandroid/view/View;)V

    .line 120
    return-void
.end method

.method static setAnimationMatrix(Lccsanandroid/view/View;Lccsanandroid/graphics/Matrix;)V
    .locals 1
    .param p0, "v"    # Lccsanandroid/view/View;
    .param p1, "m"    # Lccsanandroid/graphics/Matrix;

    .line 187
    sget-object v0, Lccsanandroidx/transition/ViewUtils;->IMPL:Lccsanandroidx/transition/ViewUtilsBase;

    invoke-virtual {v0, p0, p1}, Lccsanandroidx/transition/ViewUtilsBase;->setAnimationMatrix(Lccsanandroid/view/View;Lccsanandroid/graphics/Matrix;)V

    .line 188
    return-void
.end method

.method static setLeftTopRightBottom(Lccsanandroid/view/View;IIII)V
    .locals 6
    .param p0, "v"    # Lccsanandroid/view/View;
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .line 199
    sget-object v0, Lccsanandroidx/transition/ViewUtils;->IMPL:Lccsanandroidx/transition/ViewUtilsBase;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lccsanandroidx/transition/ViewUtilsBase;->setLeftTopRightBottom(Lccsanandroid/view/View;IIII)V

    .line 200
    return-void
.end method

.method static setTransitionAlpha(Lccsanandroid/view/View;F)V
    .locals 1
    .param p0, "view"    # Lccsanandroid/view/View;
    .param p1, "alpha"    # F

    .line 107
    sget-object v0, Lccsanandroidx/transition/ViewUtils;->IMPL:Lccsanandroidx/transition/ViewUtilsBase;

    invoke-virtual {v0, p0, p1}, Lccsanandroidx/transition/ViewUtilsBase;->setTransitionAlpha(Lccsanandroid/view/View;F)V

    .line 108
    return-void
.end method

.method static setTransitionVisibility(Lccsanandroid/view/View;I)V
    .locals 1
    .param p0, "view"    # Lccsanandroid/view/View;
    .param p1, "visibility"    # I

    .line 145
    sget-object v0, Lccsanandroidx/transition/ViewUtils;->IMPL:Lccsanandroidx/transition/ViewUtilsBase;

    invoke-virtual {v0, p0, p1}, Lccsanandroidx/transition/ViewUtilsBase;->setTransitionVisibility(Lccsanandroid/view/View;I)V

    .line 146
    return-void
.end method

.method static transformMatrixToGlobal(Lccsanandroid/view/View;Lccsanandroid/graphics/Matrix;)V
    .locals 1
    .param p0, "view"    # Lccsanandroid/view/View;
    .param p1, "matrix"    # Lccsanandroid/graphics/Matrix;

    .line 161
    sget-object v0, Lccsanandroidx/transition/ViewUtils;->IMPL:Lccsanandroidx/transition/ViewUtilsBase;

    invoke-virtual {v0, p0, p1}, Lccsanandroidx/transition/ViewUtilsBase;->transformMatrixToGlobal(Lccsanandroid/view/View;Lccsanandroid/graphics/Matrix;)V

    .line 162
    return-void
.end method

.method static transformMatrixToLocal(Lccsanandroid/view/View;Lccsanandroid/graphics/Matrix;)V
    .locals 1
    .param p0, "view"    # Lccsanandroid/view/View;
    .param p1, "matrix"    # Lccsanandroid/graphics/Matrix;

    .line 177
    sget-object v0, Lccsanandroidx/transition/ViewUtils;->IMPL:Lccsanandroidx/transition/ViewUtilsBase;

    invoke-virtual {v0, p0, p1}, Lccsanandroidx/transition/ViewUtilsBase;->transformMatrixToLocal(Lccsanandroid/view/View;Lccsanandroid/graphics/Matrix;)V

    .line 178
    return-void
.end method
