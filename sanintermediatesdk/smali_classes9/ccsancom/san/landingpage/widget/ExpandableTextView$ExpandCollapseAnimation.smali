.class Lccsancom/san/landingpage/widget/ExpandableTextView$ExpandCollapseAnimation;
.super Lccsanandroid/view/animation/Animation;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/san/landingpage/widget/ExpandableTextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ExpandCollapseAnimation"
.end annotation


# static fields
.field private static addDownloadListener:I

.field private static unifiedDownload:I


# instance fields
.field private final mEndHeight:I

.field private final mStartHeight:I

.field private final mTargetView:Lccsanandroid/view/View;

.field final synthetic this$0:Lccsancom/san/landingpage/widget/ExpandableTextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lccsancom/san/landingpage/widget/ExpandableTextView$ExpandCollapseAnimation;->addDownloadListener:I

    const/4 v0, 0x1

    sput v0, Lccsancom/san/landingpage/widget/ExpandableTextView$ExpandCollapseAnimation;->unifiedDownload:I

    return-void
.end method

.method public constructor <init>(Lccsancom/san/landingpage/widget/ExpandableTextView;Lccsanandroid/view/View;II)V
    .locals 0

    .line 1
    iput-object p1, p0, Lccsancom/san/landingpage/widget/ExpandableTextView$ExpandCollapseAnimation;->this$0:Lccsancom/san/landingpage/widget/ExpandableTextView;

    invoke-direct {p0}, Lccsanandroid/view/animation/Animation;-><init>()V

    .line 2
    iput-object p2, p0, Lccsancom/san/landingpage/widget/ExpandableTextView$ExpandCollapseAnimation;->mTargetView:Lccsanandroid/view/View;

    .line 3
    iput p3, p0, Lccsancom/san/landingpage/widget/ExpandableTextView$ExpandCollapseAnimation;->mStartHeight:I

    .line 4
    iput p4, p0, Lccsancom/san/landingpage/widget/ExpandableTextView$ExpandCollapseAnimation;->mEndHeight:I

    .line 5
    invoke-static {p1}, Lccsancom/san/landingpage/widget/ExpandableTextView;->access$600(Lccsancom/san/landingpage/widget/ExpandableTextView;)I

    move-result p1

    int-to-long p1, p1

    invoke-virtual {p0, p1, p2}, Lccsanandroid/view/animation/Animation;->setDuration(J)V

    return-void
.end method


# virtual methods
.method protected applyTransformation(FLccsanandroid/view/animation/Transformation;)V
    .locals 5
    .param p1, "interpolatedTime"    # F
    .param p2, "t"    # Lccsanandroid/view/animation/Transformation;

    .line 7
    .end local p1    # "interpolatedTime":F
    .end local p2    # "t":Lccsanandroid/view/animation/Transformation;
    sget p2, Lccsancom/san/landingpage/widget/ExpandableTextView$ExpandCollapseAnimation;->unifiedDownload:I

    and-int/lit8 v0, p2, 0x71

    xor-int/lit8 p2, p2, 0x71

    or-int/2addr p2, v0

    neg-int p2, p2

    neg-int p2, p2

    xor-int/lit8 p2, p2, -0x1

    sub-int/2addr v0, p2

    const/4 p2, 0x1

    sub-int/2addr v0, p2

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/san/landingpage/widget/ExpandableTextView$ExpandCollapseAnimation;->addDownloadListener:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    .line 1
    :cond_0
    iget v0, p0, Lccsancom/san/landingpage/widget/ExpandableTextView$ExpandCollapseAnimation;->mEndHeight:I

    iget v1, p0, Lccsancom/san/landingpage/widget/ExpandableTextView$ExpandCollapseAnimation;->mStartHeight:I

    neg-int v2, v1

    and-int v3, v0, v2

    or-int/2addr v0, v2

    xor-int v2, v3, v0

    and-int/2addr v0, v3

    shl-int/2addr v0, p2

    add-int/2addr v2, v0

    int-to-float v0, v2

    mul-float v0, v0, p1

    int-to-float v1, v1

    add-float/2addr v0, v1

    float-to-int v0, v0

    .line 2
    iget-object v1, p0, Lccsancom/san/landingpage/widget/ExpandableTextView$ExpandCollapseAnimation;->this$0:Lccsancom/san/landingpage/widget/ExpandableTextView;

    iget-object v2, v1, Lccsancom/san/landingpage/widget/ExpandableTextView;->mTv:Lccsanandroid/widget/TextView;

    invoke-static {v1}, Lccsancom/san/landingpage/widget/ExpandableTextView;->access$500(Lccsancom/san/landingpage/widget/ExpandableTextView;)I

    move-result v1

    neg-int v1, v1

    xor-int v3, v0, v1

    and-int/2addr v1, v0

    or-int/2addr v1, v3

    shl-int/2addr v1, p2

    neg-int v3, v3

    and-int v4, v1, v3

    or-int/2addr v1, v3

    add-int/2addr v4, v1

    invoke-virtual {v2, v4}, Lccsanandroid/widget/TextView;->setMaxHeight(I)V

    .line 3
    iget-object v1, p0, Lccsancom/san/landingpage/widget/ExpandableTextView$ExpandCollapseAnimation;->this$0:Lccsancom/san/landingpage/widget/ExpandableTextView;

    invoke-static {v1}, Lccsancom/san/landingpage/widget/ExpandableTextView;->access$000(Lccsancom/san/landingpage/widget/ExpandableTextView;)F

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v1, v2}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_1

    .line 7
    const/4 v1, 0x3

    goto :goto_0

    :cond_1
    const/16 v1, 0x30

    :goto_0
    packed-switch v1, :pswitch_data_0

    sget v1, Lccsancom/san/landingpage/widget/ExpandableTextView$ExpandCollapseAnimation;->addDownloadListener:I

    and-int/lit8 v3, v1, -0x7c

    xor-int/lit8 v4, v1, -0x1

    and-int/lit8 v4, v4, 0x7b

    or-int/2addr v3, v4

    and-int/lit8 v1, v1, 0x7b

    shl-int/2addr v1, p2

    neg-int v1, v1

    neg-int v1, v1

    and-int v4, v3, v1

    or-int/2addr v1, v3

    add-int/2addr v4, v1

    rem-int/lit16 v1, v4, 0x80

    sput v1, Lccsancom/san/landingpage/widget/ExpandableTextView$ExpandCollapseAnimation;->unifiedDownload:I

    rem-int/lit8 v4, v4, 0x2

    if-nez v4, :cond_2

    .line 4
    :cond_2
    iget-object v1, p0, Lccsancom/san/landingpage/widget/ExpandableTextView$ExpandCollapseAnimation;->this$0:Lccsancom/san/landingpage/widget/ExpandableTextView;

    iget-object v3, v1, Lccsancom/san/landingpage/widget/ExpandableTextView;->mTv:Lccsanandroid/widget/TextView;

    invoke-static {v1}, Lccsancom/san/landingpage/widget/ExpandableTextView;->access$000(Lccsancom/san/landingpage/widget/ExpandableTextView;)F

    move-result v1

    iget-object v4, p0, Lccsancom/san/landingpage/widget/ExpandableTextView$ExpandCollapseAnimation;->this$0:Lccsancom/san/landingpage/widget/ExpandableTextView;

    invoke-static {v4}, Lccsancom/san/landingpage/widget/ExpandableTextView;->access$000(Lccsancom/san/landingpage/widget/ExpandableTextView;)F

    move-result v4

    sub-float/2addr v2, v4

    mul-float p1, p1, v2

    add-float/2addr v1, p1

    invoke-static {v3, v1}, Lccsancom/san/landingpage/widget/ExpandableTextView;->access$100(Lccsanandroid/view/View;F)V

    .line 7
    sget p1, Lccsancom/san/landingpage/widget/ExpandableTextView$ExpandCollapseAnimation;->addDownloadListener:I

    xor-int/lit8 v1, p1, 0x2d

    and-int/lit8 p1, p1, 0x2d

    shl-int/2addr p1, p2

    add-int/2addr v1, p1

    rem-int/lit16 p1, v1, 0x80

    sput p1, Lccsancom/san/landingpage/widget/ExpandableTextView$ExpandCollapseAnimation;->unifiedDownload:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_3

    .line 6
    :cond_3
    :pswitch_0
    iget-object p1, p0, Lccsancom/san/landingpage/widget/ExpandableTextView$ExpandCollapseAnimation;->mTargetView:Lccsanandroid/view/View;

    invoke-virtual {p1}, Lccsanandroid/view/View;->getLayoutParams()Lccsanandroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    iput v0, p1, Lccsanandroid/view/ViewGroup$LayoutParams;->height:I

    .line 7
    iget-object p1, p0, Lccsancom/san/landingpage/widget/ExpandableTextView$ExpandCollapseAnimation;->mTargetView:Lccsanandroid/view/View;

    invoke-virtual {p1}, Lccsanandroid/view/View;->requestLayout()V

    sget p1, Lccsancom/san/landingpage/widget/ExpandableTextView$ExpandCollapseAnimation;->addDownloadListener:I

    and-int/lit8 v0, p1, 0x11

    xor-int/lit8 v1, v0, -0x1

    or-int/lit8 p1, p1, 0x11

    and-int/2addr p1, v1

    shl-int/2addr v0, p2

    xor-int/lit8 v0, v0, -0x1

    sub-int/2addr p1, v0

    sub-int/2addr p1, p2

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lccsancom/san/landingpage/widget/ExpandableTextView$ExpandCollapseAnimation;->unifiedDownload:I

    rem-int/lit8 p1, p1, 0x2

    const/4 v0, 0x0

    if-nez p1, :cond_4

    goto :goto_1

    :cond_4
    const/4 p2, 0x0

    :goto_1
    packed-switch p2, :pswitch_data_1

    goto :goto_2

    :pswitch_1
    return-void

    :goto_2
    const/16 p1, 0x38

    :try_start_0
    div-int/2addr p1, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    throw p1

    :pswitch_data_0
    .packed-switch 0x30
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch
.end method

.method public initialize(IIII)V
    .locals 2
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "parentWidth"    # I
    .param p4, "parentHeight"    # I

    .line 1
    .end local p1    # "width":I
    .end local p2    # "height":I
    .end local p3    # "parentWidth":I
    .end local p4    # "parentHeight":I
    sget v0, Lccsancom/san/landingpage/widget/ExpandableTextView$ExpandCollapseAnimation;->addDownloadListener:I

    add-int/lit8 v0, v0, 0x21

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/san/landingpage/widget/ExpandableTextView$ExpandCollapseAnimation;->unifiedDownload:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    const/16 v0, 0x2b

    goto :goto_0

    :cond_0
    const/16 v0, 0x56

    :goto_0
    invoke-super {p0, p1, p2, p3, p4}, Lccsanandroid/view/animation/Animation;->initialize(IIII)V

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    const/4 p1, 0x0

    :try_start_0
    array-length p1, p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    throw p1

    :goto_1
    sget p1, Lccsancom/san/landingpage/widget/ExpandableTextView$ExpandCollapseAnimation;->addDownloadListener:I

    const/16 p2, 0x71

    xor-int/lit8 p3, p1, 0x71

    and-int/lit8 p4, p1, 0x71

    or-int/2addr p3, p4

    shl-int/lit8 p3, p3, 0x1

    and-int/lit8 p4, p1, -0x72

    xor-int/lit8 p1, p1, -0x1

    and-int/2addr p1, p2

    or-int/2addr p1, p4

    neg-int p1, p1

    and-int p2, p3, p1

    or-int/2addr p1, p3

    add-int/2addr p2, p1

    rem-int/lit16 p1, p2, 0x80

    sput p1, Lccsancom/san/landingpage/widget/ExpandableTextView$ExpandCollapseAnimation;->unifiedDownload:I

    rem-int/lit8 p2, p2, 0x2

    return-void

    :pswitch_data_0
    .packed-switch 0x2b
        :pswitch_0
    .end packed-switch
.end method

.method public willChangeBounds()Z
    .locals 3

    sget v0, Lccsancom/san/landingpage/widget/ExpandableTextView$ExpandCollapseAnimation;->addDownloadListener:I

    or-int/lit8 v1, v0, 0x73

    shl-int/lit8 v2, v1, 0x1

    and-int/lit8 v0, v0, 0x73

    xor-int/lit8 v0, v0, -0x1

    and-int/2addr v0, v1

    neg-int v0, v0

    and-int v1, v2, v0

    or-int/2addr v0, v2

    add-int/2addr v1, v0

    rem-int/lit16 v0, v1, 0x80

    sput v0, Lccsancom/san/landingpage/widget/ExpandableTextView$ExpandCollapseAnimation;->unifiedDownload:I

    rem-int/lit8 v1, v1, 0x2

    and-int/lit8 v1, v0, 0x59

    xor-int/lit8 v2, v1, -0x1

    or-int/lit8 v0, v0, 0x59

    and-int/2addr v0, v2

    const/4 v2, 0x1

    shl-int/2addr v1, v2

    neg-int v1, v1

    neg-int v1, v1

    xor-int/lit8 v1, v1, -0x1

    sub-int/2addr v0, v1

    sub-int/2addr v0, v2

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/san/landingpage/widget/ExpandableTextView$ExpandCollapseAnimation;->addDownloadListener:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    packed-switch v0, :pswitch_data_0

    return v2

    :pswitch_0
    const/4 v0, 0x0

    :try_start_0
    array-length v0, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v2

    :catchall_0
    move-exception v0

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
