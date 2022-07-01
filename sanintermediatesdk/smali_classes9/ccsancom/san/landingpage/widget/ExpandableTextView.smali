.class public Lccsancom/san/landingpage/widget/ExpandableTextView;
.super Lccsanandroid/widget/LinearLayout;
.source ""

# interfaces
.implements Lccsanandroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsancom/san/landingpage/widget/ExpandableTextView$TextViewExpandController;,
        Lccsancom/san/landingpage/widget/ExpandableTextView$ImageButtonExpandController;,
        Lccsancom/san/landingpage/widget/ExpandableTextView$ExpandIndicatorController;,
        Lccsancom/san/landingpage/widget/ExpandableTextView$OnExpandStateChangeListener;,
        Lccsancom/san/landingpage/widget/ExpandableTextView$ExpandCollapseAnimation;
    }
.end annotation


# static fields
.field private static final DEFAULT_ANIM_ALPHA_START:F = 0.7f

.field private static final DEFAULT_ANIM_DURATION:I = 0x12c

.field private static final DEFAULT_TOGGLE_TYPE:I = 0x0

.field private static final EXPAND_INDICATOR_IMAGE_BUTTON:I = 0x0

.field private static final EXPAND_INDICATOR_TEXT_VIEW:I = 0x1

.field private static IncentiveDownloadUtils:I = 0x0

.field private static final MAX_COLLAPSED_LINES:I = 0x8

.field private static removeDownloadListener:I


# instance fields
.field private mAnimAlphaStart:F

.field private mAnimating:Z

.field private mAnimationDuration:I

.field private mCanCollapse:Z

.field private mCollapsed:Z

.field private mCollapsedHeight:I

.field private mCollapsedStatus:Lccsanandroid/util/SparseBooleanArray;

.field private mExpandCollapseToggleId:I

.field private mExpandIndicatorController:Lccsancom/san/landingpage/widget/ExpandableTextView$ExpandIndicatorController;

.field private mExpandToggleOnTextClick:Z

.field private mExpandableTextId:I

.field private mListener:Lccsancom/san/landingpage/widget/ExpandableTextView$OnExpandStateChangeListener;

.field private mMarginBetweenTxtAndBottom:I

.field private mMaxCollapsedLines:I

.field private mPosition:I

.field private mRelayout:Z

.field private mTextHeightWithMaxLines:I

.field protected mToggleView:Lccsanandroid/widget/TextView;

.field protected mTv:Lccsanandroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lccsancom/san/landingpage/widget/ExpandableTextView;->IncentiveDownloadUtils:I

    const/4 v0, 0x1

    sput v0, Lccsancom/san/landingpage/widget/ExpandableTextView;->removeDownloadListener:I

    return-void
.end method

.method public constructor <init>(Lccsanandroid/content/Context;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lccsancom/san/landingpage/widget/ExpandableTextView;-><init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Lccsanandroid/widget/LinearLayout;-><init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;)V

    .line 3
    const/4 p1, 0x1

    iput-boolean p1, p0, Lccsancom/san/landingpage/widget/ExpandableTextView;->mCollapsed:Z

    .line 22
    const-string p1, "san__expandable_text"

    invoke-static {p1}, Lccsansan/bw/shouldTryHandlingAction;->deleteDownItem(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lccsancom/san/landingpage/widget/ExpandableTextView;->mExpandableTextId:I

    .line 25
    const-string p1, "san__expand_collapse"

    invoke-static {p1}, Lccsansan/bw/shouldTryHandlingAction;->deleteDownItem(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lccsancom/san/landingpage/widget/ExpandableTextView;->mExpandCollapseToggleId:I

    .line 44
    invoke-direct {p0, p2}, Lccsancom/san/landingpage/widget/ExpandableTextView;->init(Lccsanandroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;I)V
    .locals 0

    .line 45
    invoke-direct {p0, p1, p2, p3}, Lccsanandroid/widget/LinearLayout;-><init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;I)V

    .line 46
    const/4 p1, 0x1

    iput-boolean p1, p0, Lccsancom/san/landingpage/widget/ExpandableTextView;->mCollapsed:Z

    .line 65
    const-string p1, "san__expandable_text"

    invoke-static {p1}, Lccsansan/bw/shouldTryHandlingAction;->deleteDownItem(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lccsancom/san/landingpage/widget/ExpandableTextView;->mExpandableTextId:I

    .line 68
    const-string p1, "san__expand_collapse"

    invoke-static {p1}, Lccsansan/bw/shouldTryHandlingAction;->deleteDownItem(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lccsancom/san/landingpage/widget/ExpandableTextView;->mExpandCollapseToggleId:I

    .line 93
    invoke-direct {p0, p2}, Lccsancom/san/landingpage/widget/ExpandableTextView;->init(Lccsanandroid/util/AttributeSet;)V

    return-void
.end method

.method static synthetic access$000(Lccsancom/san/landingpage/widget/ExpandableTextView;)F
    .locals 4
    .param p0, "x0"    # Lccsancom/san/landingpage/widget/ExpandableTextView;

    .line 1
    .end local p0    # "x0":Lccsancom/san/landingpage/widget/ExpandableTextView;
    sget v0, Lccsancom/san/landingpage/widget/ExpandableTextView;->removeDownloadListener:I

    or-int/lit8 v1, v0, 0xb

    const/4 v2, 0x1

    shl-int/2addr v1, v2

    xor-int/lit8 v3, v0, 0xb

    sub-int/2addr v1, v3

    rem-int/lit16 v3, v1, 0x80

    sput v3, Lccsancom/san/landingpage/widget/ExpandableTextView;->IncentiveDownloadUtils:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    :goto_0
    iget p0, p0, Lccsancom/san/landingpage/widget/ExpandableTextView;->mAnimAlphaStart:F

    packed-switch v1, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    const/4 v1, 0x0

    :try_start_0
    array-length v1, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    throw p0

    :goto_1
    or-int/lit8 v1, v0, 0x79

    shl-int/2addr v1, v2

    xor-int/lit8 v0, v0, 0x79

    sub-int/2addr v1, v0

    rem-int/lit16 v0, v1, 0x80

    sput v0, Lccsancom/san/landingpage/widget/ExpandableTextView;->IncentiveDownloadUtils:I

    rem-int/lit8 v1, v1, 0x2

    return p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic access$100(Lccsanandroid/view/View;F)V
    .locals 4
    .param p0, "x0"    # Lccsanandroid/view/View;
    .param p1, "x1"    # F

    .line 1
    .end local p0    # "x0":Lccsanandroid/view/View;
    .end local p1    # "x1":F
    sget v0, Lccsancom/san/landingpage/widget/ExpandableTextView;->removeDownloadListener:I

    xor-int/lit8 v1, v0, 0x1

    and-int/lit8 v2, v0, 0x1

    or-int/2addr v1, v2

    const/4 v2, 0x1

    shl-int/2addr v1, v2

    and-int/lit8 v3, v0, -0x2

    xor-int/lit8 v0, v0, -0x1

    and-int/2addr v0, v2

    or-int/2addr v0, v3

    sub-int/2addr v1, v0

    rem-int/lit16 v0, v1, 0x80

    sput v0, Lccsancom/san/landingpage/widget/ExpandableTextView;->IncentiveDownloadUtils:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    const/4 v1, 0x0

    invoke-static {p0, p1}, Lccsancom/san/landingpage/widget/ExpandableTextView;->applyAlphaAnimation(Lccsanandroid/view/View;F)V

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    :try_start_0
    array-length p0, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    throw p0

    :goto_1
    sget p0, Lccsancom/san/landingpage/widget/ExpandableTextView;->removeDownloadListener:I

    or-int/lit8 p1, p0, 0x42

    shl-int/2addr p1, v2

    xor-int/lit8 p0, p0, 0x42

    sub-int/2addr p1, p0

    and-int/lit8 p0, p1, -0x1

    or-int/lit8 p1, p1, -0x1

    add-int/2addr p0, p1

    rem-int/lit16 p1, p0, 0x80

    sput p1, Lccsancom/san/landingpage/widget/ExpandableTextView;->IncentiveDownloadUtils:I

    rem-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_1

    const/16 p0, 0x2e

    goto :goto_2

    :cond_1
    const/16 p0, 0x56

    :goto_2
    packed-switch p0, :pswitch_data_1

    return-void

    :pswitch_1
    :try_start_1
    invoke-super {v1}, Ljava/lang/Object;->hashCode()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-void

    :catchall_1
    move-exception p0

    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x2e
        :pswitch_1
    .end packed-switch
.end method

.method static synthetic access$202(Lccsancom/san/landingpage/widget/ExpandableTextView;Z)Z
    .locals 3
    .param p0, "x0"    # Lccsancom/san/landingpage/widget/ExpandableTextView;
    .param p1, "x1"    # Z

    .line 1
    .end local p0    # "x0":Lccsancom/san/landingpage/widget/ExpandableTextView;
    .end local p1    # "x1":Z
    sget v0, Lccsancom/san/landingpage/widget/ExpandableTextView;->removeDownloadListener:I

    and-int/lit8 v1, v0, 0x1

    xor-int/lit8 v0, v0, 0x1

    or-int/2addr v0, v1

    neg-int v0, v0

    neg-int v0, v0

    or-int v2, v1, v0

    shl-int/lit8 v2, v2, 0x1

    xor-int/2addr v0, v1

    sub-int/2addr v2, v0

    rem-int/lit16 v0, v2, 0x80

    sput v0, Lccsancom/san/landingpage/widget/ExpandableTextView;->IncentiveDownloadUtils:I

    rem-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_0

    :cond_0
    iput-boolean p1, p0, Lccsancom/san/landingpage/widget/ExpandableTextView;->mAnimating:Z

    add-int/lit8 v0, v0, 0x72

    add-int/lit8 v0, v0, -0x1

    rem-int/lit16 p0, v0, 0x80

    sput p0, Lccsancom/san/landingpage/widget/ExpandableTextView;->removeDownloadListener:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_1

    const/16 p0, 0x59

    goto :goto_0

    :cond_1
    const/16 p0, 0x25

    :goto_0
    packed-switch p0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    return p1

    :goto_1
    const/4 p0, 0x0

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->hashCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p1

    :catchall_0
    move-exception p0

    throw p0

    :pswitch_data_0
    .packed-switch 0x25
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic access$300(Lccsancom/san/landingpage/widget/ExpandableTextView;)Lccsancom/san/landingpage/widget/ExpandableTextView$OnExpandStateChangeListener;
    .locals 4
    .param p0, "x0"    # Lccsancom/san/landingpage/widget/ExpandableTextView;

    .line 1
    .end local p0    # "x0":Lccsancom/san/landingpage/widget/ExpandableTextView;
    sget v0, Lccsancom/san/landingpage/widget/ExpandableTextView;->removeDownloadListener:I

    add-int/lit8 v1, v0, 0x4e

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    rem-int/lit16 v3, v1, 0x80

    sput v3, Lccsancom/san/landingpage/widget/ExpandableTextView;->IncentiveDownloadUtils:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_0

    const/16 v1, 0x5d

    goto :goto_0

    :cond_0
    const/16 v1, 0x41

    :goto_0
    const/4 v3, 0x0

    iget-object p0, p0, Lccsancom/san/landingpage/widget/ExpandableTextView;->mListener:Lccsancom/san/landingpage/widget/ExpandableTextView$OnExpandStateChangeListener;

    packed-switch v1, :pswitch_data_0

    const/16 v1, 0x40

    :try_start_0
    div-int/2addr v1, v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :pswitch_0
    and-int/lit8 v1, v0, 0x4f

    or-int/lit8 v0, v0, 0x4f

    add-int/2addr v1, v0

    rem-int/lit16 v0, v1, 0x80

    sput v0, Lccsancom/san/landingpage/widget/ExpandableTextView;->IncentiveDownloadUtils:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    const/4 v2, 0x0

    :cond_1
    packed-switch v2, :pswitch_data_1

    return-object p0

    :pswitch_1
    const/16 v0, 0x3b

    :try_start_1
    div-int/2addr v0, v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    throw p0

    :catchall_1
    move-exception p0

    throw p0

    :pswitch_data_0
    .packed-switch 0x41
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch
.end method

.method static synthetic access$400(Lccsancom/san/landingpage/widget/ExpandableTextView;)Z
    .locals 5
    .param p0, "x0"    # Lccsancom/san/landingpage/widget/ExpandableTextView;

    .line 1
    .end local p0    # "x0":Lccsancom/san/landingpage/widget/ExpandableTextView;
    sget v0, Lccsancom/san/landingpage/widget/ExpandableTextView;->IncentiveDownloadUtils:I

    add-int/lit8 v1, v0, 0x52

    const/4 v2, 0x0

    sub-int/2addr v1, v2

    const/4 v3, 0x1

    sub-int/2addr v1, v3

    rem-int/lit16 v4, v1, 0x80

    sput v4, Lccsancom/san/landingpage/widget/ExpandableTextView;->removeDownloadListener:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const/4 v4, 0x0

    iget-boolean p0, p0, Lccsancom/san/landingpage/widget/ExpandableTextView;->mCollapsed:Z

    packed-switch v1, :pswitch_data_0

    :try_start_0
    array-length v1, v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :pswitch_0
    xor-int/lit8 v1, v0, 0x3b

    and-int/lit8 v0, v0, 0x3b

    or-int/2addr v0, v1

    shl-int/2addr v0, v3

    neg-int v1, v1

    xor-int/lit8 v1, v1, -0x1

    sub-int/2addr v0, v1

    sub-int/2addr v0, v3

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/san/landingpage/widget/ExpandableTextView;->removeDownloadListener:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_1

    const/4 v2, 0x1

    :cond_1
    packed-switch v2, :pswitch_data_1

    goto :goto_1

    :pswitch_1
    return p0

    :goto_1
    :try_start_1
    invoke-super {v4}, Ljava/lang/Object;->hashCode()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return p0

    :catchall_0
    move-exception p0

    throw p0

    :catchall_1
    move-exception p0

    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch
.end method

.method static synthetic access$500(Lccsancom/san/landingpage/widget/ExpandableTextView;)I
    .locals 4
    .param p0, "x0"    # Lccsancom/san/landingpage/widget/ExpandableTextView;

    .line 1
    .end local p0    # "x0":Lccsancom/san/landingpage/widget/ExpandableTextView;
    sget v0, Lccsancom/san/landingpage/widget/ExpandableTextView;->removeDownloadListener:I

    and-int/lit8 v1, v0, 0x1d

    xor-int/lit8 v2, v0, 0x1d

    or-int/2addr v2, v1

    neg-int v2, v2

    neg-int v2, v2

    xor-int v3, v1, v2

    and-int/2addr v1, v2

    shl-int/lit8 v1, v1, 0x1

    add-int/2addr v3, v1

    rem-int/lit16 v1, v3, 0x80

    sput v1, Lccsancom/san/landingpage/widget/ExpandableTextView;->IncentiveDownloadUtils:I

    rem-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_0

    :cond_0
    iget p0, p0, Lccsancom/san/landingpage/widget/ExpandableTextView;->mMarginBetweenTxtAndBottom:I

    and-int/lit8 v1, v0, 0x27

    xor-int/lit8 v0, v0, 0x27

    or-int/2addr v0, v1

    xor-int v2, v1, v0

    and-int/2addr v0, v1

    shl-int/lit8 v0, v0, 0x1

    add-int/2addr v2, v0

    rem-int/lit16 v0, v2, 0x80

    sput v0, Lccsancom/san/landingpage/widget/ExpandableTextView;->IncentiveDownloadUtils:I

    rem-int/lit8 v2, v2, 0x2

    return p0
.end method

.method static synthetic access$502(Lccsancom/san/landingpage/widget/ExpandableTextView;I)I
    .locals 2
    .param p0, "x0"    # Lccsancom/san/landingpage/widget/ExpandableTextView;
    .param p1, "x1"    # I

    .line 1
    .end local p0    # "x0":Lccsancom/san/landingpage/widget/ExpandableTextView;
    .end local p1    # "x1":I
    sget v0, Lccsancom/san/landingpage/widget/ExpandableTextView;->removeDownloadListener:I

    add-int/lit8 v0, v0, 0x7b

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/san/landingpage/widget/ExpandableTextView;->IncentiveDownloadUtils:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    :cond_0
    iput p1, p0, Lccsancom/san/landingpage/widget/ExpandableTextView;->mMarginBetweenTxtAndBottom:I

    and-int/lit8 p0, v1, 0x13

    xor-int/lit8 v0, p0, -0x1

    or-int/lit8 v1, v1, 0x13

    and-int/2addr v0, v1

    shl-int/lit8 p0, p0, 0x1

    neg-int p0, p0

    neg-int p0, p0

    xor-int v1, v0, p0

    and-int/2addr p0, v0

    shl-int/lit8 p0, p0, 0x1

    add-int/2addr v1, p0

    rem-int/lit16 p0, v1, 0x80

    sput p0, Lccsancom/san/landingpage/widget/ExpandableTextView;->removeDownloadListener:I

    rem-int/lit8 v1, v1, 0x2

    return p1
.end method

.method static synthetic access$600(Lccsancom/san/landingpage/widget/ExpandableTextView;)I
    .locals 4
    .param p0, "x0"    # Lccsancom/san/landingpage/widget/ExpandableTextView;

    .line 1
    .end local p0    # "x0":Lccsancom/san/landingpage/widget/ExpandableTextView;
    sget v0, Lccsancom/san/landingpage/widget/ExpandableTextView;->IncentiveDownloadUtils:I

    const/16 v1, 0x69

    and-int/lit8 v2, v0, -0x6a

    xor-int/lit8 v3, v0, -0x1

    and-int/2addr v3, v1

    or-int/2addr v2, v3

    and-int/2addr v0, v1

    const/4 v1, 0x1

    shl-int/2addr v0, v1

    neg-int v0, v0

    neg-int v0, v0

    or-int v3, v2, v0

    shl-int/2addr v3, v1

    xor-int/2addr v0, v2

    sub-int/2addr v3, v0

    rem-int/lit16 v0, v3, 0x80

    sput v0, Lccsancom/san/landingpage/widget/ExpandableTextView;->removeDownloadListener:I

    rem-int/lit8 v3, v3, 0x2

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iget p0, p0, Lccsancom/san/landingpage/widget/ExpandableTextView;->mAnimationDuration:I

    packed-switch v1, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    const/4 v0, 0x0

    :try_start_0
    invoke-super {v0}, Ljava/lang/Object;->hashCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    throw p0

    :goto_1
    return p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private static applyAlphaAnimation(Lccsanandroid/view/View;F)V
    .locals 6
    .param p0, "view"    # Lccsanandroid/view/View;
    .param p1, "alpha"    # F

    .line 8
    .end local p0    # "view":Lccsanandroid/view/View;
    .end local p1    # "alpha":F
    sget v0, Lccsancom/san/landingpage/widget/ExpandableTextView;->IncentiveDownloadUtils:I

    xor-int/lit8 v1, v0, 0x79

    and-int/lit8 v0, v0, 0x79

    or-int/2addr v0, v1

    const/4 v2, 0x1

    shl-int/2addr v0, v2

    neg-int v1, v1

    xor-int/lit8 v1, v1, -0x1

    sub-int/2addr v0, v1

    sub-int/2addr v0, v2

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/san/landingpage/widget/ExpandableTextView;->removeDownloadListener:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1
    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/4 v3, 0x0

    packed-switch v0, :pswitch_data_0

    invoke-static {}, Lccsancom/san/landingpage/widget/ExpandableTextView;->isPostHoneycomb()Z

    move-result v0

    goto :goto_3

    :pswitch_0
    invoke-static {}, Lccsancom/san/landingpage/widget/ExpandableTextView;->isPostHoneycomb()Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x61

    goto :goto_1

    :cond_1
    const/16 v0, 0x2e

    :goto_1
    packed-switch v0, :pswitch_data_1

    :goto_2
    goto :goto_6

    :goto_3
    :try_start_0
    array-length v4, v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v0, :cond_2

    const/16 v0, 0x36

    goto :goto_4

    :cond_2
    const/16 v0, 0x3b

    :goto_4
    packed-switch v0, :pswitch_data_2

    goto :goto_2

    .line 2
    :pswitch_1
    invoke-virtual {p0, p1}, Lccsanandroid/view/View;->setAlpha(F)V

    .line 1
    sget p0, Lccsancom/san/landingpage/widget/ExpandableTextView;->IncentiveDownloadUtils:I

    add-int/lit8 p0, p0, 0x46

    xor-int/lit8 p1, p0, -0x1

    and-int/lit8 p0, p0, -0x1

    shl-int/2addr p0, v2

    add-int/2addr p1, p0

    rem-int/lit16 p0, p1, 0x80

    sput p0, Lccsancom/san/landingpage/widget/ExpandableTextView;->removeDownloadListener:I

    rem-int/lit8 p1, p1, 0x2

    if-nez p1, :cond_3

    const/4 p0, 0x1

    goto :goto_5

    :cond_3
    const/4 p0, 0x0

    :goto_5
    packed-switch p0, :pswitch_data_3

    goto :goto_8

    .line 4
    :goto_6
    new-instance v0, Lccsanandroid/view/animation/AlphaAnimation;

    invoke-direct {v0, p1, p1}, Lccsanandroid/view/animation/AlphaAnimation;-><init>(FF)V

    const-wide/16 v4, 0x0

    .line 6
    invoke-virtual {v0, v4, v5}, Lccsanandroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 7
    invoke-virtual {v0, v2}, Lccsanandroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    .line 8
    invoke-virtual {p0, v0}, Lccsanandroid/view/View;->startAnimation(Lccsanandroid/view/animation/Animation;)V

    sget p0, Lccsancom/san/landingpage/widget/ExpandableTextView;->removeDownloadListener:I

    xor-int/lit8 p1, p0, 0x79

    and-int/lit8 p0, p0, 0x79

    shl-int/2addr p0, v2

    add-int/2addr p1, p0

    rem-int/lit16 p0, p1, 0x80

    sput p0, Lccsancom/san/landingpage/widget/ExpandableTextView;->IncentiveDownloadUtils:I

    rem-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_4

    .line 1
    const/4 p0, 0x0

    goto :goto_7

    :cond_4
    const/4 p0, 0x1

    :goto_7
    packed-switch p0, :pswitch_data_4

    .line 8
    :pswitch_2
    nop

    :goto_8
    sget p0, Lccsancom/san/landingpage/widget/ExpandableTextView;->IncentiveDownloadUtils:I

    xor-int/lit8 p1, p0, 0xa

    and-int/lit8 p0, p0, 0xa

    shl-int/2addr p0, v2

    add-int/2addr p1, p0

    sub-int/2addr p1, v1

    sub-int/2addr p1, v2

    rem-int/lit16 p0, p1, 0x80

    sput p0, Lccsancom/san/landingpage/widget/ExpandableTextView;->removeDownloadListener:I

    rem-int/lit8 p1, p1, 0x2

    if-nez p1, :cond_5

    .line 1
    const/16 p0, 0x56

    goto :goto_9

    :cond_5
    const/16 p0, 0x33

    :goto_9
    packed-switch p0, :pswitch_data_5

    .line 8
    return-void

    :pswitch_3
    :try_start_1
    invoke-super {v3}, Ljava/lang/Object;->hashCode()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    throw p0

    :catchall_1
    move-exception p0

    goto :goto_b

    :goto_a
    throw p0

    :goto_b
    goto :goto_a

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x61
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x36
        :pswitch_1
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_2
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x1
        :pswitch_2
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0x56
        :pswitch_3
    .end packed-switch
.end method

.method private findViews()V
    .locals 5

    .line 10
    sget v0, Lccsancom/san/landingpage/widget/ExpandableTextView;->IncentiveDownloadUtils:I

    and-int/lit8 v1, v0, 0x53

    or-int/lit8 v0, v0, 0x53

    and-int v2, v1, v0

    or-int/2addr v0, v1

    add-int/2addr v2, v0

    rem-int/lit16 v0, v2, 0x80

    sput v0, Lccsancom/san/landingpage/widget/ExpandableTextView;->removeDownloadListener:I

    rem-int/lit8 v2, v2, 0x2

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez v2, :cond_0

    .line 2
    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    :goto_0
    packed-switch v2, :pswitch_data_0

    .line 1
    iget v0, p0, Lccsancom/san/landingpage/widget/ExpandableTextView;->mExpandableTextId:I

    invoke-virtual {p0, v0}, Lccsanandroid/widget/LinearLayout;->findViewById(I)Lccsanandroid/view/View;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lccsanandroid/widget/TextView;

    iput-object v2, p0, Lccsancom/san/landingpage/widget/ExpandableTextView;->mTv:Lccsanandroid/widget/TextView;

    .line 2
    iget-boolean v0, p0, Lccsancom/san/landingpage/widget/ExpandableTextView;->mExpandToggleOnTextClick:Z

    if-eqz v0, :cond_2

    goto :goto_2

    .line 1
    :pswitch_0
    iget v2, p0, Lccsancom/san/landingpage/widget/ExpandableTextView;->mExpandableTextId:I

    invoke-virtual {p0, v2}, Lccsanandroid/widget/LinearLayout;->findViewById(I)Lccsanandroid/view/View;

    move-result-object v2

    check-cast v2, Lccsanandroid/widget/TextView;

    iput-object v2, p0, Lccsancom/san/landingpage/widget/ExpandableTextView;->mTv:Lccsanandroid/widget/TextView;

    .line 2
    iget-boolean v3, p0, Lccsancom/san/landingpage/widget/ExpandableTextView;->mExpandToggleOnTextClick:Z

    const/16 v4, 0x1c

    :try_start_0
    div-int/2addr v4, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_1

    const/16 v0, 0x1e

    goto :goto_1

    :cond_1
    const/16 v0, 0x44

    :goto_1
    packed-switch v0, :pswitch_data_1

    goto :goto_4

    .line 10
    :catchall_0
    move-exception v0

    throw v0

    .line 2
    :goto_2
    const/16 v0, 0x2b

    goto :goto_3

    :cond_2
    const/16 v0, 0x54

    :goto_3
    packed-switch v0, :pswitch_data_2

    :goto_4
    goto :goto_6

    .line 3
    :pswitch_1
    invoke-virtual {v2, p0}, Lccsanandroid/widget/TextView;->setOnClickListener(Lccsanandroid/view/View$OnClickListener;)V

    .line 2
    sget v0, Lccsancom/san/landingpage/widget/ExpandableTextView;->IncentiveDownloadUtils:I

    xor-int/lit8 v2, v0, 0x9

    and-int/lit8 v0, v0, 0x9

    shl-int/2addr v0, v1

    add-int/2addr v2, v0

    rem-int/lit16 v0, v2, 0x80

    sput v0, Lccsancom/san/landingpage/widget/ExpandableTextView;->removeDownloadListener:I

    rem-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_3

    const/16 v0, 0xd

    goto :goto_5

    :cond_3
    const/16 v0, 0x45

    :goto_5
    packed-switch v0, :pswitch_data_3

    .line 10
    goto :goto_7

    .line 3
    :goto_6
    const/4 v0, 0x0

    .line 5
    invoke-virtual {v2, v0}, Lccsanandroid/widget/TextView;->setOnClickListener(Lccsanandroid/view/View$OnClickListener;)V

    .line 10
    sget v0, Lccsancom/san/landingpage/widget/ExpandableTextView;->removeDownloadListener:I

    and-int/lit8 v2, v0, 0x5

    xor-int/lit8 v3, v2, -0x1

    or-int/lit8 v0, v0, 0x5

    and-int/2addr v0, v3

    shl-int/2addr v2, v1

    neg-int v2, v2

    neg-int v2, v2

    or-int v3, v0, v2

    shl-int/lit8 v1, v3, 0x1

    xor-int/2addr v0, v2

    sub-int/2addr v1, v0

    rem-int/lit16 v0, v1, 0x80

    sput v0, Lccsancom/san/landingpage/widget/ExpandableTextView;->IncentiveDownloadUtils:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_4

    .line 7
    :cond_4
    :goto_7
    :pswitch_2
    iget v0, p0, Lccsancom/san/landingpage/widget/ExpandableTextView;->mExpandCollapseToggleId:I

    invoke-virtual {p0, v0}, Lccsanandroid/widget/LinearLayout;->findViewById(I)Lccsanandroid/view/View;

    move-result-object v0

    check-cast v0, Lccsanandroid/widget/TextView;

    iput-object v0, p0, Lccsancom/san/landingpage/widget/ExpandableTextView;->mToggleView:Lccsanandroid/widget/TextView;

    .line 8
    iget-object v1, p0, Lccsancom/san/landingpage/widget/ExpandableTextView;->mExpandIndicatorController:Lccsancom/san/landingpage/widget/ExpandableTextView$ExpandIndicatorController;

    invoke-interface {v1, v0}, Lccsancom/san/landingpage/widget/ExpandableTextView$ExpandIndicatorController;->setView(Lccsanandroid/view/View;)V

    .line 9
    iget-object v0, p0, Lccsancom/san/landingpage/widget/ExpandableTextView;->mExpandIndicatorController:Lccsancom/san/landingpage/widget/ExpandableTextView$ExpandIndicatorController;

    iget-boolean v1, p0, Lccsancom/san/landingpage/widget/ExpandableTextView;->mCollapsed:Z

    invoke-interface {v0, v1}, Lccsancom/san/landingpage/widget/ExpandableTextView$ExpandIndicatorController;->changeState(Z)V

    .line 10
    iget-object v0, p0, Lccsancom/san/landingpage/widget/ExpandableTextView;->mToggleView:Lccsanandroid/widget/TextView;

    invoke-virtual {v0, p0}, Lccsanandroid/widget/TextView;->setOnClickListener(Lccsanandroid/view/View$OnClickListener;)V

    sget v0, Lccsancom/san/landingpage/widget/ExpandableTextView;->removeDownloadListener:I

    or-int/lit8 v1, v0, 0x7d

    shl-int/lit8 v2, v1, 0x1

    and-int/lit8 v0, v0, 0x7d

    xor-int/lit8 v0, v0, -0x1

    and-int/2addr v0, v1

    sub-int/2addr v2, v0

    rem-int/lit16 v0, v2, 0x80

    sput v0, Lccsancom/san/landingpage/widget/ExpandableTextView;->IncentiveDownloadUtils:I

    rem-int/lit8 v2, v2, 0x2

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1e
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x2b
        :pswitch_1
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0xd
        :pswitch_2
    .end packed-switch
.end method

.method private static getDrawable(Lccsanandroid/content/Context;I)Lccsanandroid/graphics/drawable/Drawable;
    .locals 5
    .param p0, "context"    # Lccsanandroid/content/Context;
    .param p1, "resId"    # I

    .line 5
    .end local p0    # "context":Lccsanandroid/content/Context;
    .end local p1    # "resId":I
    sget v0, Lccsancom/san/landingpage/widget/ExpandableTextView;->IncentiveDownloadUtils:I

    const/16 v1, 0x19

    and-int/lit8 v2, v0, -0x1a

    xor-int/lit8 v3, v0, -0x1

    and-int/2addr v3, v1

    or-int/2addr v2, v3

    and-int/2addr v0, v1

    const/4 v1, 0x1

    shl-int/2addr v0, v1

    neg-int v0, v0

    neg-int v0, v0

    xor-int v3, v2, v0

    and-int/2addr v0, v2

    shl-int/2addr v0, v1

    add-int/2addr v3, v0

    rem-int/lit16 v0, v3, 0x80

    sput v0, Lccsancom/san/landingpage/widget/ExpandableTextView;->removeDownloadListener:I

    const/4 v0, 0x2

    rem-int/2addr v3, v0

    if-nez v3, :cond_0

    .line 1
    :cond_0
    invoke-virtual {p0}, Lccsanandroid/content/Context;->getResources()Lccsanandroid/content/res/Resources;

    move-result-object v2

    .line 2
    invoke-static {}, Lccsancom/san/landingpage/widget/ExpandableTextView;->isPostLolipop()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 5
    const/16 v3, 0xa

    goto :goto_0

    :cond_1
    const/16 v3, 0x5a

    :goto_0
    packed-switch v3, :pswitch_data_0

    sget v3, Lccsancom/san/landingpage/widget/ExpandableTextView;->removeDownloadListener:I

    and-int/lit8 v4, v3, 0x69

    or-int/lit8 v3, v3, 0x69

    add-int/2addr v4, v3

    rem-int/lit16 v3, v4, 0x80

    sput v3, Lccsancom/san/landingpage/widget/ExpandableTextView;->IncentiveDownloadUtils:I

    rem-int/2addr v4, v0

    if-eqz v4, :cond_3

    goto :goto_2

    :pswitch_0
    invoke-virtual {v2, p1}, Lccsanandroid/content/res/Resources;->getDrawable(I)Lccsanandroid/graphics/drawable/Drawable;

    move-result-object p0

    sget p1, Lccsancom/san/landingpage/widget/ExpandableTextView;->IncentiveDownloadUtils:I

    xor-int/lit8 v2, p1, 0x3b

    and-int/lit8 v3, p1, 0x3b

    or-int/2addr v2, v3

    shl-int/lit8 v1, v2, 0x1

    and-int/lit8 v2, p1, -0x3c

    xor-int/lit8 p1, p1, -0x1

    and-int/lit8 p1, p1, 0x3b

    or-int/2addr p1, v2

    sub-int/2addr v1, p1

    rem-int/lit16 p1, v1, 0x80

    sput p1, Lccsancom/san/landingpage/widget/ExpandableTextView;->removeDownloadListener:I

    rem-int/2addr v1, v0

    if-nez v1, :cond_2

    const/16 p1, 0x17

    goto :goto_1

    :cond_2
    const/16 p1, 0x59

    :goto_1
    packed-switch p1, :pswitch_data_1

    return-object p0

    :pswitch_1
    const/4 p1, 0x0

    :try_start_0
    array-length p1, p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    throw p0

    .line 3
    :cond_3
    :goto_2
    invoke-virtual {p0}, Lccsanandroid/content/Context;->getTheme()Lccsanandroid/content/res/Resources$Theme;

    move-result-object p0

    invoke-virtual {v2, p1, p0}, Lccsanandroid/content/res/Resources;->getDrawable(ILccsanandroid/content/res/Resources$Theme;)Lccsanandroid/graphics/drawable/Drawable;

    move-result-object p0

    .line 5
    sget p1, Lccsancom/san/landingpage/widget/ExpandableTextView;->removeDownloadListener:I

    add-int/lit8 p1, p1, 0x2a

    xor-int/lit8 v2, p1, -0x1

    and-int/lit8 p1, p1, -0x1

    shl-int/2addr p1, v1

    add-int/2addr v2, p1

    rem-int/lit16 p1, v2, 0x80

    sput p1, Lccsancom/san/landingpage/widget/ExpandableTextView;->IncentiveDownloadUtils:I

    rem-int/2addr v2, v0

    const/4 p1, 0x0

    if-eqz v2, :cond_4

    goto :goto_3

    :cond_4
    const/4 v1, 0x0

    :goto_3
    packed-switch v1, :pswitch_data_2

    return-object p0

    :pswitch_2
    :try_start_1
    div-int/2addr v0, p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-object p0

    :catchall_1
    move-exception p0

    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x5a
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x17
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_2
    .end packed-switch
.end method

.method private static getRealTextViewHeight(Lccsanandroid/widget/TextView;)I
    .locals 3
    .param p0, "textView"    # Lccsanandroid/widget/TextView;

    .line 2
    .end local p0    # "textView":Lccsanandroid/widget/TextView;
    sget v0, Lccsancom/san/landingpage/widget/ExpandableTextView;->IncentiveDownloadUtils:I

    add-int/lit8 v0, v0, 0x6c

    add-int/lit8 v0, v0, -0x1

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/san/landingpage/widget/ExpandableTextView;->removeDownloadListener:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    const/16 v0, 0x3a

    goto :goto_0

    :cond_0
    const/16 v0, 0x5e

    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 1
    invoke-virtual {p0}, Lccsanandroid/widget/TextView;->getLayout()Lccsanandroid/text/Layout;

    move-result-object v0

    invoke-virtual {p0}, Lccsanandroid/widget/TextView;->getLineCount()I

    move-result v1

    invoke-virtual {v0, v1}, Lccsanandroid/text/Layout;->getLineTop(I)I

    move-result v0

    .line 2
    invoke-virtual {p0}, Lccsanandroid/widget/TextView;->getCompoundPaddingTop()I

    move-result v1

    invoke-virtual {p0}, Lccsanandroid/widget/TextView;->getCompoundPaddingBottom()I

    move-result p0

    neg-int p0, p0

    and-int v2, v1, p0

    xor-int/2addr p0, v1

    or-int/2addr p0, v2

    xor-int v1, v2, p0

    and-int/2addr p0, v2

    shl-int/lit8 p0, p0, 0x1

    add-int/2addr v1, p0

    shl-int/2addr v0, v1

    goto :goto_1

    .line 1
    :pswitch_0
    invoke-virtual {p0}, Lccsanandroid/widget/TextView;->getLayout()Lccsanandroid/text/Layout;

    move-result-object v0

    invoke-virtual {p0}, Lccsanandroid/widget/TextView;->getLineCount()I

    move-result v1

    invoke-virtual {v0, v1}, Lccsanandroid/text/Layout;->getLineTop(I)I

    move-result v0

    .line 2
    invoke-virtual {p0}, Lccsanandroid/widget/TextView;->getCompoundPaddingTop()I

    move-result v1

    invoke-virtual {p0}, Lccsanandroid/widget/TextView;->getCompoundPaddingBottom()I

    move-result p0

    or-int v2, v1, p0

    shl-int/lit8 v2, v2, 0x1

    xor-int/2addr p0, v1

    sub-int/2addr v2, p0

    or-int p0, v0, v2

    shl-int/lit8 v1, p0, 0x1

    and-int/2addr v0, v2

    xor-int/lit8 v0, v0, -0x1

    and-int/2addr p0, v0

    neg-int p0, p0

    xor-int v0, v1, p0

    and-int/2addr p0, v1

    shl-int/lit8 p0, p0, 0x1

    add-int/2addr v0, p0

    :goto_1
    sget p0, Lccsancom/san/landingpage/widget/ExpandableTextView;->IncentiveDownloadUtils:I

    and-int/lit8 v1, p0, 0x1

    xor-int/lit8 v2, v1, -0x1

    or-int/lit8 p0, p0, 0x1

    and-int/2addr p0, v2

    shl-int/lit8 v1, v1, 0x1

    add-int/2addr p0, v1

    rem-int/lit16 v1, p0, 0x80

    sput v1, Lccsancom/san/landingpage/widget/ExpandableTextView;->removeDownloadListener:I

    rem-int/lit8 p0, p0, 0x2

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x5e
        :pswitch_0
    .end packed-switch
.end method

.method private init(Lccsanandroid/util/AttributeSet;)V
    .locals 5
    .param p1, "attrs"    # Lccsanandroid/util/AttributeSet;

    .line 17
    .end local p1    # "attrs":Lccsanandroid/util/AttributeSet;
    sget v0, Lccsancom/san/landingpage/widget/ExpandableTextView;->IncentiveDownloadUtils:I

    const/16 v1, 0x4d

    and-int/lit8 v2, v0, -0x4e

    xor-int/lit8 v3, v0, -0x1

    and-int/2addr v3, v1

    or-int/2addr v2, v3

    and-int/2addr v0, v1

    const/4 v1, 0x1

    shl-int/2addr v0, v1

    neg-int v0, v0

    neg-int v0, v0

    xor-int v3, v2, v0

    and-int/2addr v0, v2

    shl-int/2addr v0, v1

    add-int/2addr v3, v0

    rem-int/lit16 v0, v3, 0x80

    sput v0, Lccsancom/san/landingpage/widget/ExpandableTextView;->removeDownloadListener:I

    rem-int/lit8 v3, v3, 0x2

    if-nez v3, :cond_0

    .line 1
    :cond_0
    invoke-virtual {p0}, Lccsanandroid/widget/LinearLayout;->getContext()Lccsanandroid/content/Context;

    move-result-object v0

    const-string v2, "san_ExpandableTextView"

    invoke-static {v2}, Lccsansan/bw/shouldTryHandlingAction;->getDownloadedList(Ljava/lang/String;)[I

    move-result-object v3

    invoke-virtual {v0, p1, v3}, Lccsanandroid/content/Context;->obtainStyledAttributes(Lccsanandroid/util/AttributeSet;[I)Lccsanandroid/content/res/TypedArray;

    move-result-object p1

    .line 2
    const-string v0, "maxCollapsedLines"

    invoke-static {v2, v0}, Lccsansan/bw/shouldTryHandlingAction;->getDownloadingList(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    const/16 v3, 0x8

    invoke-virtual {p1, v0, v3}, Lccsanandroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Lccsancom/san/landingpage/widget/ExpandableTextView;->mMaxCollapsedLines:I

    .line 3
    const-string v0, "animDuration"

    invoke-static {v2, v0}, Lccsansan/bw/shouldTryHandlingAction;->getDownloadingList(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    const/16 v4, 0x12c

    invoke-virtual {p1, v0, v4}, Lccsanandroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Lccsancom/san/landingpage/widget/ExpandableTextView;->mAnimationDuration:I

    .line 4
    const-string v0, "animAlphaStart"

    invoke-static {v2, v0}, Lccsansan/bw/shouldTryHandlingAction;->getDownloadingList(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    const v4, 0x3f333333    # 0.7f

    invoke-virtual {p1, v0, v4}, Lccsanandroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    iput v0, p0, Lccsancom/san/landingpage/widget/ExpandableTextView;->mAnimAlphaStart:F

    .line 5
    const-string v0, "expandableTextId"

    invoke-static {v2, v0}, Lccsansan/bw/shouldTryHandlingAction;->getDownloadingList(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    const-string v4, "san_expandable_text"

    invoke-static {v4}, Lccsansan/bw/shouldTryHandlingAction;->deleteDownItem(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {p1, v0, v4}, Lccsanandroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, p0, Lccsancom/san/landingpage/widget/ExpandableTextView;->mExpandableTextId:I

    .line 6
    const-string v0, "expandCollapseToggleId"

    invoke-static {v2, v0}, Lccsansan/bw/shouldTryHandlingAction;->getDownloadingList(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    const-string v4, "san_expand_collapse"

    invoke-static {v4}, Lccsansan/bw/shouldTryHandlingAction;->deleteDownItem(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {p1, v0, v4}, Lccsanandroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, p0, Lccsancom/san/landingpage/widget/ExpandableTextView;->mExpandCollapseToggleId:I

    .line 7
    const-string v0, "expandToggleOnTextClick"

    invoke-static {v2, v0}, Lccsansan/bw/shouldTryHandlingAction;->getDownloadingList(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0, v1}, Lccsanandroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lccsancom/san/landingpage/widget/ExpandableTextView;->mExpandToggleOnTextClick:Z

    .line 8
    const-string v0, "canCollapse"

    invoke-static {v2, v0}, Lccsansan/bw/shouldTryHandlingAction;->getDownloadingList(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2}, Lccsanandroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lccsancom/san/landingpage/widget/ExpandableTextView;->mCanCollapse:Z

    .line 9
    invoke-virtual {p0}, Lccsanandroid/widget/LinearLayout;->getContext()Lccsanandroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lccsancom/san/landingpage/widget/ExpandableTextView;->setupExpandToggleController(Lccsanandroid/content/Context;Lccsanandroid/content/res/TypedArray;)Lccsancom/san/landingpage/widget/ExpandableTextView$ExpandIndicatorController;

    move-result-object v0

    iput-object v0, p0, Lccsancom/san/landingpage/widget/ExpandableTextView;->mExpandIndicatorController:Lccsancom/san/landingpage/widget/ExpandableTextView$ExpandIndicatorController;

    .line 11
    invoke-virtual {p1}, Lccsanandroid/content/res/TypedArray;->recycle()V

    .line 14
    invoke-virtual {p0, v1}, Lccsancom/san/landingpage/widget/ExpandableTextView;->setOrientation(I)V

    .line 17
    invoke-virtual {p0, v3}, Lccsanandroid/widget/LinearLayout;->setVisibility(I)V

    sget p1, Lccsancom/san/landingpage/widget/ExpandableTextView;->removeDownloadListener:I

    and-int/lit8 v0, p1, 0x5

    xor-int/lit8 p1, p1, 0x5

    or-int/2addr p1, v0

    xor-int/lit8 p1, p1, -0x1

    sub-int/2addr v0, p1

    sub-int/2addr v0, v1

    rem-int/lit16 p1, v0, 0x80

    sput p1, Lccsancom/san/landingpage/widget/ExpandableTextView;->IncentiveDownloadUtils:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    :cond_1
    packed-switch v1, :pswitch_data_0

    return-void

    :pswitch_0
    const/4 p1, 0x0

    :try_start_0
    invoke-super {p1}, Ljava/lang/Object;->hashCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    throw p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method private static isPostHoneycomb()Z
    .locals 5

    .line 1
    sget v0, Lccsancom/san/landingpage/widget/ExpandableTextView;->IncentiveDownloadUtils:I

    xor-int/lit8 v1, v0, 0x4c

    and-int/lit8 v0, v0, 0x4c

    const/4 v2, 0x1

    shl-int/2addr v0, v2

    add-int/2addr v1, v0

    sub-int/2addr v1, v2

    rem-int/lit16 v0, v1, 0x80

    sput v0, Lccsancom/san/landingpage/widget/ExpandableTextView;->removeDownloadListener:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_0

    :cond_0
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    const/4 v3, 0x0

    if-lt v0, v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    packed-switch v0, :pswitch_data_0

    sget v0, Lccsancom/san/landingpage/widget/ExpandableTextView;->IncentiveDownloadUtils:I

    xor-int/lit8 v1, v0, 0x1b

    and-int/lit8 v3, v0, 0x1b

    or-int/2addr v3, v1

    shl-int/2addr v3, v2

    neg-int v1, v1

    or-int v4, v3, v1

    shl-int/2addr v4, v2

    xor-int/2addr v1, v3

    sub-int/2addr v4, v1

    rem-int/lit16 v1, v4, 0x80

    sput v1, Lccsancom/san/landingpage/widget/ExpandableTextView;->removeDownloadListener:I

    rem-int/lit8 v4, v4, 0x2

    if-nez v4, :cond_3

    goto :goto_2

    :pswitch_0
    sget v0, Lccsancom/san/landingpage/widget/ExpandableTextView;->IncentiveDownloadUtils:I

    and-int/lit8 v1, v0, 0x27

    xor-int/lit8 v0, v0, 0x27

    or-int/2addr v0, v1

    xor-int v4, v1, v0

    and-int/2addr v0, v1

    shl-int/2addr v0, v2

    add-int/2addr v4, v0

    rem-int/lit16 v0, v4, 0x80

    sput v0, Lccsancom/san/landingpage/widget/ExpandableTextView;->removeDownloadListener:I

    rem-int/lit8 v4, v4, 0x2

    if-nez v4, :cond_2

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    :goto_1
    packed-switch v2, :pswitch_data_1

    :pswitch_1
    const/4 v2, 0x0

    goto :goto_4

    :goto_2
    const/16 v1, 0x25

    goto :goto_3

    :cond_3
    const/16 v1, 0x13

    :goto_3
    packed-switch v1, :pswitch_data_2

    :pswitch_2
    xor-int/lit8 v1, v0, 0x3

    and-int/lit8 v3, v0, 0x3

    or-int/2addr v1, v3

    shl-int/2addr v1, v2

    xor-int/lit8 v3, v3, -0x1

    const/4 v4, 0x3

    or-int/2addr v0, v4

    and-int/2addr v0, v3

    neg-int v0, v0

    and-int v3, v1, v0

    or-int/2addr v0, v1

    add-int/2addr v3, v0

    rem-int/lit16 v0, v3, 0x80

    sput v0, Lccsancom/san/landingpage/widget/ExpandableTextView;->removeDownloadListener:I

    rem-int/lit8 v3, v3, 0x2

    if-nez v3, :cond_4

    const/16 v4, 0x5e

    :cond_4
    packed-switch v4, :pswitch_data_3

    :goto_4
    :pswitch_3
    sget v0, Lccsancom/san/landingpage/widget/ExpandableTextView;->removeDownloadListener:I

    and-int/lit8 v1, v0, 0x77

    xor-int/lit8 v0, v0, 0x77

    or-int/2addr v0, v1

    neg-int v0, v0

    neg-int v0, v0

    and-int v3, v1, v0

    or-int/2addr v0, v1

    add-int/2addr v3, v0

    rem-int/lit16 v0, v3, 0x80

    sput v0, Lccsancom/san/landingpage/widget/ExpandableTextView;->IncentiveDownloadUtils:I

    rem-int/lit8 v3, v3, 0x2

    return v2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x25
        :pswitch_2
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x3
        :pswitch_3
    .end packed-switch
.end method

.method private static isPostLolipop()Z
    .locals 5

    .line 1
    sget v0, Lccsancom/san/landingpage/widget/ExpandableTextView;->removeDownloadListener:I

    and-int/lit8 v1, v0, 0x31

    xor-int/lit8 v2, v1, -0x1

    const/16 v3, 0x31

    or-int/2addr v0, v3

    and-int/2addr v0, v2

    const/4 v2, 0x1

    shl-int/2addr v1, v2

    and-int v4, v0, v1

    or-int/2addr v0, v1

    add-int/2addr v4, v0

    rem-int/lit16 v0, v4, 0x80

    sput v0, Lccsancom/san/landingpage/widget/ExpandableTextView;->IncentiveDownloadUtils:I

    rem-int/lit8 v4, v4, 0x2

    const/4 v0, 0x0

    if-eqz v4, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    packed-switch v1, :pswitch_data_0

    sget v1, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v1, v3, :cond_2

    goto :goto_1

    :pswitch_0
    sget v1, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x77

    if-lt v1, v4, :cond_1

    const/16 v3, 0x42

    :cond_1
    packed-switch v3, :pswitch_data_1

    goto :goto_3

    :goto_1
    const/16 v1, 0x2a

    goto :goto_2

    :cond_2
    const/16 v1, 0x1f

    :goto_2
    packed-switch v1, :pswitch_data_2

    :goto_3
    goto :goto_5

    :pswitch_1
    sget v1, Lccsancom/san/landingpage/widget/ExpandableTextView;->IncentiveDownloadUtils:I

    xor-int/lit8 v3, v1, 0x3

    and-int/lit8 v4, v1, 0x3

    or-int/2addr v3, v4

    shl-int/2addr v3, v2

    and-int/lit8 v4, v1, -0x4

    xor-int/lit8 v1, v1, -0x1

    and-int/lit8 v1, v1, 0x3

    or-int/2addr v1, v4

    neg-int v1, v1

    and-int v4, v3, v1

    or-int/2addr v1, v3

    add-int/2addr v4, v1

    rem-int/lit16 v1, v4, 0x80

    sput v1, Lccsancom/san/landingpage/widget/ExpandableTextView;->removeDownloadListener:I

    rem-int/lit8 v4, v4, 0x2

    if-nez v4, :cond_3

    goto :goto_4

    :cond_3
    const/4 v2, 0x0

    :goto_4
    packed-switch v2, :pswitch_data_3

    :pswitch_2
    const/4 v2, 0x0

    goto :goto_6

    :goto_5
    sget v0, Lccsancom/san/landingpage/widget/ExpandableTextView;->IncentiveDownloadUtils:I

    xor-int/lit8 v1, v0, 0x53

    and-int/lit8 v3, v0, 0x53

    or-int/2addr v1, v3

    shl-int/2addr v1, v2

    and-int/lit8 v3, v0, -0x54

    xor-int/lit8 v0, v0, -0x1

    and-int/lit8 v0, v0, 0x53

    or-int/2addr v0, v3

    neg-int v0, v0

    xor-int/lit8 v0, v0, -0x1

    sub-int/2addr v1, v0

    sub-int/2addr v1, v2

    rem-int/lit16 v0, v1, 0x80

    sput v0, Lccsancom/san/landingpage/widget/ExpandableTextView;->removeDownloadListener:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_4

    :cond_4
    xor-int/lit8 v1, v0, 0x52

    and-int/lit8 v0, v0, 0x52

    shl-int/2addr v0, v2

    add-int/2addr v1, v0

    xor-int/lit8 v0, v1, -0x1

    and-int/lit8 v1, v1, -0x1

    shl-int/2addr v1, v2

    add-int/2addr v0, v1

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/san/landingpage/widget/ExpandableTextView;->IncentiveDownloadUtils:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_5

    :cond_5
    :goto_6
    sget v0, Lccsancom/san/landingpage/widget/ExpandableTextView;->IncentiveDownloadUtils:I

    and-int/lit8 v1, v0, 0x9

    or-int/lit8 v0, v0, 0x9

    add-int/2addr v1, v0

    rem-int/lit16 v0, v1, 0x80

    sput v0, Lccsancom/san/landingpage/widget/ExpandableTextView;->removeDownloadListener:I

    rem-int/lit8 v1, v1, 0x2

    return v2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x31
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1f
        :pswitch_1
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_2
    .end packed-switch
.end method

.method private setupExpandToggleController(Lccsanandroid/content/Context;Lccsanandroid/content/res/TypedArray;)Lccsancom/san/landingpage/widget/ExpandableTextView$ExpandIndicatorController;
    .locals 4
    .param p1, "context"    # Lccsanandroid/content/Context;
    .param p2, "typedArray"    # Lccsanandroid/content/res/TypedArray;

    .line 18
    .end local p1    # "context":Lccsanandroid/content/Context;
    .end local p2    # "typedArray":Lccsanandroid/content/res/TypedArray;
    sget p1, Lccsancom/san/landingpage/widget/ExpandableTextView;->removeDownloadListener:I

    and-int/lit8 v0, p1, 0x21

    or-int/lit8 p1, p1, 0x21

    add-int/2addr v0, p1

    rem-int/lit16 p1, v0, 0x80

    sput p1, Lccsancom/san/landingpage/widget/ExpandableTextView;->IncentiveDownloadUtils:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    .line 1
    :cond_0
    const-string p1, "san_ExpandableTextView"

    const-string v0, "expandToggleTypeValue"

    invoke-static {p1, v0}, Lccsansan/bw/shouldTryHandlingAction;->getDownloadingList(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Lccsanandroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 18
    const/4 v3, 0x0

    goto :goto_0

    :cond_1
    const/4 v3, 0x1

    :goto_0
    packed-switch v3, :pswitch_data_0

    sget p1, Lccsancom/san/landingpage/widget/ExpandableTextView;->removeDownloadListener:I

    or-int/lit8 p2, p1, 0x58

    shl-int/2addr p2, v2

    xor-int/lit8 p1, p1, 0x58

    sub-int/2addr p2, p1

    and-int/lit8 p1, p2, -0x1

    or-int/lit8 p2, p2, -0x1

    add-int/2addr p1, p2

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lccsancom/san/landingpage/widget/ExpandableTextView;->IncentiveDownloadUtils:I

    rem-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_2

    goto :goto_1

    .line 15
    :pswitch_0
    nop

    .line 16
    const-string v0, "expandIndicator"

    invoke-static {p1, v0}, Lccsansan/bw/shouldTryHandlingAction;->getDownloadingList(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Lccsanandroid/content/res/TypedArray;->getDrawable(I)Lccsanandroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 17
    const-string v1, "collapseIndicator"

    invoke-static {p1, v1}, Lccsansan/bw/shouldTryHandlingAction;->getDownloadingList(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p2, p1}, Lccsanandroid/content/res/TypedArray;->getDrawable(I)Lccsanandroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 18
    new-instance p2, Lccsancom/san/landingpage/widget/ExpandableTextView$ImageButtonExpandController;

    invoke-direct {p2, v0, p1}, Lccsancom/san/landingpage/widget/ExpandableTextView$ImageButtonExpandController;-><init>(Lccsanandroid/graphics/drawable/Drawable;Lccsanandroid/graphics/drawable/Drawable;)V

    sget p1, Lccsancom/san/landingpage/widget/ExpandableTextView;->removeDownloadListener:I

    xor-int/lit8 v0, p1, 0x9

    and-int/lit8 v1, p1, 0x9

    or-int/2addr v0, v1

    shl-int/2addr v0, v2

    xor-int/lit8 v1, v1, -0x1

    or-int/lit8 p1, p1, 0x9

    and-int/2addr p1, v1

    neg-int p1, p1

    xor-int v1, v0, p1

    and-int/2addr p1, v0

    shl-int/2addr p1, v2

    add-int/2addr v1, p1

    rem-int/lit16 p1, v1, 0x80

    sput p1, Lccsancom/san/landingpage/widget/ExpandableTextView;->IncentiveDownloadUtils:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_4

    goto :goto_4

    :goto_1
    const/4 p1, 0x1

    goto :goto_2

    :cond_2
    const/16 p1, 0x4d

    :goto_2
    packed-switch p1, :pswitch_data_1

    if-nez v0, :cond_5

    goto :goto_3

    .line 1
    :pswitch_1
    if-ne v0, v2, :cond_5

    .line 10
    :goto_3
    invoke-virtual {p0}, Lccsanandroid/widget/LinearLayout;->getContext()Lccsanandroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Lccsanandroid/content/Context;->getResources()Lccsanandroid/content/res/Resources;

    move-result-object p1

    const-string p2, "san_common_more"

    invoke-static {p2}, Lccsansan/bw/shouldTryHandlingAction;->removeDownloadListener(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Lccsanandroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 11
    invoke-virtual {p0}, Lccsanandroid/widget/LinearLayout;->getContext()Lccsanandroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Lccsanandroid/content/Context;->getResources()Lccsanandroid/content/res/Resources;

    move-result-object p2

    const-string v0, "san_common_close_caps"

    invoke-static {v0}, Lccsansan/bw/shouldTryHandlingAction;->removeDownloadListener(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Lccsanandroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 12
    new-instance v0, Lccsancom/san/landingpage/widget/ExpandableTextView$TextViewExpandController;

    invoke-direct {v0, p1, p2}, Lccsancom/san/landingpage/widget/ExpandableTextView$TextViewExpandController;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    sget p1, Lccsancom/san/landingpage/widget/ExpandableTextView;->IncentiveDownloadUtils:I

    add-int/lit8 p1, p1, 0x24

    sub-int/2addr p1, v2

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lccsancom/san/landingpage/widget/ExpandableTextView;->removeDownloadListener:I

    rem-int/lit8 p1, p1, 0x2

    if-nez p1, :cond_3

    const/4 v1, 0x1

    :cond_3
    packed-switch v1, :pswitch_data_2

    :pswitch_2
    move-object p2, v0

    :cond_4
    :goto_4
    sget p1, Lccsancom/san/landingpage/widget/ExpandableTextView;->IncentiveDownloadUtils:I

    and-int/lit8 v0, p1, 0x69

    xor-int/lit8 v1, v0, -0x1

    or-int/lit8 p1, p1, 0x69

    and-int/2addr p1, v1

    shl-int/2addr v0, v2

    add-int/2addr p1, v0

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lccsancom/san/landingpage/widget/ExpandableTextView;->removeDownloadListener:I

    rem-int/lit8 p1, p1, 0x2

    return-object p2

    .line 15
    :cond_5
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Must be of enum: ExpandableTextView_expandToggleType, one of EXPAND_INDICATOR_IMAGE_BUTTON or EXPAND_INDICATOR_TEXT_VIEW."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x4d
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public getText()Ljava/lang/CharSequence;
    .locals 4

    .line 4
    sget v0, Lccsancom/san/landingpage/widget/ExpandableTextView;->removeDownloadListener:I

    xor-int/lit8 v1, v0, 0x3f

    and-int/lit8 v0, v0, 0x3f

    const/4 v2, 0x1

    shl-int/2addr v0, v2

    add-int/2addr v1, v0

    rem-int/lit16 v0, v1, 0x80

    sput v0, Lccsancom/san/landingpage/widget/ExpandableTextView;->IncentiveDownloadUtils:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_0

    .line 1
    const/16 v0, 0xd

    goto :goto_0

    :cond_0
    const/16 v0, 0x45

    :goto_0
    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lccsancom/san/landingpage/widget/ExpandableTextView;->mTv:Lccsanandroid/widget/TextView;

    goto :goto_3

    :pswitch_0
    iget-object v0, p0, Lccsancom/san/landingpage/widget/ExpandableTextView;->mTv:Lccsanandroid/widget/TextView;

    if-nez v0, :cond_1

    const/16 v1, 0x46

    goto :goto_1

    :cond_1
    const/16 v1, 0x58

    :goto_1
    packed-switch v1, :pswitch_data_1

    :goto_2
    goto :goto_5

    :goto_3
    const/4 v1, 0x0

    :try_start_0
    invoke-super {v1}, Ljava/lang/Object;->hashCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_2

    const/4 v1, 0x1

    goto :goto_4

    :cond_2
    const/4 v1, 0x0

    :goto_4
    packed-switch v1, :pswitch_data_2

    goto :goto_2

    :pswitch_1
    sget v0, Lccsancom/san/landingpage/widget/ExpandableTextView;->IncentiveDownloadUtils:I

    add-int/lit8 v0, v0, 0x15

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/san/landingpage/widget/ExpandableTextView;->removeDownloadListener:I

    rem-int/lit8 v0, v0, 0x2

    .line 4
    const-string v0, ""

    return-object v0

    :goto_5
    invoke-virtual {v0}, Lccsanandroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    sget v1, Lccsancom/san/landingpage/widget/ExpandableTextView;->removeDownloadListener:I

    and-int/lit8 v3, v1, 0x7e

    or-int/lit8 v1, v1, 0x7e

    add-int/2addr v3, v1

    or-int/lit8 v1, v3, -0x1

    shl-int/2addr v1, v2

    xor-int/lit8 v2, v3, -0x1

    sub-int/2addr v1, v2

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsancom/san/landingpage/widget/ExpandableTextView;->IncentiveDownloadUtils:I

    rem-int/lit8 v1, v1, 0x2

    return-object v0

    :catchall_0
    move-exception v0

    goto :goto_7

    :goto_6
    throw v0

    :goto_7
    goto :goto_6

    nop

    :pswitch_data_0
    .packed-switch 0x45
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x46
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_1
    .end packed-switch
.end method

.method public onClick(Lccsanandroid/view/View;)V
    .locals 7
    .param p1, "view"    # Lccsanandroid/view/View;

    .line 54
    .end local p1    # "view":Lccsanandroid/view/View;
    nop

    .line 13
    sget p1, Lccsancom/san/landingpage/widget/ExpandableTextView;->removeDownloadListener:I

    and-int/lit8 v0, p1, 0x6f

    xor-int/lit8 p1, p1, 0x6f

    or-int/2addr p1, v0

    neg-int p1, p1

    neg-int p1, p1

    xor-int v1, v0, p1

    and-int/2addr p1, v0

    const/4 v0, 0x1

    shl-int/2addr p1, v0

    add-int/2addr v1, p1

    rem-int/lit16 p1, v1, 0x80

    sput p1, Lccsancom/san/landingpage/widget/ExpandableTextView;->IncentiveDownloadUtils:I

    rem-int/lit8 v1, v1, 0x2

    const/4 p1, 0x0

    if-eqz v1, :cond_0

    .line 1
    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    :goto_0
    packed-switch v1, :pswitch_data_0

    iget-object v1, p0, Lccsancom/san/landingpage/widget/ExpandableTextView;->mToggleView:Lccsanandroid/widget/TextView;

    invoke-virtual {v1}, Lccsanandroid/widget/TextView;->getVisibility()I

    move-result v1

    goto :goto_2

    :pswitch_0
    iget-object v1, p0, Lccsancom/san/landingpage/widget/ExpandableTextView;->mToggleView:Lccsanandroid/widget/TextView;

    invoke-virtual {v1}, Lccsanandroid/widget/TextView;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_1

    :goto_1
    goto :goto_3

    :goto_2
    const/4 v2, 0x0

    :try_start_0
    invoke-super {v2}, Ljava/lang/Object;->hashCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-eqz v1, :cond_1

    goto :goto_1

    :goto_3
    sget p1, Lccsancom/san/landingpage/widget/ExpandableTextView;->removeDownloadListener:I

    add-int/lit8 p1, p1, 0x24

    and-int/lit8 v0, p1, -0x1

    or-int/lit8 p1, p1, -0x1

    add-int/2addr v0, p1

    rem-int/lit16 p1, v0, 0x80

    sput p1, Lccsancom/san/landingpage/widget/ExpandableTextView;->IncentiveDownloadUtils:I

    rem-int/lit8 v0, v0, 0x2

    .line 54
    return-void

    .line 5
    :cond_1
    iget-boolean v1, p0, Lccsancom/san/landingpage/widget/ExpandableTextView;->mCanCollapse:Z

    if-nez v1, :cond_2

    .line 1
    const/4 v1, 0x0

    goto :goto_4

    :cond_2
    const/4 v1, 0x1

    :goto_4
    const/16 v2, 0x3b

    const/16 v3, 0x8

    packed-switch v1, :pswitch_data_1

    goto :goto_6

    .line 54
    :pswitch_1
    sget v1, Lccsancom/san/landingpage/widget/ExpandableTextView;->removeDownloadListener:I

    and-int/lit8 v4, v1, 0x3d

    xor-int/lit8 v1, v1, 0x3d

    or-int/2addr v1, v4

    xor-int/lit8 v1, v1, -0x1

    sub-int/2addr v4, v1

    sub-int/2addr v4, v0

    rem-int/lit16 v1, v4, 0x80

    sput v1, Lccsancom/san/landingpage/widget/ExpandableTextView;->IncentiveDownloadUtils:I

    rem-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_3

    .line 6
    :cond_3
    iget-object v1, p0, Lccsancom/san/landingpage/widget/ExpandableTextView;->mToggleView:Lccsanandroid/widget/TextView;

    invoke-virtual {v1, v3}, Lccsanandroid/widget/TextView;->setVisibility(I)V

    .line 13
    sget v1, Lccsancom/san/landingpage/widget/ExpandableTextView;->removeDownloadListener:I

    const/16 v4, 0x53

    xor-int/lit8 v5, v1, 0x53

    and-int/lit8 v6, v1, 0x53

    or-int/2addr v5, v6

    shl-int/2addr v5, v0

    and-int/lit8 v6, v1, -0x54

    xor-int/lit8 v1, v1, -0x1

    and-int/2addr v1, v4

    or-int/2addr v1, v6

    sub-int/2addr v5, v1

    rem-int/lit16 v1, v5, 0x80

    sput v1, Lccsancom/san/landingpage/widget/ExpandableTextView;->IncentiveDownloadUtils:I

    rem-int/lit8 v5, v5, 0x2

    if-eqz v5, :cond_4

    .line 1
    const/16 v1, 0x3b

    goto :goto_5

    :cond_4
    const/16 v1, 0xf

    :goto_5
    packed-switch v1, :pswitch_data_2

    .line 54
    goto :goto_6

    .line 13
    :pswitch_2
    nop

    .line 9
    :goto_6
    iget-boolean v1, p0, Lccsancom/san/landingpage/widget/ExpandableTextView;->mCollapsed:Z

    and-int/lit8 v4, v1, -0x2

    and-int/lit8 v5, v1, 0x0

    xor-int/lit8 v1, v1, -0x1

    and-int/lit8 v1, v1, -0x1

    or-int/2addr v1, v5

    and-int/2addr v1, v0

    xor-int v5, v4, v1

    and-int/2addr v1, v4

    or-int/2addr v1, v5

    iput-boolean v1, p0, Lccsancom/san/landingpage/widget/ExpandableTextView;->mCollapsed:Z

    .line 10
    iget-object v4, p0, Lccsancom/san/landingpage/widget/ExpandableTextView;->mExpandIndicatorController:Lccsancom/san/landingpage/widget/ExpandableTextView$ExpandIndicatorController;

    invoke-interface {v4, v1}, Lccsancom/san/landingpage/widget/ExpandableTextView$ExpandIndicatorController;->changeState(Z)V

    .line 12
    iget-object v1, p0, Lccsancom/san/landingpage/widget/ExpandableTextView;->mCollapsedStatus:Lccsanandroid/util/SparseBooleanArray;

    if-eqz v1, :cond_5

    .line 1
    const/4 v4, 0x1

    goto :goto_7

    :cond_5
    const/4 v4, 0x0

    :goto_7
    packed-switch v4, :pswitch_data_3

    .line 54
    sget v4, Lccsancom/san/landingpage/widget/ExpandableTextView;->IncentiveDownloadUtils:I

    and-int/lit8 v5, v4, 0x74

    or-int/lit8 v4, v4, 0x74

    add-int/2addr v5, v4

    or-int/lit8 v4, v5, -0x1

    shl-int/2addr v4, v0

    xor-int/lit8 v5, v5, -0x1

    sub-int/2addr v4, v5

    rem-int/lit16 v5, v4, 0x80

    sput v5, Lccsancom/san/landingpage/widget/ExpandableTextView;->removeDownloadListener:I

    rem-int/lit8 v4, v4, 0x2

    if-nez v4, :cond_6

    .line 1
    const/4 v4, 0x0

    goto :goto_8

    :cond_6
    const/4 v4, 0x1

    :goto_8
    packed-switch v4, :pswitch_data_4

    .line 13
    iget v4, p0, Lccsancom/san/landingpage/widget/ExpandableTextView;->mPosition:I

    iget-boolean v5, p0, Lccsancom/san/landingpage/widget/ExpandableTextView;->mCollapsed:Z

    invoke-virtual {v1, v4, v5}, Lccsanandroid/util/SparseBooleanArray;->put(IZ)V

    goto :goto_9

    :pswitch_3
    iget v4, p0, Lccsancom/san/landingpage/widget/ExpandableTextView;->mPosition:I

    iget-boolean v5, p0, Lccsancom/san/landingpage/widget/ExpandableTextView;->mCollapsed:Z

    invoke-virtual {v1, v4, v5}, Lccsanandroid/util/SparseBooleanArray;->put(IZ)V

    goto :goto_a

    :goto_9
    const/16 v1, 0x38

    :try_start_1
    div-int/2addr v1, p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 54
    :goto_a
    sget v1, Lccsancom/san/landingpage/widget/ExpandableTextView;->removeDownloadListener:I

    add-int/lit8 v1, v1, 0x4d

    sub-int/2addr v1, v0

    sub-int/2addr v1, v0

    rem-int/lit16 v4, v1, 0x80

    sput v4, Lccsancom/san/landingpage/widget/ExpandableTextView;->IncentiveDownloadUtils:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_7

    .line 1
    const/4 v1, 0x3

    goto :goto_b

    :cond_7
    const/16 v1, 0x5f

    :goto_b
    packed-switch v1, :pswitch_data_5

    .line 54
    :pswitch_4
    nop

    .line 13
    :pswitch_5
    nop

    .line 17
    iput-boolean v0, p0, Lccsancom/san/landingpage/widget/ExpandableTextView;->mAnimating:Z

    .line 20
    iget-boolean v1, p0, Lccsancom/san/landingpage/widget/ExpandableTextView;->mCollapsed:Z

    if-eqz v1, :cond_9

    .line 21
    new-instance v1, Lccsancom/san/landingpage/widget/ExpandableTextView$ExpandCollapseAnimation;

    invoke-virtual {p0}, Lccsanandroid/widget/LinearLayout;->getHeight()I

    move-result v3

    iget v4, p0, Lccsancom/san/landingpage/widget/ExpandableTextView;->mCollapsedHeight:I

    invoke-direct {v1, p0, p0, v3, v4}, Lccsancom/san/landingpage/widget/ExpandableTextView$ExpandCollapseAnimation;-><init>(Lccsancom/san/landingpage/widget/ExpandableTextView;Lccsanandroid/view/View;II)V

    .line 13
    sget v3, Lccsancom/san/landingpage/widget/ExpandableTextView;->removeDownloadListener:I

    xor-int/lit8 v4, v3, 0x3b

    and-int/lit8 v5, v3, 0x3b

    or-int/2addr v4, v5

    shl-int/2addr v4, v0

    xor-int/lit8 v5, v5, -0x1

    or-int/2addr v2, v3

    and-int/2addr v2, v5

    neg-int v2, v2

    xor-int v3, v4, v2

    and-int/2addr v2, v4

    shl-int/2addr v2, v0

    add-int/2addr v3, v2

    rem-int/lit16 v2, v3, 0x80

    sput v2, Lccsancom/san/landingpage/widget/ExpandableTextView;->IncentiveDownloadUtils:I

    rem-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_8

    .line 1
    const/4 v2, 0x0

    goto :goto_c

    :cond_8
    const/4 v2, 0x1

    :goto_c
    packed-switch v2, :pswitch_data_6

    .line 54
    :pswitch_6
    goto :goto_f

    .line 13
    :goto_d
    :pswitch_7
    goto :goto_f

    .line 23
    :cond_9
    new-instance v1, Lccsancom/san/landingpage/widget/ExpandableTextView$ExpandCollapseAnimation;

    invoke-virtual {p0}, Lccsanandroid/widget/LinearLayout;->getHeight()I

    move-result v2

    invoke-virtual {p0}, Lccsanandroid/widget/LinearLayout;->getHeight()I

    move-result v4

    iget v5, p0, Lccsancom/san/landingpage/widget/ExpandableTextView;->mTextHeightWithMaxLines:I

    add-int/2addr v4, v5

    iget-object v5, p0, Lccsancom/san/landingpage/widget/ExpandableTextView;->mTv:Lccsanandroid/widget/TextView;

    .line 24
    invoke-virtual {v5}, Lccsanandroid/widget/TextView;->getHeight()I

    move-result v5

    neg-int v5, v5

    and-int/lit8 v6, v5, 0x0

    xor-int/lit8 v5, v5, -0x1

    and-int/lit8 v5, v5, -0x1

    or-int/2addr v5, v6

    sub-int/2addr v4, v5

    sub-int/2addr v4, p1

    sub-int/2addr v4, v0

    invoke-direct {v1, p0, p0, v2, v4}, Lccsancom/san/landingpage/widget/ExpandableTextView$ExpandCollapseAnimation;-><init>(Lccsancom/san/landingpage/widget/ExpandableTextView;Lccsanandroid/view/View;II)V

    .line 13
    sget v2, Lccsancom/san/landingpage/widget/ExpandableTextView;->removeDownloadListener:I

    add-int/lit8 v2, v2, 0x71

    rem-int/lit16 v4, v2, 0x80

    sput v4, Lccsancom/san/landingpage/widget/ExpandableTextView;->IncentiveDownloadUtils:I

    rem-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_a

    .line 1
    goto :goto_e

    :cond_a
    const/16 v3, 0x41

    :goto_e
    packed-switch v3, :pswitch_data_7

    .line 13
    goto :goto_d

    .line 24
    :goto_f
    nop

    .line 27
    invoke-virtual {v1, v0}, Lccsanandroid/view/animation/Animation;->setFillAfter(Z)V

    .line 28
    new-instance v2, Lccsancom/san/landingpage/widget/ExpandableTextView$1;

    invoke-direct {v2, p0}, Lccsancom/san/landingpage/widget/ExpandableTextView$1;-><init>(Lccsancom/san/landingpage/widget/ExpandableTextView;)V

    invoke-virtual {v1, v2}, Lccsanandroid/view/animation/Animation;->setAnimationListener(Lccsanandroid/view/animation/Animation$AnimationListener;)V

    .line 53
    invoke-virtual {p0}, Lccsanandroid/widget/LinearLayout;->clearAnimation()V

    .line 54
    invoke-virtual {p0, v1}, Lccsanandroid/widget/LinearLayout;->startAnimation(Lccsanandroid/view/animation/Animation;)V

    sget v1, Lccsancom/san/landingpage/widget/ExpandableTextView;->removeDownloadListener:I

    xor-int/lit8 v2, v1, 0x4f

    and-int/lit8 v1, v1, 0x4f

    shl-int/lit8 v0, v1, 0x1

    neg-int v0, v0

    neg-int v0, v0

    and-int v1, v2, v0

    or-int/2addr v0, v2

    add-int/2addr v1, v0

    rem-int/lit16 v0, v1, 0x80

    sput v0, Lccsancom/san/landingpage/widget/ExpandableTextView;->IncentiveDownloadUtils:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_b

    .line 1
    const/16 v0, 0x56

    goto :goto_10

    :cond_b
    const/16 v0, 0x37

    :goto_10
    packed-switch v0, :pswitch_data_8

    .line 54
    goto :goto_11

    :pswitch_8
    return-void

    :goto_11
    const/16 v0, 0xa

    :try_start_2
    div-int/2addr v0, p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    throw p1

    :catchall_1
    move-exception p1

    throw p1

    .line 13
    :catchall_2
    move-exception p1

    goto :goto_13

    :goto_12
    throw p1

    :goto_13
    goto :goto_12

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x3b
        :pswitch_2
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_5
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x1
        :pswitch_3
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0x3
        :pswitch_4
    .end packed-switch

    :pswitch_data_6
    .packed-switch 0x0
        :pswitch_7
    .end packed-switch

    :pswitch_data_7
    .packed-switch 0x41
        :pswitch_6
    .end packed-switch

    :pswitch_data_8
    .packed-switch 0x37
        :pswitch_8
    .end packed-switch
.end method

.method protected onFinishInflate()V
    .locals 3

    .line 2
    sget v0, Lccsancom/san/landingpage/widget/ExpandableTextView;->IncentiveDownloadUtils:I

    and-int/lit8 v1, v0, 0x63

    xor-int/lit8 v2, v1, -0x1

    or-int/lit8 v0, v0, 0x63

    and-int/2addr v0, v2

    shl-int/lit8 v1, v1, 0x1

    or-int v2, v0, v1

    shl-int/lit8 v2, v2, 0x1

    xor-int/2addr v0, v1

    sub-int/2addr v2, v0

    rem-int/lit16 v0, v2, 0x80

    sput v0, Lccsancom/san/landingpage/widget/ExpandableTextView;->removeDownloadListener:I

    rem-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_0

    .line 1
    :cond_0
    invoke-super {p0}, Lccsanandroid/widget/LinearLayout;->onFinishInflate()V

    .line 2
    invoke-direct {p0}, Lccsancom/san/landingpage/widget/ExpandableTextView;->findViews()V

    sget v0, Lccsancom/san/landingpage/widget/ExpandableTextView;->removeDownloadListener:I

    and-int/lit8 v1, v0, 0x5b

    xor-int/lit8 v2, v1, -0x1

    or-int/lit8 v0, v0, 0x5b

    and-int/2addr v0, v2

    shl-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/san/landingpage/widget/ExpandableTextView;->IncentiveDownloadUtils:I

    rem-int/lit8 v0, v0, 0x2

    return-void
.end method

.method public onInterceptTouchEvent(Lccsanandroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "ev"    # Lccsanandroid/view/MotionEvent;

    .line 1
    .end local p1    # "ev":Lccsanandroid/view/MotionEvent;
    sget p1, Lccsancom/san/landingpage/widget/ExpandableTextView;->removeDownloadListener:I

    add-int/lit8 p1, p1, 0x44

    xor-int/lit8 v0, p1, -0x1

    and-int/lit8 p1, p1, -0x1

    const/4 v1, 0x1

    shl-int/2addr p1, v1

    add-int/2addr v0, p1

    rem-int/lit16 p1, v0, 0x80

    sput p1, Lccsancom/san/landingpage/widget/ExpandableTextView;->IncentiveDownloadUtils:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/16 v0, 0x5e

    goto :goto_0

    :cond_0
    const/16 v0, 0x47

    :goto_0
    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    iget-boolean v0, p0, Lccsancom/san/landingpage/widget/ExpandableTextView;->mAnimating:Z

    goto :goto_1

    :pswitch_0
    iget-boolean v0, p0, Lccsancom/san/landingpage/widget/ExpandableTextView;->mAnimating:Z

    :try_start_0
    array-length v3, v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    throw p1

    :goto_1
    and-int/lit8 v3, p1, 0x23

    or-int/lit8 p1, p1, 0x23

    add-int/2addr v3, p1

    rem-int/lit16 p1, v3, 0x80

    sput p1, Lccsancom/san/landingpage/widget/ExpandableTextView;->removeDownloadListener:I

    rem-int/lit8 v3, v3, 0x2

    if-nez v3, :cond_1

    const/4 v1, 0x0

    :cond_1
    packed-switch v1, :pswitch_data_1

    goto :goto_2

    :pswitch_1
    return v0

    :goto_2
    :try_start_1
    array-length p1, v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return v0

    :catchall_1
    move-exception p1

    throw p1

    :pswitch_data_0
    .packed-switch 0x5e
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
    .end packed-switch
.end method

.method protected onMeasure(II)V
    .locals 5
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 43
    .end local p1    # "widthMeasureSpec":I
    .end local p2    # "heightMeasureSpec":I
    nop

    .line 26
    sget v0, Lccsancom/san/landingpage/widget/ExpandableTextView;->removeDownloadListener:I

    and-int/lit8 v1, v0, 0x2b

    xor-int/lit8 v2, v1, -0x1

    or-int/lit8 v3, v0, 0x2b

    and-int/2addr v2, v3

    const/4 v3, 0x1

    shl-int/2addr v1, v3

    neg-int v1, v1

    neg-int v1, v1

    and-int v4, v2, v1

    or-int/2addr v1, v2

    add-int/2addr v4, v1

    rem-int/lit16 v1, v4, 0x80

    sput v1, Lccsancom/san/landingpage/widget/ExpandableTextView;->IncentiveDownloadUtils:I

    rem-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_0

    .line 1
    :cond_0
    iget-boolean v1, p0, Lccsancom/san/landingpage/widget/ExpandableTextView;->mRelayout:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 26
    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    :goto_0
    packed-switch v1, :pswitch_data_0

    .line 43
    add-int/lit8 v0, v0, 0x3a

    sub-int/2addr v0, v3

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/san/landingpage/widget/ExpandableTextView;->IncentiveDownloadUtils:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_2

    .line 26
    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    const/16 v1, 0x8

    packed-switch v0, :pswitch_data_1

    .line 43
    invoke-virtual {p0}, Lccsanandroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    const/16 v4, 0x22

    if-ne v0, v4, :cond_4

    goto :goto_2

    .line 1
    :pswitch_0
    invoke-virtual {p0}, Lccsanandroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-ne v0, v1, :cond_4

    :goto_2
    nop

    .line 43
    sget v0, Lccsancom/san/landingpage/widget/ExpandableTextView;->removeDownloadListener:I

    const/16 v1, 0x15

    xor-int/lit8 v2, v0, 0x15

    and-int/lit8 v4, v0, 0x15

    or-int/2addr v2, v4

    shl-int/2addr v2, v3

    and-int/lit8 v4, v0, -0x16

    xor-int/lit8 v0, v0, -0x1

    and-int/2addr v0, v1

    or-int/2addr v0, v4

    neg-int v0, v0

    or-int v1, v2, v0

    shl-int/2addr v1, v3

    xor-int/2addr v0, v2

    sub-int/2addr v1, v0

    rem-int/lit16 v0, v1, 0x80

    sput v0, Lccsancom/san/landingpage/widget/ExpandableTextView;->IncentiveDownloadUtils:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_3

    :cond_3
    :pswitch_1
    invoke-super {p0, p1, p2}, Lccsanandroid/widget/LinearLayout;->onMeasure(II)V

    sget p1, Lccsancom/san/landingpage/widget/ExpandableTextView;->removeDownloadListener:I

    xor-int/lit8 p2, p1, 0x47

    and-int/lit8 p1, p1, 0x47

    or-int/2addr p1, p2

    shl-int/2addr p1, v3

    neg-int p2, p2

    xor-int v0, p1, p2

    and-int/2addr p1, p2

    shl-int/2addr p1, v3

    add-int/2addr v0, p1

    rem-int/lit16 p1, v0, 0x80

    sput p1, Lccsancom/san/landingpage/widget/ExpandableTextView;->IncentiveDownloadUtils:I

    rem-int/lit8 v0, v0, 0x2

    return-void

    .line 1
    :cond_4
    nop

    .line 5
    iput-boolean v2, p0, Lccsancom/san/landingpage/widget/ExpandableTextView;->mRelayout:Z

    .line 9
    iget-object v0, p0, Lccsancom/san/landingpage/widget/ExpandableTextView;->mToggleView:Lccsanandroid/widget/TextView;

    invoke-virtual {v0, v1}, Lccsanandroid/widget/TextView;->setVisibility(I)V

    .line 10
    iget-object v0, p0, Lccsancom/san/landingpage/widget/ExpandableTextView;->mTv:Lccsanandroid/widget/TextView;

    const v1, 0x7fffffff

    invoke-virtual {v0, v1}, Lccsanandroid/widget/TextView;->setMaxLines(I)V

    .line 13
    invoke-super {p0, p1, p2}, Lccsanandroid/widget/LinearLayout;->onMeasure(II)V

    .line 16
    iget-object v0, p0, Lccsancom/san/landingpage/widget/ExpandableTextView;->mTv:Lccsanandroid/widget/TextView;

    invoke-virtual {v0}, Lccsanandroid/widget/TextView;->getLineCount()I

    move-result v0

    iget v1, p0, Lccsancom/san/landingpage/widget/ExpandableTextView;->mMaxCollapsedLines:I

    if-gt v0, v1, :cond_6

    .line 26
    sget p1, Lccsancom/san/landingpage/widget/ExpandableTextView;->removeDownloadListener:I

    const/4 p2, 0x5

    xor-int/lit8 v0, p1, 0x5

    and-int/lit8 v1, p1, 0x5

    or-int/2addr v0, v1

    shl-int/2addr v0, v3

    and-int/lit8 v1, p1, -0x6

    xor-int/lit8 p1, p1, -0x1

    and-int/2addr p1, p2

    or-int/2addr p1, v1

    sub-int/2addr v0, p1

    rem-int/lit16 p1, v0, 0x80

    sput p1, Lccsancom/san/landingpage/widget/ExpandableTextView;->IncentiveDownloadUtils:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_5

    goto :goto_3

    :cond_5
    const/4 v3, 0x0

    :goto_3
    packed-switch v3, :pswitch_data_2

    goto :goto_4

    .line 43
    :pswitch_2
    return-void

    .line 26
    :goto_4
    const/4 p1, 0x0

    :try_start_0
    array-length p1, p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    throw p1

    .line 21
    :cond_6
    iget-object v0, p0, Lccsancom/san/landingpage/widget/ExpandableTextView;->mTv:Lccsanandroid/widget/TextView;

    invoke-static {v0}, Lccsancom/san/landingpage/widget/ExpandableTextView;->getRealTextViewHeight(Lccsanandroid/widget/TextView;)I

    move-result v0

    iput v0, p0, Lccsancom/san/landingpage/widget/ExpandableTextView;->mTextHeightWithMaxLines:I

    .line 25
    iget-boolean v0, p0, Lccsancom/san/landingpage/widget/ExpandableTextView;->mCollapsed:Z

    if-eqz v0, :cond_7

    .line 26
    const/4 v0, 0x0

    goto :goto_5

    :cond_7
    const/4 v0, 0x1

    :goto_5
    packed-switch v0, :pswitch_data_3

    goto :goto_8

    .line 43
    :pswitch_3
    sget v0, Lccsancom/san/landingpage/widget/ExpandableTextView;->IncentiveDownloadUtils:I

    add-int/lit8 v0, v0, 0x52

    sub-int/2addr v0, v3

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/san/landingpage/widget/ExpandableTextView;->removeDownloadListener:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_8

    .line 26
    const/16 v0, 0x17

    goto :goto_6

    :cond_8
    const/16 v0, 0x35

    :goto_6
    packed-switch v0, :pswitch_data_4

    iget-object v0, p0, Lccsancom/san/landingpage/widget/ExpandableTextView;->mTv:Lccsanandroid/widget/TextView;

    iget v1, p0, Lccsancom/san/landingpage/widget/ExpandableTextView;->mMaxCollapsedLines:I

    invoke-virtual {v0, v1}, Lccsanandroid/widget/TextView;->setMaxLines(I)V

    goto :goto_7

    :pswitch_4
    iget-object v0, p0, Lccsancom/san/landingpage/widget/ExpandableTextView;->mTv:Lccsanandroid/widget/TextView;

    iget v1, p0, Lccsancom/san/landingpage/widget/ExpandableTextView;->mMaxCollapsedLines:I

    invoke-virtual {v0, v1}, Lccsanandroid/widget/TextView;->setMaxLines(I)V

    const/16 v0, 0x4c

    :try_start_1
    div-int/2addr v0, v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_7

    .line 43
    :catchall_1
    move-exception p1

    throw p1

    :goto_7
    nop

    .line 28
    :goto_8
    iget-object v0, p0, Lccsancom/san/landingpage/widget/ExpandableTextView;->mToggleView:Lccsanandroid/widget/TextView;

    invoke-virtual {v0, v2}, Lccsanandroid/widget/TextView;->setVisibility(I)V

    .line 31
    invoke-super {p0, p1, p2}, Lccsanandroid/widget/LinearLayout;->onMeasure(II)V

    .line 33
    iget-boolean p1, p0, Lccsancom/san/landingpage/widget/ExpandableTextView;->mCollapsed:Z

    if-eqz p1, :cond_a

    .line 35
    iget-object p1, p0, Lccsancom/san/landingpage/widget/ExpandableTextView;->mTv:Lccsanandroid/widget/TextView;

    new-instance p2, Lccsancom/san/landingpage/widget/ExpandableTextView$2;

    invoke-direct {p2, p0}, Lccsancom/san/landingpage/widget/ExpandableTextView$2;-><init>(Lccsancom/san/landingpage/widget/ExpandableTextView;)V

    invoke-virtual {p1, p2}, Lccsanandroid/widget/TextView;->post(Ljava/lang/Runnable;)Z

    .line 42
    invoke-virtual {p0}, Lccsanandroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result p1

    iput p1, p0, Lccsancom/san/landingpage/widget/ExpandableTextView;->mCollapsedHeight:I

    .line 26
    sget p1, Lccsancom/san/landingpage/widget/ExpandableTextView;->removeDownloadListener:I

    const/16 p2, 0x13

    xor-int/lit8 v0, p1, 0x13

    and-int/lit8 v1, p1, 0x13

    or-int/2addr v0, v1

    shl-int/2addr v0, v3

    and-int/lit8 v1, p1, -0x14

    xor-int/lit8 p1, p1, -0x1

    and-int/2addr p1, p2

    or-int/2addr p1, v1

    neg-int p1, p1

    xor-int/lit8 p1, p1, -0x1

    sub-int/2addr v0, p1

    sub-int/2addr v0, v3

    rem-int/lit16 p1, v0, 0x80

    sput p1, Lccsancom/san/landingpage/widget/ExpandableTextView;->IncentiveDownloadUtils:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_9

    const/4 v3, 0x0

    :cond_9
    packed-switch v3, :pswitch_data_5

    .line 42
    :cond_a
    :pswitch_5
    nop

    .line 43
    sget p1, Lccsancom/san/landingpage/widget/ExpandableTextView;->removeDownloadListener:I

    add-int/lit8 p1, p1, 0x3b

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lccsancom/san/landingpage/widget/ExpandableTextView;->IncentiveDownloadUtils:I

    rem-int/lit8 p1, p1, 0x2

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_2
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_3
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x17
        :pswitch_4
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0x0
        :pswitch_5
    .end packed-switch
.end method

.method public setOnExpandStateChangeListener(Lccsancom/san/landingpage/widget/ExpandableTextView$OnExpandStateChangeListener;)V
    .locals 3
    .param p1, "listener"    # Lccsancom/san/landingpage/widget/ExpandableTextView$OnExpandStateChangeListener;

    .line 1
    .end local p1    # "listener":Lccsancom/san/landingpage/widget/ExpandableTextView$OnExpandStateChangeListener;
    sget v0, Lccsancom/san/landingpage/widget/ExpandableTextView;->removeDownloadListener:I

    and-int/lit8 v1, v0, 0x79

    xor-int/lit8 v2, v1, -0x1

    or-int/lit8 v0, v0, 0x79

    and-int/2addr v0, v2

    shl-int/lit8 v1, v1, 0x1

    neg-int v1, v1

    neg-int v1, v1

    or-int v2, v0, v1

    shl-int/lit8 v2, v2, 0x1

    xor-int/2addr v0, v1

    sub-int/2addr v2, v0

    rem-int/lit16 v0, v2, 0x80

    sput v0, Lccsancom/san/landingpage/widget/ExpandableTextView;->IncentiveDownloadUtils:I

    rem-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_0

    const/16 v0, 0x4c

    goto :goto_0

    :cond_0
    const/16 v0, 0x59

    :goto_0
    iput-object p1, p0, Lccsancom/san/landingpage/widget/ExpandableTextView;->mListener:Lccsancom/san/landingpage/widget/ExpandableTextView$OnExpandStateChangeListener;

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    const/4 p1, 0x0

    :try_start_0
    invoke-super {p1}, Ljava/lang/Object;->hashCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    throw p1

    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x4c
        :pswitch_0
    .end packed-switch
.end method

.method public setOrientation(I)V
    .locals 3
    .param p1, "orientation"    # I

    .line 2
    .end local p1    # "orientation":I
    sget v0, Lccsancom/san/landingpage/widget/ExpandableTextView;->IncentiveDownloadUtils:I

    xor-int/lit8 v1, v0, 0x1

    and-int/lit8 v0, v0, 0x1

    shl-int/lit8 v0, v0, 0x1

    neg-int v0, v0

    neg-int v0, v0

    or-int v2, v1, v0

    shl-int/lit8 v2, v2, 0x1

    xor-int/2addr v0, v1

    sub-int/2addr v2, v0

    rem-int/lit16 v0, v2, 0x80

    sput v0, Lccsancom/san/landingpage/widget/ExpandableTextView;->removeDownloadListener:I

    rem-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_0

    const/16 v0, 0x54

    goto :goto_0

    :cond_0
    const/16 v0, 0x4b

    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 0
    if-eqz p1, :cond_2

    goto :goto_2

    .line 2
    :pswitch_0
    const/16 v0, 0x2c

    :try_start_0
    div-int/lit8 v0, v0, 0x0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_1

    const/16 v0, 0x58

    goto :goto_1

    :cond_1
    const/16 v0, 0x56

    :goto_1
    packed-switch v0, :pswitch_data_1

    goto :goto_4

    :catchall_0
    move-exception p1

    throw p1

    :goto_2
    const/16 v0, 0x4e

    goto :goto_3

    :cond_2
    const/16 v0, 0x5d

    :goto_3
    packed-switch v0, :pswitch_data_2

    :goto_4
    goto :goto_5

    :pswitch_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "ExpandableTextView only supports Vertical Orientation."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1
    :goto_5
    invoke-super {p0, p1}, Lccsanandroid/widget/LinearLayout;->setOrientation(I)V

    .line 2
    sget p1, Lccsancom/san/landingpage/widget/ExpandableTextView;->removeDownloadListener:I

    xor-int/lit8 v0, p1, 0x43

    and-int/lit8 p1, p1, 0x43

    shl-int/lit8 p1, p1, 0x1

    add-int/2addr v0, p1

    rem-int/lit16 p1, v0, 0x80

    sput p1, Lccsancom/san/landingpage/widget/ExpandableTextView;->IncentiveDownloadUtils:I

    rem-int/lit8 v0, v0, 0x2

    return-void

    :pswitch_data_0
    .packed-switch 0x54
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x56
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x5d
        :pswitch_1
    .end packed-switch
.end method

.method public setText(Ljava/lang/CharSequence;)V
    .locals 4
    .param p1, "text"    # Ljava/lang/CharSequence;

    .line 6
    .end local p1    # "text":Ljava/lang/CharSequence;
    sget v0, Lccsancom/san/landingpage/widget/ExpandableTextView;->removeDownloadListener:I

    xor-int/lit8 v1, v0, 0x5

    and-int/lit8 v0, v0, 0x5

    or-int/2addr v0, v1

    const/4 v2, 0x1

    shl-int/2addr v0, v2

    neg-int v1, v1

    and-int v3, v0, v1

    or-int/2addr v0, v1

    add-int/2addr v3, v0

    rem-int/lit16 v0, v3, 0x80

    sput v0, Lccsancom/san/landingpage/widget/ExpandableTextView;->IncentiveDownloadUtils:I

    rem-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_0

    .line 3
    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/16 v0, 0x1d

    :goto_0
    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    .line 1
    iput-boolean v2, p0, Lccsancom/san/landingpage/widget/ExpandableTextView;->mRelayout:Z

    .line 2
    iget-object v0, p0, Lccsancom/san/landingpage/widget/ExpandableTextView;->mTv:Lccsanandroid/widget/TextView;

    invoke-virtual {v0, p1}, Lccsanandroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3
    invoke-static {p1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_3

    .line 6
    :pswitch_0
    nop

    .line 1
    iput-boolean v2, p0, Lccsancom/san/landingpage/widget/ExpandableTextView;->mRelayout:Z

    .line 2
    iget-object v0, p0, Lccsancom/san/landingpage/widget/ExpandableTextView;->mTv:Lccsanandroid/widget/TextView;

    invoke-virtual {v0, p1}, Lccsanandroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3
    invoke-static {p1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    packed-switch p1, :pswitch_data_1

    :goto_2
    goto :goto_6

    :goto_3
    const/4 p1, 0x0

    goto :goto_4

    :cond_2
    const/4 p1, 0x1

    :goto_4
    packed-switch p1, :pswitch_data_2

    goto :goto_2

    :pswitch_1
    sget p1, Lccsancom/san/landingpage/widget/ExpandableTextView;->IncentiveDownloadUtils:I

    add-int/lit8 p1, p1, 0x25

    sub-int/2addr p1, v2

    sub-int/2addr p1, v1

    sub-int/2addr p1, v2

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lccsancom/san/landingpage/widget/ExpandableTextView;->removeDownloadListener:I

    rem-int/lit8 p1, p1, 0x2

    if-nez p1, :cond_3

    .line 6
    :cond_3
    :goto_5
    goto :goto_8

    :goto_6
    sget p1, Lccsancom/san/landingpage/widget/ExpandableTextView;->IncentiveDownloadUtils:I

    add-int/lit8 p1, p1, 0x47

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lccsancom/san/landingpage/widget/ExpandableTextView;->removeDownloadListener:I

    rem-int/lit8 p1, p1, 0x2

    if-nez p1, :cond_4

    .line 3
    const/16 p1, 0x4a

    goto :goto_7

    :cond_4
    const/16 p1, 0x4b

    :goto_7
    packed-switch p1, :pswitch_data_3

    .line 6
    const/16 p1, 0x41

    const/16 v1, 0x41

    goto :goto_5

    .line 3
    :pswitch_2
    const/16 p1, 0x8

    const/16 v1, 0x8

    goto :goto_5

    :goto_8
    invoke-virtual {p0, v1}, Lccsanandroid/widget/LinearLayout;->setVisibility(I)V

    .line 4
    invoke-virtual {p0}, Lccsanandroid/widget/LinearLayout;->clearAnimation()V

    .line 5
    invoke-virtual {p0}, Lccsanandroid/widget/LinearLayout;->getLayoutParams()Lccsanandroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    const/4 v0, -0x2

    iput v0, p1, Lccsanandroid/view/ViewGroup$LayoutParams;->height:I

    .line 6
    invoke-virtual {p0}, Lccsanandroid/widget/LinearLayout;->requestLayout()V

    .line 3
    sget p1, Lccsancom/san/landingpage/widget/ExpandableTextView;->IncentiveDownloadUtils:I

    and-int/lit8 v0, p1, 0x31

    or-int/lit8 p1, p1, 0x31

    add-int/2addr v0, p1

    rem-int/lit16 p1, v0, 0x80

    sput p1, Lccsancom/san/landingpage/widget/ExpandableTextView;->removeDownloadListener:I

    rem-int/lit8 v0, v0, 0x2

    .line 6
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_1
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x4b
        :pswitch_2
    .end packed-switch
.end method

.method public setText(Ljava/lang/CharSequence;Lccsanandroid/util/SparseBooleanArray;I)V
    .locals 3
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "collapsedStatus"    # Lccsanandroid/util/SparseBooleanArray;
    .param p3, "position"    # I

    .line 13
    .end local p1    # "text":Ljava/lang/CharSequence;
    .end local p2    # "collapsedStatus":Lccsanandroid/util/SparseBooleanArray;
    .end local p3    # "position":I
    sget v0, Lccsancom/san/landingpage/widget/ExpandableTextView;->IncentiveDownloadUtils:I

    xor-int/lit8 v1, v0, 0x57

    and-int/lit8 v0, v0, 0x57

    or-int/2addr v0, v1

    const/4 v2, 0x1

    shl-int/2addr v0, v2

    neg-int v1, v1

    xor-int/lit8 v1, v1, -0x1

    sub-int/2addr v0, v1

    sub-int/2addr v0, v2

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/san/landingpage/widget/ExpandableTextView;->removeDownloadListener:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 7
    :pswitch_0
    iput-object p2, p0, Lccsancom/san/landingpage/widget/ExpandableTextView;->mCollapsedStatus:Lccsanandroid/util/SparseBooleanArray;

    .line 8
    iput p3, p0, Lccsancom/san/landingpage/widget/ExpandableTextView;->mPosition:I

    .line 9
    invoke-virtual {p2, p3, v2}, Lccsanandroid/util/SparseBooleanArray;->get(IZ)Z

    move-result p2

    .line 10
    invoke-virtual {p0}, Lccsanandroid/widget/LinearLayout;->clearAnimation()V

    .line 11
    iput-boolean p2, p0, Lccsancom/san/landingpage/widget/ExpandableTextView;->mCollapsed:Z

    .line 12
    iget-object p3, p0, Lccsancom/san/landingpage/widget/ExpandableTextView;->mExpandIndicatorController:Lccsancom/san/landingpage/widget/ExpandableTextView$ExpandIndicatorController;

    invoke-interface {p3, p2}, Lccsancom/san/landingpage/widget/ExpandableTextView$ExpandIndicatorController;->changeState(Z)V

    .line 13
    invoke-virtual {p0, p1}, Lccsancom/san/landingpage/widget/ExpandableTextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public setToggleViewText(Ljava/lang/CharSequence;)V
    .locals 3
    .param p1, "text"    # Ljava/lang/CharSequence;

    .line 1
    .end local p1    # "text":Ljava/lang/CharSequence;
    sget v0, Lccsancom/san/landingpage/widget/ExpandableTextView;->removeDownloadListener:I

    add-int/lit8 v0, v0, 0x40

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    rem-int/lit16 v2, v0, 0x80

    sput v2, Lccsancom/san/landingpage/widget/ExpandableTextView;->IncentiveDownloadUtils:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    :cond_0
    iget-object v0, p0, Lccsancom/san/landingpage/widget/ExpandableTextView;->mToggleView:Lccsanandroid/widget/TextView;

    invoke-virtual {v0, p1}, Lccsanandroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget p1, Lccsancom/san/landingpage/widget/ExpandableTextView;->IncentiveDownloadUtils:I

    and-int/lit8 v0, p1, 0x4b

    xor-int/lit8 v2, v0, -0x1

    or-int/lit8 p1, p1, 0x4b

    and-int/2addr p1, v2

    shl-int/2addr v0, v1

    xor-int v2, p1, v0

    and-int/2addr p1, v0

    shl-int/2addr p1, v1

    add-int/2addr v2, p1

    rem-int/lit16 p1, v2, 0x80

    sput p1, Lccsancom/san/landingpage/widget/ExpandableTextView;->removeDownloadListener:I

    rem-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    packed-switch v1, :pswitch_data_0

    return-void

    :pswitch_0
    const/4 p1, 0x0

    :try_start_0
    invoke-super {p1}, Ljava/lang/Object;->hashCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    throw p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
