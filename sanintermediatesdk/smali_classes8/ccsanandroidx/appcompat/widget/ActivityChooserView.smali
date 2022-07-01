.class public Lccsanandroidx/appcompat/widget/ActivityChooserView;
.super Lccsanandroid/view/ViewGroup;
.source "ActivityChooserView.java"

# interfaces
.implements Lccsanandroidx/appcompat/widget/ActivityChooserModel$ActivityChooserModelClient;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsanandroidx/appcompat/widget/ActivityChooserView$InnerLayout;,
        Lccsanandroidx/appcompat/widget/ActivityChooserView$ActivityChooserViewAdapter;,
        Lccsanandroidx/appcompat/widget/ActivityChooserView$Callbacks;
    }
.end annotation


# instance fields
.field private final mActivityChooserContent:Lccsanandroid/view/View;

.field private final mActivityChooserContentBackground:Lccsanandroid/graphics/drawable/Drawable;

.field final mAdapter:Lccsanandroidx/appcompat/widget/ActivityChooserView$ActivityChooserViewAdapter;

.field private final mCallbacks:Lccsanandroidx/appcompat/widget/ActivityChooserView$Callbacks;

.field private mDefaultActionButtonContentDescription:I

.field final mDefaultActivityButton:Lccsanandroid/widget/FrameLayout;

.field private final mDefaultActivityButtonImage:Lccsanandroid/widget/ImageView;

.field final mExpandActivityOverflowButton:Lccsanandroid/widget/FrameLayout;

.field private final mExpandActivityOverflowButtonImage:Lccsanandroid/widget/ImageView;

.field mInitialActivityCount:I

.field private mIsAttachedToWindow:Z

.field mIsSelectingDefaultActivity:Z

.field private final mListPopupMaxWidth:I

.field private mListPopupWindow:Lccsanandroidx/appcompat/widget/ListPopupWindow;

.field final mModelDataSetObserver:Lccsanandroid/database/DataSetObserver;

.field mOnDismissListener:Lccsanandroid/widget/PopupWindow$OnDismissListener;

.field private final mOnGlobalLayoutListener:Lccsanandroid/view/ViewTreeObserver$OnGlobalLayoutListener;

.field mProvider:Lccsanandroidx/core/view/ActionProvider;


# direct methods
.method public constructor <init>(Lccsanandroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Lccsanandroid/content/Context;

    .line 200
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lccsanandroidx/appcompat/widget/ActivityChooserView;-><init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;)V

    .line 201
    return-void
.end method

.method public constructor <init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Lccsanandroid/content/Context;
    .param p2, "attrs"    # Lccsanandroid/util/AttributeSet;

    .line 210
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lccsanandroidx/appcompat/widget/ActivityChooserView;-><init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;I)V

    .line 211
    return-void
.end method

.method public constructor <init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;I)V
    .locals 10
    .param p1, "context"    # Lccsanandroid/content/Context;
    .param p2, "attrs"    # Lccsanandroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .line 222
    invoke-direct {p0, p1, p2, p3}, Lccsanandroid/view/ViewGroup;-><init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;I)V

    .line 134
    new-instance v0, Lccsanandroidx/appcompat/widget/ActivityChooserView$1;

    invoke-direct {v0, p0}, Lccsanandroidx/appcompat/widget/ActivityChooserView$1;-><init>(Lccsanandroidx/appcompat/widget/ActivityChooserView;)V

    iput-object v0, p0, Lccsanandroidx/appcompat/widget/ActivityChooserView;->mModelDataSetObserver:Lccsanandroid/database/DataSetObserver;

    .line 148
    new-instance v0, Lccsanandroidx/appcompat/widget/ActivityChooserView$2;

    invoke-direct {v0, p0}, Lccsanandroidx/appcompat/widget/ActivityChooserView$2;-><init>(Lccsanandroidx/appcompat/widget/ActivityChooserView;)V

    iput-object v0, p0, Lccsanandroidx/appcompat/widget/ActivityChooserView;->mOnGlobalLayoutListener:Lccsanandroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    .line 182
    const/4 v0, 0x4

    iput v0, p0, Lccsanandroidx/appcompat/widget/ActivityChooserView;->mInitialActivityCount:I

    .line 224
    sget-object v1, Lccsanandroidx/appcompat/R$styleable;->ActivityChooserView:[I

    const/4 v2, 0x0

    invoke-virtual {p1, p2, v1, p3, v2}, Lccsanandroid/content/Context;->obtainStyledAttributes(Lccsanandroid/util/AttributeSet;[III)Lccsanandroid/content/res/TypedArray;

    move-result-object v1

    .line 226
    .local v1, "attributesArray":Lccsanandroid/content/res/TypedArray;
    sget-object v5, Lccsanandroidx/appcompat/R$styleable;->ActivityChooserView:[I

    const/4 v9, 0x0

    move-object v3, p0

    move-object v4, p1

    move-object v6, p2

    move-object v7, v1

    move v8, p3

    invoke-static/range {v3 .. v9}, Lccsanandroidx/core/view/ViewCompat;->saveAttributeDataForStyleable(Lccsanandroid/view/View;Lccsanandroid/content/Context;[ILccsanandroid/util/AttributeSet;Lccsanandroid/content/res/TypedArray;II)V

    .line 229
    sget v2, Lccsanandroidx/appcompat/R$styleable;->ActivityChooserView_initialActivityCount:I

    invoke-virtual {v1, v2, v0}, Lccsanandroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Lccsanandroidx/appcompat/widget/ActivityChooserView;->mInitialActivityCount:I

    .line 233
    sget v0, Lccsanandroidx/appcompat/R$styleable;->ActivityChooserView_expandActivityOverflowButtonDrawable:I

    invoke-virtual {v1, v0}, Lccsanandroid/content/res/TypedArray;->getDrawable(I)Lccsanandroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 236
    .local v0, "expandActivityOverflowButtonDrawable":Lccsanandroid/graphics/drawable/Drawable;
    invoke-virtual {v1}, Lccsanandroid/content/res/TypedArray;->recycle()V

    .line 238
    invoke-virtual {p0}, Lccsanandroidx/appcompat/widget/ActivityChooserView;->getContext()Lccsanandroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lccsanandroid/view/LayoutInflater;->from(Lccsanandroid/content/Context;)Lccsanandroid/view/LayoutInflater;

    move-result-object v2

    .line 239
    .local v2, "inflater":Lccsanandroid/view/LayoutInflater;
    sget v3, Lccsanandroidx/appcompat/R$layout;->abc_activity_chooser_view:I

    const/4 v4, 0x1

    invoke-virtual {v2, v3, p0, v4}, Lccsanandroid/view/LayoutInflater;->inflate(ILccsanandroid/view/ViewGroup;Z)Lccsanandroid/view/View;

    .line 241
    new-instance v3, Lccsanandroidx/appcompat/widget/ActivityChooserView$Callbacks;

    invoke-direct {v3, p0}, Lccsanandroidx/appcompat/widget/ActivityChooserView$Callbacks;-><init>(Lccsanandroidx/appcompat/widget/ActivityChooserView;)V

    iput-object v3, p0, Lccsanandroidx/appcompat/widget/ActivityChooserView;->mCallbacks:Lccsanandroidx/appcompat/widget/ActivityChooserView$Callbacks;

    .line 243
    sget v4, Lccsanandroidx/appcompat/R$id;->activity_chooser_view_content:I

    invoke-virtual {p0, v4}, Lccsanandroidx/appcompat/widget/ActivityChooserView;->findViewById(I)Lccsanandroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lccsanandroidx/appcompat/widget/ActivityChooserView;->mActivityChooserContent:Lccsanandroid/view/View;

    .line 244
    invoke-virtual {v4}, Lccsanandroid/view/View;->getBackground()Lccsanandroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Lccsanandroidx/appcompat/widget/ActivityChooserView;->mActivityChooserContentBackground:Lccsanandroid/graphics/drawable/Drawable;

    .line 246
    sget v4, Lccsanandroidx/appcompat/R$id;->default_activity_button:I

    invoke-virtual {p0, v4}, Lccsanandroidx/appcompat/widget/ActivityChooserView;->findViewById(I)Lccsanandroid/view/View;

    move-result-object v4

    check-cast v4, Lccsanandroid/widget/FrameLayout;

    iput-object v4, p0, Lccsanandroidx/appcompat/widget/ActivityChooserView;->mDefaultActivityButton:Lccsanandroid/widget/FrameLayout;

    .line 247
    invoke-virtual {v4, v3}, Lccsanandroid/widget/FrameLayout;->setOnClickListener(Lccsanandroid/view/View$OnClickListener;)V

    .line 248
    invoke-virtual {v4, v3}, Lccsanandroid/widget/FrameLayout;->setOnLongClickListener(Lccsanandroid/view/View$OnLongClickListener;)V

    .line 249
    sget v5, Lccsanandroidx/appcompat/R$id;->image:I

    invoke-virtual {v4, v5}, Lccsanandroid/widget/FrameLayout;->findViewById(I)Lccsanandroid/view/View;

    move-result-object v4

    check-cast v4, Lccsanandroid/widget/ImageView;

    iput-object v4, p0, Lccsanandroidx/appcompat/widget/ActivityChooserView;->mDefaultActivityButtonImage:Lccsanandroid/widget/ImageView;

    .line 251
    sget v4, Lccsanandroidx/appcompat/R$id;->expand_activities_button:I

    invoke-virtual {p0, v4}, Lccsanandroidx/appcompat/widget/ActivityChooserView;->findViewById(I)Lccsanandroid/view/View;

    move-result-object v4

    check-cast v4, Lccsanandroid/widget/FrameLayout;

    .line 252
    .local v4, "expandButton":Lccsanandroid/widget/FrameLayout;
    invoke-virtual {v4, v3}, Lccsanandroid/widget/FrameLayout;->setOnClickListener(Lccsanandroid/view/View$OnClickListener;)V

    .line 253
    new-instance v3, Lccsanandroidx/appcompat/widget/ActivityChooserView$3;

    invoke-direct {v3, p0}, Lccsanandroidx/appcompat/widget/ActivityChooserView$3;-><init>(Lccsanandroidx/appcompat/widget/ActivityChooserView;)V

    invoke-virtual {v4, v3}, Lccsanandroid/widget/FrameLayout;->setAccessibilityDelegate(Lccsanandroid/view/View$AccessibilityDelegate;)V

    .line 260
    new-instance v3, Lccsanandroidx/appcompat/widget/ActivityChooserView$4;

    invoke-direct {v3, p0, v4}, Lccsanandroidx/appcompat/widget/ActivityChooserView$4;-><init>(Lccsanandroidx/appcompat/widget/ActivityChooserView;Lccsanandroid/view/View;)V

    invoke-virtual {v4, v3}, Lccsanandroid/widget/FrameLayout;->setOnTouchListener(Lccsanandroid/view/View$OnTouchListener;)V

    .line 278
    iput-object v4, p0, Lccsanandroidx/appcompat/widget/ActivityChooserView;->mExpandActivityOverflowButton:Lccsanandroid/widget/FrameLayout;

    .line 279
    sget v3, Lccsanandroidx/appcompat/R$id;->image:I

    .line 280
    invoke-virtual {v4, v3}, Lccsanandroid/widget/FrameLayout;->findViewById(I)Lccsanandroid/view/View;

    move-result-object v3

    check-cast v3, Lccsanandroid/widget/ImageView;

    iput-object v3, p0, Lccsanandroidx/appcompat/widget/ActivityChooserView;->mExpandActivityOverflowButtonImage:Lccsanandroid/widget/ImageView;

    .line 281
    invoke-virtual {v3, v0}, Lccsanandroid/widget/ImageView;->setImageDrawable(Lccsanandroid/graphics/drawable/Drawable;)V

    .line 283
    new-instance v3, Lccsanandroidx/appcompat/widget/ActivityChooserView$ActivityChooserViewAdapter;

    invoke-direct {v3, p0}, Lccsanandroidx/appcompat/widget/ActivityChooserView$ActivityChooserViewAdapter;-><init>(Lccsanandroidx/appcompat/widget/ActivityChooserView;)V

    iput-object v3, p0, Lccsanandroidx/appcompat/widget/ActivityChooserView;->mAdapter:Lccsanandroidx/appcompat/widget/ActivityChooserView$ActivityChooserViewAdapter;

    .line 284
    new-instance v5, Lccsanandroidx/appcompat/widget/ActivityChooserView$5;

    invoke-direct {v5, p0}, Lccsanandroidx/appcompat/widget/ActivityChooserView$5;-><init>(Lccsanandroidx/appcompat/widget/ActivityChooserView;)V

    invoke-virtual {v3, v5}, Lccsanandroidx/appcompat/widget/ActivityChooserView$ActivityChooserViewAdapter;->registerDataSetObserver(Lccsanandroid/database/DataSetObserver;)V

    .line 292
    invoke-virtual {p1}, Lccsanandroid/content/Context;->getResources()Lccsanandroid/content/res/Resources;

    move-result-object v3

    .line 293
    .local v3, "resources":Lccsanandroid/content/res/Resources;
    invoke-virtual {v3}, Lccsanandroid/content/res/Resources;->getDisplayMetrics()Lccsanandroid/util/DisplayMetrics;

    move-result-object v5

    iget v5, v5, Lccsanandroid/util/DisplayMetrics;->widthPixels:I

    div-int/lit8 v5, v5, 0x2

    sget v6, Lccsanandroidx/appcompat/R$dimen;->abc_config_prefDialogWidth:I

    .line 294
    invoke-virtual {v3, v6}, Lccsanandroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    .line 293
    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    iput v5, p0, Lccsanandroidx/appcompat/widget/ActivityChooserView;->mListPopupMaxWidth:I

    .line 295
    return-void
.end method


# virtual methods
.method public dismissPopup()Z
    .locals 2

    .line 413
    invoke-virtual {p0}, Lccsanandroidx/appcompat/widget/ActivityChooserView;->isShowingPopup()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 414
    invoke-virtual {p0}, Lccsanandroidx/appcompat/widget/ActivityChooserView;->getListPopupWindow()Lccsanandroidx/appcompat/widget/ListPopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Lccsanandroidx/appcompat/widget/ListPopupWindow;->dismiss()V

    .line 415
    invoke-virtual {p0}, Lccsanandroidx/appcompat/widget/ActivityChooserView;->getViewTreeObserver()Lccsanandroid/view/ViewTreeObserver;

    move-result-object v0

    .line 416
    .local v0, "viewTreeObserver":Lccsanandroid/view/ViewTreeObserver;
    invoke-virtual {v0}, Lccsanandroid/view/ViewTreeObserver;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 417
    iget-object v1, p0, Lccsanandroidx/appcompat/widget/ActivityChooserView;->mOnGlobalLayoutListener:Lccsanandroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1}, Lccsanandroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Lccsanandroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 420
    .end local v0    # "viewTreeObserver":Lccsanandroid/view/ViewTreeObserver;
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public getDataModel()Lccsanandroidx/appcompat/widget/ActivityChooserModel;
    .locals 1

    .line 482
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/ActivityChooserView;->mAdapter:Lccsanandroidx/appcompat/widget/ActivityChooserView$ActivityChooserViewAdapter;

    invoke-virtual {v0}, Lccsanandroidx/appcompat/widget/ActivityChooserView$ActivityChooserViewAdapter;->getDataModel()Lccsanandroidx/appcompat/widget/ActivityChooserModel;

    move-result-object v0

    return-object v0
.end method

.method getListPopupWindow()Lccsanandroidx/appcompat/widget/ListPopupWindow;
    .locals 2

    .line 526
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/ActivityChooserView;->mListPopupWindow:Lccsanandroidx/appcompat/widget/ListPopupWindow;

    if-nez v0, :cond_0

    .line 527
    new-instance v0, Lccsanandroidx/appcompat/widget/ListPopupWindow;

    invoke-virtual {p0}, Lccsanandroidx/appcompat/widget/ActivityChooserView;->getContext()Lccsanandroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lccsanandroidx/appcompat/widget/ListPopupWindow;-><init>(Lccsanandroid/content/Context;)V

    iput-object v0, p0, Lccsanandroidx/appcompat/widget/ActivityChooserView;->mListPopupWindow:Lccsanandroidx/appcompat/widget/ListPopupWindow;

    .line 528
    iget-object v1, p0, Lccsanandroidx/appcompat/widget/ActivityChooserView;->mAdapter:Lccsanandroidx/appcompat/widget/ActivityChooserView$ActivityChooserViewAdapter;

    invoke-virtual {v0, v1}, Lccsanandroidx/appcompat/widget/ListPopupWindow;->setAdapter(Lccsanandroid/widget/ListAdapter;)V

    .line 529
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/ActivityChooserView;->mListPopupWindow:Lccsanandroidx/appcompat/widget/ListPopupWindow;

    invoke-virtual {v0, p0}, Lccsanandroidx/appcompat/widget/ListPopupWindow;->setAnchorView(Lccsanandroid/view/View;)V

    .line 530
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/ActivityChooserView;->mListPopupWindow:Lccsanandroidx/appcompat/widget/ListPopupWindow;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lccsanandroidx/appcompat/widget/ListPopupWindow;->setModal(Z)V

    .line 531
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/ActivityChooserView;->mListPopupWindow:Lccsanandroidx/appcompat/widget/ListPopupWindow;

    iget-object v1, p0, Lccsanandroidx/appcompat/widget/ActivityChooserView;->mCallbacks:Lccsanandroidx/appcompat/widget/ActivityChooserView$Callbacks;

    invoke-virtual {v0, v1}, Lccsanandroidx/appcompat/widget/ListPopupWindow;->setOnItemClickListener(Lccsanandroid/widget/AdapterView$OnItemClickListener;)V

    .line 532
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/ActivityChooserView;->mListPopupWindow:Lccsanandroidx/appcompat/widget/ListPopupWindow;

    iget-object v1, p0, Lccsanandroidx/appcompat/widget/ActivityChooserView;->mCallbacks:Lccsanandroidx/appcompat/widget/ActivityChooserView$Callbacks;

    invoke-virtual {v0, v1}, Lccsanandroidx/appcompat/widget/ListPopupWindow;->setOnDismissListener(Lccsanandroid/widget/PopupWindow$OnDismissListener;)V

    .line 534
    :cond_0
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/ActivityChooserView;->mListPopupWindow:Lccsanandroidx/appcompat/widget/ListPopupWindow;

    return-object v0
.end method

.method public isShowingPopup()Z
    .locals 1

    .line 429
    invoke-virtual {p0}, Lccsanandroidx/appcompat/widget/ActivityChooserView;->getListPopupWindow()Lccsanandroidx/appcompat/widget/ListPopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Lccsanandroidx/appcompat/widget/ListPopupWindow;->isShowing()Z

    move-result v0

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .line 434
    invoke-super {p0}, Lccsanandroid/view/ViewGroup;->onAttachedToWindow()V

    .line 435
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/ActivityChooserView;->mAdapter:Lccsanandroidx/appcompat/widget/ActivityChooserView$ActivityChooserViewAdapter;

    invoke-virtual {v0}, Lccsanandroidx/appcompat/widget/ActivityChooserView$ActivityChooserViewAdapter;->getDataModel()Lccsanandroidx/appcompat/widget/ActivityChooserModel;

    move-result-object v0

    .line 436
    .local v0, "dataModel":Lccsanandroidx/appcompat/widget/ActivityChooserModel;
    if-eqz v0, :cond_0

    .line 437
    iget-object v1, p0, Lccsanandroidx/appcompat/widget/ActivityChooserView;->mModelDataSetObserver:Lccsanandroid/database/DataSetObserver;

    invoke-virtual {v0, v1}, Lccsanandroidx/appcompat/widget/ActivityChooserModel;->registerObserver(Ljava/lang/Object;)V

    .line 439
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lccsanandroidx/appcompat/widget/ActivityChooserView;->mIsAttachedToWindow:Z

    .line 440
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 3

    .line 444
    invoke-super {p0}, Lccsanandroid/view/ViewGroup;->onDetachedFromWindow()V

    .line 445
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/ActivityChooserView;->mAdapter:Lccsanandroidx/appcompat/widget/ActivityChooserView$ActivityChooserViewAdapter;

    invoke-virtual {v0}, Lccsanandroidx/appcompat/widget/ActivityChooserView$ActivityChooserViewAdapter;->getDataModel()Lccsanandroidx/appcompat/widget/ActivityChooserModel;

    move-result-object v0

    .line 446
    .local v0, "dataModel":Lccsanandroidx/appcompat/widget/ActivityChooserModel;
    if-eqz v0, :cond_0

    .line 447
    iget-object v1, p0, Lccsanandroidx/appcompat/widget/ActivityChooserView;->mModelDataSetObserver:Lccsanandroid/database/DataSetObserver;

    invoke-virtual {v0, v1}, Lccsanandroidx/appcompat/widget/ActivityChooserModel;->unregisterObserver(Ljava/lang/Object;)V

    .line 449
    :cond_0
    invoke-virtual {p0}, Lccsanandroidx/appcompat/widget/ActivityChooserView;->getViewTreeObserver()Lccsanandroid/view/ViewTreeObserver;

    move-result-object v1

    .line 450
    .local v1, "viewTreeObserver":Lccsanandroid/view/ViewTreeObserver;
    invoke-virtual {v1}, Lccsanandroid/view/ViewTreeObserver;->isAlive()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 451
    iget-object v2, p0, Lccsanandroidx/appcompat/widget/ActivityChooserView;->mOnGlobalLayoutListener:Lccsanandroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v1, v2}, Lccsanandroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Lccsanandroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 453
    :cond_1
    invoke-virtual {p0}, Lccsanandroidx/appcompat/widget/ActivityChooserView;->isShowingPopup()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 454
    invoke-virtual {p0}, Lccsanandroidx/appcompat/widget/ActivityChooserView;->dismissPopup()Z

    .line 456
    :cond_2
    const/4 v2, 0x0

    iput-boolean v2, p0, Lccsanandroidx/appcompat/widget/ActivityChooserView;->mIsAttachedToWindow:Z

    .line 457
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 4
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .line 475
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/ActivityChooserView;->mActivityChooserContent:Lccsanandroid/view/View;

    sub-int v1, p4, p2

    sub-int v2, p5, p3

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v3, v1, v2}, Lccsanandroid/view/View;->layout(IIII)V

    .line 476
    invoke-virtual {p0}, Lccsanandroidx/appcompat/widget/ActivityChooserView;->isShowingPopup()Z

    move-result v0

    if-nez v0, :cond_0

    .line 477
    invoke-virtual {p0}, Lccsanandroidx/appcompat/widget/ActivityChooserView;->dismissPopup()Z

    .line 479
    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 3
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 461
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/ActivityChooserView;->mActivityChooserContent:Lccsanandroid/view/View;

    .line 465
    .local v0, "child":Lccsanandroid/view/View;
    iget-object v1, p0, Lccsanandroidx/appcompat/widget/ActivityChooserView;->mDefaultActivityButton:Lccsanandroid/widget/FrameLayout;

    invoke-virtual {v1}, Lccsanandroid/widget/FrameLayout;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_0

    .line 466
    invoke-static {p2}, Lccsanandroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {v1, v2}, Lccsanandroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 469
    :cond_0
    invoke-virtual {p0, v0, p1, p2}, Lccsanandroidx/appcompat/widget/ActivityChooserView;->measureChild(Lccsanandroid/view/View;II)V

    .line 470
    invoke-virtual {v0}, Lccsanandroid/view/View;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {v0}, Lccsanandroid/view/View;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {p0, v1, v2}, Lccsanandroidx/appcompat/widget/ActivityChooserView;->setMeasuredDimension(II)V

    .line 471
    return-void
.end method

.method public setActivityChooserModel(Lccsanandroidx/appcompat/widget/ActivityChooserModel;)V
    .locals 1
    .param p1, "dataModel"    # Lccsanandroidx/appcompat/widget/ActivityChooserModel;

    .line 302
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/ActivityChooserView;->mAdapter:Lccsanandroidx/appcompat/widget/ActivityChooserView$ActivityChooserViewAdapter;

    invoke-virtual {v0, p1}, Lccsanandroidx/appcompat/widget/ActivityChooserView$ActivityChooserViewAdapter;->setDataModel(Lccsanandroidx/appcompat/widget/ActivityChooserModel;)V

    .line 303
    invoke-virtual {p0}, Lccsanandroidx/appcompat/widget/ActivityChooserView;->isShowingPopup()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 304
    invoke-virtual {p0}, Lccsanandroidx/appcompat/widget/ActivityChooserView;->dismissPopup()Z

    .line 305
    invoke-virtual {p0}, Lccsanandroidx/appcompat/widget/ActivityChooserView;->showPopup()Z

    .line 307
    :cond_0
    return-void
.end method

.method public setDefaultActionButtonContentDescription(I)V
    .locals 0
    .param p1, "resourceId"    # I

    .line 517
    iput p1, p0, Lccsanandroidx/appcompat/widget/ActivityChooserView;->mDefaultActionButtonContentDescription:I

    .line 518
    return-void
.end method

.method public setExpandActivityOverflowButtonContentDescription(I)V
    .locals 2
    .param p1, "resourceId"    # I

    .line 335
    invoke-virtual {p0}, Lccsanandroidx/appcompat/widget/ActivityChooserView;->getContext()Lccsanandroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Lccsanandroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 336
    .local v0, "contentDescription":Ljava/lang/CharSequence;
    iget-object v1, p0, Lccsanandroidx/appcompat/widget/ActivityChooserView;->mExpandActivityOverflowButtonImage:Lccsanandroid/widget/ImageView;

    invoke-virtual {v1, v0}, Lccsanandroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 337
    return-void
.end method

.method public setExpandActivityOverflowButtonDrawable(Lccsanandroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "drawable"    # Lccsanandroid/graphics/drawable/Drawable;

    .line 321
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/ActivityChooserView;->mExpandActivityOverflowButtonImage:Lccsanandroid/widget/ImageView;

    invoke-virtual {v0, p1}, Lccsanandroid/widget/ImageView;->setImageDrawable(Lccsanandroid/graphics/drawable/Drawable;)V

    .line 322
    return-void
.end method

.method public setInitialActivityCount(I)V
    .locals 0
    .param p1, "itemCount"    # I

    .line 503
    iput p1, p0, Lccsanandroidx/appcompat/widget/ActivityChooserView;->mInitialActivityCount:I

    .line 504
    return-void
.end method

.method public setOnDismissListener(Lccsanandroid/widget/PopupWindow$OnDismissListener;)V
    .locals 0
    .param p1, "listener"    # Lccsanandroid/widget/PopupWindow$OnDismissListener;

    .line 491
    iput-object p1, p0, Lccsanandroidx/appcompat/widget/ActivityChooserView;->mOnDismissListener:Lccsanandroid/widget/PopupWindow$OnDismissListener;

    .line 492
    return-void
.end method

.method public setProvider(Lccsanandroidx/core/view/ActionProvider;)V
    .locals 0
    .param p1, "provider"    # Lccsanandroidx/core/view/ActionProvider;

    .line 345
    iput-object p1, p0, Lccsanandroidx/appcompat/widget/ActivityChooserView;->mProvider:Lccsanandroidx/core/view/ActionProvider;

    .line 346
    return-void
.end method

.method public showPopup()Z
    .locals 2

    .line 354
    invoke-virtual {p0}, Lccsanandroidx/appcompat/widget/ActivityChooserView;->isShowingPopup()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lccsanandroidx/appcompat/widget/ActivityChooserView;->mIsAttachedToWindow:Z

    if-nez v0, :cond_0

    goto :goto_0

    .line 357
    :cond_0
    iput-boolean v1, p0, Lccsanandroidx/appcompat/widget/ActivityChooserView;->mIsSelectingDefaultActivity:Z

    .line 358
    iget v0, p0, Lccsanandroidx/appcompat/widget/ActivityChooserView;->mInitialActivityCount:I

    invoke-virtual {p0, v0}, Lccsanandroidx/appcompat/widget/ActivityChooserView;->showPopupUnchecked(I)V

    .line 359
    const/4 v0, 0x1

    return v0

    .line 355
    :cond_1
    :goto_0
    return v1
.end method

.method showPopupUnchecked(I)V
    .locals 9
    .param p1, "maxActivityCount"    # I

    .line 368
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/ActivityChooserView;->mAdapter:Lccsanandroidx/appcompat/widget/ActivityChooserView$ActivityChooserViewAdapter;

    invoke-virtual {v0}, Lccsanandroidx/appcompat/widget/ActivityChooserView$ActivityChooserViewAdapter;->getDataModel()Lccsanandroidx/appcompat/widget/ActivityChooserModel;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 372
    invoke-virtual {p0}, Lccsanandroidx/appcompat/widget/ActivityChooserView;->getViewTreeObserver()Lccsanandroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lccsanandroidx/appcompat/widget/ActivityChooserView;->mOnGlobalLayoutListener:Lccsanandroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1}, Lccsanandroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Lccsanandroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 374
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/ActivityChooserView;->mDefaultActivityButton:Lccsanandroid/widget/FrameLayout;

    .line 375
    invoke-virtual {v0}, Lccsanandroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 377
    .local v0, "defaultActivityButtonShown":Z
    :goto_0
    iget-object v3, p0, Lccsanandroidx/appcompat/widget/ActivityChooserView;->mAdapter:Lccsanandroidx/appcompat/widget/ActivityChooserView$ActivityChooserViewAdapter;

    invoke-virtual {v3}, Lccsanandroidx/appcompat/widget/ActivityChooserView$ActivityChooserViewAdapter;->getActivityCount()I

    move-result v3

    .line 378
    .local v3, "activityCount":I
    if-eqz v0, :cond_1

    const/4 v4, 0x1

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    .line 379
    .local v4, "maxActivityCountOffset":I
    :goto_1
    const v5, 0x7fffffff

    if-eq p1, v5, :cond_2

    add-int v5, p1, v4

    if-le v3, v5, :cond_2

    .line 381
    iget-object v5, p0, Lccsanandroidx/appcompat/widget/ActivityChooserView;->mAdapter:Lccsanandroidx/appcompat/widget/ActivityChooserView$ActivityChooserViewAdapter;

    invoke-virtual {v5, v1}, Lccsanandroidx/appcompat/widget/ActivityChooserView$ActivityChooserViewAdapter;->setShowFooterView(Z)V

    .line 382
    iget-object v5, p0, Lccsanandroidx/appcompat/widget/ActivityChooserView;->mAdapter:Lccsanandroidx/appcompat/widget/ActivityChooserView$ActivityChooserViewAdapter;

    add-int/lit8 v6, p1, -0x1

    invoke-virtual {v5, v6}, Lccsanandroidx/appcompat/widget/ActivityChooserView$ActivityChooserViewAdapter;->setMaxActivityCount(I)V

    goto :goto_2

    .line 384
    :cond_2
    iget-object v5, p0, Lccsanandroidx/appcompat/widget/ActivityChooserView;->mAdapter:Lccsanandroidx/appcompat/widget/ActivityChooserView$ActivityChooserViewAdapter;

    invoke-virtual {v5, v2}, Lccsanandroidx/appcompat/widget/ActivityChooserView$ActivityChooserViewAdapter;->setShowFooterView(Z)V

    .line 385
    iget-object v5, p0, Lccsanandroidx/appcompat/widget/ActivityChooserView;->mAdapter:Lccsanandroidx/appcompat/widget/ActivityChooserView$ActivityChooserViewAdapter;

    invoke-virtual {v5, p1}, Lccsanandroidx/appcompat/widget/ActivityChooserView$ActivityChooserViewAdapter;->setMaxActivityCount(I)V

    .line 388
    :goto_2
    invoke-virtual {p0}, Lccsanandroidx/appcompat/widget/ActivityChooserView;->getListPopupWindow()Lccsanandroidx/appcompat/widget/ListPopupWindow;

    move-result-object v5

    .line 389
    .local v5, "popupWindow":Lccsanandroidx/appcompat/widget/ListPopupWindow;
    invoke-virtual {v5}, Lccsanandroidx/appcompat/widget/ListPopupWindow;->isShowing()Z

    move-result v6

    if-nez v6, :cond_6

    .line 390
    iget-boolean v6, p0, Lccsanandroidx/appcompat/widget/ActivityChooserView;->mIsSelectingDefaultActivity:Z

    if-nez v6, :cond_4

    if-nez v0, :cond_3

    goto :goto_3

    .line 393
    :cond_3
    iget-object v6, p0, Lccsanandroidx/appcompat/widget/ActivityChooserView;->mAdapter:Lccsanandroidx/appcompat/widget/ActivityChooserView$ActivityChooserViewAdapter;

    invoke-virtual {v6, v2, v2}, Lccsanandroidx/appcompat/widget/ActivityChooserView$ActivityChooserViewAdapter;->setShowDefaultActivity(ZZ)V

    goto :goto_4

    .line 391
    :cond_4
    :goto_3
    iget-object v6, p0, Lccsanandroidx/appcompat/widget/ActivityChooserView;->mAdapter:Lccsanandroidx/appcompat/widget/ActivityChooserView$ActivityChooserViewAdapter;

    invoke-virtual {v6, v1, v0}, Lccsanandroidx/appcompat/widget/ActivityChooserView$ActivityChooserViewAdapter;->setShowDefaultActivity(ZZ)V

    .line 395
    :goto_4
    iget-object v6, p0, Lccsanandroidx/appcompat/widget/ActivityChooserView;->mAdapter:Lccsanandroidx/appcompat/widget/ActivityChooserView$ActivityChooserViewAdapter;

    invoke-virtual {v6}, Lccsanandroidx/appcompat/widget/ActivityChooserView$ActivityChooserViewAdapter;->measureContentWidth()I

    move-result v6

    iget v7, p0, Lccsanandroidx/appcompat/widget/ActivityChooserView;->mListPopupMaxWidth:I

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 396
    .local v6, "contentWidth":I
    invoke-virtual {v5, v6}, Lccsanandroidx/appcompat/widget/ListPopupWindow;->setContentWidth(I)V

    .line 397
    invoke-virtual {v5}, Lccsanandroidx/appcompat/widget/ListPopupWindow;->show()V

    .line 398
    iget-object v7, p0, Lccsanandroidx/appcompat/widget/ActivityChooserView;->mProvider:Lccsanandroidx/core/view/ActionProvider;

    if-eqz v7, :cond_5

    .line 399
    invoke-virtual {v7, v1}, Lccsanandroidx/core/view/ActionProvider;->subUiVisibilityChanged(Z)V

    .line 401
    :cond_5
    invoke-virtual {v5}, Lccsanandroidx/appcompat/widget/ListPopupWindow;->getListView()Lccsanandroid/widget/ListView;

    move-result-object v1

    invoke-virtual {p0}, Lccsanandroidx/appcompat/widget/ActivityChooserView;->getContext()Lccsanandroid/content/Context;

    move-result-object v7

    sget v8, Lccsanandroidx/appcompat/R$string;->abc_activitychooserview_choose_application:I

    invoke-virtual {v7, v8}, Lccsanandroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Lccsanandroid/widget/ListView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 403
    invoke-virtual {v5}, Lccsanandroidx/appcompat/widget/ListPopupWindow;->getListView()Lccsanandroid/widget/ListView;

    move-result-object v1

    new-instance v7, Lccsanandroid/graphics/drawable/ColorDrawable;

    invoke-direct {v7, v2}, Lccsanandroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v1, v7}, Lccsanandroid/widget/ListView;->setSelector(Lccsanandroid/graphics/drawable/Drawable;)V

    .line 405
    .end local v6    # "contentWidth":I
    :cond_6
    return-void

    .line 369
    .end local v0    # "defaultActivityButtonShown":Z
    .end local v3    # "activityCount":I
    .end local v4    # "maxActivityCountOffset":I
    .end local v5    # "popupWindow":Lccsanandroidx/appcompat/widget/ListPopupWindow;
    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No data model. Did you call #setDataModel?"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method updateAppearance()V
    .locals 9

    .line 542
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/ActivityChooserView;->mAdapter:Lccsanandroidx/appcompat/widget/ActivityChooserView$ActivityChooserViewAdapter;

    invoke-virtual {v0}, Lccsanandroidx/appcompat/widget/ActivityChooserView$ActivityChooserViewAdapter;->getCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-lez v0, :cond_0

    .line 543
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/ActivityChooserView;->mExpandActivityOverflowButton:Lccsanandroid/widget/FrameLayout;

    invoke-virtual {v0, v2}, Lccsanandroid/widget/FrameLayout;->setEnabled(Z)V

    goto :goto_0

    .line 545
    :cond_0
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/ActivityChooserView;->mExpandActivityOverflowButton:Lccsanandroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Lccsanandroid/widget/FrameLayout;->setEnabled(Z)V

    .line 548
    :goto_0
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/ActivityChooserView;->mAdapter:Lccsanandroidx/appcompat/widget/ActivityChooserView$ActivityChooserViewAdapter;

    invoke-virtual {v0}, Lccsanandroidx/appcompat/widget/ActivityChooserView$ActivityChooserViewAdapter;->getActivityCount()I

    move-result v0

    .line 549
    .local v0, "activityCount":I
    iget-object v3, p0, Lccsanandroidx/appcompat/widget/ActivityChooserView;->mAdapter:Lccsanandroidx/appcompat/widget/ActivityChooserView$ActivityChooserViewAdapter;

    invoke-virtual {v3}, Lccsanandroidx/appcompat/widget/ActivityChooserView$ActivityChooserViewAdapter;->getHistorySize()I

    move-result v3

    .line 550
    .local v3, "historySize":I
    if-eq v0, v2, :cond_2

    if-le v0, v2, :cond_1

    if-lez v3, :cond_1

    goto :goto_1

    .line 562
    :cond_1
    iget-object v1, p0, Lccsanandroidx/appcompat/widget/ActivityChooserView;->mDefaultActivityButton:Lccsanandroid/widget/FrameLayout;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lccsanandroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_2

    .line 551
    :cond_2
    :goto_1
    iget-object v4, p0, Lccsanandroidx/appcompat/widget/ActivityChooserView;->mDefaultActivityButton:Lccsanandroid/widget/FrameLayout;

    invoke-virtual {v4, v1}, Lccsanandroid/widget/FrameLayout;->setVisibility(I)V

    .line 552
    iget-object v4, p0, Lccsanandroidx/appcompat/widget/ActivityChooserView;->mAdapter:Lccsanandroidx/appcompat/widget/ActivityChooserView$ActivityChooserViewAdapter;

    invoke-virtual {v4}, Lccsanandroidx/appcompat/widget/ActivityChooserView$ActivityChooserViewAdapter;->getDefaultActivity()Lccsanandroid/content/pm/ResolveInfo;

    move-result-object v4

    .line 553
    .local v4, "activity":Lccsanandroid/content/pm/ResolveInfo;
    invoke-virtual {p0}, Lccsanandroidx/appcompat/widget/ActivityChooserView;->getContext()Lccsanandroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Lccsanandroid/content/Context;->getPackageManager()Lccsanandroid/content/pm/PackageManager;

    move-result-object v5

    .line 554
    .local v5, "packageManager":Lccsanandroid/content/pm/PackageManager;
    iget-object v6, p0, Lccsanandroidx/appcompat/widget/ActivityChooserView;->mDefaultActivityButtonImage:Lccsanandroid/widget/ImageView;

    invoke-virtual {v4, v5}, Lccsanandroid/content/pm/ResolveInfo;->loadIcon(Lccsanandroid/content/pm/PackageManager;)Lccsanandroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v6, v7}, Lccsanandroid/widget/ImageView;->setImageDrawable(Lccsanandroid/graphics/drawable/Drawable;)V

    .line 555
    iget v6, p0, Lccsanandroidx/appcompat/widget/ActivityChooserView;->mDefaultActionButtonContentDescription:I

    if-eqz v6, :cond_3

    .line 556
    invoke-virtual {v4, v5}, Lccsanandroid/content/pm/ResolveInfo;->loadLabel(Lccsanandroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v6

    .line 557
    .local v6, "label":Ljava/lang/CharSequence;
    invoke-virtual {p0}, Lccsanandroidx/appcompat/widget/ActivityChooserView;->getContext()Lccsanandroid/content/Context;

    move-result-object v7

    iget v8, p0, Lccsanandroidx/appcompat/widget/ActivityChooserView;->mDefaultActionButtonContentDescription:I

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v6, v2, v1

    invoke-virtual {v7, v8, v2}, Lccsanandroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 559
    .local v1, "contentDescription":Ljava/lang/String;
    iget-object v2, p0, Lccsanandroidx/appcompat/widget/ActivityChooserView;->mDefaultActivityButton:Lccsanandroid/widget/FrameLayout;

    invoke-virtual {v2, v1}, Lccsanandroid/widget/FrameLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 561
    .end local v1    # "contentDescription":Ljava/lang/String;
    .end local v4    # "activity":Lccsanandroid/content/pm/ResolveInfo;
    .end local v5    # "packageManager":Lccsanandroid/content/pm/PackageManager;
    .end local v6    # "label":Ljava/lang/CharSequence;
    :cond_3
    nop

    .line 565
    :goto_2
    iget-object v1, p0, Lccsanandroidx/appcompat/widget/ActivityChooserView;->mDefaultActivityButton:Lccsanandroid/widget/FrameLayout;

    invoke-virtual {v1}, Lccsanandroid/widget/FrameLayout;->getVisibility()I

    move-result v1

    if-nez v1, :cond_4

    .line 566
    iget-object v1, p0, Lccsanandroidx/appcompat/widget/ActivityChooserView;->mActivityChooserContent:Lccsanandroid/view/View;

    iget-object v2, p0, Lccsanandroidx/appcompat/widget/ActivityChooserView;->mActivityChooserContentBackground:Lccsanandroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Lccsanandroid/view/View;->setBackgroundDrawable(Lccsanandroid/graphics/drawable/Drawable;)V

    goto :goto_3

    .line 568
    :cond_4
    iget-object v1, p0, Lccsanandroidx/appcompat/widget/ActivityChooserView;->mActivityChooserContent:Lccsanandroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lccsanandroid/view/View;->setBackgroundDrawable(Lccsanandroid/graphics/drawable/Drawable;)V

    .line 570
    :goto_3
    return-void
.end method
