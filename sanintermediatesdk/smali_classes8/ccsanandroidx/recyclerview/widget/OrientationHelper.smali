.class public abstract Lccsanandroidx/recyclerview/widget/OrientationHelper;
.super Ljava/lang/Object;
.source "OrientationHelper.java"


# static fields
.field public static final HORIZONTAL:I = 0x0

.field private static final INVALID_SIZE:I = -0x80000000

.field public static final VERTICAL:I = 0x1


# instance fields
.field private mLastTotalSpace:I

.field protected final mLayoutManager:Lccsanandroidx/recyclerview/widget/RecyclerView$LayoutManager;

.field final mTmpRect:Lccsanandroid/graphics/Rect;


# direct methods
.method private constructor <init>(Lccsanandroidx/recyclerview/widget/RecyclerView$LayoutManager;)V
    .locals 1
    .param p1, "layoutManager"    # Lccsanandroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    const/high16 v0, -0x80000000

    iput v0, p0, Lccsanandroidx/recyclerview/widget/OrientationHelper;->mLastTotalSpace:I

    .line 44
    new-instance v0, Lccsanandroid/graphics/Rect;

    invoke-direct {v0}, Lccsanandroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lccsanandroidx/recyclerview/widget/OrientationHelper;->mTmpRect:Lccsanandroid/graphics/Rect;

    .line 47
    iput-object p1, p0, Lccsanandroidx/recyclerview/widget/OrientationHelper;->mLayoutManager:Lccsanandroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 48
    return-void
.end method

.method synthetic constructor <init>(Lccsanandroidx/recyclerview/widget/RecyclerView$LayoutManager;Lccsanandroidx/recyclerview/widget/OrientationHelper$1;)V
    .locals 0
    .param p1, "x0"    # Lccsanandroidx/recyclerview/widget/RecyclerView$LayoutManager;
    .param p2, "x1"    # Lccsanandroidx/recyclerview/widget/OrientationHelper$1;

    .line 32
    invoke-direct {p0, p1}, Lccsanandroidx/recyclerview/widget/OrientationHelper;-><init>(Lccsanandroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    return-void
.end method

.method public static createHorizontalHelper(Lccsanandroidx/recyclerview/widget/RecyclerView$LayoutManager;)Lccsanandroidx/recyclerview/widget/OrientationHelper;
    .locals 1
    .param p0, "layoutManager"    # Lccsanandroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 258
    new-instance v0, Lccsanandroidx/recyclerview/widget/OrientationHelper$1;

    invoke-direct {v0, p0}, Lccsanandroidx/recyclerview/widget/OrientationHelper$1;-><init>(Lccsanandroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    return-object v0
.end method

.method public static createOrientationHelper(Lccsanandroidx/recyclerview/widget/RecyclerView$LayoutManager;I)Lccsanandroidx/recyclerview/widget/OrientationHelper;
    .locals 2
    .param p0, "layoutManager"    # Lccsanandroidx/recyclerview/widget/RecyclerView$LayoutManager;
    .param p1, "orientation"    # I

    .line 241
    packed-switch p1, :pswitch_data_0

    .line 247
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "invalid orientation"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 245
    :pswitch_0
    invoke-static {p0}, Lccsanandroidx/recyclerview/widget/OrientationHelper;->createVerticalHelper(Lccsanandroidx/recyclerview/widget/RecyclerView$LayoutManager;)Lccsanandroidx/recyclerview/widget/OrientationHelper;

    move-result-object v0

    return-object v0

    .line 243
    :pswitch_1
    invoke-static {p0}, Lccsanandroidx/recyclerview/widget/OrientationHelper;->createHorizontalHelper(Lccsanandroidx/recyclerview/widget/RecyclerView$LayoutManager;)Lccsanandroidx/recyclerview/widget/OrientationHelper;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static createVerticalHelper(Lccsanandroidx/recyclerview/widget/RecyclerView$LayoutManager;)Lccsanandroidx/recyclerview/widget/OrientationHelper;
    .locals 1
    .param p0, "layoutManager"    # Lccsanandroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 356
    new-instance v0, Lccsanandroidx/recyclerview/widget/OrientationHelper$2;

    invoke-direct {v0, p0}, Lccsanandroidx/recyclerview/widget/OrientationHelper$2;-><init>(Lccsanandroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    return-object v0
.end method


# virtual methods
.method public abstract getDecoratedEnd(Lccsanandroid/view/View;)I
.end method

.method public abstract getDecoratedMeasurement(Lccsanandroid/view/View;)I
.end method

.method public abstract getDecoratedMeasurementInOther(Lccsanandroid/view/View;)I
.end method

.method public abstract getDecoratedStart(Lccsanandroid/view/View;)I
.end method

.method public abstract getEnd()I
.end method

.method public abstract getEndAfterPadding()I
.end method

.method public abstract getEndPadding()I
.end method

.method public getLayoutManager()Lccsanandroidx/recyclerview/widget/RecyclerView$LayoutManager;
    .locals 1

    .line 55
    iget-object v0, p0, Lccsanandroidx/recyclerview/widget/OrientationHelper;->mLayoutManager:Lccsanandroidx/recyclerview/widget/RecyclerView$LayoutManager;

    return-object v0
.end method

.method public abstract getMode()I
.end method

.method public abstract getModeInOther()I
.end method

.method public abstract getStartAfterPadding()I
.end method

.method public abstract getTotalSpace()I
.end method

.method public getTotalSpaceChange()I
    .locals 2

    .line 78
    iget v0, p0, Lccsanandroidx/recyclerview/widget/OrientationHelper;->mLastTotalSpace:I

    const/high16 v1, -0x80000000

    if-ne v1, v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lccsanandroidx/recyclerview/widget/OrientationHelper;->getTotalSpace()I

    move-result v0

    iget v1, p0, Lccsanandroidx/recyclerview/widget/OrientationHelper;->mLastTotalSpace:I

    sub-int/2addr v0, v1

    :goto_0
    return v0
.end method

.method public abstract getTransformedEndWithDecoration(Lccsanandroid/view/View;)I
.end method

.method public abstract getTransformedStartWithDecoration(Lccsanandroid/view/View;)I
.end method

.method public abstract offsetChild(Lccsanandroid/view/View;I)V
.end method

.method public abstract offsetChildren(I)V
.end method

.method public onLayoutComplete()V
    .locals 1

    .line 64
    invoke-virtual {p0}, Lccsanandroidx/recyclerview/widget/OrientationHelper;->getTotalSpace()I

    move-result v0

    iput v0, p0, Lccsanandroidx/recyclerview/widget/OrientationHelper;->mLastTotalSpace:I

    .line 65
    return-void
.end method
