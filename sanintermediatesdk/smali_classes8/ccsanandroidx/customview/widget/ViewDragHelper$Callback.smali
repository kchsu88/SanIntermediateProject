.class public abstract Lccsanandroidx/customview/widget/ViewDragHelper$Callback;
.super Ljava/lang/Object;
.source "ViewDragHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsanandroidx/customview/widget/ViewDragHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Callback"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 152
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public clampViewPositionHorizontal(Lccsanandroid/view/View;II)I
    .locals 1
    .param p1, "child"    # Lccsanandroid/view/View;
    .param p2, "left"    # I
    .param p3, "dx"    # I

    .line 310
    const/4 v0, 0x0

    return v0
.end method

.method public clampViewPositionVertical(Lccsanandroid/view/View;II)I
    .locals 1
    .param p1, "child"    # Lccsanandroid/view/View;
    .param p2, "top"    # I
    .param p3, "dy"    # I

    .line 325
    const/4 v0, 0x0

    return v0
.end method

.method public getOrderedChildIndex(I)I
    .locals 0
    .param p1, "index"    # I

    .line 255
    return p1
.end method

.method public getViewHorizontalDragRange(Lccsanandroid/view/View;)I
    .locals 1
    .param p1, "child"    # Lccsanandroid/view/View;

    .line 266
    const/4 v0, 0x0

    return v0
.end method

.method public getViewVerticalDragRange(Lccsanandroid/view/View;)I
    .locals 1
    .param p1, "child"    # Lccsanandroid/view/View;

    .line 277
    const/4 v0, 0x0

    return v0
.end method

.method public onEdgeDragStarted(II)V
    .locals 0
    .param p1, "edgeFlags"    # I
    .param p2, "pointerId"    # I

    .line 246
    return-void
.end method

.method public onEdgeLock(I)Z
    .locals 1
    .param p1, "edgeFlags"    # I

    .line 232
    const/4 v0, 0x0

    return v0
.end method

.method public onEdgeTouched(II)V
    .locals 0
    .param p1, "edgeFlags"    # I
    .param p2, "pointerId"    # I

    .line 220
    return-void
.end method

.method public onViewCaptured(Lccsanandroid/view/View;I)V
    .locals 0
    .param p1, "capturedChild"    # Lccsanandroid/view/View;
    .param p2, "activePointerId"    # I

    .line 187
    return-void
.end method

.method public onViewDragStateChanged(I)V
    .locals 0
    .param p1, "state"    # I

    .line 163
    return-void
.end method

.method public onViewPositionChanged(Lccsanandroid/view/View;IIII)V
    .locals 0
    .param p1, "changedView"    # Lccsanandroid/view/View;
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "dx"    # I
    .param p5, "dy"    # I

    .line 176
    return-void
.end method

.method public onViewReleased(Lccsanandroid/view/View;FF)V
    .locals 0
    .param p1, "releasedChild"    # Lccsanandroid/view/View;
    .param p2, "xvel"    # F
    .param p3, "yvel"    # F

    .line 207
    return-void
.end method

.method public abstract tryCaptureView(Lccsanandroid/view/View;I)Z
.end method
