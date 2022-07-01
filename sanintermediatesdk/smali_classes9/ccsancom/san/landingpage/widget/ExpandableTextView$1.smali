.class Lccsancom/san/landingpage/widget/ExpandableTextView$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lccsanandroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/san/landingpage/widget/ExpandableTextView;->onClick(Lccsanandroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static IncentiveDownloadUtils:I

.field private static addDownloadListener:I


# instance fields
.field final synthetic this$0:Lccsancom/san/landingpage/widget/ExpandableTextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lccsancom/san/landingpage/widget/ExpandableTextView$1;->IncentiveDownloadUtils:I

    const/4 v0, 0x1

    sput v0, Lccsancom/san/landingpage/widget/ExpandableTextView$1;->addDownloadListener:I

    return-void
.end method

.method constructor <init>(Lccsancom/san/landingpage/widget/ExpandableTextView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lccsancom/san/landingpage/widget/ExpandableTextView$1;->this$0:Lccsancom/san/landingpage/widget/ExpandableTextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Lccsanandroid/view/animation/Animation;)V
    .locals 4
    .param p1, "animation"    # Lccsanandroid/view/animation/Animation;

    .line 7
    .end local p1    # "animation":Lccsanandroid/view/animation/Animation;
    sget p1, Lccsancom/san/landingpage/widget/ExpandableTextView$1;->addDownloadListener:I

    xor-int/lit8 v0, p1, 0x4b

    and-int/lit8 v1, p1, 0x4b

    or-int/2addr v0, v1

    shl-int/lit8 v0, v0, 0x1

    and-int/lit8 v1, p1, -0x4c

    xor-int/lit8 p1, p1, -0x1

    and-int/lit8 p1, p1, 0x4b

    or-int/2addr p1, v1

    neg-int p1, p1

    and-int v1, v0, p1

    or-int/2addr p1, v0

    add-int/2addr v1, p1

    rem-int/lit16 p1, v1, 0x80

    sput p1, Lccsancom/san/landingpage/widget/ExpandableTextView$1;->IncentiveDownloadUtils:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_0

    .line 1
    :cond_0
    iget-object p1, p0, Lccsancom/san/landingpage/widget/ExpandableTextView$1;->this$0:Lccsancom/san/landingpage/widget/ExpandableTextView;

    invoke-virtual {p1}, Lccsanandroid/widget/LinearLayout;->clearAnimation()V

    .line 3
    iget-object p1, p0, Lccsancom/san/landingpage/widget/ExpandableTextView$1;->this$0:Lccsancom/san/landingpage/widget/ExpandableTextView;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lccsancom/san/landingpage/widget/ExpandableTextView;->access$202(Lccsancom/san/landingpage/widget/ExpandableTextView;Z)Z

    .line 6
    iget-object p1, p0, Lccsancom/san/landingpage/widget/ExpandableTextView$1;->this$0:Lccsancom/san/landingpage/widget/ExpandableTextView;

    invoke-static {p1}, Lccsancom/san/landingpage/widget/ExpandableTextView;->access$300(Lccsancom/san/landingpage/widget/ExpandableTextView;)Lccsancom/san/landingpage/widget/ExpandableTextView$OnExpandStateChangeListener;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 7
    const/16 p1, 0x3e

    goto :goto_0

    :cond_1
    const/16 p1, 0x46

    :goto_0
    packed-switch p1, :pswitch_data_0

    sget p1, Lccsancom/san/landingpage/widget/ExpandableTextView$1;->addDownloadListener:I

    add-int/lit8 p1, p1, 0x62

    and-int/lit8 v0, p1, -0x1

    or-int/lit8 p1, p1, -0x1

    add-int/2addr v0, p1

    rem-int/lit16 p1, v0, 0x80

    sput p1, Lccsancom/san/landingpage/widget/ExpandableTextView$1;->IncentiveDownloadUtils:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_2

    :cond_2
    iget-object p1, p0, Lccsancom/san/landingpage/widget/ExpandableTextView$1;->this$0:Lccsancom/san/landingpage/widget/ExpandableTextView;

    invoke-static {p1}, Lccsancom/san/landingpage/widget/ExpandableTextView;->access$300(Lccsancom/san/landingpage/widget/ExpandableTextView;)Lccsancom/san/landingpage/widget/ExpandableTextView$OnExpandStateChangeListener;

    move-result-object p1

    iget-object v0, p0, Lccsancom/san/landingpage/widget/ExpandableTextView$1;->this$0:Lccsancom/san/landingpage/widget/ExpandableTextView;

    iget-object v1, v0, Lccsancom/san/landingpage/widget/ExpandableTextView;->mTv:Lccsanandroid/widget/TextView;

    invoke-static {v0}, Lccsancom/san/landingpage/widget/ExpandableTextView;->access$400(Lccsancom/san/landingpage/widget/ExpandableTextView;)Z

    move-result v0

    and-int/lit8 v2, v0, -0x2

    xor-int/lit8 v0, v0, -0x1

    and-int/lit8 v0, v0, 0x1

    xor-int v3, v2, v0

    and-int/2addr v0, v2

    or-int/2addr v0, v3

    invoke-interface {p1, v1, v0}, Lccsancom/san/landingpage/widget/ExpandableTextView$OnExpandStateChangeListener;->onExpandStateChanged(Lccsanandroid/widget/TextView;Z)V

    sget p1, Lccsancom/san/landingpage/widget/ExpandableTextView$1;->IncentiveDownloadUtils:I

    and-int/lit8 v0, p1, 0x3f

    xor-int/lit8 p1, p1, 0x3f

    or-int/2addr p1, v0

    xor-int/lit8 p1, p1, -0x1

    sub-int/2addr v0, p1

    add-int/lit8 v0, v0, -0x1

    rem-int/lit16 p1, v0, 0x80

    sput p1, Lccsancom/san/landingpage/widget/ExpandableTextView$1;->addDownloadListener:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_3

    const/16 p1, 0x50

    goto :goto_1

    :cond_3
    const/16 p1, 0x4d

    :goto_1
    :pswitch_0
    sget p1, Lccsancom/san/landingpage/widget/ExpandableTextView$1;->addDownloadListener:I

    xor-int/lit8 v0, p1, 0x3f

    and-int/lit8 v1, p1, 0x3f

    or-int/2addr v0, v1

    shl-int/lit8 v0, v0, 0x1

    xor-int/lit8 v1, v1, -0x1

    or-int/lit8 p1, p1, 0x3f

    and-int/2addr p1, v1

    neg-int p1, p1

    xor-int v1, v0, p1

    and-int/2addr p1, v0

    shl-int/lit8 p1, p1, 0x1

    add-int/2addr v1, p1

    rem-int/lit16 p1, v1, 0x80

    sput p1, Lccsancom/san/landingpage/widget/ExpandableTextView$1;->IncentiveDownloadUtils:I

    rem-int/lit8 v1, v1, 0x2

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x46
        :pswitch_0
    .end packed-switch
.end method

.method public onAnimationRepeat(Lccsanandroid/view/animation/Animation;)V
    .locals 2

    sget p1, Lccsancom/san/landingpage/widget/ExpandableTextView$1;->IncentiveDownloadUtils:I

    add-int/lit8 p1, p1, 0x59

    const/4 v0, 0x1

    sub-int/2addr p1, v0

    xor-int/lit8 v1, p1, -0x1

    and-int/lit8 p1, p1, -0x1

    shl-int/2addr p1, v0

    add-int/2addr v1, p1

    rem-int/lit16 p1, v1, 0x80

    sput p1, Lccsancom/san/landingpage/widget/ExpandableTextView$1;->addDownloadListener:I

    rem-int/lit8 v1, v1, 0x2

    const/4 p1, 0x0

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    packed-switch v0, :pswitch_data_0

    return-void

    :pswitch_0
    const/4 v0, 0x4

    :try_start_0
    div-int/2addr v0, p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    throw p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public onAnimationStart(Lccsanandroid/view/animation/Animation;)V
    .locals 2
    .param p1, "animation"    # Lccsanandroid/view/animation/Animation;

    .line 1
    .end local p1    # "animation":Lccsanandroid/view/animation/Animation;
    sget p1, Lccsancom/san/landingpage/widget/ExpandableTextView$1;->IncentiveDownloadUtils:I

    xor-int/lit8 v0, p1, 0x29

    and-int/lit8 p1, p1, 0x29

    const/4 v1, 0x1

    shl-int/2addr p1, v1

    add-int/2addr v0, p1

    rem-int/lit16 p1, v0, 0x80

    sput p1, Lccsancom/san/landingpage/widget/ExpandableTextView$1;->addDownloadListener:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iget-object p1, p0, Lccsancom/san/landingpage/widget/ExpandableTextView$1;->this$0:Lccsancom/san/landingpage/widget/ExpandableTextView;

    iget-object v0, p1, Lccsancom/san/landingpage/widget/ExpandableTextView;->mTv:Lccsanandroid/widget/TextView;

    invoke-static {p1}, Lccsancom/san/landingpage/widget/ExpandableTextView;->access$000(Lccsancom/san/landingpage/widget/ExpandableTextView;)F

    move-result p1

    invoke-static {v0, p1}, Lccsancom/san/landingpage/widget/ExpandableTextView;->access$100(Lccsanandroid/view/View;F)V

    packed-switch v1, :pswitch_data_0

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
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
