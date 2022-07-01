.class Lccsanandroidx/appcompat/app/AlertController;
.super Ljava/lang/Object;
.source "AlertController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsanandroidx/appcompat/app/AlertController$CheckedItemAdapter;,
        Lccsanandroidx/appcompat/app/AlertController$AlertParams;,
        Lccsanandroidx/appcompat/app/AlertController$RecycleListView;,
        Lccsanandroidx/appcompat/app/AlertController$ButtonHandler;
    }
.end annotation


# instance fields
.field mAdapter:Lccsanandroid/widget/ListAdapter;

.field private mAlertDialogLayout:I

.field private final mButtonHandler:Lccsanandroid/view/View$OnClickListener;

.field private final mButtonIconDimen:I

.field mButtonNegative:Lccsanandroid/widget/Button;

.field private mButtonNegativeIcon:Lccsanandroid/graphics/drawable/Drawable;

.field mButtonNegativeMessage:Lccsanandroid/os/Message;

.field private mButtonNegativeText:Ljava/lang/CharSequence;

.field mButtonNeutral:Lccsanandroid/widget/Button;

.field private mButtonNeutralIcon:Lccsanandroid/graphics/drawable/Drawable;

.field mButtonNeutralMessage:Lccsanandroid/os/Message;

.field private mButtonNeutralText:Ljava/lang/CharSequence;

.field private mButtonPanelLayoutHint:I

.field private mButtonPanelSideLayout:I

.field mButtonPositive:Lccsanandroid/widget/Button;

.field private mButtonPositiveIcon:Lccsanandroid/graphics/drawable/Drawable;

.field mButtonPositiveMessage:Lccsanandroid/os/Message;

.field private mButtonPositiveText:Ljava/lang/CharSequence;

.field mCheckedItem:I

.field private final mContext:Lccsanandroid/content/Context;

.field private mCustomTitleView:Lccsanandroid/view/View;

.field final mDialog:Lccsanandroidx/appcompat/app/AppCompatDialog;

.field mHandler:Lccsanandroid/os/Handler;

.field private mIcon:Lccsanandroid/graphics/drawable/Drawable;

.field private mIconId:I

.field private mIconView:Lccsanandroid/widget/ImageView;

.field mListItemLayout:I

.field mListLayout:I

.field mListView:Lccsanandroid/widget/ListView;

.field private mMessage:Ljava/lang/CharSequence;

.field private mMessageView:Lccsanandroid/widget/TextView;

.field mMultiChoiceItemLayout:I

.field mScrollView:Lccsanandroidx/core/widget/NestedScrollView;

.field private mShowTitle:Z

.field mSingleChoiceItemLayout:I

.field private mTitle:Ljava/lang/CharSequence;

.field private mTitleView:Lccsanandroid/widget/TextView;

.field private mView:Lccsanandroid/view/View;

.field private mViewLayoutResId:I

.field private mViewSpacingBottom:I

.field private mViewSpacingLeft:I

.field private mViewSpacingRight:I

.field private mViewSpacingSpecified:Z

.field private mViewSpacingTop:I

.field private final mWindow:Lccsanandroid/view/Window;


# direct methods
.method public constructor <init>(Lccsanandroid/content/Context;Lccsanandroidx/appcompat/app/AppCompatDialog;Lccsanandroid/view/Window;)V
    .locals 4
    .param p1, "context"    # Lccsanandroid/content/Context;
    .param p2, "di"    # Lccsanandroidx/appcompat/app/AppCompatDialog;
    .param p3, "window"    # Lccsanandroid/view/Window;

    .line 182
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    const/4 v0, 0x0

    iput-boolean v0, p0, Lccsanandroidx/appcompat/app/AlertController;->mViewSpacingSpecified:Z

    .line 101
    iput v0, p0, Lccsanandroidx/appcompat/app/AlertController;->mIconId:I

    .line 111
    const/4 v1, -0x1

    iput v1, p0, Lccsanandroidx/appcompat/app/AlertController;->mCheckedItem:I

    .line 122
    iput v0, p0, Lccsanandroidx/appcompat/app/AlertController;->mButtonPanelLayoutHint:I

    .line 126
    new-instance v1, Lccsanandroidx/appcompat/app/AlertController$1;

    invoke-direct {v1, p0}, Lccsanandroidx/appcompat/app/AlertController$1;-><init>(Lccsanandroidx/appcompat/app/AlertController;)V

    iput-object v1, p0, Lccsanandroidx/appcompat/app/AlertController;->mButtonHandler:Lccsanandroid/view/View$OnClickListener;

    .line 183
    iput-object p1, p0, Lccsanandroidx/appcompat/app/AlertController;->mContext:Lccsanandroid/content/Context;

    .line 184
    iput-object p2, p0, Lccsanandroidx/appcompat/app/AlertController;->mDialog:Lccsanandroidx/appcompat/app/AppCompatDialog;

    .line 185
    iput-object p3, p0, Lccsanandroidx/appcompat/app/AlertController;->mWindow:Lccsanandroid/view/Window;

    .line 186
    new-instance v1, Lccsanandroidx/appcompat/app/AlertController$ButtonHandler;

    invoke-direct {v1, p2}, Lccsanandroidx/appcompat/app/AlertController$ButtonHandler;-><init>(Lccsanandroid/content/DialogInterface;)V

    iput-object v1, p0, Lccsanandroidx/appcompat/app/AlertController;->mHandler:Lccsanandroid/os/Handler;

    .line 188
    sget-object v1, Lccsanandroidx/appcompat/R$styleable;->AlertDialog:[I

    sget v2, Lccsanandroidx/appcompat/R$attr;->alertDialogStyle:I

    const/4 v3, 0x0

    invoke-virtual {p1, v3, v1, v2, v0}, Lccsanandroid/content/Context;->obtainStyledAttributes(Lccsanandroid/util/AttributeSet;[III)Lccsanandroid/content/res/TypedArray;

    move-result-object v1

    .line 191
    .local v1, "a":Lccsanandroid/content/res/TypedArray;
    sget v2, Lccsanandroidx/appcompat/R$styleable;->AlertDialog_android_layout:I

    invoke-virtual {v1, v2, v0}, Lccsanandroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    iput v2, p0, Lccsanandroidx/appcompat/app/AlertController;->mAlertDialogLayout:I

    .line 192
    sget v2, Lccsanandroidx/appcompat/R$styleable;->AlertDialog_buttonPanelSideLayout:I

    invoke-virtual {v1, v2, v0}, Lccsanandroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    iput v2, p0, Lccsanandroidx/appcompat/app/AlertController;->mButtonPanelSideLayout:I

    .line 194
    sget v2, Lccsanandroidx/appcompat/R$styleable;->AlertDialog_listLayout:I

    invoke-virtual {v1, v2, v0}, Lccsanandroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    iput v2, p0, Lccsanandroidx/appcompat/app/AlertController;->mListLayout:I

    .line 195
    sget v2, Lccsanandroidx/appcompat/R$styleable;->AlertDialog_multiChoiceItemLayout:I

    invoke-virtual {v1, v2, v0}, Lccsanandroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    iput v2, p0, Lccsanandroidx/appcompat/app/AlertController;->mMultiChoiceItemLayout:I

    .line 196
    sget v2, Lccsanandroidx/appcompat/R$styleable;->AlertDialog_singleChoiceItemLayout:I

    .line 197
    invoke-virtual {v1, v2, v0}, Lccsanandroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    iput v2, p0, Lccsanandroidx/appcompat/app/AlertController;->mSingleChoiceItemLayout:I

    .line 198
    sget v2, Lccsanandroidx/appcompat/R$styleable;->AlertDialog_listItemLayout:I

    invoke-virtual {v1, v2, v0}, Lccsanandroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    iput v2, p0, Lccsanandroidx/appcompat/app/AlertController;->mListItemLayout:I

    .line 199
    sget v2, Lccsanandroidx/appcompat/R$styleable;->AlertDialog_showTitle:I

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lccsanandroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, p0, Lccsanandroidx/appcompat/app/AlertController;->mShowTitle:Z

    .line 200
    sget v2, Lccsanandroidx/appcompat/R$styleable;->AlertDialog_buttonIconDimen:I

    invoke-virtual {v1, v2, v0}, Lccsanandroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Lccsanandroidx/appcompat/app/AlertController;->mButtonIconDimen:I

    .line 202
    invoke-virtual {v1}, Lccsanandroid/content/res/TypedArray;->recycle()V

    .line 205
    invoke-virtual {p2, v3}, Lccsanandroidx/appcompat/app/AppCompatDialog;->supportRequestWindowFeature(I)Z

    .line 206
    return-void
.end method

.method static canTextInput(Lccsanandroid/view/View;)Z
    .locals 5
    .param p0, "v"    # Lccsanandroid/view/View;

    .line 209
    invoke-virtual {p0}, Lccsanandroid/view/View;->onCheckIsTextEditor()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 210
    return v1

    .line 213
    :cond_0
    instance-of v0, p0, Lccsanandroid/view/ViewGroup;

    const/4 v2, 0x0

    if-nez v0, :cond_1

    .line 214
    return v2

    .line 217
    :cond_1
    move-object v0, p0

    check-cast v0, Lccsanandroid/view/ViewGroup;

    .line 218
    .local v0, "vg":Lccsanandroid/view/ViewGroup;
    invoke-virtual {v0}, Lccsanandroid/view/ViewGroup;->getChildCount()I

    move-result v3

    .line 219
    .local v3, "i":I
    :cond_2
    if-lez v3, :cond_3

    .line 220
    add-int/lit8 v3, v3, -0x1

    .line 221
    invoke-virtual {v0, v3}, Lccsanandroid/view/ViewGroup;->getChildAt(I)Lccsanandroid/view/View;

    move-result-object p0

    .line 222
    invoke-static {p0}, Lccsanandroidx/appcompat/app/AlertController;->canTextInput(Lccsanandroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 223
    return v1

    .line 227
    :cond_3
    return v2
.end method

.method private centerButton(Lccsanandroid/widget/Button;)V
    .locals 2
    .param p1, "button"    # Lccsanandroid/widget/Button;

    .line 829
    invoke-virtual {p1}, Lccsanandroid/widget/Button;->getLayoutParams()Lccsanandroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lccsanandroid/widget/LinearLayout$LayoutParams;

    .line 830
    .local v0, "params":Lccsanandroid/widget/LinearLayout$LayoutParams;
    const/4 v1, 0x1

    iput v1, v0, Lccsanandroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 831
    const/high16 v1, 0x3f000000    # 0.5f

    iput v1, v0, Lccsanandroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 832
    invoke-virtual {p1, v0}, Lccsanandroid/widget/Button;->setLayoutParams(Lccsanandroid/view/ViewGroup$LayoutParams;)V

    .line 833
    return-void
.end method

.method static manageScrollIndicators(Lccsanandroid/view/View;Lccsanandroid/view/View;Lccsanandroid/view/View;)V
    .locals 3
    .param p0, "v"    # Lccsanandroid/view/View;
    .param p1, "upIndicator"    # Lccsanandroid/view/View;
    .param p2, "downIndicator"    # Lccsanandroid/view/View;

    .line 748
    const/4 v0, 0x0

    const/4 v1, 0x4

    if-eqz p1, :cond_1

    .line 749
    nop

    .line 750
    const/4 v2, -0x1

    invoke-virtual {p0, v2}, Lccsanandroid/view/View;->canScrollVertically(I)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    const/4 v2, 0x4

    .line 749
    :goto_0
    invoke-virtual {p1, v2}, Lccsanandroid/view/View;->setVisibility(I)V

    .line 752
    :cond_1
    if-eqz p2, :cond_3

    .line 753
    nop

    .line 754
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lccsanandroid/view/View;->canScrollVertically(I)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_1

    :cond_2
    const/4 v0, 0x4

    .line 753
    :goto_1
    invoke-virtual {p2, v0}, Lccsanandroid/view/View;->setVisibility(I)V

    .line 756
    :cond_3
    return-void
.end method

.method private resolvePanel(Lccsanandroid/view/View;Lccsanandroid/view/View;)Lccsanandroid/view/ViewGroup;
    .locals 2
    .param p1, "customPanel"    # Lccsanandroid/view/View;
    .param p2, "defaultPanel"    # Lccsanandroid/view/View;

    .line 441
    if-nez p1, :cond_1

    .line 443
    instance-of v0, p2, Lccsanandroid/view/ViewStub;

    if-eqz v0, :cond_0

    .line 444
    move-object v0, p2

    check-cast v0, Lccsanandroid/view/ViewStub;

    invoke-virtual {v0}, Lccsanandroid/view/ViewStub;->inflate()Lccsanandroid/view/View;

    move-result-object p2

    .line 447
    :cond_0
    move-object v0, p2

    check-cast v0, Lccsanandroid/view/ViewGroup;

    return-object v0

    .line 451
    :cond_1
    if-eqz p2, :cond_2

    .line 452
    invoke-virtual {p2}, Lccsanandroid/view/View;->getParent()Lccsanandroid/view/ViewParent;

    move-result-object v0

    .line 453
    .local v0, "parent":Lccsanandroid/view/ViewParent;
    instance-of v1, v0, Lccsanandroid/view/ViewGroup;

    if-eqz v1, :cond_2

    .line 454
    move-object v1, v0

    check-cast v1, Lccsanandroid/view/ViewGroup;

    invoke-virtual {v1, p2}, Lccsanandroid/view/ViewGroup;->removeView(Lccsanandroid/view/View;)V

    .line 459
    .end local v0    # "parent":Lccsanandroid/view/ViewParent;
    :cond_2
    instance-of v0, p1, Lccsanandroid/view/ViewStub;

    if-eqz v0, :cond_3

    .line 460
    move-object v0, p1

    check-cast v0, Lccsanandroid/view/ViewStub;

    invoke-virtual {v0}, Lccsanandroid/view/ViewStub;->inflate()Lccsanandroid/view/View;

    move-result-object p1

    .line 463
    :cond_3
    move-object v0, p1

    check-cast v0, Lccsanandroid/view/ViewGroup;

    return-object v0
.end method

.method private selectContentView()I
    .locals 3

    .line 237
    iget v0, p0, Lccsanandroidx/appcompat/app/AlertController;->mButtonPanelSideLayout:I

    if-nez v0, :cond_0

    .line 238
    iget v0, p0, Lccsanandroidx/appcompat/app/AlertController;->mAlertDialogLayout:I

    return v0

    .line 240
    :cond_0
    iget v1, p0, Lccsanandroidx/appcompat/app/AlertController;->mButtonPanelLayoutHint:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 241
    return v0

    .line 243
    :cond_1
    iget v0, p0, Lccsanandroidx/appcompat/app/AlertController;->mAlertDialogLayout:I

    return v0
.end method

.method private setScrollIndicators(Lccsanandroid/view/ViewGroup;Lccsanandroid/view/View;II)V
    .locals 6
    .param p1, "contentPanel"    # Lccsanandroid/view/ViewGroup;
    .param p2, "content"    # Lccsanandroid/view/View;
    .param p3, "indicators"    # I
    .param p4, "mask"    # I

    .line 560
    iget-object v0, p0, Lccsanandroidx/appcompat/app/AlertController;->mWindow:Lccsanandroid/view/Window;

    sget v1, Lccsanandroidx/appcompat/R$id;->scrollIndicatorUp:I

    invoke-virtual {v0, v1}, Lccsanandroid/view/Window;->findViewById(I)Lccsanandroid/view/View;

    move-result-object v0

    .line 561
    .local v0, "indicatorUp":Lccsanandroid/view/View;
    iget-object v1, p0, Lccsanandroidx/appcompat/app/AlertController;->mWindow:Lccsanandroid/view/Window;

    sget v2, Lccsanandroidx/appcompat/R$id;->scrollIndicatorDown:I

    invoke-virtual {v1, v2}, Lccsanandroid/view/Window;->findViewById(I)Lccsanandroid/view/View;

    move-result-object v1

    .line 563
    .local v1, "indicatorDown":Lccsanandroid/view/View;
    sget v2, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x17

    if-lt v2, v3, :cond_1

    .line 565
    invoke-static {p2, p3, p4}, Lccsanandroidx/core/view/ViewCompat;->setScrollIndicators(Lccsanandroid/view/View;II)V

    .line 567
    if-eqz v0, :cond_0

    .line 568
    invoke-virtual {p1, v0}, Lccsanandroid/view/ViewGroup;->removeView(Lccsanandroid/view/View;)V

    .line 570
    :cond_0
    if-eqz v1, :cond_8

    .line 571
    invoke-virtual {p1, v1}, Lccsanandroid/view/ViewGroup;->removeView(Lccsanandroid/view/View;)V

    goto :goto_0

    .line 575
    :cond_1
    if-eqz v0, :cond_2

    and-int/lit8 v2, p3, 0x1

    if-nez v2, :cond_2

    .line 576
    invoke-virtual {p1, v0}, Lccsanandroid/view/ViewGroup;->removeView(Lccsanandroid/view/View;)V

    .line 577
    const/4 v0, 0x0

    .line 579
    :cond_2
    if-eqz v1, :cond_3

    and-int/lit8 v2, p3, 0x2

    if-nez v2, :cond_3

    .line 580
    invoke-virtual {p1, v1}, Lccsanandroid/view/ViewGroup;->removeView(Lccsanandroid/view/View;)V

    .line 581
    const/4 v1, 0x0

    .line 584
    :cond_3
    if-nez v0, :cond_4

    if-eqz v1, :cond_8

    .line 585
    :cond_4
    move-object v2, v0

    .line 586
    .local v2, "top":Lccsanandroid/view/View;
    move-object v3, v1

    .line 588
    .local v3, "bottom":Lccsanandroid/view/View;
    iget-object v4, p0, Lccsanandroidx/appcompat/app/AlertController;->mMessage:Ljava/lang/CharSequence;

    if-eqz v4, :cond_5

    .line 590
    iget-object v4, p0, Lccsanandroidx/appcompat/app/AlertController;->mScrollView:Lccsanandroidx/core/widget/NestedScrollView;

    new-instance v5, Lccsanandroidx/appcompat/app/AlertController$2;

    invoke-direct {v5, p0, v2, v3}, Lccsanandroidx/appcompat/app/AlertController$2;-><init>(Lccsanandroidx/appcompat/app/AlertController;Lccsanandroid/view/View;Lccsanandroid/view/View;)V

    invoke-virtual {v4, v5}, Lccsanandroidx/core/widget/NestedScrollView;->setOnScrollChangeListener(Lccsanandroidx/core/widget/NestedScrollView$OnScrollChangeListener;)V

    .line 600
    iget-object v4, p0, Lccsanandroidx/appcompat/app/AlertController;->mScrollView:Lccsanandroidx/core/widget/NestedScrollView;

    new-instance v5, Lccsanandroidx/appcompat/app/AlertController$3;

    invoke-direct {v5, p0, v2, v3}, Lccsanandroidx/appcompat/app/AlertController$3;-><init>(Lccsanandroidx/appcompat/app/AlertController;Lccsanandroid/view/View;Lccsanandroid/view/View;)V

    invoke-virtual {v4, v5}, Lccsanandroidx/core/widget/NestedScrollView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 606
    :cond_5
    iget-object v4, p0, Lccsanandroidx/appcompat/app/AlertController;->mListView:Lccsanandroid/widget/ListView;

    if-eqz v4, :cond_6

    .line 608
    new-instance v5, Lccsanandroidx/appcompat/app/AlertController$4;

    invoke-direct {v5, p0, v2, v3}, Lccsanandroidx/appcompat/app/AlertController$4;-><init>(Lccsanandroidx/appcompat/app/AlertController;Lccsanandroid/view/View;Lccsanandroid/view/View;)V

    invoke-virtual {v4, v5}, Lccsanandroid/widget/ListView;->setOnScrollListener(Lccsanandroid/widget/AbsListView$OnScrollListener;)V

    .line 619
    iget-object v4, p0, Lccsanandroidx/appcompat/app/AlertController;->mListView:Lccsanandroid/widget/ListView;

    new-instance v5, Lccsanandroidx/appcompat/app/AlertController$5;

    invoke-direct {v5, p0, v2, v3}, Lccsanandroidx/appcompat/app/AlertController$5;-><init>(Lccsanandroidx/appcompat/app/AlertController;Lccsanandroid/view/View;Lccsanandroid/view/View;)V

    invoke-virtual {v4, v5}, Lccsanandroid/widget/ListView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 627
    :cond_6
    if-eqz v2, :cond_7

    .line 628
    invoke-virtual {p1, v2}, Lccsanandroid/view/ViewGroup;->removeView(Lccsanandroid/view/View;)V

    .line 630
    :cond_7
    if-eqz v3, :cond_8

    .line 631
    invoke-virtual {p1, v3}, Lccsanandroid/view/ViewGroup;->removeView(Lccsanandroid/view/View;)V

    .line 636
    .end local v2    # "top":Lccsanandroid/view/View;
    .end local v3    # "bottom":Lccsanandroid/view/View;
    :cond_8
    :goto_0
    return-void
.end method

.method private setupButtons(Lccsanandroid/view/ViewGroup;)V
    .locals 9
    .param p1, "buttonPanel"    # Lccsanandroid/view/ViewGroup;

    .line 759
    const/4 v0, 0x1

    .line 760
    .local v0, "BIT_BUTTON_POSITIVE":I
    const/4 v1, 0x2

    .line 761
    .local v1, "BIT_BUTTON_NEGATIVE":I
    const/4 v2, 0x4

    .line 762
    .local v2, "BIT_BUTTON_NEUTRAL":I
    const/4 v3, 0x0

    .line 763
    .local v3, "whichButtons":I
    const v4, 0x1020019

    invoke-virtual {p1, v4}, Lccsanandroid/view/ViewGroup;->findViewById(I)Lccsanandroid/view/View;

    move-result-object v4

    check-cast v4, Lccsanandroid/widget/Button;

    iput-object v4, p0, Lccsanandroidx/appcompat/app/AlertController;->mButtonPositive:Lccsanandroid/widget/Button;

    .line 764
    iget-object v5, p0, Lccsanandroidx/appcompat/app/AlertController;->mButtonHandler:Lccsanandroid/view/View$OnClickListener;

    invoke-virtual {v4, v5}, Lccsanandroid/widget/Button;->setOnClickListener(Lccsanandroid/view/View$OnClickListener;)V

    .line 766
    iget-object v4, p0, Lccsanandroidx/appcompat/app/AlertController;->mButtonPositiveText:Ljava/lang/CharSequence;

    invoke-static {v4}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    const/16 v5, 0x8

    const/4 v6, 0x0

    const/4 v7, 0x0

    if-eqz v4, :cond_0

    iget-object v4, p0, Lccsanandroidx/appcompat/app/AlertController;->mButtonPositiveIcon:Lccsanandroid/graphics/drawable/Drawable;

    if-nez v4, :cond_0

    .line 767
    iget-object v4, p0, Lccsanandroidx/appcompat/app/AlertController;->mButtonPositive:Lccsanandroid/widget/Button;

    invoke-virtual {v4, v5}, Lccsanandroid/widget/Button;->setVisibility(I)V

    goto :goto_0

    .line 769
    :cond_0
    iget-object v4, p0, Lccsanandroidx/appcompat/app/AlertController;->mButtonPositive:Lccsanandroid/widget/Button;

    iget-object v8, p0, Lccsanandroidx/appcompat/app/AlertController;->mButtonPositiveText:Ljava/lang/CharSequence;

    invoke-virtual {v4, v8}, Lccsanandroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 770
    iget-object v4, p0, Lccsanandroidx/appcompat/app/AlertController;->mButtonPositiveIcon:Lccsanandroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_1

    .line 771
    iget v8, p0, Lccsanandroidx/appcompat/app/AlertController;->mButtonIconDimen:I

    invoke-virtual {v4, v7, v7, v8, v8}, Lccsanandroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 772
    iget-object v4, p0, Lccsanandroidx/appcompat/app/AlertController;->mButtonPositive:Lccsanandroid/widget/Button;

    iget-object v8, p0, Lccsanandroidx/appcompat/app/AlertController;->mButtonPositiveIcon:Lccsanandroid/graphics/drawable/Drawable;

    invoke-virtual {v4, v8, v6, v6, v6}, Lccsanandroid/widget/Button;->setCompoundDrawables(Lccsanandroid/graphics/drawable/Drawable;Lccsanandroid/graphics/drawable/Drawable;Lccsanandroid/graphics/drawable/Drawable;Lccsanandroid/graphics/drawable/Drawable;)V

    .line 774
    :cond_1
    iget-object v4, p0, Lccsanandroidx/appcompat/app/AlertController;->mButtonPositive:Lccsanandroid/widget/Button;

    invoke-virtual {v4, v7}, Lccsanandroid/widget/Button;->setVisibility(I)V

    .line 775
    or-int/2addr v3, v0

    .line 778
    :goto_0
    const v4, 0x102001a

    invoke-virtual {p1, v4}, Lccsanandroid/view/ViewGroup;->findViewById(I)Lccsanandroid/view/View;

    move-result-object v4

    check-cast v4, Lccsanandroid/widget/Button;

    iput-object v4, p0, Lccsanandroidx/appcompat/app/AlertController;->mButtonNegative:Lccsanandroid/widget/Button;

    .line 779
    iget-object v8, p0, Lccsanandroidx/appcompat/app/AlertController;->mButtonHandler:Lccsanandroid/view/View$OnClickListener;

    invoke-virtual {v4, v8}, Lccsanandroid/widget/Button;->setOnClickListener(Lccsanandroid/view/View$OnClickListener;)V

    .line 781
    iget-object v4, p0, Lccsanandroidx/appcompat/app/AlertController;->mButtonNegativeText:Ljava/lang/CharSequence;

    invoke-static {v4}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lccsanandroidx/appcompat/app/AlertController;->mButtonNegativeIcon:Lccsanandroid/graphics/drawable/Drawable;

    if-nez v4, :cond_2

    .line 782
    iget-object v4, p0, Lccsanandroidx/appcompat/app/AlertController;->mButtonNegative:Lccsanandroid/widget/Button;

    invoke-virtual {v4, v5}, Lccsanandroid/widget/Button;->setVisibility(I)V

    goto :goto_1

    .line 784
    :cond_2
    iget-object v4, p0, Lccsanandroidx/appcompat/app/AlertController;->mButtonNegative:Lccsanandroid/widget/Button;

    iget-object v8, p0, Lccsanandroidx/appcompat/app/AlertController;->mButtonNegativeText:Ljava/lang/CharSequence;

    invoke-virtual {v4, v8}, Lccsanandroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 785
    iget-object v4, p0, Lccsanandroidx/appcompat/app/AlertController;->mButtonNegativeIcon:Lccsanandroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_3

    .line 786
    iget v8, p0, Lccsanandroidx/appcompat/app/AlertController;->mButtonIconDimen:I

    invoke-virtual {v4, v7, v7, v8, v8}, Lccsanandroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 787
    iget-object v4, p0, Lccsanandroidx/appcompat/app/AlertController;->mButtonNegative:Lccsanandroid/widget/Button;

    iget-object v8, p0, Lccsanandroidx/appcompat/app/AlertController;->mButtonNegativeIcon:Lccsanandroid/graphics/drawable/Drawable;

    invoke-virtual {v4, v8, v6, v6, v6}, Lccsanandroid/widget/Button;->setCompoundDrawables(Lccsanandroid/graphics/drawable/Drawable;Lccsanandroid/graphics/drawable/Drawable;Lccsanandroid/graphics/drawable/Drawable;Lccsanandroid/graphics/drawable/Drawable;)V

    .line 789
    :cond_3
    iget-object v4, p0, Lccsanandroidx/appcompat/app/AlertController;->mButtonNegative:Lccsanandroid/widget/Button;

    invoke-virtual {v4, v7}, Lccsanandroid/widget/Button;->setVisibility(I)V

    .line 790
    or-int/2addr v3, v1

    .line 793
    :goto_1
    const v4, 0x102001b

    invoke-virtual {p1, v4}, Lccsanandroid/view/ViewGroup;->findViewById(I)Lccsanandroid/view/View;

    move-result-object v4

    check-cast v4, Lccsanandroid/widget/Button;

    iput-object v4, p0, Lccsanandroidx/appcompat/app/AlertController;->mButtonNeutral:Lccsanandroid/widget/Button;

    .line 794
    iget-object v8, p0, Lccsanandroidx/appcompat/app/AlertController;->mButtonHandler:Lccsanandroid/view/View$OnClickListener;

    invoke-virtual {v4, v8}, Lccsanandroid/widget/Button;->setOnClickListener(Lccsanandroid/view/View$OnClickListener;)V

    .line 796
    iget-object v4, p0, Lccsanandroidx/appcompat/app/AlertController;->mButtonNeutralText:Ljava/lang/CharSequence;

    invoke-static {v4}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v4, p0, Lccsanandroidx/appcompat/app/AlertController;->mButtonNeutralIcon:Lccsanandroid/graphics/drawable/Drawable;

    if-nez v4, :cond_4

    .line 797
    iget-object v4, p0, Lccsanandroidx/appcompat/app/AlertController;->mButtonNeutral:Lccsanandroid/widget/Button;

    invoke-virtual {v4, v5}, Lccsanandroid/widget/Button;->setVisibility(I)V

    goto :goto_2

    .line 799
    :cond_4
    iget-object v4, p0, Lccsanandroidx/appcompat/app/AlertController;->mButtonNeutral:Lccsanandroid/widget/Button;

    iget-object v8, p0, Lccsanandroidx/appcompat/app/AlertController;->mButtonNeutralText:Ljava/lang/CharSequence;

    invoke-virtual {v4, v8}, Lccsanandroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 800
    iget-object v4, p0, Lccsanandroidx/appcompat/app/AlertController;->mButtonNeutralIcon:Lccsanandroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_5

    .line 801
    iget v8, p0, Lccsanandroidx/appcompat/app/AlertController;->mButtonIconDimen:I

    invoke-virtual {v4, v7, v7, v8, v8}, Lccsanandroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 802
    iget-object v4, p0, Lccsanandroidx/appcompat/app/AlertController;->mButtonNeutral:Lccsanandroid/widget/Button;

    iget-object v8, p0, Lccsanandroidx/appcompat/app/AlertController;->mButtonNeutralIcon:Lccsanandroid/graphics/drawable/Drawable;

    invoke-virtual {v4, v8, v6, v6, v6}, Lccsanandroid/widget/Button;->setCompoundDrawables(Lccsanandroid/graphics/drawable/Drawable;Lccsanandroid/graphics/drawable/Drawable;Lccsanandroid/graphics/drawable/Drawable;Lccsanandroid/graphics/drawable/Drawable;)V

    .line 804
    :cond_5
    iget-object v4, p0, Lccsanandroidx/appcompat/app/AlertController;->mButtonNeutral:Lccsanandroid/widget/Button;

    invoke-virtual {v4, v7}, Lccsanandroid/widget/Button;->setVisibility(I)V

    .line 805
    or-int/2addr v3, v2

    .line 808
    :goto_2
    iget-object v4, p0, Lccsanandroidx/appcompat/app/AlertController;->mContext:Lccsanandroid/content/Context;

    invoke-static {v4}, Lccsanandroidx/appcompat/app/AlertController;->shouldCenterSingleButton(Lccsanandroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 813
    if-ne v3, v0, :cond_6

    .line 814
    iget-object v4, p0, Lccsanandroidx/appcompat/app/AlertController;->mButtonPositive:Lccsanandroid/widget/Button;

    invoke-direct {p0, v4}, Lccsanandroidx/appcompat/app/AlertController;->centerButton(Lccsanandroid/widget/Button;)V

    goto :goto_3

    .line 815
    :cond_6
    if-ne v3, v1, :cond_7

    .line 816
    iget-object v4, p0, Lccsanandroidx/appcompat/app/AlertController;->mButtonNegative:Lccsanandroid/widget/Button;

    invoke-direct {p0, v4}, Lccsanandroidx/appcompat/app/AlertController;->centerButton(Lccsanandroid/widget/Button;)V

    goto :goto_3

    .line 817
    :cond_7
    if-ne v3, v2, :cond_8

    .line 818
    iget-object v4, p0, Lccsanandroidx/appcompat/app/AlertController;->mButtonNeutral:Lccsanandroid/widget/Button;

    invoke-direct {p0, v4}, Lccsanandroidx/appcompat/app/AlertController;->centerButton(Lccsanandroid/widget/Button;)V

    .line 822
    :cond_8
    :goto_3
    if-eqz v3, :cond_9

    const/4 v7, 0x1

    :cond_9
    move v4, v7

    .line 823
    .local v4, "hasButtons":Z
    if-nez v4, :cond_a

    .line 824
    invoke-virtual {p1, v5}, Lccsanandroid/view/ViewGroup;->setVisibility(I)V

    .line 826
    :cond_a
    return-void
.end method

.method private setupContent(Lccsanandroid/view/ViewGroup;)V
    .locals 5
    .param p1, "contentPanel"    # Lccsanandroid/view/ViewGroup;

    .line 719
    iget-object v0, p0, Lccsanandroidx/appcompat/app/AlertController;->mWindow:Lccsanandroid/view/Window;

    sget v1, Lccsanandroidx/appcompat/R$id;->scrollView:I

    invoke-virtual {v0, v1}, Lccsanandroid/view/Window;->findViewById(I)Lccsanandroid/view/View;

    move-result-object v0

    check-cast v0, Lccsanandroidx/core/widget/NestedScrollView;

    iput-object v0, p0, Lccsanandroidx/appcompat/app/AlertController;->mScrollView:Lccsanandroidx/core/widget/NestedScrollView;

    .line 720
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lccsanandroidx/core/widget/NestedScrollView;->setFocusable(Z)V

    .line 721
    iget-object v0, p0, Lccsanandroidx/appcompat/app/AlertController;->mScrollView:Lccsanandroidx/core/widget/NestedScrollView;

    invoke-virtual {v0, v1}, Lccsanandroidx/core/widget/NestedScrollView;->setNestedScrollingEnabled(Z)V

    .line 724
    const v0, 0x102000b

    invoke-virtual {p1, v0}, Lccsanandroid/view/ViewGroup;->findViewById(I)Lccsanandroid/view/View;

    move-result-object v0

    check-cast v0, Lccsanandroid/widget/TextView;

    iput-object v0, p0, Lccsanandroidx/appcompat/app/AlertController;->mMessageView:Lccsanandroid/widget/TextView;

    .line 725
    if-nez v0, :cond_0

    .line 726
    return-void

    .line 729
    :cond_0
    iget-object v1, p0, Lccsanandroidx/appcompat/app/AlertController;->mMessage:Ljava/lang/CharSequence;

    if-eqz v1, :cond_1

    .line 730
    invoke-virtual {v0, v1}, Lccsanandroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 732
    :cond_1
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lccsanandroid/widget/TextView;->setVisibility(I)V

    .line 733
    iget-object v0, p0, Lccsanandroidx/appcompat/app/AlertController;->mScrollView:Lccsanandroidx/core/widget/NestedScrollView;

    iget-object v2, p0, Lccsanandroidx/appcompat/app/AlertController;->mMessageView:Lccsanandroid/widget/TextView;

    invoke-virtual {v0, v2}, Lccsanandroidx/core/widget/NestedScrollView;->removeView(Lccsanandroid/view/View;)V

    .line 735
    iget-object v0, p0, Lccsanandroidx/appcompat/app/AlertController;->mListView:Lccsanandroid/widget/ListView;

    if-eqz v0, :cond_2

    .line 736
    iget-object v0, p0, Lccsanandroidx/appcompat/app/AlertController;->mScrollView:Lccsanandroidx/core/widget/NestedScrollView;

    invoke-virtual {v0}, Lccsanandroidx/core/widget/NestedScrollView;->getParent()Lccsanandroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lccsanandroid/view/ViewGroup;

    .line 737
    .local v0, "scrollParent":Lccsanandroid/view/ViewGroup;
    iget-object v1, p0, Lccsanandroidx/appcompat/app/AlertController;->mScrollView:Lccsanandroidx/core/widget/NestedScrollView;

    invoke-virtual {v0, v1}, Lccsanandroid/view/ViewGroup;->indexOfChild(Lccsanandroid/view/View;)I

    move-result v1

    .line 738
    .local v1, "childIndex":I
    invoke-virtual {v0, v1}, Lccsanandroid/view/ViewGroup;->removeViewAt(I)V

    .line 739
    iget-object v2, p0, Lccsanandroidx/appcompat/app/AlertController;->mListView:Lccsanandroid/widget/ListView;

    new-instance v3, Lccsanandroid/view/ViewGroup$LayoutParams;

    const/4 v4, -0x1

    invoke-direct {v3, v4, v4}, Lccsanandroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2, v1, v3}, Lccsanandroid/view/ViewGroup;->addView(Lccsanandroid/view/View;ILccsanandroid/view/ViewGroup$LayoutParams;)V

    .line 741
    .end local v0    # "scrollParent":Lccsanandroid/view/ViewGroup;
    .end local v1    # "childIndex":I
    goto :goto_0

    .line 742
    :cond_2
    invoke-virtual {p1, v1}, Lccsanandroid/view/ViewGroup;->setVisibility(I)V

    .line 745
    :goto_0
    return-void
.end method

.method private setupCustomContent(Lccsanandroid/view/ViewGroup;)V
    .locals 7
    .param p1, "customPanel"    # Lccsanandroid/view/ViewGroup;

    .line 640
    iget-object v0, p0, Lccsanandroidx/appcompat/app/AlertController;->mView:Lccsanandroid/view/View;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 641
    iget-object v0, p0, Lccsanandroidx/appcompat/app/AlertController;->mView:Lccsanandroid/view/View;

    .local v0, "customView":Lccsanandroid/view/View;
    goto :goto_0

    .line 642
    .end local v0    # "customView":Lccsanandroid/view/View;
    :cond_0
    iget v0, p0, Lccsanandroidx/appcompat/app/AlertController;->mViewLayoutResId:I

    if-eqz v0, :cond_1

    .line 643
    iget-object v0, p0, Lccsanandroidx/appcompat/app/AlertController;->mContext:Lccsanandroid/content/Context;

    invoke-static {v0}, Lccsanandroid/view/LayoutInflater;->from(Lccsanandroid/content/Context;)Lccsanandroid/view/LayoutInflater;

    move-result-object v0

    .line 644
    .local v0, "inflater":Lccsanandroid/view/LayoutInflater;
    iget v2, p0, Lccsanandroidx/appcompat/app/AlertController;->mViewLayoutResId:I

    invoke-virtual {v0, v2, p1, v1}, Lccsanandroid/view/LayoutInflater;->inflate(ILccsanandroid/view/ViewGroup;Z)Lccsanandroid/view/View;

    move-result-object v0

    .line 645
    .local v0, "customView":Lccsanandroid/view/View;
    goto :goto_0

    .line 646
    .end local v0    # "customView":Lccsanandroid/view/View;
    :cond_1
    const/4 v0, 0x0

    .line 649
    .restart local v0    # "customView":Lccsanandroid/view/View;
    :goto_0
    if-eqz v0, :cond_2

    const/4 v1, 0x1

    .line 650
    .local v1, "hasCustomView":Z
    :cond_2
    if-eqz v1, :cond_3

    invoke-static {v0}, Lccsanandroidx/appcompat/app/AlertController;->canTextInput(Lccsanandroid/view/View;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 651
    :cond_3
    iget-object v2, p0, Lccsanandroidx/appcompat/app/AlertController;->mWindow:Lccsanandroid/view/Window;

    const/high16 v3, 0x20000

    invoke-virtual {v2, v3, v3}, Lccsanandroid/view/Window;->setFlags(II)V

    .line 655
    :cond_4
    if-eqz v1, :cond_7

    .line 656
    iget-object v2, p0, Lccsanandroidx/appcompat/app/AlertController;->mWindow:Lccsanandroid/view/Window;

    sget v3, Lccsanandroidx/appcompat/R$id;->custom:I

    invoke-virtual {v2, v3}, Lccsanandroid/view/Window;->findViewById(I)Lccsanandroid/view/View;

    move-result-object v2

    check-cast v2, Lccsanandroid/widget/FrameLayout;

    .line 657
    .local v2, "custom":Lccsanandroid/widget/FrameLayout;
    new-instance v3, Lccsanandroid/view/ViewGroup$LayoutParams;

    const/4 v4, -0x1

    invoke-direct {v3, v4, v4}, Lccsanandroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v0, v3}, Lccsanandroid/widget/FrameLayout;->addView(Lccsanandroid/view/View;Lccsanandroid/view/ViewGroup$LayoutParams;)V

    .line 659
    iget-boolean v3, p0, Lccsanandroidx/appcompat/app/AlertController;->mViewSpacingSpecified:Z

    if-eqz v3, :cond_5

    .line 660
    iget v3, p0, Lccsanandroidx/appcompat/app/AlertController;->mViewSpacingLeft:I

    iget v4, p0, Lccsanandroidx/appcompat/app/AlertController;->mViewSpacingTop:I

    iget v5, p0, Lccsanandroidx/appcompat/app/AlertController;->mViewSpacingRight:I

    iget v6, p0, Lccsanandroidx/appcompat/app/AlertController;->mViewSpacingBottom:I

    invoke-virtual {v2, v3, v4, v5, v6}, Lccsanandroid/widget/FrameLayout;->setPadding(IIII)V

    .line 664
    :cond_5
    iget-object v3, p0, Lccsanandroidx/appcompat/app/AlertController;->mListView:Lccsanandroid/widget/ListView;

    if-eqz v3, :cond_6

    .line 665
    invoke-virtual {p1}, Lccsanandroid/view/ViewGroup;->getLayoutParams()Lccsanandroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lccsanandroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;

    const/4 v4, 0x0

    iput v4, v3, Lccsanandroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->weight:F

    .line 667
    .end local v2    # "custom":Lccsanandroid/widget/FrameLayout;
    :cond_6
    goto :goto_1

    .line 668
    :cond_7
    const/16 v2, 0x8

    invoke-virtual {p1, v2}, Lccsanandroid/view/ViewGroup;->setVisibility(I)V

    .line 670
    :goto_1
    return-void
.end method

.method private setupTitle(Lccsanandroid/view/ViewGroup;)V
    .locals 7
    .param p1, "topPanel"    # Lccsanandroid/view/ViewGroup;

    .line 673
    iget-object v0, p0, Lccsanandroidx/appcompat/app/AlertController;->mCustomTitleView:Lccsanandroid/view/View;

    const/16 v1, 0x8

    if-eqz v0, :cond_0

    .line 675
    new-instance v0, Lccsanandroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v0, v2, v3}, Lccsanandroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 678
    .local v0, "lp":Lccsanandroid/view/ViewGroup$LayoutParams;
    iget-object v2, p0, Lccsanandroidx/appcompat/app/AlertController;->mCustomTitleView:Lccsanandroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3, v0}, Lccsanandroid/view/ViewGroup;->addView(Lccsanandroid/view/View;ILccsanandroid/view/ViewGroup$LayoutParams;)V

    .line 681
    iget-object v2, p0, Lccsanandroidx/appcompat/app/AlertController;->mWindow:Lccsanandroid/view/Window;

    sget v3, Lccsanandroidx/appcompat/R$id;->title_template:I

    invoke-virtual {v2, v3}, Lccsanandroid/view/Window;->findViewById(I)Lccsanandroid/view/View;

    move-result-object v2

    .line 682
    .local v2, "titleTemplate":Lccsanandroid/view/View;
    invoke-virtual {v2, v1}, Lccsanandroid/view/View;->setVisibility(I)V

    .line 683
    .end local v0    # "lp":Lccsanandroid/view/ViewGroup$LayoutParams;
    .end local v2    # "titleTemplate":Lccsanandroid/view/View;
    goto/16 :goto_0

    .line 684
    :cond_0
    iget-object v0, p0, Lccsanandroidx/appcompat/app/AlertController;->mWindow:Lccsanandroid/view/Window;

    const v2, 0x1020006

    invoke-virtual {v0, v2}, Lccsanandroid/view/Window;->findViewById(I)Lccsanandroid/view/View;

    move-result-object v0

    check-cast v0, Lccsanandroid/widget/ImageView;

    iput-object v0, p0, Lccsanandroidx/appcompat/app/AlertController;->mIconView:Lccsanandroid/widget/ImageView;

    .line 686
    iget-object v0, p0, Lccsanandroidx/appcompat/app/AlertController;->mTitle:Ljava/lang/CharSequence;

    invoke-static {v0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 687
    .local v0, "hasTextTitle":Z
    if-eqz v0, :cond_3

    iget-boolean v2, p0, Lccsanandroidx/appcompat/app/AlertController;->mShowTitle:Z

    if-eqz v2, :cond_3

    .line 689
    iget-object v2, p0, Lccsanandroidx/appcompat/app/AlertController;->mWindow:Lccsanandroid/view/Window;

    sget v3, Lccsanandroidx/appcompat/R$id;->alertTitle:I

    invoke-virtual {v2, v3}, Lccsanandroid/view/Window;->findViewById(I)Lccsanandroid/view/View;

    move-result-object v2

    check-cast v2, Lccsanandroid/widget/TextView;

    iput-object v2, p0, Lccsanandroidx/appcompat/app/AlertController;->mTitleView:Lccsanandroid/widget/TextView;

    .line 690
    iget-object v3, p0, Lccsanandroidx/appcompat/app/AlertController;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Lccsanandroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 695
    iget v2, p0, Lccsanandroidx/appcompat/app/AlertController;->mIconId:I

    if-eqz v2, :cond_1

    .line 696
    iget-object v1, p0, Lccsanandroidx/appcompat/app/AlertController;->mIconView:Lccsanandroid/widget/ImageView;

    invoke-virtual {v1, v2}, Lccsanandroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 697
    :cond_1
    iget-object v2, p0, Lccsanandroidx/appcompat/app/AlertController;->mIcon:Lccsanandroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_2

    .line 698
    iget-object v1, p0, Lccsanandroidx/appcompat/app/AlertController;->mIconView:Lccsanandroid/widget/ImageView;

    invoke-virtual {v1, v2}, Lccsanandroid/widget/ImageView;->setImageDrawable(Lccsanandroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 702
    :cond_2
    iget-object v2, p0, Lccsanandroidx/appcompat/app/AlertController;->mTitleView:Lccsanandroid/widget/TextView;

    iget-object v3, p0, Lccsanandroidx/appcompat/app/AlertController;->mIconView:Lccsanandroid/widget/ImageView;

    invoke-virtual {v3}, Lccsanandroid/widget/ImageView;->getPaddingLeft()I

    move-result v3

    iget-object v4, p0, Lccsanandroidx/appcompat/app/AlertController;->mIconView:Lccsanandroid/widget/ImageView;

    .line 703
    invoke-virtual {v4}, Lccsanandroid/widget/ImageView;->getPaddingTop()I

    move-result v4

    iget-object v5, p0, Lccsanandroidx/appcompat/app/AlertController;->mIconView:Lccsanandroid/widget/ImageView;

    .line 704
    invoke-virtual {v5}, Lccsanandroid/widget/ImageView;->getPaddingRight()I

    move-result v5

    iget-object v6, p0, Lccsanandroidx/appcompat/app/AlertController;->mIconView:Lccsanandroid/widget/ImageView;

    .line 705
    invoke-virtual {v6}, Lccsanandroid/widget/ImageView;->getPaddingBottom()I

    move-result v6

    .line 702
    invoke-virtual {v2, v3, v4, v5, v6}, Lccsanandroid/widget/TextView;->setPadding(IIII)V

    .line 706
    iget-object v2, p0, Lccsanandroidx/appcompat/app/AlertController;->mIconView:Lccsanandroid/widget/ImageView;

    invoke-virtual {v2, v1}, Lccsanandroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 710
    :cond_3
    iget-object v2, p0, Lccsanandroidx/appcompat/app/AlertController;->mWindow:Lccsanandroid/view/Window;

    sget v3, Lccsanandroidx/appcompat/R$id;->title_template:I

    invoke-virtual {v2, v3}, Lccsanandroid/view/Window;->findViewById(I)Lccsanandroid/view/View;

    move-result-object v2

    .line 711
    .restart local v2    # "titleTemplate":Lccsanandroid/view/View;
    invoke-virtual {v2, v1}, Lccsanandroid/view/View;->setVisibility(I)V

    .line 712
    iget-object v3, p0, Lccsanandroidx/appcompat/app/AlertController;->mIconView:Lccsanandroid/widget/ImageView;

    invoke-virtual {v3, v1}, Lccsanandroid/widget/ImageView;->setVisibility(I)V

    .line 713
    invoke-virtual {p1, v1}, Lccsanandroid/view/ViewGroup;->setVisibility(I)V

    .line 716
    .end local v0    # "hasTextTitle":Z
    .end local v2    # "titleTemplate":Lccsanandroid/view/View;
    :goto_0
    return-void
.end method

.method private setupView()V
    .locals 18

    .line 467
    move-object/from16 v0, p0

    iget-object v1, v0, Lccsanandroidx/appcompat/app/AlertController;->mWindow:Lccsanandroid/view/Window;

    sget v2, Lccsanandroidx/appcompat/R$id;->parentPanel:I

    invoke-virtual {v1, v2}, Lccsanandroid/view/Window;->findViewById(I)Lccsanandroid/view/View;

    move-result-object v1

    .line 468
    .local v1, "parentPanel":Lccsanandroid/view/View;
    sget v2, Lccsanandroidx/appcompat/R$id;->topPanel:I

    invoke-virtual {v1, v2}, Lccsanandroid/view/View;->findViewById(I)Lccsanandroid/view/View;

    move-result-object v2

    .line 469
    .local v2, "defaultTopPanel":Lccsanandroid/view/View;
    sget v3, Lccsanandroidx/appcompat/R$id;->contentPanel:I

    invoke-virtual {v1, v3}, Lccsanandroid/view/View;->findViewById(I)Lccsanandroid/view/View;

    move-result-object v3

    .line 470
    .local v3, "defaultContentPanel":Lccsanandroid/view/View;
    sget v4, Lccsanandroidx/appcompat/R$id;->buttonPanel:I

    invoke-virtual {v1, v4}, Lccsanandroid/view/View;->findViewById(I)Lccsanandroid/view/View;

    move-result-object v4

    .line 474
    .local v4, "defaultButtonPanel":Lccsanandroid/view/View;
    sget v5, Lccsanandroidx/appcompat/R$id;->customPanel:I

    invoke-virtual {v1, v5}, Lccsanandroid/view/View;->findViewById(I)Lccsanandroid/view/View;

    move-result-object v5

    check-cast v5, Lccsanandroid/view/ViewGroup;

    .line 475
    .local v5, "customPanel":Lccsanandroid/view/ViewGroup;
    invoke-direct {v0, v5}, Lccsanandroidx/appcompat/app/AlertController;->setupCustomContent(Lccsanandroid/view/ViewGroup;)V

    .line 477
    sget v6, Lccsanandroidx/appcompat/R$id;->topPanel:I

    invoke-virtual {v5, v6}, Lccsanandroid/view/ViewGroup;->findViewById(I)Lccsanandroid/view/View;

    move-result-object v6

    .line 478
    .local v6, "customTopPanel":Lccsanandroid/view/View;
    sget v7, Lccsanandroidx/appcompat/R$id;->contentPanel:I

    invoke-virtual {v5, v7}, Lccsanandroid/view/ViewGroup;->findViewById(I)Lccsanandroid/view/View;

    move-result-object v7

    .line 479
    .local v7, "customContentPanel":Lccsanandroid/view/View;
    sget v8, Lccsanandroidx/appcompat/R$id;->buttonPanel:I

    invoke-virtual {v5, v8}, Lccsanandroid/view/ViewGroup;->findViewById(I)Lccsanandroid/view/View;

    move-result-object v8

    .line 482
    .local v8, "customButtonPanel":Lccsanandroid/view/View;
    invoke-direct {v0, v6, v2}, Lccsanandroidx/appcompat/app/AlertController;->resolvePanel(Lccsanandroid/view/View;Lccsanandroid/view/View;)Lccsanandroid/view/ViewGroup;

    move-result-object v9

    .line 483
    .local v9, "topPanel":Lccsanandroid/view/ViewGroup;
    invoke-direct {v0, v7, v3}, Lccsanandroidx/appcompat/app/AlertController;->resolvePanel(Lccsanandroid/view/View;Lccsanandroid/view/View;)Lccsanandroid/view/ViewGroup;

    move-result-object v10

    .line 484
    .local v10, "contentPanel":Lccsanandroid/view/ViewGroup;
    invoke-direct {v0, v8, v4}, Lccsanandroidx/appcompat/app/AlertController;->resolvePanel(Lccsanandroid/view/View;Lccsanandroid/view/View;)Lccsanandroid/view/ViewGroup;

    move-result-object v11

    .line 486
    .local v11, "buttonPanel":Lccsanandroid/view/ViewGroup;
    invoke-direct {v0, v10}, Lccsanandroidx/appcompat/app/AlertController;->setupContent(Lccsanandroid/view/ViewGroup;)V

    .line 487
    invoke-direct {v0, v11}, Lccsanandroidx/appcompat/app/AlertController;->setupButtons(Lccsanandroid/view/ViewGroup;)V

    .line 488
    invoke-direct {v0, v9}, Lccsanandroidx/appcompat/app/AlertController;->setupTitle(Lccsanandroid/view/ViewGroup;)V

    .line 490
    const/16 v12, 0x8

    if-eqz v5, :cond_0

    .line 491
    invoke-virtual {v5}, Lccsanandroid/view/ViewGroup;->getVisibility()I

    move-result v15

    if-eq v15, v12, :cond_0

    const/4 v15, 0x1

    goto :goto_0

    :cond_0
    const/4 v15, 0x0

    .line 492
    .local v15, "hasCustomPanel":Z
    :goto_0
    if-eqz v9, :cond_1

    .line 493
    invoke-virtual {v9}, Lccsanandroid/view/ViewGroup;->getVisibility()I

    move-result v13

    if-eq v13, v12, :cond_1

    const/4 v13, 0x1

    goto :goto_1

    :cond_1
    const/4 v13, 0x0

    .line 494
    .local v13, "hasTopPanel":Z
    :goto_1
    if-eqz v11, :cond_2

    .line 495
    invoke-virtual {v11}, Lccsanandroid/view/ViewGroup;->getVisibility()I

    move-result v14

    if-eq v14, v12, :cond_2

    const/4 v12, 0x1

    goto :goto_2

    :cond_2
    const/4 v12, 0x0

    .line 498
    .local v12, "hasButtonPanel":Z
    :goto_2
    if-nez v12, :cond_5

    .line 499
    if-eqz v10, :cond_4

    .line 500
    sget v14, Lccsanandroidx/appcompat/R$id;->textSpacerNoButtons:I

    invoke-virtual {v10, v14}, Lccsanandroid/view/ViewGroup;->findViewById(I)Lccsanandroid/view/View;

    move-result-object v14

    .line 501
    .local v14, "spacer":Lccsanandroid/view/View;
    if-eqz v14, :cond_3

    .line 502
    move-object/from16 v17, v1

    const/4 v1, 0x0

    .end local v1    # "parentPanel":Lccsanandroid/view/View;
    .local v17, "parentPanel":Lccsanandroid/view/View;
    invoke-virtual {v14, v1}, Lccsanandroid/view/View;->setVisibility(I)V

    goto :goto_3

    .line 501
    .end local v17    # "parentPanel":Lccsanandroid/view/View;
    .restart local v1    # "parentPanel":Lccsanandroid/view/View;
    :cond_3
    move-object/from16 v17, v1

    .end local v1    # "parentPanel":Lccsanandroid/view/View;
    .restart local v17    # "parentPanel":Lccsanandroid/view/View;
    goto :goto_3

    .line 499
    .end local v14    # "spacer":Lccsanandroid/view/View;
    .end local v17    # "parentPanel":Lccsanandroid/view/View;
    .restart local v1    # "parentPanel":Lccsanandroid/view/View;
    :cond_4
    move-object/from16 v17, v1

    .end local v1    # "parentPanel":Lccsanandroid/view/View;
    .restart local v17    # "parentPanel":Lccsanandroid/view/View;
    goto :goto_3

    .line 498
    .end local v17    # "parentPanel":Lccsanandroid/view/View;
    .restart local v1    # "parentPanel":Lccsanandroid/view/View;
    :cond_5
    move-object/from16 v17, v1

    .line 507
    .end local v1    # "parentPanel":Lccsanandroid/view/View;
    .restart local v17    # "parentPanel":Lccsanandroid/view/View;
    :goto_3
    if-eqz v13, :cond_a

    .line 509
    iget-object v1, v0, Lccsanandroidx/appcompat/app/AlertController;->mScrollView:Lccsanandroidx/core/widget/NestedScrollView;

    if-eqz v1, :cond_6

    .line 510
    const/4 v14, 0x1

    invoke-virtual {v1, v14}, Lccsanandroidx/core/widget/NestedScrollView;->setClipToPadding(Z)V

    .line 514
    :cond_6
    const/4 v1, 0x0

    .line 515
    .local v1, "divider":Lccsanandroid/view/View;
    iget-object v14, v0, Lccsanandroidx/appcompat/app/AlertController;->mMessage:Ljava/lang/CharSequence;

    if-nez v14, :cond_7

    iget-object v14, v0, Lccsanandroidx/appcompat/app/AlertController;->mListView:Lccsanandroid/widget/ListView;

    if-eqz v14, :cond_8

    .line 516
    :cond_7
    sget v14, Lccsanandroidx/appcompat/R$id;->titleDividerNoCustom:I

    invoke-virtual {v9, v14}, Lccsanandroid/view/ViewGroup;->findViewById(I)Lccsanandroid/view/View;

    move-result-object v1

    .line 519
    :cond_8
    if-eqz v1, :cond_9

    .line 520
    const/4 v14, 0x0

    invoke-virtual {v1, v14}, Lccsanandroid/view/View;->setVisibility(I)V

    .line 522
    .end local v1    # "divider":Lccsanandroid/view/View;
    :cond_9
    const/4 v14, 0x0

    goto :goto_4

    .line 523
    :cond_a
    if-eqz v10, :cond_c

    .line 524
    sget v1, Lccsanandroidx/appcompat/R$id;->textSpacerNoTitle:I

    invoke-virtual {v10, v1}, Lccsanandroid/view/ViewGroup;->findViewById(I)Lccsanandroid/view/View;

    move-result-object v1

    .line 525
    .local v1, "spacer":Lccsanandroid/view/View;
    if-eqz v1, :cond_b

    .line 526
    const/4 v14, 0x0

    invoke-virtual {v1, v14}, Lccsanandroid/view/View;->setVisibility(I)V

    goto :goto_4

    .line 525
    :cond_b
    const/4 v14, 0x0

    goto :goto_4

    .line 523
    .end local v1    # "spacer":Lccsanandroid/view/View;
    :cond_c
    const/4 v14, 0x0

    .line 531
    :goto_4
    iget-object v1, v0, Lccsanandroidx/appcompat/app/AlertController;->mListView:Lccsanandroid/widget/ListView;

    instance-of v14, v1, Lccsanandroidx/appcompat/app/AlertController$RecycleListView;

    if-eqz v14, :cond_d

    .line 532
    check-cast v1, Lccsanandroidx/appcompat/app/AlertController$RecycleListView;

    invoke-virtual {v1, v13, v12}, Lccsanandroidx/appcompat/app/AlertController$RecycleListView;->setHasDecor(ZZ)V

    .line 536
    :cond_d
    if-nez v15, :cond_12

    .line 537
    iget-object v1, v0, Lccsanandroidx/appcompat/app/AlertController;->mListView:Lccsanandroid/widget/ListView;

    if-eqz v1, :cond_e

    goto :goto_5

    :cond_e
    iget-object v1, v0, Lccsanandroidx/appcompat/app/AlertController;->mScrollView:Lccsanandroidx/core/widget/NestedScrollView;

    .line 538
    .local v1, "content":Lccsanandroid/view/View;
    :goto_5
    if-eqz v1, :cond_11

    .line 539
    if-eqz v13, :cond_f

    const/4 v14, 0x1

    goto :goto_6

    :cond_f
    const/4 v14, 0x0

    .line 540
    :goto_6
    if-eqz v12, :cond_10

    const/16 v16, 0x2

    goto :goto_7

    :cond_10
    const/16 v16, 0x0

    :goto_7
    or-int v14, v14, v16

    .line 541
    .local v14, "indicators":I
    move-object/from16 v16, v2

    .end local v2    # "defaultTopPanel":Lccsanandroid/view/View;
    .local v16, "defaultTopPanel":Lccsanandroid/view/View;
    const/4 v2, 0x3

    invoke-direct {v0, v10, v1, v14, v2}, Lccsanandroidx/appcompat/app/AlertController;->setScrollIndicators(Lccsanandroid/view/ViewGroup;Lccsanandroid/view/View;II)V

    goto :goto_8

    .line 538
    .end local v14    # "indicators":I
    .end local v16    # "defaultTopPanel":Lccsanandroid/view/View;
    .restart local v2    # "defaultTopPanel":Lccsanandroid/view/View;
    :cond_11
    move-object/from16 v16, v2

    .end local v2    # "defaultTopPanel":Lccsanandroid/view/View;
    .restart local v16    # "defaultTopPanel":Lccsanandroid/view/View;
    goto :goto_8

    .line 536
    .end local v1    # "content":Lccsanandroid/view/View;
    .end local v16    # "defaultTopPanel":Lccsanandroid/view/View;
    .restart local v2    # "defaultTopPanel":Lccsanandroid/view/View;
    :cond_12
    move-object/from16 v16, v2

    .line 546
    .end local v2    # "defaultTopPanel":Lccsanandroid/view/View;
    .restart local v16    # "defaultTopPanel":Lccsanandroid/view/View;
    :goto_8
    iget-object v1, v0, Lccsanandroidx/appcompat/app/AlertController;->mListView:Lccsanandroid/widget/ListView;

    .line 547
    .local v1, "listView":Lccsanandroid/widget/ListView;
    if-eqz v1, :cond_13

    iget-object v2, v0, Lccsanandroidx/appcompat/app/AlertController;->mAdapter:Lccsanandroid/widget/ListAdapter;

    if-eqz v2, :cond_13

    .line 548
    invoke-virtual {v1, v2}, Lccsanandroid/widget/ListView;->setAdapter(Lccsanandroid/widget/ListAdapter;)V

    .line 549
    iget v2, v0, Lccsanandroidx/appcompat/app/AlertController;->mCheckedItem:I

    .line 550
    .local v2, "checkedItem":I
    const/4 v14, -0x1

    if-le v2, v14, :cond_13

    .line 551
    const/4 v14, 0x1

    invoke-virtual {v1, v2, v14}, Lccsanandroid/widget/ListView;->setItemChecked(IZ)V

    .line 552
    invoke-virtual {v1, v2}, Lccsanandroid/widget/ListView;->setSelection(I)V

    .line 555
    .end local v2    # "checkedItem":I
    :cond_13
    return-void
.end method

.method private static shouldCenterSingleButton(Lccsanandroid/content/Context;)Z
    .locals 4
    .param p0, "context"    # Lccsanandroid/content/Context;

    .line 177
    new-instance v0, Lccsanandroid/util/TypedValue;

    invoke-direct {v0}, Lccsanandroid/util/TypedValue;-><init>()V

    .line 178
    .local v0, "outValue":Lccsanandroid/util/TypedValue;
    invoke-virtual {p0}, Lccsanandroid/content/Context;->getTheme()Lccsanandroid/content/res/Resources$Theme;

    move-result-object v1

    sget v2, Lccsanandroidx/appcompat/R$attr;->alertDialogCenterButtons:I

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Lccsanandroid/content/res/Resources$Theme;->resolveAttribute(ILccsanandroid/util/TypedValue;Z)Z

    .line 179
    iget v1, v0, Lccsanandroid/util/TypedValue;->data:I

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    return v3
.end method


# virtual methods
.method public getButton(I)Lccsanandroid/widget/Button;
    .locals 1
    .param p1, "whichButton"    # I

    .line 408
    packed-switch p1, :pswitch_data_0

    .line 416
    const/4 v0, 0x0

    return-object v0

    .line 410
    :pswitch_0
    iget-object v0, p0, Lccsanandroidx/appcompat/app/AlertController;->mButtonPositive:Lccsanandroid/widget/Button;

    return-object v0

    .line 412
    :pswitch_1
    iget-object v0, p0, Lccsanandroidx/appcompat/app/AlertController;->mButtonNegative:Lccsanandroid/widget/Button;

    return-object v0

    .line 414
    :pswitch_2
    iget-object v0, p0, Lccsanandroidx/appcompat/app/AlertController;->mButtonNeutral:Lccsanandroid/widget/Button;

    return-object v0

    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getIconAttributeResId(I)I
    .locals 3
    .param p1, "attrId"    # I

    .line 398
    new-instance v0, Lccsanandroid/util/TypedValue;

    invoke-direct {v0}, Lccsanandroid/util/TypedValue;-><init>()V

    .line 399
    .local v0, "out":Lccsanandroid/util/TypedValue;
    iget-object v1, p0, Lccsanandroidx/appcompat/app/AlertController;->mContext:Lccsanandroid/content/Context;

    invoke-virtual {v1}, Lccsanandroid/content/Context;->getTheme()Lccsanandroid/content/res/Resources$Theme;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v0, v2}, Lccsanandroid/content/res/Resources$Theme;->resolveAttribute(ILccsanandroid/util/TypedValue;Z)Z

    .line 400
    iget v1, v0, Lccsanandroid/util/TypedValue;->resourceId:I

    return v1
.end method

.method public getListView()Lccsanandroid/widget/ListView;
    .locals 1

    .line 404
    iget-object v0, p0, Lccsanandroidx/appcompat/app/AlertController;->mListView:Lccsanandroid/widget/ListView;

    return-object v0
.end method

.method public installContent()V
    .locals 2

    .line 231
    invoke-direct {p0}, Lccsanandroidx/appcompat/app/AlertController;->selectContentView()I

    move-result v0

    .line 232
    .local v0, "contentView":I
    iget-object v1, p0, Lccsanandroidx/appcompat/app/AlertController;->mDialog:Lccsanandroidx/appcompat/app/AppCompatDialog;

    invoke-virtual {v1, v0}, Lccsanandroidx/appcompat/app/AppCompatDialog;->setContentView(I)V

    .line 233
    invoke-direct {p0}, Lccsanandroidx/appcompat/app/AlertController;->setupView()V

    .line 234
    return-void
.end method

.method public onKeyDown(ILccsanandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Lccsanandroid/view/KeyEvent;

    .line 422
    iget-object v0, p0, Lccsanandroidx/appcompat/app/AlertController;->mScrollView:Lccsanandroidx/core/widget/NestedScrollView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p2}, Lccsanandroidx/core/widget/NestedScrollView;->executeKeyEvent(Lccsanandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onKeyUp(ILccsanandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Lccsanandroid/view/KeyEvent;

    .line 427
    iget-object v0, p0, Lccsanandroidx/appcompat/app/AlertController;->mScrollView:Lccsanandroidx/core/widget/NestedScrollView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p2}, Lccsanandroidx/core/widget/NestedScrollView;->executeKeyEvent(Lccsanandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setButton(ILjava/lang/CharSequence;Lccsanandroid/content/DialogInterface$OnClickListener;Lccsanandroid/os/Message;Lccsanandroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "whichButton"    # I
    .param p2, "text"    # Ljava/lang/CharSequence;
    .param p3, "listener"    # Lccsanandroid/content/DialogInterface$OnClickListener;
    .param p4, "msg"    # Lccsanandroid/os/Message;
    .param p5, "icon"    # Lccsanandroid/graphics/drawable/Drawable;

    .line 323
    if-nez p4, :cond_0

    if-eqz p3, :cond_0

    .line 324
    iget-object v0, p0, Lccsanandroidx/appcompat/app/AlertController;->mHandler:Lccsanandroid/os/Handler;

    invoke-virtual {v0, p1, p3}, Lccsanandroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Lccsanandroid/os/Message;

    move-result-object p4

    .line 327
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 348
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Button does not exist"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 330
    :pswitch_0
    iput-object p2, p0, Lccsanandroidx/appcompat/app/AlertController;->mButtonPositiveText:Ljava/lang/CharSequence;

    .line 331
    iput-object p4, p0, Lccsanandroidx/appcompat/app/AlertController;->mButtonPositiveMessage:Lccsanandroid/os/Message;

    .line 332
    iput-object p5, p0, Lccsanandroidx/appcompat/app/AlertController;->mButtonPositiveIcon:Lccsanandroid/graphics/drawable/Drawable;

    .line 333
    goto :goto_0

    .line 336
    :pswitch_1
    iput-object p2, p0, Lccsanandroidx/appcompat/app/AlertController;->mButtonNegativeText:Ljava/lang/CharSequence;

    .line 337
    iput-object p4, p0, Lccsanandroidx/appcompat/app/AlertController;->mButtonNegativeMessage:Lccsanandroid/os/Message;

    .line 338
    iput-object p5, p0, Lccsanandroidx/appcompat/app/AlertController;->mButtonNegativeIcon:Lccsanandroid/graphics/drawable/Drawable;

    .line 339
    goto :goto_0

    .line 342
    :pswitch_2
    iput-object p2, p0, Lccsanandroidx/appcompat/app/AlertController;->mButtonNeutralText:Ljava/lang/CharSequence;

    .line 343
    iput-object p4, p0, Lccsanandroidx/appcompat/app/AlertController;->mButtonNeutralMessage:Lccsanandroid/os/Message;

    .line 344
    iput-object p5, p0, Lccsanandroidx/appcompat/app/AlertController;->mButtonNeutralIcon:Lccsanandroid/graphics/drawable/Drawable;

    .line 345
    nop

    .line 350
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setButtonPanelLayoutHint(I)V
    .locals 0
    .param p1, "layoutHint"    # I

    .line 303
    iput p1, p0, Lccsanandroidx/appcompat/app/AlertController;->mButtonPanelLayoutHint:I

    .line 304
    return-void
.end method

.method public setCustomTitle(Lccsanandroid/view/View;)V
    .locals 0
    .param p1, "customTitleView"    # Lccsanandroid/view/View;

    .line 257
    iput-object p1, p0, Lccsanandroidx/appcompat/app/AlertController;->mCustomTitleView:Lccsanandroid/view/View;

    .line 258
    return-void
.end method

.method public setIcon(I)V
    .locals 2
    .param p1, "resId"    # I

    .line 359
    const/4 v0, 0x0

    iput-object v0, p0, Lccsanandroidx/appcompat/app/AlertController;->mIcon:Lccsanandroid/graphics/drawable/Drawable;

    .line 360
    iput p1, p0, Lccsanandroidx/appcompat/app/AlertController;->mIconId:I

    .line 362
    iget-object v0, p0, Lccsanandroidx/appcompat/app/AlertController;->mIconView:Lccsanandroid/widget/ImageView;

    if-eqz v0, :cond_1

    .line 363
    if-eqz p1, :cond_0

    .line 364
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lccsanandroid/widget/ImageView;->setVisibility(I)V

    .line 365
    iget-object v0, p0, Lccsanandroidx/appcompat/app/AlertController;->mIconView:Lccsanandroid/widget/ImageView;

    iget v1, p0, Lccsanandroidx/appcompat/app/AlertController;->mIconId:I

    invoke-virtual {v0, v1}, Lccsanandroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 367
    :cond_0
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lccsanandroid/widget/ImageView;->setVisibility(I)V

    .line 370
    :cond_1
    :goto_0
    return-void
.end method

.method public setIcon(Lccsanandroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "icon"    # Lccsanandroid/graphics/drawable/Drawable;

    .line 378
    iput-object p1, p0, Lccsanandroidx/appcompat/app/AlertController;->mIcon:Lccsanandroid/graphics/drawable/Drawable;

    .line 379
    const/4 v0, 0x0

    iput v0, p0, Lccsanandroidx/appcompat/app/AlertController;->mIconId:I

    .line 381
    iget-object v1, p0, Lccsanandroidx/appcompat/app/AlertController;->mIconView:Lccsanandroid/widget/ImageView;

    if-eqz v1, :cond_1

    .line 382
    if-eqz p1, :cond_0

    .line 383
    invoke-virtual {v1, v0}, Lccsanandroid/widget/ImageView;->setVisibility(I)V

    .line 384
    iget-object v0, p0, Lccsanandroidx/appcompat/app/AlertController;->mIconView:Lccsanandroid/widget/ImageView;

    invoke-virtual {v0, p1}, Lccsanandroid/widget/ImageView;->setImageDrawable(Lccsanandroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 386
    :cond_0
    const/16 v0, 0x8

    invoke-virtual {v1, v0}, Lccsanandroid/widget/ImageView;->setVisibility(I)V

    .line 389
    :cond_1
    :goto_0
    return-void
.end method

.method public setMessage(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/CharSequence;

    .line 261
    iput-object p1, p0, Lccsanandroidx/appcompat/app/AlertController;->mMessage:Ljava/lang/CharSequence;

    .line 262
    iget-object v0, p0, Lccsanandroidx/appcompat/app/AlertController;->mMessageView:Lccsanandroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 263
    invoke-virtual {v0, p1}, Lccsanandroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 265
    :cond_0
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;

    .line 247
    iput-object p1, p0, Lccsanandroidx/appcompat/app/AlertController;->mTitle:Ljava/lang/CharSequence;

    .line 248
    iget-object v0, p0, Lccsanandroidx/appcompat/app/AlertController;->mTitleView:Lccsanandroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 249
    invoke-virtual {v0, p1}, Lccsanandroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 251
    :cond_0
    return-void
.end method

.method public setView(I)V
    .locals 1
    .param p1, "layoutResId"    # I

    .line 271
    const/4 v0, 0x0

    iput-object v0, p0, Lccsanandroidx/appcompat/app/AlertController;->mView:Lccsanandroid/view/View;

    .line 272
    iput p1, p0, Lccsanandroidx/appcompat/app/AlertController;->mViewLayoutResId:I

    .line 273
    const/4 v0, 0x0

    iput-boolean v0, p0, Lccsanandroidx/appcompat/app/AlertController;->mViewSpacingSpecified:Z

    .line 274
    return-void
.end method

.method public setView(Lccsanandroid/view/View;)V
    .locals 1
    .param p1, "view"    # Lccsanandroid/view/View;

    .line 280
    iput-object p1, p0, Lccsanandroidx/appcompat/app/AlertController;->mView:Lccsanandroid/view/View;

    .line 281
    const/4 v0, 0x0

    iput v0, p0, Lccsanandroidx/appcompat/app/AlertController;->mViewLayoutResId:I

    .line 282
    iput-boolean v0, p0, Lccsanandroidx/appcompat/app/AlertController;->mViewSpacingSpecified:Z

    .line 283
    return-void
.end method

.method public setView(Lccsanandroid/view/View;IIII)V
    .locals 1
    .param p1, "view"    # Lccsanandroid/view/View;
    .param p2, "viewSpacingLeft"    # I
    .param p3, "viewSpacingTop"    # I
    .param p4, "viewSpacingRight"    # I
    .param p5, "viewSpacingBottom"    # I

    .line 290
    iput-object p1, p0, Lccsanandroidx/appcompat/app/AlertController;->mView:Lccsanandroid/view/View;

    .line 291
    const/4 v0, 0x0

    iput v0, p0, Lccsanandroidx/appcompat/app/AlertController;->mViewLayoutResId:I

    .line 292
    const/4 v0, 0x1

    iput-boolean v0, p0, Lccsanandroidx/appcompat/app/AlertController;->mViewSpacingSpecified:Z

    .line 293
    iput p2, p0, Lccsanandroidx/appcompat/app/AlertController;->mViewSpacingLeft:I

    .line 294
    iput p3, p0, Lccsanandroidx/appcompat/app/AlertController;->mViewSpacingTop:I

    .line 295
    iput p4, p0, Lccsanandroidx/appcompat/app/AlertController;->mViewSpacingRight:I

    .line 296
    iput p5, p0, Lccsanandroidx/appcompat/app/AlertController;->mViewSpacingBottom:I

    .line 297
    return-void
.end method
