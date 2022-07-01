.class final Lccsancom/google/android/material/datepicker/CalendarItemStyle;
.super Ljava/lang/Object;
.source "CalendarItemStyle.java"


# instance fields
.field private final backgroundColor:Lccsanandroid/content/res/ColorStateList;

.field private final insets:Lccsanandroid/graphics/Rect;

.field private final itemShape:Lccsancom/google/android/material/shape/ShapeAppearanceModel;

.field private final strokeColor:Lccsanandroid/content/res/ColorStateList;

.field private final strokeWidth:I

.field private final textColor:Lccsanandroid/content/res/ColorStateList;


# direct methods
.method private constructor <init>(Lccsanandroid/content/res/ColorStateList;Lccsanandroid/content/res/ColorStateList;Lccsanandroid/content/res/ColorStateList;ILccsancom/google/android/material/shape/ShapeAppearanceModel;Lccsanandroid/graphics/Rect;)V
    .locals 1
    .param p1, "backgroundColor"    # Lccsanandroid/content/res/ColorStateList;
    .param p2, "textColor"    # Lccsanandroid/content/res/ColorStateList;
    .param p3, "strokeColor"    # Lccsanandroid/content/res/ColorStateList;
    .param p4, "strokeWidth"    # I
    .param p5, "itemShape"    # Lccsancom/google/android/material/shape/ShapeAppearanceModel;
    .param p6, "insets"    # Lccsanandroid/graphics/Rect;

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    iget v0, p6, Lccsanandroid/graphics/Rect;->left:I

    invoke-static {v0}, Lccsanandroidx/core/util/Preconditions;->checkArgumentNonnegative(I)I

    .line 68
    iget v0, p6, Lccsanandroid/graphics/Rect;->top:I

    invoke-static {v0}, Lccsanandroidx/core/util/Preconditions;->checkArgumentNonnegative(I)I

    .line 69
    iget v0, p6, Lccsanandroid/graphics/Rect;->right:I

    invoke-static {v0}, Lccsanandroidx/core/util/Preconditions;->checkArgumentNonnegative(I)I

    .line 70
    iget v0, p6, Lccsanandroid/graphics/Rect;->bottom:I

    invoke-static {v0}, Lccsanandroidx/core/util/Preconditions;->checkArgumentNonnegative(I)I

    .line 72
    iput-object p6, p0, Lccsancom/google/android/material/datepicker/CalendarItemStyle;->insets:Lccsanandroid/graphics/Rect;

    .line 73
    iput-object p2, p0, Lccsancom/google/android/material/datepicker/CalendarItemStyle;->textColor:Lccsanandroid/content/res/ColorStateList;

    .line 74
    iput-object p1, p0, Lccsancom/google/android/material/datepicker/CalendarItemStyle;->backgroundColor:Lccsanandroid/content/res/ColorStateList;

    .line 75
    iput-object p3, p0, Lccsancom/google/android/material/datepicker/CalendarItemStyle;->strokeColor:Lccsanandroid/content/res/ColorStateList;

    .line 76
    iput p4, p0, Lccsancom/google/android/material/datepicker/CalendarItemStyle;->strokeWidth:I

    .line 77
    iput-object p5, p0, Lccsancom/google/android/material/datepicker/CalendarItemStyle;->itemShape:Lccsancom/google/android/material/shape/ShapeAppearanceModel;

    .line 78
    return-void
.end method

.method static create(Lccsanandroid/content/Context;I)Lccsancom/google/android/material/datepicker/CalendarItemStyle;
    .locals 22
    .param p0, "context"    # Lccsanandroid/content/Context;
    .param p1, "materialCalendarItemStyle"    # I

    .line 87
    move-object/from16 v0, p0

    move/from16 v1, p1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    const-string v4, "Cannot create a CalendarItemStyle with a styleResId of 0"

    invoke-static {v3, v4}, Lccsanandroidx/core/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 90
    sget-object v3, Lccsancom/google/android/material/R$styleable;->MaterialCalendarItem:[I

    .line 91
    invoke-virtual {v0, v1, v3}, Lccsanandroid/content/Context;->obtainStyledAttributes(I[I)Lccsanandroid/content/res/TypedArray;

    move-result-object v3

    .line 92
    .local v3, "styleableArray":Lccsanandroid/content/res/TypedArray;
    sget v4, Lccsancom/google/android/material/R$styleable;->MaterialCalendarItem_android_insetLeft:I

    .line 93
    invoke-virtual {v3, v4, v2}, Lccsanandroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v4

    .line 95
    .local v4, "insetLeft":I
    sget v5, Lccsancom/google/android/material/R$styleable;->MaterialCalendarItem_android_insetTop:I

    .line 96
    invoke-virtual {v3, v5, v2}, Lccsanandroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v5

    .line 98
    .local v5, "insetTop":I
    sget v6, Lccsancom/google/android/material/R$styleable;->MaterialCalendarItem_android_insetRight:I

    .line 99
    invoke-virtual {v3, v6, v2}, Lccsanandroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v6

    .line 101
    .local v6, "insetRight":I
    sget v7, Lccsancom/google/android/material/R$styleable;->MaterialCalendarItem_android_insetBottom:I

    .line 102
    invoke-virtual {v3, v7, v2}, Lccsanandroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v7

    .line 104
    .local v7, "insetBottom":I
    new-instance v14, Lccsanandroid/graphics/Rect;

    invoke-direct {v14, v4, v5, v6, v7}, Lccsanandroid/graphics/Rect;-><init>(IIII)V

    .line 106
    .local v14, "insets":Lccsanandroid/graphics/Rect;
    sget v8, Lccsancom/google/android/material/R$styleable;->MaterialCalendarItem_itemFillColor:I

    .line 107
    invoke-static {v0, v3, v8}, Lccsancom/google/android/material/resources/MaterialResources;->getColorStateList(Lccsanandroid/content/Context;Lccsanandroid/content/res/TypedArray;I)Lccsanandroid/content/res/ColorStateList;

    move-result-object v15

    .line 109
    .local v15, "backgroundColor":Lccsanandroid/content/res/ColorStateList;
    sget v8, Lccsancom/google/android/material/R$styleable;->MaterialCalendarItem_itemTextColor:I

    .line 110
    invoke-static {v0, v3, v8}, Lccsancom/google/android/material/resources/MaterialResources;->getColorStateList(Lccsanandroid/content/Context;Lccsanandroid/content/res/TypedArray;I)Lccsanandroid/content/res/ColorStateList;

    move-result-object v16

    .line 112
    .local v16, "textColor":Lccsanandroid/content/res/ColorStateList;
    sget v8, Lccsancom/google/android/material/R$styleable;->MaterialCalendarItem_itemStrokeColor:I

    .line 113
    invoke-static {v0, v3, v8}, Lccsancom/google/android/material/resources/MaterialResources;->getColorStateList(Lccsanandroid/content/Context;Lccsanandroid/content/res/TypedArray;I)Lccsanandroid/content/res/ColorStateList;

    move-result-object v17

    .line 115
    .local v17, "strokeColor":Lccsanandroid/content/res/ColorStateList;
    sget v8, Lccsancom/google/android/material/R$styleable;->MaterialCalendarItem_itemStrokeWidth:I

    .line 116
    invoke-virtual {v3, v8, v2}, Lccsanandroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v18

    .line 118
    .local v18, "strokeWidth":I
    sget v8, Lccsancom/google/android/material/R$styleable;->MaterialCalendarItem_itemShapeAppearance:I

    .line 119
    invoke-virtual {v3, v8, v2}, Lccsanandroid/content/res/TypedArray;->getResourceId(II)I

    move-result v13

    .line 120
    .local v13, "shapeAppearanceResId":I
    sget v8, Lccsancom/google/android/material/R$styleable;->MaterialCalendarItem_itemShapeAppearanceOverlay:I

    .line 121
    invoke-virtual {v3, v8, v2}, Lccsanandroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    .line 124
    .local v2, "shapeAppearanceOverlayResId":I
    nop

    .line 125
    invoke-static {v0, v13, v2}, Lccsancom/google/android/material/shape/ShapeAppearanceModel;->builder(Lccsanandroid/content/Context;II)Lccsancom/google/android/material/shape/ShapeAppearanceModel$Builder;

    move-result-object v8

    .line 126
    invoke-virtual {v8}, Lccsancom/google/android/material/shape/ShapeAppearanceModel$Builder;->build()Lccsancom/google/android/material/shape/ShapeAppearanceModel;

    move-result-object v19

    .line 128
    .local v19, "itemShape":Lccsancom/google/android/material/shape/ShapeAppearanceModel;
    invoke-virtual {v3}, Lccsanandroid/content/res/TypedArray;->recycle()V

    .line 130
    new-instance v20, Lccsancom/google/android/material/datepicker/CalendarItemStyle;

    move-object/from16 v8, v20

    move-object v9, v15

    move-object/from16 v10, v16

    move-object/from16 v11, v17

    move/from16 v12, v18

    move/from16 v21, v13

    .end local v13    # "shapeAppearanceResId":I
    .local v21, "shapeAppearanceResId":I
    move-object/from16 v13, v19

    invoke-direct/range {v8 .. v14}, Lccsancom/google/android/material/datepicker/CalendarItemStyle;-><init>(Lccsanandroid/content/res/ColorStateList;Lccsanandroid/content/res/ColorStateList;Lccsanandroid/content/res/ColorStateList;ILccsancom/google/android/material/shape/ShapeAppearanceModel;Lccsanandroid/graphics/Rect;)V

    return-object v20
.end method


# virtual methods
.method getBottomInset()I
    .locals 1

    .line 166
    iget-object v0, p0, Lccsancom/google/android/material/datepicker/CalendarItemStyle;->insets:Lccsanandroid/graphics/Rect;

    iget v0, v0, Lccsanandroid/graphics/Rect;->bottom:I

    return v0
.end method

.method getLeftInset()I
    .locals 1

    .line 154
    iget-object v0, p0, Lccsancom/google/android/material/datepicker/CalendarItemStyle;->insets:Lccsanandroid/graphics/Rect;

    iget v0, v0, Lccsanandroid/graphics/Rect;->left:I

    return v0
.end method

.method getRightInset()I
    .locals 1

    .line 158
    iget-object v0, p0, Lccsancom/google/android/material/datepicker/CalendarItemStyle;->insets:Lccsanandroid/graphics/Rect;

    iget v0, v0, Lccsanandroid/graphics/Rect;->right:I

    return v0
.end method

.method getTopInset()I
    .locals 1

    .line 162
    iget-object v0, p0, Lccsancom/google/android/material/datepicker/CalendarItemStyle;->insets:Lccsanandroid/graphics/Rect;

    iget v0, v0, Lccsanandroid/graphics/Rect;->top:I

    return v0
.end method

.method styleItem(Lccsanandroid/widget/TextView;)V
    .locals 10
    .param p1, "item"    # Lccsanandroid/widget/TextView;

    .line 136
    new-instance v0, Lccsancom/google/android/material/shape/MaterialShapeDrawable;

    invoke-direct {v0}, Lccsancom/google/android/material/shape/MaterialShapeDrawable;-><init>()V

    .line 137
    .local v0, "backgroundDrawable":Lccsancom/google/android/material/shape/MaterialShapeDrawable;
    new-instance v1, Lccsancom/google/android/material/shape/MaterialShapeDrawable;

    invoke-direct {v1}, Lccsancom/google/android/material/shape/MaterialShapeDrawable;-><init>()V

    .line 138
    .local v1, "shapeMask":Lccsancom/google/android/material/shape/MaterialShapeDrawable;
    iget-object v2, p0, Lccsancom/google/android/material/datepicker/CalendarItemStyle;->itemShape:Lccsancom/google/android/material/shape/ShapeAppearanceModel;

    invoke-virtual {v0, v2}, Lccsancom/google/android/material/shape/MaterialShapeDrawable;->setShapeAppearanceModel(Lccsancom/google/android/material/shape/ShapeAppearanceModel;)V

    .line 139
    iget-object v2, p0, Lccsancom/google/android/material/datepicker/CalendarItemStyle;->itemShape:Lccsancom/google/android/material/shape/ShapeAppearanceModel;

    invoke-virtual {v1, v2}, Lccsancom/google/android/material/shape/MaterialShapeDrawable;->setShapeAppearanceModel(Lccsancom/google/android/material/shape/ShapeAppearanceModel;)V

    .line 140
    iget-object v2, p0, Lccsancom/google/android/material/datepicker/CalendarItemStyle;->backgroundColor:Lccsanandroid/content/res/ColorStateList;

    invoke-virtual {v0, v2}, Lccsancom/google/android/material/shape/MaterialShapeDrawable;->setFillColor(Lccsanandroid/content/res/ColorStateList;)V

    .line 141
    iget v2, p0, Lccsancom/google/android/material/datepicker/CalendarItemStyle;->strokeWidth:I

    int-to-float v2, v2

    iget-object v3, p0, Lccsancom/google/android/material/datepicker/CalendarItemStyle;->strokeColor:Lccsanandroid/content/res/ColorStateList;

    invoke-virtual {v0, v2, v3}, Lccsancom/google/android/material/shape/MaterialShapeDrawable;->setStroke(FLccsanandroid/content/res/ColorStateList;)V

    .line 142
    iget-object v2, p0, Lccsancom/google/android/material/datepicker/CalendarItemStyle;->textColor:Lccsanandroid/content/res/ColorStateList;

    invoke-virtual {p1, v2}, Lccsanandroid/widget/TextView;->setTextColor(Lccsanandroid/content/res/ColorStateList;)V

    .line 144
    sget v2, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v2, v3, :cond_0

    .line 145
    new-instance v2, Lccsanandroid/graphics/drawable/RippleDrawable;

    iget-object v3, p0, Lccsancom/google/android/material/datepicker/CalendarItemStyle;->textColor:Lccsanandroid/content/res/ColorStateList;

    const/16 v4, 0x1e

    invoke-virtual {v3, v4}, Lccsanandroid/content/res/ColorStateList;->withAlpha(I)Lccsanandroid/content/res/ColorStateList;

    move-result-object v3

    invoke-direct {v2, v3, v0, v1}, Lccsanandroid/graphics/drawable/RippleDrawable;-><init>(Lccsanandroid/content/res/ColorStateList;Lccsanandroid/graphics/drawable/Drawable;Lccsanandroid/graphics/drawable/Drawable;)V

    .local v2, "d":Lccsanandroid/graphics/drawable/Drawable;
    goto :goto_0

    .line 147
    .end local v2    # "d":Lccsanandroid/graphics/drawable/Drawable;
    :cond_0
    move-object v2, v0

    .line 149
    .restart local v2    # "d":Lccsanandroid/graphics/drawable/Drawable;
    :goto_0
    new-instance v9, Lccsanandroid/graphics/drawable/InsetDrawable;

    iget-object v3, p0, Lccsancom/google/android/material/datepicker/CalendarItemStyle;->insets:Lccsanandroid/graphics/Rect;

    iget v5, v3, Lccsanandroid/graphics/Rect;->left:I

    iget-object v3, p0, Lccsancom/google/android/material/datepicker/CalendarItemStyle;->insets:Lccsanandroid/graphics/Rect;

    iget v6, v3, Lccsanandroid/graphics/Rect;->top:I

    iget-object v3, p0, Lccsancom/google/android/material/datepicker/CalendarItemStyle;->insets:Lccsanandroid/graphics/Rect;

    iget v7, v3, Lccsanandroid/graphics/Rect;->right:I

    iget-object v3, p0, Lccsancom/google/android/material/datepicker/CalendarItemStyle;->insets:Lccsanandroid/graphics/Rect;

    iget v8, v3, Lccsanandroid/graphics/Rect;->bottom:I

    move-object v3, v9

    move-object v4, v2

    invoke-direct/range {v3 .. v8}, Lccsanandroid/graphics/drawable/InsetDrawable;-><init>(Lccsanandroid/graphics/drawable/Drawable;IIII)V

    invoke-static {p1, v9}, Lccsanandroidx/core/view/ViewCompat;->setBackground(Lccsanandroid/view/View;Lccsanandroid/graphics/drawable/Drawable;)V

    .line 151
    return-void
.end method
