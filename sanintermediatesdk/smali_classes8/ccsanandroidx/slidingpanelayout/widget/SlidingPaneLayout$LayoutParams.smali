.class public Lccsanandroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;
.super Lccsanandroid/view/ViewGroup$MarginLayoutParams;
.source "SlidingPaneLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsanandroidx/slidingpanelayout/widget/SlidingPaneLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LayoutParams"
.end annotation


# static fields
.field private static final ATTRS:[I


# instance fields
.field dimPaint:Lccsanandroid/graphics/Paint;

.field dimWhenOffset:Z

.field slideable:Z

.field public weight:F


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1423
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x1010181

    aput v2, v0, v1

    sput-object v0, Lccsanandroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;->ATTRS:[I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1447
    const/4 v0, -0x1

    invoke-direct {p0, v0, v0}, Lccsanandroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    .line 1431
    const/4 v0, 0x0

    iput v0, p0, Lccsanandroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;->weight:F

    .line 1448
    return-void
.end method

.method public constructor <init>(II)V
    .locals 1
    .param p1, "width"    # I
    .param p2, "height"    # I

    .line 1451
    invoke-direct {p0, p1, p2}, Lccsanandroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    .line 1431
    const/4 v0, 0x0

    iput v0, p0, Lccsanandroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;->weight:F

    .line 1452
    return-void
.end method

.method public constructor <init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;)V
    .locals 3
    .param p1, "c"    # Lccsanandroid/content/Context;
    .param p2, "attrs"    # Lccsanandroid/util/AttributeSet;

    .line 1468
    invoke-direct {p0, p1, p2}, Lccsanandroid/view/ViewGroup$MarginLayoutParams;-><init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;)V

    .line 1431
    const/4 v0, 0x0

    iput v0, p0, Lccsanandroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;->weight:F

    .line 1470
    sget-object v1, Lccsanandroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;->ATTRS:[I

    invoke-virtual {p1, p2, v1}, Lccsanandroid/content/Context;->obtainStyledAttributes(Lccsanandroid/util/AttributeSet;[I)Lccsanandroid/content/res/TypedArray;

    move-result-object v1

    .line 1471
    .local v1, "a":Lccsanandroid/content/res/TypedArray;
    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Lccsanandroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    iput v0, p0, Lccsanandroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;->weight:F

    .line 1472
    invoke-virtual {v1}, Lccsanandroid/content/res/TypedArray;->recycle()V

    .line 1473
    return-void
.end method

.method public constructor <init>(Lccsanandroid/view/ViewGroup$LayoutParams;)V
    .locals 1
    .param p1, "source"    # Lccsanandroid/view/ViewGroup$LayoutParams;

    .line 1455
    invoke-direct {p0, p1}, Lccsanandroid/view/ViewGroup$MarginLayoutParams;-><init>(Lccsanandroid/view/ViewGroup$LayoutParams;)V

    .line 1431
    const/4 v0, 0x0

    iput v0, p0, Lccsanandroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;->weight:F

    .line 1456
    return-void
.end method

.method public constructor <init>(Lccsanandroid/view/ViewGroup$MarginLayoutParams;)V
    .locals 1
    .param p1, "source"    # Lccsanandroid/view/ViewGroup$MarginLayoutParams;

    .line 1459
    invoke-direct {p0, p1}, Lccsanandroid/view/ViewGroup$MarginLayoutParams;-><init>(Lccsanandroid/view/ViewGroup$MarginLayoutParams;)V

    .line 1431
    const/4 v0, 0x0

    iput v0, p0, Lccsanandroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;->weight:F

    .line 1460
    return-void
.end method

.method public constructor <init>(Lccsanandroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;)V
    .locals 1
    .param p1, "source"    # Lccsanandroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;

    .line 1463
    invoke-direct {p0, p1}, Lccsanandroid/view/ViewGroup$MarginLayoutParams;-><init>(Lccsanandroid/view/ViewGroup$MarginLayoutParams;)V

    .line 1431
    const/4 v0, 0x0

    iput v0, p0, Lccsanandroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;->weight:F

    .line 1464
    iget v0, p1, Lccsanandroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;->weight:F

    iput v0, p0, Lccsanandroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;->weight:F

    .line 1465
    return-void
.end method
