.class Lccsanandroidx/appcompat/widget/TooltipPopup;
.super Ljava/lang/Object;
.source "TooltipPopup.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "TooltipPopup"


# instance fields
.field private final mContentView:Lccsanandroid/view/View;

.field private final mContext:Lccsanandroid/content/Context;

.field private final mLayoutParams:Lccsanandroid/view/WindowManager$LayoutParams;

.field private final mMessageView:Lccsanandroid/widget/TextView;

.field private final mTmpAnchorPos:[I

.field private final mTmpAppPos:[I

.field private final mTmpDisplayFrame:Lccsanandroid/graphics/Rect;


# direct methods
.method constructor <init>(Lccsanandroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Lccsanandroid/content/Context;

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    new-instance v0, Lccsanandroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Lccsanandroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v0, p0, Lccsanandroidx/appcompat/widget/TooltipPopup;->mLayoutParams:Lccsanandroid/view/WindowManager$LayoutParams;

    .line 55
    new-instance v1, Lccsanandroid/graphics/Rect;

    invoke-direct {v1}, Lccsanandroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lccsanandroidx/appcompat/widget/TooltipPopup;->mTmpDisplayFrame:Lccsanandroid/graphics/Rect;

    .line 56
    const/4 v1, 0x2

    new-array v2, v1, [I

    iput-object v2, p0, Lccsanandroidx/appcompat/widget/TooltipPopup;->mTmpAnchorPos:[I

    .line 57
    new-array v1, v1, [I

    iput-object v1, p0, Lccsanandroidx/appcompat/widget/TooltipPopup;->mTmpAppPos:[I

    .line 60
    iput-object p1, p0, Lccsanandroidx/appcompat/widget/TooltipPopup;->mContext:Lccsanandroid/content/Context;

    .line 62
    invoke-static {p1}, Lccsanandroid/view/LayoutInflater;->from(Lccsanandroid/content/Context;)Lccsanandroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lccsanandroidx/appcompat/R$layout;->abc_tooltip:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lccsanandroid/view/LayoutInflater;->inflate(ILccsanandroid/view/ViewGroup;)Lccsanandroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lccsanandroidx/appcompat/widget/TooltipPopup;->mContentView:Lccsanandroid/view/View;

    .line 63
    sget v2, Lccsanandroidx/appcompat/R$id;->message:I

    invoke-virtual {v1, v2}, Lccsanandroid/view/View;->findViewById(I)Lccsanandroid/view/View;

    move-result-object v1

    check-cast v1, Lccsanandroid/widget/TextView;

    iput-object v1, p0, Lccsanandroidx/appcompat/widget/TooltipPopup;->mMessageView:Lccsanandroid/widget/TextView;

    .line 65
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lccsanandroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 66
    invoke-virtual {p1}, Lccsanandroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lccsanandroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    .line 67
    const/16 v1, 0x3ea

    iput v1, v0, Lccsanandroid/view/WindowManager$LayoutParams;->type:I

    .line 68
    const/4 v1, -0x2

    iput v1, v0, Lccsanandroid/view/WindowManager$LayoutParams;->width:I

    .line 69
    iput v1, v0, Lccsanandroid/view/WindowManager$LayoutParams;->height:I

    .line 70
    const/4 v1, -0x3

    iput v1, v0, Lccsanandroid/view/WindowManager$LayoutParams;->format:I

    .line 71
    sget v1, Lccsanandroidx/appcompat/R$style;->Animation_AppCompat_Tooltip:I

    iput v1, v0, Lccsanandroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 72
    const/16 v1, 0x18

    iput v1, v0, Lccsanandroid/view/WindowManager$LayoutParams;->flags:I

    .line 74
    return-void
.end method

.method private computePosition(Lccsanandroid/view/View;IIZLccsanandroid/view/WindowManager$LayoutParams;)V
    .locals 16
    .param p1, "anchorView"    # Lccsanandroid/view/View;
    .param p2, "anchorX"    # I
    .param p3, "anchorY"    # I
    .param p4, "fromTouch"    # Z
    .param p5, "outParams"    # Lccsanandroid/view/WindowManager$LayoutParams;

    .line 105
    move-object/from16 v0, p0

    move-object/from16 v1, p5

    invoke-virtual/range {p1 .. p1}, Lccsanandroid/view/View;->getApplicationWindowToken()Lccsanandroid/os/IBinder;

    move-result-object v2

    iput-object v2, v1, Lccsanandroid/view/WindowManager$LayoutParams;->token:Lccsanandroid/os/IBinder;

    .line 106
    iget-object v2, v0, Lccsanandroidx/appcompat/widget/TooltipPopup;->mContext:Lccsanandroid/content/Context;

    invoke-virtual {v2}, Lccsanandroid/content/Context;->getResources()Lccsanandroid/content/res/Resources;

    move-result-object v2

    sget v3, Lccsanandroidx/appcompat/R$dimen;->tooltip_precise_anchor_threshold:I

    invoke-virtual {v2, v3}, Lccsanandroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    .line 110
    .local v2, "tooltipPreciseAnchorThreshold":I
    invoke-virtual/range {p1 .. p1}, Lccsanandroid/view/View;->getWidth()I

    move-result v3

    if-lt v3, v2, :cond_0

    .line 112
    move/from16 v3, p2

    .local v3, "offsetX":I
    goto :goto_0

    .line 115
    .end local v3    # "offsetX":I
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lccsanandroid/view/View;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    .line 120
    .restart local v3    # "offsetX":I
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lccsanandroid/view/View;->getHeight()I

    move-result v4

    if-lt v4, v2, :cond_1

    .line 122
    iget-object v4, v0, Lccsanandroidx/appcompat/widget/TooltipPopup;->mContext:Lccsanandroid/content/Context;

    invoke-virtual {v4}, Lccsanandroid/content/Context;->getResources()Lccsanandroid/content/res/Resources;

    move-result-object v4

    sget v5, Lccsanandroidx/appcompat/R$dimen;->tooltip_precise_anchor_extra_offset:I

    invoke-virtual {v4, v5}, Lccsanandroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v4

    .line 124
    .local v4, "offsetExtra":I
    add-int v5, p3, v4

    .line 125
    .local v5, "offsetBelow":I
    sub-int v4, p3, v4

    .line 126
    .local v4, "offsetAbove":I
    goto :goto_1

    .line 128
    .end local v4    # "offsetAbove":I
    .end local v5    # "offsetBelow":I
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lccsanandroid/view/View;->getHeight()I

    move-result v5

    .line 129
    .restart local v5    # "offsetBelow":I
    const/4 v4, 0x0

    .line 132
    .restart local v4    # "offsetAbove":I
    :goto_1
    const/16 v6, 0x31

    iput v6, v1, Lccsanandroid/view/WindowManager$LayoutParams;->gravity:I

    .line 134
    iget-object v6, v0, Lccsanandroidx/appcompat/widget/TooltipPopup;->mContext:Lccsanandroid/content/Context;

    invoke-virtual {v6}, Lccsanandroid/content/Context;->getResources()Lccsanandroid/content/res/Resources;

    move-result-object v6

    .line 135
    if-eqz p4, :cond_2

    sget v7, Lccsanandroidx/appcompat/R$dimen;->tooltip_y_offset_touch:I

    goto :goto_2

    :cond_2
    sget v7, Lccsanandroidx/appcompat/R$dimen;->tooltip_y_offset_non_touch:I

    .line 134
    :goto_2
    invoke-virtual {v6, v7}, Lccsanandroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v6

    .line 137
    .local v6, "tooltipOffset":I
    invoke-static/range {p1 .. p1}, Lccsanandroidx/appcompat/widget/TooltipPopup;->getAppRootView(Lccsanandroid/view/View;)Lccsanandroid/view/View;

    move-result-object v7

    .line 138
    .local v7, "appView":Lccsanandroid/view/View;
    if-nez v7, :cond_3

    .line 139
    const-string v8, "TooltipPopup"

    const-string v9, "Cannot find app view"

    invoke-static {v8, v9}, Lccsanandroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    return-void

    .line 142
    :cond_3
    iget-object v8, v0, Lccsanandroidx/appcompat/widget/TooltipPopup;->mTmpDisplayFrame:Lccsanandroid/graphics/Rect;

    invoke-virtual {v7, v8}, Lccsanandroid/view/View;->getWindowVisibleDisplayFrame(Lccsanandroid/graphics/Rect;)V

    .line 143
    iget-object v8, v0, Lccsanandroidx/appcompat/widget/TooltipPopup;->mTmpDisplayFrame:Lccsanandroid/graphics/Rect;

    iget v8, v8, Lccsanandroid/graphics/Rect;->left:I

    const/4 v9, 0x0

    if-gez v8, :cond_5

    iget-object v8, v0, Lccsanandroidx/appcompat/widget/TooltipPopup;->mTmpDisplayFrame:Lccsanandroid/graphics/Rect;

    iget v8, v8, Lccsanandroid/graphics/Rect;->top:I

    if-gez v8, :cond_5

    .line 146
    iget-object v8, v0, Lccsanandroidx/appcompat/widget/TooltipPopup;->mContext:Lccsanandroid/content/Context;

    invoke-virtual {v8}, Lccsanandroid/content/Context;->getResources()Lccsanandroid/content/res/Resources;

    move-result-object v8

    .line 148
    .local v8, "res":Lccsanandroid/content/res/Resources;
    const-string/jumbo v10, "status_bar_height"

    const-string v11, "dimen"

    const-string v12, "android"

    invoke-virtual {v8, v10, v11, v12}, Lccsanandroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v10

    .line 149
    .local v10, "resourceId":I
    if-eqz v10, :cond_4

    .line 150
    invoke-virtual {v8, v10}, Lccsanandroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v11

    .local v11, "statusBarHeight":I
    goto :goto_3

    .line 152
    .end local v11    # "statusBarHeight":I
    :cond_4
    const/4 v11, 0x0

    .line 154
    .restart local v11    # "statusBarHeight":I
    :goto_3
    invoke-virtual {v8}, Lccsanandroid/content/res/Resources;->getDisplayMetrics()Lccsanandroid/util/DisplayMetrics;

    move-result-object v12

    .line 155
    .local v12, "metrics":Lccsanandroid/util/DisplayMetrics;
    iget-object v13, v0, Lccsanandroidx/appcompat/widget/TooltipPopup;->mTmpDisplayFrame:Lccsanandroid/graphics/Rect;

    iget v14, v12, Lccsanandroid/util/DisplayMetrics;->widthPixels:I

    iget v15, v12, Lccsanandroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {v13, v9, v11, v14, v15}, Lccsanandroid/graphics/Rect;->set(IIII)V

    .line 157
    .end local v8    # "res":Lccsanandroid/content/res/Resources;
    .end local v10    # "resourceId":I
    .end local v11    # "statusBarHeight":I
    .end local v12    # "metrics":Lccsanandroid/util/DisplayMetrics;
    :cond_5
    iget-object v8, v0, Lccsanandroidx/appcompat/widget/TooltipPopup;->mTmpAppPos:[I

    invoke-virtual {v7, v8}, Lccsanandroid/view/View;->getLocationOnScreen([I)V

    .line 159
    iget-object v8, v0, Lccsanandroidx/appcompat/widget/TooltipPopup;->mTmpAnchorPos:[I

    move-object/from16 v10, p1

    invoke-virtual {v10, v8}, Lccsanandroid/view/View;->getLocationOnScreen([I)V

    .line 160
    iget-object v8, v0, Lccsanandroidx/appcompat/widget/TooltipPopup;->mTmpAnchorPos:[I

    aget v11, v8, v9

    iget-object v12, v0, Lccsanandroidx/appcompat/widget/TooltipPopup;->mTmpAppPos:[I

    aget v13, v12, v9

    sub-int/2addr v11, v13

    aput v11, v8, v9

    .line 161
    const/4 v11, 0x1

    aget v13, v8, v11

    aget v12, v12, v11

    sub-int/2addr v13, v12

    aput v13, v8, v11

    .line 164
    aget v8, v8, v9

    add-int/2addr v8, v3

    invoke-virtual {v7}, Lccsanandroid/view/View;->getWidth()I

    move-result v12

    div-int/lit8 v12, v12, 0x2

    sub-int/2addr v8, v12

    iput v8, v1, Lccsanandroid/view/WindowManager$LayoutParams;->x:I

    .line 166
    invoke-static {v9, v9}, Lccsanandroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    .line 167
    .local v8, "spec":I
    iget-object v9, v0, Lccsanandroidx/appcompat/widget/TooltipPopup;->mContentView:Lccsanandroid/view/View;

    invoke-virtual {v9, v8, v8}, Lccsanandroid/view/View;->measure(II)V

    .line 168
    iget-object v9, v0, Lccsanandroidx/appcompat/widget/TooltipPopup;->mContentView:Lccsanandroid/view/View;

    invoke-virtual {v9}, Lccsanandroid/view/View;->getMeasuredHeight()I

    move-result v9

    .line 170
    .local v9, "tooltipHeight":I
    iget-object v12, v0, Lccsanandroidx/appcompat/widget/TooltipPopup;->mTmpAnchorPos:[I

    aget v13, v12, v11

    add-int/2addr v13, v4

    sub-int/2addr v13, v6

    sub-int/2addr v13, v9

    .line 171
    .local v13, "yAbove":I
    aget v11, v12, v11

    add-int/2addr v11, v5

    add-int/2addr v11, v6

    .line 172
    .local v11, "yBelow":I
    if-eqz p4, :cond_7

    .line 173
    if-ltz v13, :cond_6

    .line 174
    iput v13, v1, Lccsanandroid/view/WindowManager$LayoutParams;->y:I

    goto :goto_4

    .line 176
    :cond_6
    iput v11, v1, Lccsanandroid/view/WindowManager$LayoutParams;->y:I

    goto :goto_4

    .line 179
    :cond_7
    add-int v12, v11, v9

    iget-object v14, v0, Lccsanandroidx/appcompat/widget/TooltipPopup;->mTmpDisplayFrame:Lccsanandroid/graphics/Rect;

    invoke-virtual {v14}, Lccsanandroid/graphics/Rect;->height()I

    move-result v14

    if-gt v12, v14, :cond_8

    .line 180
    iput v11, v1, Lccsanandroid/view/WindowManager$LayoutParams;->y:I

    goto :goto_4

    .line 182
    :cond_8
    iput v13, v1, Lccsanandroid/view/WindowManager$LayoutParams;->y:I

    .line 185
    :goto_4
    return-void
.end method

.method private static getAppRootView(Lccsanandroid/view/View;)Lccsanandroid/view/View;
    .locals 4
    .param p0, "anchorView"    # Lccsanandroid/view/View;

    .line 188
    invoke-virtual {p0}, Lccsanandroid/view/View;->getRootView()Lccsanandroid/view/View;

    move-result-object v0

    .line 189
    .local v0, "rootView":Lccsanandroid/view/View;
    invoke-virtual {v0}, Lccsanandroid/view/View;->getLayoutParams()Lccsanandroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 190
    .local v1, "lp":Lccsanandroid/view/ViewGroup$LayoutParams;
    instance-of v2, v1, Lccsanandroid/view/WindowManager$LayoutParams;

    if-eqz v2, :cond_0

    move-object v2, v1

    check-cast v2, Lccsanandroid/view/WindowManager$LayoutParams;

    iget v2, v2, Lccsanandroid/view/WindowManager$LayoutParams;->type:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 194
    return-object v0

    .line 198
    :cond_0
    invoke-virtual {p0}, Lccsanandroid/view/View;->getContext()Lccsanandroid/content/Context;

    move-result-object v2

    .line 199
    .local v2, "context":Lccsanandroid/content/Context;
    :goto_0
    instance-of v3, v2, Lccsanandroid/content/ContextWrapper;

    if-eqz v3, :cond_2

    .line 200
    instance-of v3, v2, Lccsanandroid/app/Activity;

    if-eqz v3, :cond_1

    .line 201
    move-object v3, v2

    check-cast v3, Lccsanandroid/app/Activity;

    invoke-virtual {v3}, Lccsanandroid/app/Activity;->getWindow()Lccsanandroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Lccsanandroid/view/Window;->getDecorView()Lccsanandroid/view/View;

    move-result-object v3

    return-object v3

    .line 203
    :cond_1
    move-object v3, v2

    check-cast v3, Lccsanandroid/content/ContextWrapper;

    invoke-virtual {v3}, Lccsanandroid/content/ContextWrapper;->getBaseContext()Lccsanandroid/content/Context;

    move-result-object v2

    goto :goto_0

    .line 208
    :cond_2
    return-object v0
.end method


# virtual methods
.method hide()V
    .locals 2

    .line 91
    invoke-virtual {p0}, Lccsanandroidx/appcompat/widget/TooltipPopup;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 92
    return-void

    .line 95
    :cond_0
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/TooltipPopup;->mContext:Lccsanandroid/content/Context;

    const-string/jumbo v1, "window"

    invoke-virtual {v0, v1}, Lccsanandroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsanandroid/view/WindowManager;

    .line 96
    .local v0, "wm":Lccsanandroid/view/WindowManager;
    iget-object v1, p0, Lccsanandroidx/appcompat/widget/TooltipPopup;->mContentView:Lccsanandroid/view/View;

    invoke-interface {v0, v1}, Lccsanandroid/view/WindowManager;->removeView(Lccsanandroid/view/View;)V

    .line 97
    return-void
.end method

.method isShowing()Z
    .locals 1

    .line 100
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/TooltipPopup;->mContentView:Lccsanandroid/view/View;

    invoke-virtual {v0}, Lccsanandroid/view/View;->getParent()Lccsanandroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method show(Lccsanandroid/view/View;IIZLjava/lang/CharSequence;)V
    .locals 7
    .param p1, "anchorView"    # Lccsanandroid/view/View;
    .param p2, "anchorX"    # I
    .param p3, "anchorY"    # I
    .param p4, "fromTouch"    # Z
    .param p5, "tooltipText"    # Ljava/lang/CharSequence;

    .line 78
    invoke-virtual {p0}, Lccsanandroidx/appcompat/widget/TooltipPopup;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 79
    invoke-virtual {p0}, Lccsanandroidx/appcompat/widget/TooltipPopup;->hide()V

    .line 82
    :cond_0
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/TooltipPopup;->mMessageView:Lccsanandroid/widget/TextView;

    invoke-virtual {v0, p5}, Lccsanandroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 84
    iget-object v6, p0, Lccsanandroidx/appcompat/widget/TooltipPopup;->mLayoutParams:Lccsanandroid/view/WindowManager$LayoutParams;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v1 .. v6}, Lccsanandroidx/appcompat/widget/TooltipPopup;->computePosition(Lccsanandroid/view/View;IIZLccsanandroid/view/WindowManager$LayoutParams;)V

    .line 86
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/TooltipPopup;->mContext:Lccsanandroid/content/Context;

    const-string/jumbo v1, "window"

    invoke-virtual {v0, v1}, Lccsanandroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsanandroid/view/WindowManager;

    .line 87
    .local v0, "wm":Lccsanandroid/view/WindowManager;
    iget-object v1, p0, Lccsanandroidx/appcompat/widget/TooltipPopup;->mContentView:Lccsanandroid/view/View;

    iget-object v2, p0, Lccsanandroidx/appcompat/widget/TooltipPopup;->mLayoutParams:Lccsanandroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Lccsanandroid/view/WindowManager;->addView(Lccsanandroid/view/View;Lccsanandroid/view/ViewGroup$LayoutParams;)V

    .line 88
    return-void
.end method