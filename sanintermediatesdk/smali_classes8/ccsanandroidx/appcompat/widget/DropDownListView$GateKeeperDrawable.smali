.class Lccsanandroidx/appcompat/widget/DropDownListView$GateKeeperDrawable;
.super Lccsanandroidx/appcompat/graphics/drawable/DrawableWrapper;
.source "DropDownListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsanandroidx/appcompat/widget/DropDownListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "GateKeeperDrawable"
.end annotation


# instance fields
.field private mEnabled:Z


# direct methods
.method constructor <init>(Lccsanandroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "drawable"    # Lccsanandroid/graphics/drawable/Drawable;

    .line 380
    invoke-direct {p0, p1}, Lccsanandroidx/appcompat/graphics/drawable/DrawableWrapper;-><init>(Lccsanandroid/graphics/drawable/Drawable;)V

    .line 381
    const/4 v0, 0x1

    iput-boolean v0, p0, Lccsanandroidx/appcompat/widget/DropDownListView$GateKeeperDrawable;->mEnabled:Z

    .line 382
    return-void
.end method


# virtual methods
.method public draw(Lccsanandroid/graphics/Canvas;)V
    .locals 1
    .param p1, "canvas"    # Lccsanandroid/graphics/Canvas;

    .line 398
    iget-boolean v0, p0, Lccsanandroidx/appcompat/widget/DropDownListView$GateKeeperDrawable;->mEnabled:Z

    if-eqz v0, :cond_0

    .line 399
    invoke-super {p0, p1}, Lccsanandroidx/appcompat/graphics/drawable/DrawableWrapper;->draw(Lccsanandroid/graphics/Canvas;)V

    .line 401
    :cond_0
    return-void
.end method

.method setEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .line 385
    iput-boolean p1, p0, Lccsanandroidx/appcompat/widget/DropDownListView$GateKeeperDrawable;->mEnabled:Z

    .line 386
    return-void
.end method

.method public setHotspot(FF)V
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F

    .line 405
    iget-boolean v0, p0, Lccsanandroidx/appcompat/widget/DropDownListView$GateKeeperDrawable;->mEnabled:Z

    if-eqz v0, :cond_0

    .line 406
    invoke-super {p0, p1, p2}, Lccsanandroidx/appcompat/graphics/drawable/DrawableWrapper;->setHotspot(FF)V

    .line 408
    :cond_0
    return-void
.end method

.method public setHotspotBounds(IIII)V
    .locals 1
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .line 412
    iget-boolean v0, p0, Lccsanandroidx/appcompat/widget/DropDownListView$GateKeeperDrawable;->mEnabled:Z

    if-eqz v0, :cond_0

    .line 413
    invoke-super {p0, p1, p2, p3, p4}, Lccsanandroidx/appcompat/graphics/drawable/DrawableWrapper;->setHotspotBounds(IIII)V

    .line 415
    :cond_0
    return-void
.end method

.method public setState([I)Z
    .locals 1
    .param p1, "stateSet"    # [I

    .line 390
    iget-boolean v0, p0, Lccsanandroidx/appcompat/widget/DropDownListView$GateKeeperDrawable;->mEnabled:Z

    if-eqz v0, :cond_0

    .line 391
    invoke-super {p0, p1}, Lccsanandroidx/appcompat/graphics/drawable/DrawableWrapper;->setState([I)Z

    move-result v0

    return v0

    .line 393
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public setVisible(ZZ)Z
    .locals 1
    .param p1, "visible"    # Z
    .param p2, "restart"    # Z

    .line 419
    iget-boolean v0, p0, Lccsanandroidx/appcompat/widget/DropDownListView$GateKeeperDrawable;->mEnabled:Z

    if-eqz v0, :cond_0

    .line 420
    invoke-super {p0, p1, p2}, Lccsanandroidx/appcompat/graphics/drawable/DrawableWrapper;->setVisible(ZZ)Z

    move-result v0

    return v0

    .line 422
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
