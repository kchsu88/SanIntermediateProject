.class public Lccsanandroidx/appcompat/view/menu/MenuPopupHelper;
.super Ljava/lang/Object;
.source "MenuPopupHelper.java"

# interfaces
.implements Lccsanandroidx/appcompat/view/menu/MenuHelper;


# static fields
.field private static final TOUCH_EPICENTER_SIZE_DP:I = 0x30


# instance fields
.field private mAnchorView:Lccsanandroid/view/View;

.field private final mContext:Lccsanandroid/content/Context;

.field private mDropDownGravity:I

.field private mForceShowIcon:Z

.field private final mInternalOnDismissListener:Lccsanandroid/widget/PopupWindow$OnDismissListener;

.field private final mMenu:Lccsanandroidx/appcompat/view/menu/MenuBuilder;

.field private mOnDismissListener:Lccsanandroid/widget/PopupWindow$OnDismissListener;

.field private final mOverflowOnly:Z

.field private mPopup:Lccsanandroidx/appcompat/view/menu/MenuPopup;

.field private final mPopupStyleAttr:I

.field private final mPopupStyleRes:I

.field private mPresenterCallback:Lccsanandroidx/appcompat/view/menu/MenuPresenter$Callback;


# direct methods
.method public constructor <init>(Lccsanandroid/content/Context;Lccsanandroidx/appcompat/view/menu/MenuBuilder;)V
    .locals 7
    .param p1, "context"    # Lccsanandroid/content/Context;
    .param p2, "menu"    # Lccsanandroidx/appcompat/view/menu/MenuBuilder;

    .line 68
    sget v5, Lccsanandroidx/appcompat/R$attr;->popupMenuStyle:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v6}, Lccsanandroidx/appcompat/view/menu/MenuPopupHelper;-><init>(Lccsanandroid/content/Context;Lccsanandroidx/appcompat/view/menu/MenuBuilder;Lccsanandroid/view/View;ZII)V

    .line 69
    return-void
.end method

.method public constructor <init>(Lccsanandroid/content/Context;Lccsanandroidx/appcompat/view/menu/MenuBuilder;Lccsanandroid/view/View;)V
    .locals 7
    .param p1, "context"    # Lccsanandroid/content/Context;
    .param p2, "menu"    # Lccsanandroidx/appcompat/view/menu/MenuBuilder;
    .param p3, "anchorView"    # Lccsanandroid/view/View;

    .line 73
    sget v5, Lccsanandroidx/appcompat/R$attr;->popupMenuStyle:I

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v6}, Lccsanandroidx/appcompat/view/menu/MenuPopupHelper;-><init>(Lccsanandroid/content/Context;Lccsanandroidx/appcompat/view/menu/MenuBuilder;Lccsanandroid/view/View;ZII)V

    .line 74
    return-void
.end method

.method public constructor <init>(Lccsanandroid/content/Context;Lccsanandroidx/appcompat/view/menu/MenuBuilder;Lccsanandroid/view/View;ZI)V
    .locals 7
    .param p1, "context"    # Lccsanandroid/content/Context;
    .param p2, "menu"    # Lccsanandroidx/appcompat/view/menu/MenuBuilder;
    .param p3, "anchorView"    # Lccsanandroid/view/View;
    .param p4, "overflowOnly"    # Z
    .param p5, "popupStyleAttr"    # I

    .line 79
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v6}, Lccsanandroidx/appcompat/view/menu/MenuPopupHelper;-><init>(Lccsanandroid/content/Context;Lccsanandroidx/appcompat/view/menu/MenuBuilder;Lccsanandroid/view/View;ZII)V

    .line 80
    return-void
.end method

.method public constructor <init>(Lccsanandroid/content/Context;Lccsanandroidx/appcompat/view/menu/MenuBuilder;Lccsanandroid/view/View;ZII)V
    .locals 1
    .param p1, "context"    # Lccsanandroid/content/Context;
    .param p2, "menu"    # Lccsanandroidx/appcompat/view/menu/MenuBuilder;
    .param p3, "anchorView"    # Lccsanandroid/view/View;
    .param p4, "overflowOnly"    # Z
    .param p5, "popupStyleAttr"    # I
    .param p6, "popupStyleRes"    # I

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    const v0, 0x800003

    iput v0, p0, Lccsanandroidx/appcompat/view/menu/MenuPopupHelper;->mDropDownGravity:I

    .line 334
    new-instance v0, Lccsanandroidx/appcompat/view/menu/MenuPopupHelper$1;

    invoke-direct {v0, p0}, Lccsanandroidx/appcompat/view/menu/MenuPopupHelper$1;-><init>(Lccsanandroidx/appcompat/view/menu/MenuPopupHelper;)V

    iput-object v0, p0, Lccsanandroidx/appcompat/view/menu/MenuPopupHelper;->mInternalOnDismissListener:Lccsanandroid/widget/PopupWindow$OnDismissListener;

    .line 85
    iput-object p1, p0, Lccsanandroidx/appcompat/view/menu/MenuPopupHelper;->mContext:Lccsanandroid/content/Context;

    .line 86
    iput-object p2, p0, Lccsanandroidx/appcompat/view/menu/MenuPopupHelper;->mMenu:Lccsanandroidx/appcompat/view/menu/MenuBuilder;

    .line 87
    iput-object p3, p0, Lccsanandroidx/appcompat/view/menu/MenuPopupHelper;->mAnchorView:Lccsanandroid/view/View;

    .line 88
    iput-boolean p4, p0, Lccsanandroidx/appcompat/view/menu/MenuPopupHelper;->mOverflowOnly:Z

    .line 89
    iput p5, p0, Lccsanandroidx/appcompat/view/menu/MenuPopupHelper;->mPopupStyleAttr:I

    .line 90
    iput p6, p0, Lccsanandroidx/appcompat/view/menu/MenuPopupHelper;->mPopupStyleRes:I

    .line 91
    return-void
.end method

.method private createPopup()Lccsanandroidx/appcompat/view/menu/MenuPopup;
    .locals 14

    .line 224
    iget-object v0, p0, Lccsanandroidx/appcompat/view/menu/MenuPopupHelper;->mContext:Lccsanandroid/content/Context;

    const-string/jumbo v1, "window"

    invoke-virtual {v0, v1}, Lccsanandroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsanandroid/view/WindowManager;

    .line 226
    .local v0, "windowManager":Lccsanandroid/view/WindowManager;
    invoke-interface {v0}, Lccsanandroid/view/WindowManager;->getDefaultDisplay()Lccsanandroid/view/Display;

    move-result-object v1

    .line 227
    .local v1, "display":Lccsanandroid/view/Display;
    new-instance v2, Lccsanandroid/graphics/Point;

    invoke-direct {v2}, Lccsanandroid/graphics/Point;-><init>()V

    .line 229
    .local v2, "displaySize":Lccsanandroid/graphics/Point;
    sget v3, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x11

    if-lt v3, v4, :cond_0

    .line 230
    invoke-virtual {v1, v2}, Lccsanandroid/view/Display;->getRealSize(Lccsanandroid/graphics/Point;)V

    goto :goto_0

    .line 232
    :cond_0
    invoke-virtual {v1, v2}, Lccsanandroid/view/Display;->getSize(Lccsanandroid/graphics/Point;)V

    .line 235
    :goto_0
    iget v3, v2, Lccsanandroid/graphics/Point;->x:I

    iget v4, v2, Lccsanandroid/graphics/Point;->y:I

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 236
    .local v3, "smallestWidth":I
    iget-object v4, p0, Lccsanandroidx/appcompat/view/menu/MenuPopupHelper;->mContext:Lccsanandroid/content/Context;

    invoke-virtual {v4}, Lccsanandroid/content/Context;->getResources()Lccsanandroid/content/res/Resources;

    move-result-object v4

    sget v5, Lccsanandroidx/appcompat/R$dimen;->abc_cascading_menus_min_smallest_width:I

    invoke-virtual {v4, v5}, Lccsanandroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 238
    .local v4, "minSmallestWidthCascading":I
    if-lt v3, v4, :cond_1

    const/4 v5, 0x1

    goto :goto_1

    :cond_1
    const/4 v5, 0x0

    .line 241
    .local v5, "enableCascadingSubmenus":Z
    :goto_1
    if-eqz v5, :cond_2

    .line 242
    new-instance v12, Lccsanandroidx/appcompat/view/menu/CascadingMenuPopup;

    iget-object v7, p0, Lccsanandroidx/appcompat/view/menu/MenuPopupHelper;->mContext:Lccsanandroid/content/Context;

    iget-object v8, p0, Lccsanandroidx/appcompat/view/menu/MenuPopupHelper;->mAnchorView:Lccsanandroid/view/View;

    iget v9, p0, Lccsanandroidx/appcompat/view/menu/MenuPopupHelper;->mPopupStyleAttr:I

    iget v10, p0, Lccsanandroidx/appcompat/view/menu/MenuPopupHelper;->mPopupStyleRes:I

    iget-boolean v11, p0, Lccsanandroidx/appcompat/view/menu/MenuPopupHelper;->mOverflowOnly:Z

    move-object v6, v12

    invoke-direct/range {v6 .. v11}, Lccsanandroidx/appcompat/view/menu/CascadingMenuPopup;-><init>(Lccsanandroid/content/Context;Lccsanandroid/view/View;IIZ)V

    .local v6, "popup":Lccsanandroidx/appcompat/view/menu/MenuPopup;
    goto :goto_2

    .line 245
    .end local v6    # "popup":Lccsanandroidx/appcompat/view/menu/MenuPopup;
    :cond_2
    new-instance v6, Lccsanandroidx/appcompat/view/menu/StandardMenuPopup;

    iget-object v8, p0, Lccsanandroidx/appcompat/view/menu/MenuPopupHelper;->mContext:Lccsanandroid/content/Context;

    iget-object v9, p0, Lccsanandroidx/appcompat/view/menu/MenuPopupHelper;->mMenu:Lccsanandroidx/appcompat/view/menu/MenuBuilder;

    iget-object v10, p0, Lccsanandroidx/appcompat/view/menu/MenuPopupHelper;->mAnchorView:Lccsanandroid/view/View;

    iget v11, p0, Lccsanandroidx/appcompat/view/menu/MenuPopupHelper;->mPopupStyleAttr:I

    iget v12, p0, Lccsanandroidx/appcompat/view/menu/MenuPopupHelper;->mPopupStyleRes:I

    iget-boolean v13, p0, Lccsanandroidx/appcompat/view/menu/MenuPopupHelper;->mOverflowOnly:Z

    move-object v7, v6

    invoke-direct/range {v7 .. v13}, Lccsanandroidx/appcompat/view/menu/StandardMenuPopup;-><init>(Lccsanandroid/content/Context;Lccsanandroidx/appcompat/view/menu/MenuBuilder;Lccsanandroid/view/View;IIZ)V

    .line 250
    .restart local v6    # "popup":Lccsanandroidx/appcompat/view/menu/MenuPopup;
    :goto_2
    iget-object v7, p0, Lccsanandroidx/appcompat/view/menu/MenuPopupHelper;->mMenu:Lccsanandroidx/appcompat/view/menu/MenuBuilder;

    invoke-virtual {v6, v7}, Lccsanandroidx/appcompat/view/menu/MenuPopup;->addMenu(Lccsanandroidx/appcompat/view/menu/MenuBuilder;)V

    .line 251
    iget-object v7, p0, Lccsanandroidx/appcompat/view/menu/MenuPopupHelper;->mInternalOnDismissListener:Lccsanandroid/widget/PopupWindow$OnDismissListener;

    invoke-virtual {v6, v7}, Lccsanandroidx/appcompat/view/menu/MenuPopup;->setOnDismissListener(Lccsanandroid/widget/PopupWindow$OnDismissListener;)V

    .line 254
    iget-object v7, p0, Lccsanandroidx/appcompat/view/menu/MenuPopupHelper;->mAnchorView:Lccsanandroid/view/View;

    invoke-virtual {v6, v7}, Lccsanandroidx/appcompat/view/menu/MenuPopup;->setAnchorView(Lccsanandroid/view/View;)V

    .line 255
    iget-object v7, p0, Lccsanandroidx/appcompat/view/menu/MenuPopupHelper;->mPresenterCallback:Lccsanandroidx/appcompat/view/menu/MenuPresenter$Callback;

    invoke-virtual {v6, v7}, Lccsanandroidx/appcompat/view/menu/MenuPopup;->setCallback(Lccsanandroidx/appcompat/view/menu/MenuPresenter$Callback;)V

    .line 256
    iget-boolean v7, p0, Lccsanandroidx/appcompat/view/menu/MenuPopupHelper;->mForceShowIcon:Z

    invoke-virtual {v6, v7}, Lccsanandroidx/appcompat/view/menu/MenuPopup;->setForceShowIcon(Z)V

    .line 257
    iget v7, p0, Lccsanandroidx/appcompat/view/menu/MenuPopupHelper;->mDropDownGravity:I

    invoke-virtual {v6, v7}, Lccsanandroidx/appcompat/view/menu/MenuPopup;->setGravity(I)V

    .line 259
    return-object v6
.end method

.method private showPopup(IIZZ)V
    .locals 9
    .param p1, "xOffset"    # I
    .param p2, "yOffset"    # I
    .param p3, "useOffsets"    # Z
    .param p4, "showTitle"    # Z

    .line 263
    invoke-virtual {p0}, Lccsanandroidx/appcompat/view/menu/MenuPopupHelper;->getPopup()Lccsanandroidx/appcompat/view/menu/MenuPopup;

    move-result-object v0

    .line 264
    .local v0, "popup":Lccsanandroidx/appcompat/view/menu/MenuPopup;
    invoke-virtual {v0, p4}, Lccsanandroidx/appcompat/view/menu/MenuPopup;->setShowTitle(Z)V

    .line 266
    if-eqz p3, :cond_1

    .line 270
    iget v1, p0, Lccsanandroidx/appcompat/view/menu/MenuPopupHelper;->mDropDownGravity:I

    iget-object v2, p0, Lccsanandroidx/appcompat/view/menu/MenuPopupHelper;->mAnchorView:Lccsanandroid/view/View;

    .line 271
    invoke-static {v2}, Lccsanandroidx/core/view/ViewCompat;->getLayoutDirection(Lccsanandroid/view/View;)I

    move-result v2

    .line 270
    invoke-static {v1, v2}, Lccsanandroidx/core/view/GravityCompat;->getAbsoluteGravity(II)I

    move-result v1

    and-int/lit8 v1, v1, 0x7

    .line 272
    .local v1, "hgrav":I
    const/4 v2, 0x5

    if-ne v1, v2, :cond_0

    .line 273
    iget-object v2, p0, Lccsanandroidx/appcompat/view/menu/MenuPopupHelper;->mAnchorView:Lccsanandroid/view/View;

    invoke-virtual {v2}, Lccsanandroid/view/View;->getWidth()I

    move-result v2

    sub-int/2addr p1, v2

    .line 276
    :cond_0
    invoke-virtual {v0, p1}, Lccsanandroidx/appcompat/view/menu/MenuPopup;->setHorizontalOffset(I)V

    .line 277
    invoke-virtual {v0, p2}, Lccsanandroidx/appcompat/view/menu/MenuPopup;->setVerticalOffset(I)V

    .line 283
    iget-object v2, p0, Lccsanandroidx/appcompat/view/menu/MenuPopupHelper;->mContext:Lccsanandroid/content/Context;

    invoke-virtual {v2}, Lccsanandroid/content/Context;->getResources()Lccsanandroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Lccsanandroid/content/res/Resources;->getDisplayMetrics()Lccsanandroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Lccsanandroid/util/DisplayMetrics;->density:F

    .line 284
    .local v2, "density":F
    const/high16 v3, 0x42400000    # 48.0f

    mul-float v3, v3, v2

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    float-to-int v3, v3

    .line 285
    .local v3, "halfSize":I
    new-instance v4, Lccsanandroid/graphics/Rect;

    sub-int v5, p1, v3

    sub-int v6, p2, v3

    add-int v7, p1, v3

    add-int v8, p2, v3

    invoke-direct {v4, v5, v6, v7, v8}, Lccsanandroid/graphics/Rect;-><init>(IIII)V

    .line 287
    .local v4, "epicenter":Lccsanandroid/graphics/Rect;
    invoke-virtual {v0, v4}, Lccsanandroidx/appcompat/view/menu/MenuPopup;->setEpicenterBounds(Lccsanandroid/graphics/Rect;)V

    .line 290
    .end local v1    # "hgrav":I
    .end local v2    # "density":F
    .end local v3    # "halfSize":I
    .end local v4    # "epicenter":Lccsanandroid/graphics/Rect;
    :cond_1
    invoke-virtual {v0}, Lccsanandroidx/appcompat/view/menu/MenuPopup;->show()V

    .line 291
    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 1

    .line 298
    invoke-virtual {p0}, Lccsanandroidx/appcompat/view/menu/MenuPopupHelper;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 299
    iget-object v0, p0, Lccsanandroidx/appcompat/view/menu/MenuPopupHelper;->mPopup:Lccsanandroidx/appcompat/view/menu/MenuPopup;

    invoke-virtual {v0}, Lccsanandroidx/appcompat/view/menu/MenuPopup;->dismiss()V

    .line 301
    :cond_0
    return-void
.end method

.method public getGravity()I
    .locals 1

    .line 139
    iget v0, p0, Lccsanandroidx/appcompat/view/menu/MenuPopupHelper;->mDropDownGravity:I

    return v0
.end method

.method public getListView()Lccsanandroid/widget/ListView;
    .locals 1

    .line 345
    invoke-virtual {p0}, Lccsanandroidx/appcompat/view/menu/MenuPopupHelper;->getPopup()Lccsanandroidx/appcompat/view/menu/MenuPopup;

    move-result-object v0

    invoke-virtual {v0}, Lccsanandroidx/appcompat/view/menu/MenuPopup;->getListView()Lccsanandroid/widget/ListView;

    move-result-object v0

    return-object v0
.end method

.method public getPopup()Lccsanandroidx/appcompat/view/menu/MenuPopup;
    .locals 1

    .line 156
    iget-object v0, p0, Lccsanandroidx/appcompat/view/menu/MenuPopupHelper;->mPopup:Lccsanandroidx/appcompat/view/menu/MenuPopup;

    if-nez v0, :cond_0

    .line 157
    invoke-direct {p0}, Lccsanandroidx/appcompat/view/menu/MenuPopupHelper;->createPopup()Lccsanandroidx/appcompat/view/menu/MenuPopup;

    move-result-object v0

    iput-object v0, p0, Lccsanandroidx/appcompat/view/menu/MenuPopupHelper;->mPopup:Lccsanandroidx/appcompat/view/menu/MenuPopup;

    .line 159
    :cond_0
    iget-object v0, p0, Lccsanandroidx/appcompat/view/menu/MenuPopupHelper;->mPopup:Lccsanandroidx/appcompat/view/menu/MenuPopup;

    return-object v0
.end method

.method public isShowing()Z
    .locals 1

    .line 320
    iget-object v0, p0, Lccsanandroidx/appcompat/view/menu/MenuPopupHelper;->mPopup:Lccsanandroidx/appcompat/view/menu/MenuPopup;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lccsanandroidx/appcompat/view/menu/MenuPopup;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected onDismiss()V
    .locals 1

    .line 312
    const/4 v0, 0x0

    iput-object v0, p0, Lccsanandroidx/appcompat/view/menu/MenuPopupHelper;->mPopup:Lccsanandroidx/appcompat/view/menu/MenuPopup;

    .line 314
    iget-object v0, p0, Lccsanandroidx/appcompat/view/menu/MenuPopupHelper;->mOnDismissListener:Lccsanandroid/widget/PopupWindow$OnDismissListener;

    if-eqz v0, :cond_0

    .line 315
    invoke-interface {v0}, Lccsanandroid/widget/PopupWindow$OnDismissListener;->onDismiss()V

    .line 317
    :cond_0
    return-void
.end method

.method public setAnchorView(Lccsanandroid/view/View;)V
    .locals 0
    .param p1, "anchor"    # Lccsanandroid/view/View;

    .line 105
    iput-object p1, p0, Lccsanandroidx/appcompat/view/menu/MenuPopupHelper;->mAnchorView:Lccsanandroid/view/View;

    .line 106
    return-void
.end method

.method public setForceShowIcon(Z)V
    .locals 1
    .param p1, "forceShowIcon"    # Z

    .line 118
    iput-boolean p1, p0, Lccsanandroidx/appcompat/view/menu/MenuPopupHelper;->mForceShowIcon:Z

    .line 119
    iget-object v0, p0, Lccsanandroidx/appcompat/view/menu/MenuPopupHelper;->mPopup:Lccsanandroidx/appcompat/view/menu/MenuPopup;

    if-eqz v0, :cond_0

    .line 120
    invoke-virtual {v0, p1}, Lccsanandroidx/appcompat/view/menu/MenuPopup;->setForceShowIcon(Z)V

    .line 122
    :cond_0
    return-void
.end method

.method public setGravity(I)V
    .locals 0
    .param p1, "gravity"    # I

    .line 132
    iput p1, p0, Lccsanandroidx/appcompat/view/menu/MenuPopupHelper;->mDropDownGravity:I

    .line 133
    return-void
.end method

.method public setOnDismissListener(Lccsanandroid/widget/PopupWindow$OnDismissListener;)V
    .locals 0
    .param p1, "listener"    # Lccsanandroid/widget/PopupWindow$OnDismissListener;

    .line 94
    iput-object p1, p0, Lccsanandroidx/appcompat/view/menu/MenuPopupHelper;->mOnDismissListener:Lccsanandroid/widget/PopupWindow$OnDismissListener;

    .line 95
    return-void
.end method

.method public setPresenterCallback(Lccsanandroidx/appcompat/view/menu/MenuPresenter$Callback;)V
    .locals 1
    .param p1, "cb"    # Lccsanandroidx/appcompat/view/menu/MenuPresenter$Callback;

    .line 325
    iput-object p1, p0, Lccsanandroidx/appcompat/view/menu/MenuPopupHelper;->mPresenterCallback:Lccsanandroidx/appcompat/view/menu/MenuPresenter$Callback;

    .line 326
    iget-object v0, p0, Lccsanandroidx/appcompat/view/menu/MenuPopupHelper;->mPopup:Lccsanandroidx/appcompat/view/menu/MenuPopup;

    if-eqz v0, :cond_0

    .line 327
    invoke-virtual {v0, p1}, Lccsanandroidx/appcompat/view/menu/MenuPopup;->setCallback(Lccsanandroidx/appcompat/view/menu/MenuPresenter$Callback;)V

    .line 329
    :cond_0
    return-void
.end method

.method public show()V
    .locals 2

    .line 143
    invoke-virtual {p0}, Lccsanandroidx/appcompat/view/menu/MenuPopupHelper;->tryShow()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 146
    return-void

    .line 144
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "MenuPopupHelper cannot be used without an anchor"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public show(II)V
    .locals 2
    .param p1, "x"    # I
    .param p2, "y"    # I

    .line 149
    invoke-virtual {p0, p1, p2}, Lccsanandroidx/appcompat/view/menu/MenuPopupHelper;->tryShow(II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 152
    return-void

    .line 150
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "MenuPopupHelper cannot be used without an anchor"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public tryShow()Z
    .locals 3

    .line 169
    invoke-virtual {p0}, Lccsanandroidx/appcompat/view/menu/MenuPopupHelper;->isShowing()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 170
    return v1

    .line 173
    :cond_0
    iget-object v0, p0, Lccsanandroidx/appcompat/view/menu/MenuPopupHelper;->mAnchorView:Lccsanandroid/view/View;

    const/4 v2, 0x0

    if-nez v0, :cond_1

    .line 174
    return v2

    .line 177
    :cond_1
    invoke-direct {p0, v2, v2, v2, v2}, Lccsanandroidx/appcompat/view/menu/MenuPopupHelper;->showPopup(IIZZ)V

    .line 178
    return v1
.end method

.method public tryShow(II)Z
    .locals 2
    .param p1, "x"    # I
    .param p2, "y"    # I

    .line 205
    invoke-virtual {p0}, Lccsanandroidx/appcompat/view/menu/MenuPopupHelper;->isShowing()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 206
    return v1

    .line 209
    :cond_0
    iget-object v0, p0, Lccsanandroidx/appcompat/view/menu/MenuPopupHelper;->mAnchorView:Lccsanandroid/view/View;

    if-nez v0, :cond_1

    .line 210
    const/4 v0, 0x0

    return v0

    .line 213
    :cond_1
    invoke-direct {p0, p1, p2, v1, v1}, Lccsanandroidx/appcompat/view/menu/MenuPopupHelper;->showPopup(IIZZ)V

    .line 214
    return v1
.end method
