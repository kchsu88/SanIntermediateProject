.class public final Lccsanandroidx/core/view/PointerIconCompat;
.super Ljava/lang/Object;
.source "PointerIconCompat.java"


# static fields
.field public static final TYPE_ALIAS:I = 0x3f2

.field public static final TYPE_ALL_SCROLL:I = 0x3f5

.field public static final TYPE_ARROW:I = 0x3e8

.field public static final TYPE_CELL:I = 0x3ee

.field public static final TYPE_CONTEXT_MENU:I = 0x3e9

.field public static final TYPE_COPY:I = 0x3f3

.field public static final TYPE_CROSSHAIR:I = 0x3ef

.field public static final TYPE_DEFAULT:I = 0x3e8

.field public static final TYPE_GRAB:I = 0x3fc

.field public static final TYPE_GRABBING:I = 0x3fd

.field public static final TYPE_HAND:I = 0x3ea

.field public static final TYPE_HELP:I = 0x3eb

.field public static final TYPE_HORIZONTAL_DOUBLE_ARROW:I = 0x3f6

.field public static final TYPE_NO_DROP:I = 0x3f4

.field public static final TYPE_NULL:I = 0x0

.field public static final TYPE_TEXT:I = 0x3f0

.field public static final TYPE_TOP_LEFT_DIAGONAL_DOUBLE_ARROW:I = 0x3f9

.field public static final TYPE_TOP_RIGHT_DIAGONAL_DOUBLE_ARROW:I = 0x3f8

.field public static final TYPE_VERTICAL_DOUBLE_ARROW:I = 0x3f7

.field public static final TYPE_VERTICAL_TEXT:I = 0x3f1

.field public static final TYPE_WAIT:I = 0x3ec

.field public static final TYPE_ZOOM_IN:I = 0x3fa

.field public static final TYPE_ZOOM_OUT:I = 0x3fb


# instance fields
.field private mPointerIcon:Ljava/lang/Object;


# direct methods
.method private constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .param p1, "pointerIcon"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pointerIcon"
        }
    .end annotation

    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 108
    iput-object p1, p0, Lccsanandroidx/core/view/PointerIconCompat;->mPointerIcon:Ljava/lang/Object;

    .line 109
    return-void
.end method

.method public static create(Lccsanandroid/graphics/Bitmap;FF)Lccsanandroidx/core/view/PointerIconCompat;
    .locals 2
    .param p0, "bitmap"    # Lccsanandroid/graphics/Bitmap;
    .param p1, "hotSpotX"    # F
    .param p2, "hotSpotY"    # F
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "bitmap",
            "hotSpotX",
            "hotSpotY"
        }
    .end annotation

    .line 151
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    .line 152
    new-instance v0, Lccsanandroidx/core/view/PointerIconCompat;

    invoke-static {p0, p1, p2}, Lccsanandroid/view/PointerIcon;->create(Lccsanandroid/graphics/Bitmap;FF)Lccsanandroid/view/PointerIcon;

    move-result-object v1

    invoke-direct {v0, v1}, Lccsanandroidx/core/view/PointerIconCompat;-><init>(Ljava/lang/Object;)V

    return-object v0

    .line 154
    :cond_0
    new-instance v0, Lccsanandroidx/core/view/PointerIconCompat;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lccsanandroidx/core/view/PointerIconCompat;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public static getSystemIcon(Lccsanandroid/content/Context;I)Lccsanandroidx/core/view/PointerIconCompat;
    .locals 2
    .param p0, "context"    # Lccsanandroid/content/Context;
    .param p1, "style"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "style"
        }
    .end annotation

    .line 130
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    .line 131
    new-instance v0, Lccsanandroidx/core/view/PointerIconCompat;

    invoke-static {p0, p1}, Lccsanandroid/view/PointerIcon;->getSystemIcon(Lccsanandroid/content/Context;I)Lccsanandroid/view/PointerIcon;

    move-result-object v1

    invoke-direct {v0, v1}, Lccsanandroidx/core/view/PointerIconCompat;-><init>(Ljava/lang/Object;)V

    return-object v0

    .line 133
    :cond_0
    new-instance v0, Lccsanandroidx/core/view/PointerIconCompat;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lccsanandroidx/core/view/PointerIconCompat;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public static load(Lccsanandroid/content/res/Resources;I)Lccsanandroidx/core/view/PointerIconCompat;
    .locals 2
    .param p0, "resources"    # Lccsanandroid/content/res/Resources;
    .param p1, "resourceId"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "resources",
            "resourceId"
        }
    .end annotation

    .line 180
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    .line 181
    new-instance v0, Lccsanandroidx/core/view/PointerIconCompat;

    invoke-static {p0, p1}, Lccsanandroid/view/PointerIcon;->load(Lccsanandroid/content/res/Resources;I)Lccsanandroid/view/PointerIcon;

    move-result-object v1

    invoke-direct {v0, v1}, Lccsanandroidx/core/view/PointerIconCompat;-><init>(Ljava/lang/Object;)V

    return-object v0

    .line 183
    :cond_0
    new-instance v0, Lccsanandroidx/core/view/PointerIconCompat;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lccsanandroidx/core/view/PointerIconCompat;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public getPointerIcon()Ljava/lang/Object;
    .locals 1

    .line 116
    iget-object v0, p0, Lccsanandroidx/core/view/PointerIconCompat;->mPointerIcon:Ljava/lang/Object;

    return-object v0
.end method
