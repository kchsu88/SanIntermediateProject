.class public abstract Lccsancom/san/landingpage/BaseLandingPageActivity;
.super Lccsanandroidx/fragment/app/FragmentActivity;
.source ""


# static fields
.field private static final ANIMATED_DOOR_LAYOUT_FLOAT_PROPERTY:Lccsanandroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lccsanandroid/util/Property<",
            "Lccsancom/san/landingpage/widget/AnimatedDoorLayout;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field public static final EXTRA_ANIMATION:Ljava/lang/String; = "animation_type"

.field private static IncentiveDownloadUtils:I = 0x0

.field private static final TAG:Ljava/lang/String; = "Mads.BaseLandingPage"

.field private static addDownloadListener:I = 0x0

.field public static volatile mIsGpLandingShowed:Z = false


# instance fields
.field public isAutoOpenGpPage:Z

.field private mAnimationFinished:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mAnimationType:I

.field private mChangedListener:Lccsansan/r/addDownloadListener;

.field private mConnectNetView:Lccsanandroid/view/View;

.field private mConnectView:Lccsanandroid/widget/TextView;

.field private mContainer:Lccsanandroid/widget/LinearLayout;

.field protected mGpVideoContainer:Lccsanandroid/widget/LinearLayout;

.field private mIsGpAnimate:Z

.field private mIsNetWorkAvailable:Z

.field protected mLeftButton:Lccsanandroid/widget/Button;

.field private mRootDoorView:Lccsancom/san/landingpage/widget/AnimatedDoorLayout;

.field private mRootView:Lccsanandroid/widget/FrameLayout;

.field protected mRootViewBg:Lccsanandroid/widget/TextView;

.field protected mTitleView:Lccsanandroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    const/4 v0, 0x0

    sput v0, Lccsancom/san/landingpage/BaseLandingPageActivity;->IncentiveDownloadUtils:I

    const/4 v0, 0x1

    sput v0, Lccsancom/san/landingpage/BaseLandingPageActivity;->addDownloadListener:I

    new-instance v1, Lccsancom/san/landingpage/BaseLandingPageActivity$getDownloadingRecordByUrl;

    const-class v2, Ljava/lang/Float;

    const-string v3, "ANIMATED_DOOR_LAYOUT_FLOAT_PROPERTY"

    invoke-direct {v1, v2, v3}, Lccsancom/san/landingpage/BaseLandingPageActivity$getDownloadingRecordByUrl;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v1, Lccsancom/san/landingpage/BaseLandingPageActivity;->ANIMATED_DOOR_LAYOUT_FLOAT_PROPERTY:Lccsanandroid/util/Property;

    sget v1, Lccsancom/san/landingpage/BaseLandingPageActivity;->addDownloadListener:I

    and-int/lit8 v2, v1, 0x5b

    xor-int/lit8 v1, v1, 0x5b

    or-int/2addr v1, v2

    or-int v3, v2, v1

    shl-int/lit8 v0, v3, 0x1

    xor-int/2addr v1, v2

    sub-int/2addr v0, v1

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/san/landingpage/BaseLandingPageActivity;->IncentiveDownloadUtils:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/16 v0, 0x61

    goto :goto_0

    :cond_0
    const/16 v0, 0x2d

    :goto_0
    packed-switch v0, :pswitch_data_0

    return-void

    :pswitch_0
    const/4 v0, 0x0

    :try_start_0
    array-length v0, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    throw v0

    :pswitch_data_0
    .packed-switch 0x61
        :pswitch_0
    .end packed-switch
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lccsanandroidx/fragment/app/FragmentActivity;-><init>()V

    .line 6
    const/4 v0, 0x1

    iput v0, p0, Lccsancom/san/landingpage/BaseLandingPageActivity;->mAnimationType:I

    .line 7
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lccsancom/san/landingpage/BaseLandingPageActivity;->mAnimationFinished:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 9
    iput-boolean v1, p0, Lccsancom/san/landingpage/BaseLandingPageActivity;->mIsGpAnimate:Z

    .line 23
    iput-boolean v1, p0, Lccsancom/san/landingpage/BaseLandingPageActivity;->isAutoOpenGpPage:Z

    .line 171
    new-instance v0, Lccsancom/san/landingpage/BaseLandingPageActivity$getDownloadingList;

    invoke-direct {v0, p0}, Lccsancom/san/landingpage/BaseLandingPageActivity$getDownloadingList;-><init>(Lccsancom/san/landingpage/BaseLandingPageActivity;)V

    iput-object v0, p0, Lccsancom/san/landingpage/BaseLandingPageActivity;->mChangedListener:Lccsansan/r/addDownloadListener;

    return-void
.end method

.method static synthetic access$000(Lccsancom/san/landingpage/BaseLandingPageActivity;)Z
    .locals 3
    .param p0, "x0"    # Lccsancom/san/landingpage/BaseLandingPageActivity;

    .line 1
    .end local p0    # "x0":Lccsancom/san/landingpage/BaseLandingPageActivity;
    sget v0, Lccsancom/san/landingpage/BaseLandingPageActivity;->IncentiveDownloadUtils:I

    and-int/lit8 v1, v0, 0x5d

    xor-int/lit8 v0, v0, 0x5d

    or-int/2addr v0, v1

    and-int v2, v1, v0

    or-int/2addr v0, v1

    add-int/2addr v2, v0

    rem-int/lit16 v0, v2, 0x80

    sput v0, Lccsancom/san/landingpage/BaseLandingPageActivity;->addDownloadListener:I

    rem-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_0

    :cond_0
    iget-boolean p0, p0, Lccsancom/san/landingpage/BaseLandingPageActivity;->mIsNetWorkAvailable:Z

    xor-int/lit8 v1, v0, 0x77

    and-int/lit8 v0, v0, 0x77

    or-int/2addr v0, v1

    shl-int/lit8 v0, v0, 0x1

    sub-int/2addr v0, v1

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/san/landingpage/BaseLandingPageActivity;->IncentiveDownloadUtils:I

    rem-int/lit8 v0, v0, 0x2

    return p0
.end method

.method static synthetic access$002(Lccsancom/san/landingpage/BaseLandingPageActivity;Z)Z
    .locals 2
    .param p0, "x0"    # Lccsancom/san/landingpage/BaseLandingPageActivity;
    .param p1, "x1"    # Z

    .line 1
    .end local p0    # "x0":Lccsancom/san/landingpage/BaseLandingPageActivity;
    .end local p1    # "x1":Z
    sget v0, Lccsancom/san/landingpage/BaseLandingPageActivity;->IncentiveDownloadUtils:I

    xor-int/lit8 v1, v0, 0x23

    and-int/lit8 v0, v0, 0x23

    or-int/2addr v0, v1

    shl-int/lit8 v0, v0, 0x1

    sub-int/2addr v0, v1

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/san/landingpage/BaseLandingPageActivity;->addDownloadListener:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    const/16 v0, 0x61

    goto :goto_0

    :cond_0
    const/16 v0, 0x2e

    :goto_0
    iput-boolean p1, p0, Lccsancom/san/landingpage/BaseLandingPageActivity;->mIsNetWorkAvailable:Z

    packed-switch v0, :pswitch_data_0

    const/16 p0, 0xf

    :try_start_0
    div-int/lit8 p0, p0, 0x0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :pswitch_0
    return p1

    :catchall_0
    move-exception p0

    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x2e
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic access$100(Lccsancom/san/landingpage/BaseLandingPageActivity;)Lccsanandroid/view/View;
    .locals 4
    .param p0, "x0"    # Lccsancom/san/landingpage/BaseLandingPageActivity;

    .line 1
    .end local p0    # "x0":Lccsancom/san/landingpage/BaseLandingPageActivity;
    sget v0, Lccsancom/san/landingpage/BaseLandingPageActivity;->addDownloadListener:I

    and-int/lit8 v1, v0, 0x58

    or-int/lit8 v0, v0, 0x58

    add-int/2addr v1, v0

    or-int/lit8 v0, v1, -0x1

    const/4 v2, 0x1

    shl-int/2addr v0, v2

    xor-int/lit8 v1, v1, -0x1

    sub-int/2addr v0, v1

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/san/landingpage/BaseLandingPageActivity;->IncentiveDownloadUtils:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    :cond_0
    iget-object p0, p0, Lccsancom/san/landingpage/BaseLandingPageActivity;->mConnectNetView:Lccsanandroid/view/View;

    add-int/lit8 v1, v1, 0x6c

    const/4 v0, 0x0

    sub-int/2addr v1, v0

    sub-int/2addr v1, v2

    rem-int/lit16 v3, v1, 0x80

    sput v3, Lccsancom/san/landingpage/BaseLandingPageActivity;->addDownloadListener:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    packed-switch v2, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    return-object p0

    :goto_1
    const/16 v1, 0x21

    :try_start_0
    div-int/2addr v1, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    throw p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic access$200(Lccsancom/san/landingpage/BaseLandingPageActivity;)Lccsanandroid/widget/TextView;
    .locals 4
    .param p0, "x0"    # Lccsancom/san/landingpage/BaseLandingPageActivity;

    .line 1
    .end local p0    # "x0":Lccsancom/san/landingpage/BaseLandingPageActivity;
    sget v0, Lccsancom/san/landingpage/BaseLandingPageActivity;->IncentiveDownloadUtils:I

    add-int/lit8 v1, v0, 0x66

    xor-int/lit8 v2, v1, -0x1

    and-int/lit8 v1, v1, -0x1

    const/4 v3, 0x1

    shl-int/2addr v1, v3

    add-int/2addr v2, v1

    rem-int/lit16 v1, v2, 0x80

    sput v1, Lccsancom/san/landingpage/BaseLandingPageActivity;->addDownloadListener:I

    rem-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_0

    const/16 v1, 0x39

    goto :goto_0

    :cond_0
    const/16 v1, 0x3a

    :goto_0
    iget-object p0, p0, Lccsancom/san/landingpage/BaseLandingPageActivity;->mConnectView:Lccsanandroid/widget/TextView;

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
    add-int/lit8 v0, v0, 0x35

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/san/landingpage/BaseLandingPageActivity;->addDownloadListener:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v1, 0x0

    if-nez v0, :cond_1

    const/4 v3, 0x0

    :cond_1
    packed-switch v3, :pswitch_data_1

    return-object p0

    :pswitch_1
    const/16 v0, 0x20

    :try_start_1
    div-int/2addr v0, v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-object p0

    :catchall_1
    move-exception p0

    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x39
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch
.end method

.method static synthetic access$202(Lccsancom/san/landingpage/BaseLandingPageActivity;Lccsanandroid/widget/TextView;)Lccsanandroid/widget/TextView;
    .locals 3
    .param p0, "x0"    # Lccsancom/san/landingpage/BaseLandingPageActivity;
    .param p1, "x1"    # Lccsanandroid/widget/TextView;

    .line 1
    .end local p0    # "x0":Lccsancom/san/landingpage/BaseLandingPageActivity;
    .end local p1    # "x1":Lccsanandroid/widget/TextView;
    sget v0, Lccsancom/san/landingpage/BaseLandingPageActivity;->IncentiveDownloadUtils:I

    or-int/lit8 v1, v0, 0x6d

    shl-int/lit8 v1, v1, 0x1

    xor-int/lit8 v2, v0, 0x6d

    sub-int/2addr v1, v2

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsancom/san/landingpage/BaseLandingPageActivity;->addDownloadListener:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_0

    const/16 v1, 0xa

    goto :goto_0

    :cond_0
    const/16 v1, 0x63

    :goto_0
    iput-object p1, p0, Lccsancom/san/landingpage/BaseLandingPageActivity;->mConnectView:Lccsanandroid/widget/TextView;

    packed-switch v1, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    const/16 p0, 0x3c

    :try_start_0
    div-int/lit8 p0, p0, 0x0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    throw p0

    :goto_1
    and-int/lit8 p0, v0, 0x18

    or-int/lit8 v0, v0, 0x18

    add-int/2addr p0, v0

    xor-int/lit8 v0, p0, -0x1

    and-int/lit8 p0, p0, -0x1

    shl-int/lit8 p0, p0, 0x1

    add-int/2addr v0, p0

    rem-int/lit16 p0, v0, 0x80

    sput p0, Lccsancom/san/landingpage/BaseLandingPageActivity;->addDownloadListener:I

    rem-int/lit8 v0, v0, 0x2

    return-object p1

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic access$300(Lccsancom/san/landingpage/BaseLandingPageActivity;)V
    .locals 4
    .param p0, "x0"    # Lccsancom/san/landingpage/BaseLandingPageActivity;

    .line 1
    .end local p0    # "x0":Lccsancom/san/landingpage/BaseLandingPageActivity;
    sget v0, Lccsancom/san/landingpage/BaseLandingPageActivity;->IncentiveDownloadUtils:I

    add-int/lit8 v0, v0, 0x1a

    const/4 v1, 0x0

    sub-int/2addr v0, v1

    const/4 v2, 0x1

    sub-int/2addr v0, v2

    rem-int/lit16 v3, v0, 0x80

    sput v3, Lccsancom/san/landingpage/BaseLandingPageActivity;->addDownloadListener:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0}, Lccsancom/san/landingpage/BaseLandingPageActivity;->initData()V

    packed-switch v0, :pswitch_data_0

    const/16 p0, 0x41

    :try_start_0
    div-int/2addr p0, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :pswitch_0
    sget p0, Lccsancom/san/landingpage/BaseLandingPageActivity;->IncentiveDownloadUtils:I

    and-int/lit8 v0, p0, -0x42

    xor-int/lit8 v3, p0, -0x1

    and-int/lit8 v3, v3, 0x41

    or-int/2addr v0, v3

    and-int/lit8 p0, p0, 0x41

    shl-int/2addr p0, v2

    or-int v3, v0, p0

    shl-int/2addr v3, v2

    xor-int/2addr p0, v0

    sub-int/2addr v3, p0

    rem-int/lit16 p0, v3, 0x80

    sput p0, Lccsancom/san/landingpage/BaseLandingPageActivity;->addDownloadListener:I

    rem-int/lit8 v3, v3, 0x2

    if-nez v3, :cond_1

    const/4 v2, 0x0

    :cond_1
    packed-switch v2, :pswitch_data_1

    return-void

    :pswitch_1
    const/16 p0, 0x36

    :try_start_1
    div-int/2addr p0, v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    throw p0

    :catchall_1
    move-exception p0

    throw p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch
.end method

.method static synthetic access$400(Lccsancom/san/landingpage/BaseLandingPageActivity;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 3
    .param p0, "x0"    # Lccsancom/san/landingpage/BaseLandingPageActivity;

    .line 1
    .end local p0    # "x0":Lccsancom/san/landingpage/BaseLandingPageActivity;
    sget v0, Lccsancom/san/landingpage/BaseLandingPageActivity;->IncentiveDownloadUtils:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    rem-int/lit16 v2, v0, 0x80

    sput v2, Lccsancom/san/landingpage/BaseLandingPageActivity;->addDownloadListener:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iget-object p0, p0, Lccsancom/san/landingpage/BaseLandingPageActivity;->mAnimationFinished:Ljava/util/concurrent/atomic/AtomicBoolean;

    packed-switch v1, :pswitch_data_0

    const/4 v0, 0x0

    :try_start_0
    array-length v0, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :pswitch_0
    return-object p0

    :catchall_0
    move-exception p0

    throw p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic access$500(Lccsancom/san/landingpage/BaseLandingPageActivity;)Lccsanandroid/widget/FrameLayout;
    .locals 3
    .param p0, "x0"    # Lccsancom/san/landingpage/BaseLandingPageActivity;

    .line 1
    .end local p0    # "x0":Lccsancom/san/landingpage/BaseLandingPageActivity;
    sget v0, Lccsancom/san/landingpage/BaseLandingPageActivity;->IncentiveDownloadUtils:I

    and-int/lit8 v1, v0, -0x4

    xor-int/lit8 v2, v0, -0x1

    and-int/lit8 v2, v2, 0x3

    or-int/2addr v1, v2

    and-int/lit8 v0, v0, 0x3

    shl-int/lit8 v0, v0, 0x1

    or-int v2, v1, v0

    shl-int/lit8 v2, v2, 0x1

    xor-int/2addr v0, v1

    sub-int/2addr v2, v0

    rem-int/lit16 v0, v2, 0x80

    sput v0, Lccsancom/san/landingpage/BaseLandingPageActivity;->addDownloadListener:I

    rem-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_0

    const/16 v0, 0x21

    goto :goto_0

    :cond_0
    const/16 v0, 0xd

    :goto_0
    iget-object p0, p0, Lccsancom/san/landingpage/BaseLandingPageActivity;->mRootView:Lccsanandroid/widget/FrameLayout;

    packed-switch v0, :pswitch_data_0

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
    return-object p0

    :pswitch_data_0
    .packed-switch 0x21
        :pswitch_0
    .end packed-switch
.end method

.method private doActivityAnimation()V
    .locals 10

    .line 33
    nop

    .line 3
    sget v0, Lccsancom/san/landingpage/BaseLandingPageActivity;->addDownloadListener:I

    const/16 v1, 0x4f

    xor-int/lit8 v2, v0, 0x4f

    and-int/lit8 v3, v0, 0x4f

    or-int/2addr v2, v3

    const/4 v3, 0x1

    shl-int/2addr v2, v3

    and-int/lit8 v4, v0, -0x50

    xor-int/lit8 v0, v0, -0x1

    and-int/2addr v0, v1

    or-int/2addr v0, v4

    neg-int v0, v0

    xor-int/lit8 v0, v0, -0x1

    sub-int/2addr v2, v0

    sub-int/2addr v2, v3

    rem-int/lit16 v0, v2, 0x80

    sput v0, Lccsancom/san/landingpage/BaseLandingPageActivity;->IncentiveDownloadUtils:I

    const/4 v0, 0x2

    rem-int/2addr v2, v0

    const/4 v1, 0x4

    if-eqz v2, :cond_0

    .line 2
    const/4 v2, 0x4

    goto :goto_0

    :cond_0
    const/16 v2, 0x30

    :goto_0
    const-string v4, "isGpLanding"

    const/4 v5, 0x0

    packed-switch v2, :pswitch_data_0

    .line 1
    invoke-virtual {p0}, Lccsanandroidx/fragment/app/FragmentActivity;->getIntent()Lccsanandroid/content/Intent;

    move-result-object v2

    .line 2
    invoke-virtual {v2, v4, v5}, Lccsanandroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, p0, Lccsancom/san/landingpage/BaseLandingPageActivity;->mIsGpAnimate:Z

    if-eqz v4, :cond_2

    goto :goto_2

    .line 1
    :pswitch_0
    invoke-virtual {p0}, Lccsanandroidx/fragment/app/FragmentActivity;->getIntent()Lccsanandroid/content/Intent;

    move-result-object v2

    .line 2
    invoke-virtual {v2, v4, v5}, Lccsanandroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, p0, Lccsancom/san/landingpage/BaseLandingPageActivity;->mIsGpAnimate:Z

    if-eqz v4, :cond_1

    const/16 v4, 0x40

    goto :goto_1

    :cond_1
    const/16 v4, 0x50

    :goto_1
    packed-switch v4, :pswitch_data_1

    :pswitch_1
    goto :goto_4

    :goto_2
    const/4 v4, 0x0

    goto :goto_3

    :cond_2
    const/4 v4, 0x1

    :goto_3
    packed-switch v4, :pswitch_data_2

    goto/16 :goto_16

    .line 6
    :goto_4
    iget v4, p0, Lccsancom/san/landingpage/BaseLandingPageActivity;->mAnimationType:I

    if-ne v4, v0, :cond_3

    .line 2
    const/4 v4, 0x0

    goto :goto_5

    :cond_3
    const/4 v4, 0x1

    :goto_5
    packed-switch v4, :pswitch_data_3

    :goto_6
    :pswitch_2
    goto/16 :goto_f

    .line 33
    :pswitch_3
    sget v4, Lccsancom/san/landingpage/BaseLandingPageActivity;->addDownloadListener:I

    add-int/lit8 v4, v4, 0x8

    and-int/lit8 v6, v4, -0x1

    or-int/lit8 v4, v4, -0x1

    add-int/2addr v6, v4

    rem-int/lit16 v4, v6, 0x80

    sput v4, Lccsancom/san/landingpage/BaseLandingPageActivity;->IncentiveDownloadUtils:I

    rem-int/2addr v6, v0

    if-eqz v6, :cond_4

    .line 2
    const/4 v4, 0x1

    goto :goto_7

    :cond_4
    const/4 v4, 0x0

    :goto_7
    const/16 v6, 0x60

    packed-switch v4, :pswitch_data_4

    .line 33
    sget v4, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    if-lt v4, v6, :cond_6

    goto :goto_a

    .line 6
    :pswitch_4
    sget v4, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x15

    if-lt v4, v7, :cond_5

    .line 2
    const/4 v4, 0x1

    goto :goto_8

    :cond_5
    const/4 v4, 0x0

    :goto_8
    packed-switch v4, :pswitch_data_5

    :goto_9
    goto :goto_c

    :goto_a
    const/16 v4, 0x38

    goto :goto_b

    :cond_6
    const/16 v4, 0x3e

    :goto_b
    packed-switch v4, :pswitch_data_6

    goto :goto_9

    .line 6
    :goto_c
    const-string v4, "revealX"

    invoke-virtual {v2, v4}, Lccsanandroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 2
    const/16 v7, 0x51

    goto :goto_d

    :cond_7
    const/16 v7, 0x19

    :goto_d
    packed-switch v7, :pswitch_data_7

    goto :goto_6

    .line 3
    :pswitch_5
    sget v7, Lccsancom/san/landingpage/BaseLandingPageActivity;->IncentiveDownloadUtils:I

    xor-int/lit8 v8, v7, 0x3b

    and-int/lit8 v7, v7, 0x3b

    or-int/2addr v7, v8

    shl-int/2addr v7, v3

    neg-int v8, v8

    xor-int/lit8 v8, v8, -0x1

    sub-int/2addr v7, v8

    sub-int/2addr v7, v3

    rem-int/lit16 v8, v7, 0x80

    sput v8, Lccsancom/san/landingpage/BaseLandingPageActivity;->addDownloadListener:I

    rem-int/2addr v7, v0

    if-nez v7, :cond_8

    .line 6
    :cond_8
    const-string v7, "revealY"

    invoke-virtual {v2, v7}, Lccsanandroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_a

    .line 7
    invoke-virtual {v2, v4, v5}, Lccsanandroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 8
    invoke-virtual {v2, v7, v5}, Lccsanandroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 9
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "revealX : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "Mads.BaseLandingPage"

    invoke-static {v8, v7}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "revealY : "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v8, v7}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    iget-object v7, p0, Lccsancom/san/landingpage/BaseLandingPageActivity;->mRootView:Lccsanandroid/widget/FrameLayout;

    invoke-virtual {v7}, Lccsanandroid/widget/FrameLayout;->getViewTreeObserver()Lccsanandroid/view/ViewTreeObserver;

    move-result-object v7

    .line 12
    invoke-virtual {v7}, Lccsanandroid/view/ViewTreeObserver;->isAlive()Z

    move-result v8

    if-eqz v8, :cond_e

    .line 13
    iget-object v8, p0, Lccsancom/san/landingpage/BaseLandingPageActivity;->mRootView:Lccsanandroid/widget/FrameLayout;

    invoke-virtual {v8, v1}, Lccsanandroid/widget/FrameLayout;->setVisibility(I)V

    .line 14
    new-instance v1, Lccsancom/san/landingpage/BaseLandingPageActivity$addDownloadListener;

    invoke-direct {v1, p0, v4, v2}, Lccsancom/san/landingpage/BaseLandingPageActivity$addDownloadListener;-><init>(Lccsancom/san/landingpage/BaseLandingPageActivity;II)V

    invoke-virtual {v7, v1}, Lccsanandroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Lccsanandroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 33
    sget v1, Lccsancom/san/landingpage/BaseLandingPageActivity;->addDownloadListener:I

    add-int/lit8 v1, v1, 0x63

    sub-int/2addr v1, v3

    sub-int/2addr v1, v5

    sub-int/2addr v1, v3

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsancom/san/landingpage/BaseLandingPageActivity;->IncentiveDownloadUtils:I

    rem-int/2addr v1, v0

    if-eqz v1, :cond_9

    .line 2
    const/16 v6, 0x24

    goto :goto_e

    :cond_9
    nop

    :goto_e
    packed-switch v6, :pswitch_data_8

    .line 33
    goto :goto_12

    .line 29
    :cond_a
    :goto_f
    iget v1, p0, Lccsancom/san/landingpage/BaseLandingPageActivity;->mAnimationType:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_b

    .line 2
    const/16 v1, 0x41

    goto :goto_10

    :cond_b
    const/4 v1, 0x0

    :goto_10
    packed-switch v1, :pswitch_data_9

    .line 33
    sget v1, Lccsancom/san/landingpage/BaseLandingPageActivity;->IncentiveDownloadUtils:I

    and-int/lit8 v2, v1, 0x53

    or-int/lit8 v1, v1, 0x53

    add-int/2addr v2, v1

    rem-int/lit16 v1, v2, 0x80

    sput v1, Lccsancom/san/landingpage/BaseLandingPageActivity;->addDownloadListener:I

    rem-int/2addr v2, v0

    if-nez v2, :cond_c

    .line 30
    :cond_c
    iget-object v1, p0, Lccsancom/san/landingpage/BaseLandingPageActivity;->mRootDoorView:Lccsancom/san/landingpage/widget/AnimatedDoorLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lccsancom/san/landingpage/widget/AnimatedDoorLayout;->setProgress(F)V

    .line 31
    iget-object v1, p0, Lccsancom/san/landingpage/BaseLandingPageActivity;->mRootDoorView:Lccsancom/san/landingpage/widget/AnimatedDoorLayout;

    invoke-virtual {v1, v0}, Lccsancom/san/landingpage/widget/AnimatedDoorLayout;->setDoorType(I)V

    .line 32
    iget-object v1, p0, Lccsancom/san/landingpage/BaseLandingPageActivity;->mRootDoorView:Lccsancom/san/landingpage/widget/AnimatedDoorLayout;

    sget-object v2, Lccsancom/san/landingpage/BaseLandingPageActivity;->ANIMATED_DOOR_LAYOUT_FLOAT_PROPERTY:Lccsanandroid/util/Property;

    new-array v4, v3, [F

    const/high16 v6, 0x3f800000    # 1.0f

    aput v6, v4, v5

    invoke-static {v1, v2, v4}, Lccsanandroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Lccsanandroid/util/Property;[F)Lccsanandroid/animation/ObjectAnimator;

    move-result-object v1

    const-wide/16 v6, 0x258

    invoke-virtual {v1, v6, v7}, Lccsanandroid/animation/ObjectAnimator;->setDuration(J)Lccsanandroid/animation/ObjectAnimator;

    move-result-object v1

    .line 33
    invoke-virtual {v1}, Lccsanandroid/animation/ObjectAnimator;->start()V

    .line 3
    sget v1, Lccsancom/san/landingpage/BaseLandingPageActivity;->IncentiveDownloadUtils:I

    and-int/lit8 v2, v1, 0x45

    xor-int/lit8 v4, v2, -0x1

    or-int/lit8 v1, v1, 0x45

    and-int/2addr v1, v4

    shl-int/2addr v2, v3

    add-int/2addr v1, v2

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsancom/san/landingpage/BaseLandingPageActivity;->addDownloadListener:I

    rem-int/2addr v1, v0

    if-nez v1, :cond_d

    .line 2
    const/4 v1, 0x1

    goto :goto_11

    :cond_d
    const/4 v1, 0x0

    :goto_11
    packed-switch v1, :pswitch_data_a

    .line 3
    goto :goto_13

    .line 33
    :goto_12
    :pswitch_6
    nop

    :cond_e
    :goto_13
    :pswitch_7
    nop

    .line 3
    sget v1, Lccsancom/san/landingpage/BaseLandingPageActivity;->addDownloadListener:I

    xor-int/lit8 v2, v1, 0x23

    and-int/lit8 v4, v1, 0x23

    or-int/2addr v2, v4

    shl-int/2addr v2, v3

    xor-int/lit8 v4, v4, -0x1

    or-int/lit8 v1, v1, 0x23

    and-int/2addr v1, v4

    neg-int v1, v1

    xor-int/lit8 v1, v1, -0x1

    sub-int/2addr v2, v1

    sub-int/2addr v2, v3

    rem-int/lit16 v1, v2, 0x80

    sput v1, Lccsancom/san/landingpage/BaseLandingPageActivity;->IncentiveDownloadUtils:I

    rem-int/2addr v2, v0

    if-eqz v2, :cond_f

    .line 2
    const/4 v3, 0x0

    goto :goto_14

    :cond_f
    nop

    :goto_14
    packed-switch v3, :pswitch_data_b

    .line 3
    goto :goto_15

    .line 33
    :pswitch_8
    return-void

    .line 3
    :goto_15
    const/16 v0, 0x9

    :try_start_0
    div-int/2addr v0, v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    throw v0

    .line 33
    :goto_16
    :pswitch_9
    sget v1, Lccsancom/san/landingpage/BaseLandingPageActivity;->addDownloadListener:I

    and-int/lit8 v2, v1, 0x7b

    or-int/lit8 v1, v1, 0x7b

    neg-int v1, v1

    neg-int v1, v1

    and-int v4, v2, v1

    or-int/2addr v1, v2

    add-int/2addr v4, v1

    rem-int/lit16 v1, v4, 0x80

    sput v1, Lccsancom/san/landingpage/BaseLandingPageActivity;->IncentiveDownloadUtils:I

    rem-int/2addr v4, v0

    if-eqz v4, :cond_10

    .line 2
    goto :goto_17

    :cond_10
    const/4 v5, 0x1

    :goto_17
    packed-switch v5, :pswitch_data_c

    .line 33
    nop

    .line 3
    :pswitch_a
    sput-boolean v3, Lccsancom/san/landingpage/BaseLandingPageActivity;->mIsGpLandingShowed:Z

    .line 33
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x40
        :pswitch_9
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_1
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_3
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x0
        :pswitch_4
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0x0
        :pswitch_2
    .end packed-switch

    :pswitch_data_6
    .packed-switch 0x3e
        :pswitch_2
    .end packed-switch

    :pswitch_data_7
    .packed-switch 0x51
        :pswitch_5
    .end packed-switch

    :pswitch_data_8
    .packed-switch 0x60
        :pswitch_6
    .end packed-switch

    :pswitch_data_9
    .packed-switch 0x0
        :pswitch_7
    .end packed-switch

    :pswitch_data_a
    .packed-switch 0x0
        :pswitch_6
    .end packed-switch

    :pswitch_data_b
    .packed-switch 0x1
        :pswitch_8
    .end packed-switch

    :pswitch_data_c
    .packed-switch 0x1
        :pswitch_a
    .end packed-switch
.end method

.method private initBaseView()V
    .locals 2

    .line 9
    sget v0, Lccsancom/san/landingpage/BaseLandingPageActivity;->IncentiveDownloadUtils:I

    and-int/lit8 v1, v0, 0x1d

    xor-int/lit8 v0, v0, 0x1d

    or-int/2addr v0, v1

    neg-int v0, v0

    neg-int v0, v0

    xor-int/lit8 v0, v0, -0x1

    sub-int/2addr v1, v0

    add-int/lit8 v1, v1, -0x1

    rem-int/lit16 v0, v1, 0x80

    sput v0, Lccsancom/san/landingpage/BaseLandingPageActivity;->addDownloadListener:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_0

    .line 1
    :cond_0
    const-string v0, "san_container"

    invoke-static {v0}, Lccsansan/bw/shouldTryHandlingAction;->deleteDownItem(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lccsanandroidx/fragment/app/FragmentActivity;->findViewById(I)Lccsanandroid/view/View;

    move-result-object v0

    check-cast v0, Lccsanandroid/widget/LinearLayout;

    iput-object v0, p0, Lccsancom/san/landingpage/BaseLandingPageActivity;->mContainer:Lccsanandroid/widget/LinearLayout;

    .line 2
    const-string v0, "san_gp_video_container"

    invoke-static {v0}, Lccsansan/bw/shouldTryHandlingAction;->deleteDownItem(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lccsanandroidx/fragment/app/FragmentActivity;->findViewById(I)Lccsanandroid/view/View;

    move-result-object v0

    check-cast v0, Lccsanandroid/widget/LinearLayout;

    iput-object v0, p0, Lccsancom/san/landingpage/BaseLandingPageActivity;->mGpVideoContainer:Lccsanandroid/widget/LinearLayout;

    .line 3
    const-string v0, "san_title_text"

    invoke-static {v0}, Lccsansan/bw/shouldTryHandlingAction;->deleteDownItem(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lccsanandroidx/fragment/app/FragmentActivity;->findViewById(I)Lccsanandroid/view/View;

    move-result-object v0

    check-cast v0, Lccsanandroid/widget/TextView;

    iput-object v0, p0, Lccsancom/san/landingpage/BaseLandingPageActivity;->mTitleView:Lccsanandroid/widget/TextView;

    .line 4
    const-string v0, "san_return_view"

    invoke-static {v0}, Lccsansan/bw/shouldTryHandlingAction;->deleteDownItem(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lccsanandroidx/fragment/app/FragmentActivity;->findViewById(I)Lccsanandroid/view/View;

    move-result-object v0

    check-cast v0, Lccsanandroid/widget/Button;

    iput-object v0, p0, Lccsancom/san/landingpage/BaseLandingPageActivity;->mLeftButton:Lccsanandroid/widget/Button;

    .line 5
    const-string v0, "san_root_view_background"

    invoke-static {v0}, Lccsansan/bw/shouldTryHandlingAction;->deleteDownItem(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lccsanandroidx/fragment/app/FragmentActivity;->findViewById(I)Lccsanandroid/view/View;

    move-result-object v0

    check-cast v0, Lccsanandroid/widget/TextView;

    iput-object v0, p0, Lccsancom/san/landingpage/BaseLandingPageActivity;->mRootViewBg:Lccsanandroid/widget/TextView;

    .line 6
    const-string v0, "san_root_view"

    invoke-static {v0}, Lccsansan/bw/shouldTryHandlingAction;->deleteDownItem(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lccsanandroidx/fragment/app/FragmentActivity;->findViewById(I)Lccsanandroid/view/View;

    move-result-object v0

    check-cast v0, Lccsanandroid/widget/FrameLayout;

    iput-object v0, p0, Lccsancom/san/landingpage/BaseLandingPageActivity;->mRootView:Lccsanandroid/widget/FrameLayout;

    .line 7
    const-string v0, "san_root_door_view"

    invoke-static {v0}, Lccsansan/bw/shouldTryHandlingAction;->deleteDownItem(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lccsanandroidx/fragment/app/FragmentActivity;->findViewById(I)Lccsanandroid/view/View;

    move-result-object v0

    check-cast v0, Lccsancom/san/landingpage/widget/AnimatedDoorLayout;

    iput-object v0, p0, Lccsancom/san/landingpage/BaseLandingPageActivity;->mRootDoorView:Lccsancom/san/landingpage/widget/AnimatedDoorLayout;

    .line 8
    const-string v0, "san_layout_connect_network"

    invoke-static {v0}, Lccsansan/bw/shouldTryHandlingAction;->deleteDownItem(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lccsanandroidx/fragment/app/FragmentActivity;->findViewById(I)Lccsanandroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lccsancom/san/landingpage/BaseLandingPageActivity;->mConnectNetView:Lccsanandroid/view/View;

    .line 9
    iget-object v0, p0, Lccsancom/san/landingpage/BaseLandingPageActivity;->mRootDoorView:Lccsancom/san/landingpage/widget/AnimatedDoorLayout;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lccsancom/san/landingpage/widget/AnimatedDoorLayout;->setProgress(F)V

    sget v0, Lccsancom/san/landingpage/BaseLandingPageActivity;->IncentiveDownloadUtils:I

    or-int/lit8 v1, v0, 0x26

    shl-int/lit8 v1, v1, 0x1

    xor-int/lit8 v0, v0, 0x26

    sub-int/2addr v1, v0

    add-int/lit8 v1, v1, 0x0

    add-int/lit8 v1, v1, -0x1

    rem-int/lit16 v0, v1, 0x80

    sput v0, Lccsancom/san/landingpage/BaseLandingPageActivity;->addDownloadListener:I

    rem-int/lit8 v1, v1, 0x2

    return-void
.end method

.method private initData()V
    .locals 3

    .line 2
    sget v0, Lccsancom/san/landingpage/BaseLandingPageActivity;->addDownloadListener:I

    or-int/lit8 v1, v0, 0x1c

    const/4 v2, 0x1

    shl-int/2addr v1, v2

    xor-int/lit8 v0, v0, 0x1c

    sub-int/2addr v1, v0

    sub-int/2addr v1, v2

    rem-int/lit16 v0, v1, 0x80

    sput v0, Lccsancom/san/landingpage/BaseLandingPageActivity;->IncentiveDownloadUtils:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_0

    const/4 v2, 0x0

    :cond_0
    packed-switch v2, :pswitch_data_0

    .line 1
    iget-object v0, p0, Lccsancom/san/landingpage/BaseLandingPageActivity;->mConnectNetView:Lccsanandroid/view/View;

    const/16 v1, 0x25

    :goto_0
    invoke-virtual {v0, v1}, Lccsanandroid/view/View;->setVisibility(I)V

    .line 2
    invoke-virtual {p0}, Lccsancom/san/landingpage/BaseLandingPageActivity;->doInitData()V

    goto :goto_1

    .line 1
    :pswitch_0
    iget-object v0, p0, Lccsancom/san/landingpage/BaseLandingPageActivity;->mConnectNetView:Lccsanandroid/view/View;

    const/16 v1, 0x8

    goto :goto_0

    .line 2
    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private initListener()V
    .locals 4

    .line 1
    iget-object v0, p0, Lccsancom/san/landingpage/BaseLandingPageActivity;->mLeftButton:Lccsanandroid/widget/Button;

    new-instance v1, Lccsancom/san/landingpage/BaseLandingPageActivity$removeDownloadListener;

    invoke-direct {v1, p0}, Lccsancom/san/landingpage/BaseLandingPageActivity$removeDownloadListener;-><init>(Lccsancom/san/landingpage/BaseLandingPageActivity;)V

    invoke-virtual {v0, v1}, Lccsanandroid/widget/Button;->setOnClickListener(Lccsanandroid/view/View$OnClickListener;)V

    sget v0, Lccsancom/san/landingpage/BaseLandingPageActivity;->addDownloadListener:I

    const/16 v1, 0x1d

    and-int/lit8 v2, v0, -0x1e

    xor-int/lit8 v3, v0, -0x1

    and-int/2addr v3, v1

    or-int/2addr v2, v3

    and-int/2addr v0, v1

    const/4 v1, 0x1

    shl-int/2addr v0, v1

    add-int/2addr v2, v0

    rem-int/lit16 v0, v2, 0x80

    sput v0, Lccsancom/san/landingpage/BaseLandingPageActivity;->IncentiveDownloadUtils:I

    rem-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_0

    const/4 v1, 0x0

    :cond_0
    packed-switch v1, :pswitch_data_0

    return-void

    :pswitch_0
    const/4 v0, 0x0

    :try_start_0
    invoke-super {v0}, Ljava/lang/Object;->hashCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    throw v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method private registNetBroadcastReceiver()V
    .locals 3

    .line 1
    sget v0, Lccsancom/san/landingpage/BaseLandingPageActivity;->addDownloadListener:I

    add-int/lit8 v0, v0, 0x18

    and-int/lit8 v1, v0, -0x1

    or-int/lit8 v0, v0, -0x1

    add-int/2addr v1, v0

    rem-int/lit16 v0, v1, 0x80

    sput v0, Lccsancom/san/landingpage/BaseLandingPageActivity;->IncentiveDownloadUtils:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_0

    const/16 v0, 0x1c

    goto :goto_0

    :cond_0
    const/16 v0, 0x1b

    :goto_0
    const-string v1, "connectivity_change"

    packed-switch v0, :pswitch_data_0

    invoke-static {}, Lccsansan/r/IncentiveDownloadUtils;->removeDownloadListener()Lccsansan/r/IncentiveDownloadUtils;

    move-result-object v0

    iget-object v2, p0, Lccsancom/san/landingpage/BaseLandingPageActivity;->mChangedListener:Lccsansan/r/addDownloadListener;

    invoke-virtual {v0, v1, v2}, Lccsansan/r/IncentiveDownloadUtils;->getDownloadingList(Ljava/lang/String;Lccsansan/r/addDownloadListener;)V

    goto :goto_1

    :pswitch_0
    invoke-static {}, Lccsansan/r/IncentiveDownloadUtils;->removeDownloadListener()Lccsansan/r/IncentiveDownloadUtils;

    move-result-object v0

    iget-object v2, p0, Lccsancom/san/landingpage/BaseLandingPageActivity;->mChangedListener:Lccsansan/r/addDownloadListener;

    invoke-virtual {v0, v1, v2}, Lccsansan/r/IncentiveDownloadUtils;->getDownloadingList(Ljava/lang/String;Lccsansan/r/addDownloadListener;)V

    goto :goto_2

    :goto_1
    const/16 v0, 0x1f

    :try_start_0
    div-int/lit8 v0, v0, 0x0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_2
    return-void

    :catchall_0
    move-exception v0

    throw v0

    :pswitch_data_0
    .packed-switch 0x1b
        :pswitch_0
    .end packed-switch
.end method

.method private unregistNetBroadcastReceiver()V
    .locals 4

    .line 1
    sget v0, Lccsancom/san/landingpage/BaseLandingPageActivity;->addDownloadListener:I

    and-int/lit8 v1, v0, -0x2

    xor-int/lit8 v2, v0, -0x1

    const/4 v3, 0x1

    and-int/2addr v2, v3

    or-int/2addr v1, v2

    and-int/2addr v0, v3

    shl-int/2addr v0, v3

    neg-int v0, v0

    neg-int v0, v0

    xor-int/lit8 v0, v0, -0x1

    sub-int/2addr v1, v0

    sub-int/2addr v1, v3

    rem-int/lit16 v0, v1, 0x80

    sput v0, Lccsancom/san/landingpage/BaseLandingPageActivity;->IncentiveDownloadUtils:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_0

    :cond_0
    invoke-static {}, Lccsansan/r/IncentiveDownloadUtils;->removeDownloadListener()Lccsansan/r/IncentiveDownloadUtils;

    move-result-object v0

    iget-object v1, p0, Lccsancom/san/landingpage/BaseLandingPageActivity;->mChangedListener:Lccsansan/r/addDownloadListener;

    const-string v2, "connectivity_change"

    invoke-virtual {v0, v2, v1}, Lccsansan/r/IncentiveDownloadUtils;->addDownloadListener(Ljava/lang/String;Lccsansan/r/addDownloadListener;)V

    sget v0, Lccsancom/san/landingpage/BaseLandingPageActivity;->IncentiveDownloadUtils:I

    or-int/lit8 v1, v0, 0x6f

    shl-int/2addr v1, v3

    xor-int/lit8 v0, v0, 0x6f

    sub-int/2addr v1, v0

    rem-int/lit16 v0, v1, 0x80

    sput v0, Lccsancom/san/landingpage/BaseLandingPageActivity;->addDownloadListener:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_0
    packed-switch v3, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    return-void

    :goto_1
    const/4 v0, 0x0

    :try_start_0
    array-length v0, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    throw v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public abstract doInitData()V
.end method

.method public getContainerView()Lccsanandroid/widget/LinearLayout;
    .locals 4

    .line 1
    sget v0, Lccsancom/san/landingpage/BaseLandingPageActivity;->addDownloadListener:I

    add-int/lit8 v1, v0, 0x16

    add-int/lit8 v1, v1, -0x1

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsancom/san/landingpage/BaseLandingPageActivity;->IncentiveDownloadUtils:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_0

    :cond_0
    iget-object v1, p0, Lccsancom/san/landingpage/BaseLandingPageActivity;->mContainer:Lccsanandroid/widget/LinearLayout;

    and-int/lit8 v2, v0, 0x29

    xor-int/lit8 v3, v2, -0x1

    or-int/lit8 v0, v0, 0x29

    and-int/2addr v0, v3

    shl-int/lit8 v2, v2, 0x1

    neg-int v2, v2

    neg-int v2, v2

    xor-int/lit8 v2, v2, -0x1

    sub-int/2addr v0, v2

    add-int/lit8 v0, v0, -0x1

    rem-int/lit16 v2, v0, 0x80

    sput v2, Lccsancom/san/landingpage/BaseLandingPageActivity;->IncentiveDownloadUtils:I

    rem-int/lit8 v0, v0, 0x2

    return-object v1
.end method

.method public getResources()Lccsanandroid/content/res/Resources;
    .locals 1

    invoke-super {p0}, Lccsanandroidx/fragment/app/FragmentActivity;->getResources()Lccsanandroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0}, Lccsansan/d/deleteDownItem;->IncentiveDownloadUtils(Lccsanandroid/content/res/Resources;)Lccsanandroid/content/res/Resources;

    move-result-object v0

    return-object v0
.end method

.method public getRootView()Lccsanandroid/widget/FrameLayout;
    .locals 3

    .line 1
    sget v0, Lccsancom/san/landingpage/BaseLandingPageActivity;->IncentiveDownloadUtils:I

    and-int/lit8 v1, v0, 0x2d

    xor-int/lit8 v2, v1, -0x1

    or-int/lit8 v0, v0, 0x2d

    and-int/2addr v0, v2

    shl-int/lit8 v1, v1, 0x1

    or-int v2, v0, v1

    shl-int/lit8 v2, v2, 0x1

    xor-int/2addr v0, v1

    sub-int/2addr v2, v0

    rem-int/lit16 v0, v2, 0x80

    sput v0, Lccsancom/san/landingpage/BaseLandingPageActivity;->addDownloadListener:I

    rem-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_0

    const/16 v0, 0x23

    goto :goto_0

    :cond_0
    const/16 v0, 0x30

    :goto_0
    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lccsancom/san/landingpage/BaseLandingPageActivity;->mRootView:Lccsanandroid/widget/FrameLayout;

    goto :goto_1

    :pswitch_0
    iget-object v0, p0, Lccsancom/san/landingpage/BaseLandingPageActivity;->mRootView:Lccsanandroid/widget/FrameLayout;

    goto :goto_2

    :goto_1
    const/16 v1, 0x5b

    :try_start_0
    div-int/lit8 v1, v1, 0x0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_2
    return-object v0

    :catchall_0
    move-exception v0

    throw v0

    :pswitch_data_0
    .packed-switch 0x30
        :pswitch_0
    .end packed-switch
.end method

.method public getTitleView()Lccsanandroid/widget/TextView;
    .locals 4

    .line 1
    sget v0, Lccsancom/san/landingpage/BaseLandingPageActivity;->IncentiveDownloadUtils:I

    or-int/lit8 v1, v0, 0x1c

    shl-int/lit8 v1, v1, 0x1

    xor-int/lit8 v0, v0, 0x1c

    sub-int/2addr v1, v0

    add-int/lit8 v1, v1, -0x1

    rem-int/lit16 v0, v1, 0x80

    sput v0, Lccsancom/san/landingpage/BaseLandingPageActivity;->addDownloadListener:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_0

    :cond_0
    iget-object v1, p0, Lccsancom/san/landingpage/BaseLandingPageActivity;->mTitleView:Lccsanandroid/widget/TextView;

    and-int/lit8 v2, v0, 0x45

    xor-int/lit8 v3, v2, -0x1

    or-int/lit8 v0, v0, 0x45

    and-int/2addr v0, v3

    shl-int/lit8 v2, v2, 0x1

    neg-int v2, v2

    neg-int v2, v2

    xor-int v3, v0, v2

    and-int/2addr v0, v2

    shl-int/lit8 v0, v0, 0x1

    add-int/2addr v3, v0

    rem-int/lit16 v0, v3, 0x80

    sput v0, Lccsancom/san/landingpage/BaseLandingPageActivity;->IncentiveDownloadUtils:I

    rem-int/lit8 v3, v3, 0x2

    return-object v1
.end method

.method public abstract isNotOfflineAd()Z
.end method

.method public onBackPressed()V
    .locals 7

    .line 11
    sget v0, Lccsancom/san/landingpage/BaseLandingPageActivity;->addDownloadListener:I

    and-int/lit8 v1, v0, 0x45

    xor-int/lit8 v0, v0, 0x45

    or-int/2addr v0, v1

    and-int v2, v1, v0

    or-int/2addr v0, v1

    add-int/2addr v2, v0

    rem-int/lit16 v0, v2, 0x80

    sput v0, Lccsancom/san/landingpage/BaseLandingPageActivity;->IncentiveDownloadUtils:I

    rem-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_0

    .line 1
    :cond_0
    iget v1, p0, Lccsancom/san/landingpage/BaseLandingPageActivity;->mAnimationType:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    .line 11
    const/16 v1, 0x34

    goto :goto_0

    :cond_1
    const/16 v1, 0x5f

    :goto_0
    const/16 v2, 0x15

    const/4 v3, 0x1

    packed-switch v1, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    and-int/lit8 v1, v0, 0xc

    or-int/lit8 v0, v0, 0xc

    add-int/2addr v1, v0

    sub-int/2addr v1, v3

    rem-int/lit16 v0, v1, 0x80

    sput v0, Lccsancom/san/landingpage/BaseLandingPageActivity;->addDownloadListener:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_2

    .line 1
    :cond_2
    iget-boolean v0, p0, Lccsancom/san/landingpage/BaseLandingPageActivity;->mIsGpAnimate:Z

    if-nez v0, :cond_4

    .line 2
    iget-object v0, p0, Lccsancom/san/landingpage/BaseLandingPageActivity;->mRootDoorView:Lccsancom/san/landingpage/widget/AnimatedDoorLayout;

    sget-object v1, Lccsancom/san/landingpage/BaseLandingPageActivity;->ANIMATED_DOOR_LAYOUT_FLOAT_PROPERTY:Lccsanandroid/util/Property;

    new-array v4, v3, [F

    const/4 v5, 0x0

    const/4 v6, 0x0

    aput v6, v4, v5

    invoke-static {v0, v1, v4}, Lccsanandroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Lccsanandroid/util/Property;[F)Lccsanandroid/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v4, 0x258

    invoke-virtual {v0, v4, v5}, Lccsanandroid/animation/ObjectAnimator;->setDuration(J)Lccsanandroid/animation/ObjectAnimator;

    move-result-object v0

    .line 3
    new-instance v1, Lccsancom/san/landingpage/BaseLandingPageActivity$IncentiveDownloadUtils;

    invoke-direct {v1, p0}, Lccsancom/san/landingpage/BaseLandingPageActivity$IncentiveDownloadUtils;-><init>(Lccsancom/san/landingpage/BaseLandingPageActivity;)V

    invoke-virtual {v0, v1}, Lccsanandroid/animation/ObjectAnimator;->addListener(Lccsanandroid/animation/Animator$AnimatorListener;)V

    .line 9
    invoke-virtual {v0}, Lccsanandroid/animation/ObjectAnimator;->start()V

    .line 11
    sget v0, Lccsancom/san/landingpage/BaseLandingPageActivity;->IncentiveDownloadUtils:I

    add-int/lit8 v0, v0, 0x10

    or-int/lit8 v1, v0, -0x1

    shl-int/2addr v1, v3

    xor-int/lit8 v0, v0, -0x1

    sub-int/2addr v1, v0

    rem-int/lit16 v0, v1, 0x80

    sput v0, Lccsancom/san/landingpage/BaseLandingPageActivity;->addDownloadListener:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_3

    goto :goto_3

    :cond_3
    const/16 v2, 0x57

    goto :goto_3

    :cond_4
    :goto_1
    invoke-super {p0}, Lccsanandroidx/fragment/app/FragmentActivity;->onBackPressed()V

    sget v0, Lccsancom/san/landingpage/BaseLandingPageActivity;->addDownloadListener:I

    or-int/lit8 v1, v0, 0x15

    shl-int/2addr v1, v3

    and-int/lit8 v4, v0, -0x16

    xor-int/lit8 v0, v0, -0x1

    and-int/2addr v0, v2

    or-int/2addr v0, v4

    sub-int/2addr v1, v0

    rem-int/lit16 v0, v1, 0x80

    sput v0, Lccsancom/san/landingpage/BaseLandingPageActivity;->IncentiveDownloadUtils:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_5

    const/16 v0, 0x48

    goto :goto_2

    :cond_5
    const/16 v0, 0xe

    :goto_2
    packed-switch v0, :pswitch_data_1

    :goto_3
    :pswitch_1
    sget v0, Lccsancom/san/landingpage/BaseLandingPageActivity;->addDownloadListener:I

    xor-int/lit8 v1, v0, 0x44

    and-int/lit8 v0, v0, 0x44

    shl-int/2addr v0, v3

    add-int/2addr v1, v0

    sub-int/2addr v1, v3

    rem-int/lit16 v0, v1, 0x80

    sput v0, Lccsancom/san/landingpage/BaseLandingPageActivity;->IncentiveDownloadUtils:I

    rem-int/lit8 v1, v1, 0x2

    return-void

    :pswitch_data_0
    .packed-switch 0x34
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x48
        :pswitch_1
    .end packed-switch
.end method

.method protected onCreate(Lccsanandroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Lccsanandroid/os/Bundle;

    .line 14
    .end local p1    # "savedInstanceState":Lccsanandroid/os/Bundle;
    sget v0, Lccsancom/san/landingpage/BaseLandingPageActivity;->addDownloadListener:I

    or-int/lit8 v1, v0, 0x2b

    const/4 v2, 0x1

    shl-int/2addr v1, v2

    xor-int/lit8 v0, v0, 0x2b

    sub-int/2addr v1, v0

    rem-int/lit16 v0, v1, 0x80

    sput v0, Lccsancom/san/landingpage/BaseLandingPageActivity;->IncentiveDownloadUtils:I

    rem-int/lit8 v1, v1, 0x2

    const/4 v0, 0x0

    if-eqz v1, :cond_0

    .line 3
    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const-string v3, "san_base_landingpage_activity"

    packed-switch v1, :pswitch_data_0

    .line 1
    invoke-super {p0, p1}, Lccsanandroidx/fragment/app/FragmentActivity;->onCreate(Lccsanandroid/os/Bundle;)V

    .line 2
    invoke-static {v3}, Lccsansan/bw/shouldTryHandlingAction;->getDownloadedRecordByUrl(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lccsanandroidx/fragment/app/FragmentActivity;->setContentView(I)V

    .line 3
    invoke-virtual {p0}, Lccsanandroidx/fragment/app/FragmentActivity;->getIntent()Lccsanandroid/content/Intent;

    move-result-object p1

    goto :goto_3

    .line 1
    :pswitch_0
    invoke-super {p0, p1}, Lccsanandroidx/fragment/app/FragmentActivity;->onCreate(Lccsanandroid/os/Bundle;)V

    .line 2
    invoke-static {v3}, Lccsansan/bw/shouldTryHandlingAction;->getDownloadedRecordByUrl(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lccsanandroidx/fragment/app/FragmentActivity;->setContentView(I)V

    .line 3
    invoke-virtual {p0}, Lccsanandroidx/fragment/app/FragmentActivity;->getIntent()Lccsanandroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_1

    const/16 p1, 0x18

    goto :goto_1

    :cond_1
    const/16 p1, 0x44

    :goto_1
    packed-switch p1, :pswitch_data_1

    :goto_2
    goto :goto_5

    :goto_3
    const/16 v1, 0x63

    :try_start_0
    div-int/2addr v1, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz p1, :cond_2

    const/16 p1, 0x14

    goto :goto_4

    :cond_2
    const/16 p1, 0x62

    :goto_4
    packed-switch p1, :pswitch_data_2

    goto :goto_2

    .line 4
    :goto_5
    invoke-virtual {p0}, Lccsanandroidx/fragment/app/FragmentActivity;->getIntent()Lccsanandroid/content/Intent;

    move-result-object p1

    const-string v1, "isAutoOpenGpPage"

    invoke-virtual {p1, v1, v0}, Lccsanandroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lccsancom/san/landingpage/BaseLandingPageActivity;->isAutoOpenGpPage:Z

    .line 5
    invoke-virtual {p0}, Lccsanandroidx/fragment/app/FragmentActivity;->getIntent()Lccsanandroid/content/Intent;

    move-result-object p1

    const-string v1, "animation_type"

    invoke-virtual {p1, v1, v2}, Lccsanandroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lccsancom/san/landingpage/BaseLandingPageActivity;->mAnimationType:I

    .line 3
    sget p1, Lccsancom/san/landingpage/BaseLandingPageActivity;->IncentiveDownloadUtils:I

    add-int/lit8 p1, p1, 0x2a

    sub-int/2addr p1, v2

    rem-int/lit16 v1, p1, 0x80

    sput v1, Lccsancom/san/landingpage/BaseLandingPageActivity;->addDownloadListener:I

    rem-int/lit8 p1, p1, 0x2

    if-nez p1, :cond_3

    const/4 v0, 0x1

    :cond_3
    packed-switch v0, :pswitch_data_3

    goto :goto_6

    .line 14
    :pswitch_1
    nop

    .line 8
    :goto_6
    :pswitch_2
    invoke-direct {p0}, Lccsancom/san/landingpage/BaseLandingPageActivity;->initBaseView()V

    .line 9
    invoke-direct {p0}, Lccsancom/san/landingpage/BaseLandingPageActivity;->doActivityAnimation()V

    .line 11
    invoke-direct {p0}, Lccsancom/san/landingpage/BaseLandingPageActivity;->registNetBroadcastReceiver()V

    .line 12
    invoke-direct {p0}, Lccsancom/san/landingpage/BaseLandingPageActivity;->initListener()V

    .line 14
    invoke-static {}, Lccsancom/san/ads/TaskHelper;->getInstance()Lccsancom/san/ads/TaskHelper;

    move-result-object p1

    new-instance v0, Lccsancom/san/landingpage/BaseLandingPageActivity$unifiedDownload;

    invoke-direct {v0, p0}, Lccsancom/san/landingpage/BaseLandingPageActivity$unifiedDownload;-><init>(Lccsancom/san/landingpage/BaseLandingPageActivity;)V

    invoke-virtual {p1, v0}, Lccsancom/san/ads/TaskHelper;->run(Lccsancom/san/ads/Task;)V

    sget p1, Lccsancom/san/landingpage/BaseLandingPageActivity;->IncentiveDownloadUtils:I

    xor-int/lit8 v0, p1, 0x21

    and-int/lit8 v1, p1, 0x21

    or-int/2addr v0, v1

    shl-int/2addr v0, v2

    xor-int/lit8 v1, v1, -0x1

    or-int/lit8 p1, p1, 0x21

    and-int/2addr p1, v1

    neg-int p1, p1

    xor-int v1, v0, p1

    and-int/2addr p1, v0

    shl-int/2addr p1, v2

    add-int/2addr v1, p1

    rem-int/lit16 p1, v1, 0x80

    sput p1, Lccsancom/san/landingpage/BaseLandingPageActivity;->addDownloadListener:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_4

    .line 3
    const/16 p1, 0x5b

    goto :goto_7

    :cond_4
    const/16 p1, 0x4e

    :goto_7
    packed-switch p1, :pswitch_data_4

    .line 14
    return-void

    :pswitch_3
    const/4 p1, 0x0

    :try_start_1
    array-length p1, p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    throw p1

    :catchall_1
    move-exception p1

    goto :goto_9

    :goto_8
    throw p1

    :goto_9
    goto :goto_8

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x44
        :pswitch_2
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x62
        :pswitch_2
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x5b
        :pswitch_3
    .end packed-switch
.end method

.method public onDestroy()V
    .locals 4

    .line 3
    sget v0, Lccsancom/san/landingpage/BaseLandingPageActivity;->addDownloadListener:I

    or-int/lit8 v1, v0, 0x1c

    const/4 v2, 0x1

    shl-int/2addr v1, v2

    xor-int/lit8 v0, v0, 0x1c

    sub-int/2addr v1, v0

    or-int/lit8 v0, v1, -0x1

    shl-int/2addr v0, v2

    xor-int/lit8 v1, v1, -0x1

    sub-int/2addr v0, v1

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/san/landingpage/BaseLandingPageActivity;->IncentiveDownloadUtils:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    .line 1
    :cond_0
    invoke-super {p0}, Lccsanandroidx/fragment/app/FragmentActivity;->onDestroy()V

    .line 2
    const/4 v0, 0x0

    sput-boolean v0, Lccsancom/san/landingpage/BaseLandingPageActivity;->mIsGpLandingShowed:Z

    .line 3
    invoke-direct {p0}, Lccsancom/san/landingpage/BaseLandingPageActivity;->unregistNetBroadcastReceiver()V

    sget v1, Lccsancom/san/landingpage/BaseLandingPageActivity;->addDownloadListener:I

    add-int/lit8 v1, v1, 0x7a

    xor-int/lit8 v3, v1, -0x1

    and-int/lit8 v1, v1, -0x1

    shl-int/2addr v1, v2

    add-int/2addr v3, v1

    rem-int/lit16 v1, v3, 0x80

    sput v1, Lccsancom/san/landingpage/BaseLandingPageActivity;->IncentiveDownloadUtils:I

    rem-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_1

    const/4 v2, 0x0

    :cond_1
    packed-switch v2, :pswitch_data_0

    return-void

    :pswitch_0
    const/4 v0, 0x0

    :try_start_0
    invoke-super {v0}, Ljava/lang/Object;->hashCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    throw v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
