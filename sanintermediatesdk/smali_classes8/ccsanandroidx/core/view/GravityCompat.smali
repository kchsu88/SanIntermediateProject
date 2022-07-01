.class public final Lccsanandroidx/core/view/GravityCompat;
.super Ljava/lang/Object;
.source "GravityCompat.java"


# static fields
.field public static final END:I = 0x800005

.field public static final RELATIVE_HORIZONTAL_GRAVITY_MASK:I = 0x800007

.field public static final RELATIVE_LAYOUT_DIRECTION:I = 0x800000

.field public static final START:I = 0x800003


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 153
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static apply(IIILccsanandroid/graphics/Rect;IILccsanandroid/graphics/Rect;I)V
    .locals 2
    .param p0, "gravity"    # I
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "container"    # Lccsanandroid/graphics/Rect;
    .param p4, "xAdj"    # I
    .param p5, "yAdj"    # I
    .param p6, "outRect"    # Lccsanandroid/graphics/Rect;
    .param p7, "layoutDirection"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "gravity",
            "w",
            "h",
            "container",
            "xAdj",
            "yAdj",
            "outRect",
            "layoutDirection"
        }
    .end annotation

    .line 98
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_0

    .line 99
    invoke-static/range {p0 .. p7}, Lccsanandroid/view/Gravity;->apply(IIILccsanandroid/graphics/Rect;IILccsanandroid/graphics/Rect;I)V

    goto :goto_0

    .line 101
    :cond_0
    invoke-static/range {p0 .. p6}, Lccsanandroid/view/Gravity;->apply(IIILccsanandroid/graphics/Rect;IILccsanandroid/graphics/Rect;)V

    .line 103
    :goto_0
    return-void
.end method

.method public static apply(IIILccsanandroid/graphics/Rect;Lccsanandroid/graphics/Rect;I)V
    .locals 2
    .param p0, "gravity"    # I
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "container"    # Lccsanandroid/graphics/Rect;
    .param p4, "outRect"    # Lccsanandroid/graphics/Rect;
    .param p5, "layoutDirection"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "gravity",
            "w",
            "h",
            "container",
            "outRect",
            "layoutDirection"
        }
    .end annotation

    .line 64
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_0

    .line 65
    invoke-static/range {p0 .. p5}, Lccsanandroid/view/Gravity;->apply(IIILccsanandroid/graphics/Rect;Lccsanandroid/graphics/Rect;I)V

    goto :goto_0

    .line 67
    :cond_0
    invoke-static {p0, p1, p2, p3, p4}, Lccsanandroid/view/Gravity;->apply(IIILccsanandroid/graphics/Rect;Lccsanandroid/graphics/Rect;)V

    .line 69
    :goto_0
    return-void
.end method

.method public static applyDisplay(ILccsanandroid/graphics/Rect;Lccsanandroid/graphics/Rect;I)V
    .locals 2
    .param p0, "gravity"    # I
    .param p1, "display"    # Lccsanandroid/graphics/Rect;
    .param p2, "inoutObj"    # Lccsanandroid/graphics/Rect;
    .param p3, "layoutDirection"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "gravity",
            "display",
            "inoutObj",
            "layoutDirection"
        }
    .end annotation

    .line 126
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_0

    .line 127
    invoke-static {p0, p1, p2, p3}, Lccsanandroid/view/Gravity;->applyDisplay(ILccsanandroid/graphics/Rect;Lccsanandroid/graphics/Rect;I)V

    goto :goto_0

    .line 129
    :cond_0
    invoke-static {p0, p1, p2}, Lccsanandroid/view/Gravity;->applyDisplay(ILccsanandroid/graphics/Rect;Lccsanandroid/graphics/Rect;)V

    .line 131
    :goto_0
    return-void
.end method

.method public static getAbsoluteGravity(II)I
    .locals 2
    .param p0, "gravity"    # I
    .param p1, "layoutDirection"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "gravity",
            "layoutDirection"
        }
    .end annotation

    .line 145
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_0

    .line 146
    invoke-static {p0, p1}, Lccsanandroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v0

    return v0

    .line 149
    :cond_0
    const v0, -0x800001

    and-int/2addr v0, p0

    return v0
.end method
