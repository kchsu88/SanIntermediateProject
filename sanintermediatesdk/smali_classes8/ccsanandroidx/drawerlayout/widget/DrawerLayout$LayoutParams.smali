.class public Lccsanandroidx/drawerlayout/widget/DrawerLayout$LayoutParams;
.super Lccsanandroid/view/ViewGroup$MarginLayoutParams;
.source "DrawerLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsanandroidx/drawerlayout/widget/DrawerLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LayoutParams"
.end annotation


# static fields
.field private static final FLAG_IS_CLOSING:I = 0x4

.field private static final FLAG_IS_OPENED:I = 0x1

.field private static final FLAG_IS_OPENING:I = 0x2


# instance fields
.field public gravity:I

.field isPeeking:Z

.field onScreen:F

.field openState:I


# direct methods
.method public constructor <init>(II)V
    .locals 1
    .param p1, "width"    # I
    .param p2, "height"    # I

    .line 2327
    invoke-direct {p0, p1, p2}, Lccsanandroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    .line 2313
    const/4 v0, 0x0

    iput v0, p0, Lccsanandroidx/drawerlayout/widget/DrawerLayout$LayoutParams;->gravity:I

    .line 2328
    return-void
.end method

.method public constructor <init>(III)V
    .locals 0
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "gravity"    # I

    .line 2331
    invoke-direct {p0, p1, p2}, Lccsanandroidx/drawerlayout/widget/DrawerLayout$LayoutParams;-><init>(II)V

    .line 2332
    iput p3, p0, Lccsanandroidx/drawerlayout/widget/DrawerLayout$LayoutParams;->gravity:I

    .line 2333
    return-void
.end method

.method public constructor <init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;)V
    .locals 2
    .param p1, "c"    # Lccsanandroid/content/Context;
    .param p2, "attrs"    # Lccsanandroid/util/AttributeSet;

    .line 2319
    invoke-direct {p0, p1, p2}, Lccsanandroid/view/ViewGroup$MarginLayoutParams;-><init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;)V

    .line 2313
    const/4 v0, 0x0

    iput v0, p0, Lccsanandroidx/drawerlayout/widget/DrawerLayout$LayoutParams;->gravity:I

    .line 2321
    sget-object v1, Lccsanandroidx/drawerlayout/widget/DrawerLayout;->LAYOUT_ATTRS:[I

    invoke-virtual {p1, p2, v1}, Lccsanandroid/content/Context;->obtainStyledAttributes(Lccsanandroid/util/AttributeSet;[I)Lccsanandroid/content/res/TypedArray;

    move-result-object v1

    .line 2322
    .local v1, "a":Lccsanandroid/content/res/TypedArray;
    invoke-virtual {v1, v0, v0}, Lccsanandroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Lccsanandroidx/drawerlayout/widget/DrawerLayout$LayoutParams;->gravity:I

    .line 2323
    invoke-virtual {v1}, Lccsanandroid/content/res/TypedArray;->recycle()V

    .line 2324
    return-void
.end method

.method public constructor <init>(Lccsanandroid/view/ViewGroup$LayoutParams;)V
    .locals 1
    .param p1, "source"    # Lccsanandroid/view/ViewGroup$LayoutParams;

    .line 2341
    invoke-direct {p0, p1}, Lccsanandroid/view/ViewGroup$MarginLayoutParams;-><init>(Lccsanandroid/view/ViewGroup$LayoutParams;)V

    .line 2313
    const/4 v0, 0x0

    iput v0, p0, Lccsanandroidx/drawerlayout/widget/DrawerLayout$LayoutParams;->gravity:I

    .line 2342
    return-void
.end method

.method public constructor <init>(Lccsanandroid/view/ViewGroup$MarginLayoutParams;)V
    .locals 1
    .param p1, "source"    # Lccsanandroid/view/ViewGroup$MarginLayoutParams;

    .line 2345
    invoke-direct {p0, p1}, Lccsanandroid/view/ViewGroup$MarginLayoutParams;-><init>(Lccsanandroid/view/ViewGroup$MarginLayoutParams;)V

    .line 2313
    const/4 v0, 0x0

    iput v0, p0, Lccsanandroidx/drawerlayout/widget/DrawerLayout$LayoutParams;->gravity:I

    .line 2346
    return-void
.end method

.method public constructor <init>(Lccsanandroidx/drawerlayout/widget/DrawerLayout$LayoutParams;)V
    .locals 1
    .param p1, "source"    # Lccsanandroidx/drawerlayout/widget/DrawerLayout$LayoutParams;

    .line 2336
    invoke-direct {p0, p1}, Lccsanandroid/view/ViewGroup$MarginLayoutParams;-><init>(Lccsanandroid/view/ViewGroup$MarginLayoutParams;)V

    .line 2313
    const/4 v0, 0x0

    iput v0, p0, Lccsanandroidx/drawerlayout/widget/DrawerLayout$LayoutParams;->gravity:I

    .line 2337
    iget v0, p1, Lccsanandroidx/drawerlayout/widget/DrawerLayout$LayoutParams;->gravity:I

    iput v0, p0, Lccsanandroidx/drawerlayout/widget/DrawerLayout$LayoutParams;->gravity:I

    .line 2338
    return-void
.end method
