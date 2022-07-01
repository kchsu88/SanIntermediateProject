.class public Lccsancom/san/landingpage/widget/GalleryView;
.super Lccsanandroid/widget/FrameLayout;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsancom/san/landingpage/widget/GalleryView$ViewPagerAdapter;
    }
.end annotation


# static fields
.field private static PAGER_TIME:I = 0x1388

.field private static removeDownloadListener:I

.field private static unifiedDownload:I


# instance fields
.field private mAutoPlayAction:Ljava/lang/Runnable;

.field private mClickUrlList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mImageViewList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lccsanandroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field

.field private mIndicatorContainer:Lccsanandroid/widget/LinearLayout;

.field private mIndicatorDots:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lccsanandroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mIsStop:Z

.field private mPageChangeListener:Lccsanandroidx/viewpager/widget/ViewPager$OnPageChangeListener;

.field private mPrePosition:I

.field private mViewPager:Lccsanandroidx/viewpager/widget/ViewPager;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x0

    sput v0, Lccsancom/san/landingpage/widget/GalleryView;->removeDownloadListener:I

    const/4 v0, 0x1

    sput v0, Lccsancom/san/landingpage/widget/GalleryView;->unifiedDownload:I

    const/16 v1, 0x9

    const/4 v2, 0x1

    or-int/2addr v2, v1

    shl-int/2addr v2, v0

    and-int/lit8 v3, v0, -0xa

    xor-int/lit8 v4, v0, -0x1

    and-int/2addr v1, v4

    or-int/2addr v1, v3

    neg-int v1, v1

    xor-int v3, v2, v1

    and-int/2addr v1, v2

    shl-int/lit8 v0, v1, 0x1

    add-int/2addr v3, v0

    rem-int/lit16 v0, v3, 0x80

    sput v0, Lccsancom/san/landingpage/widget/GalleryView;->removeDownloadListener:I

    rem-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_0

    const/16 v0, 0xe

    goto :goto_0

    :cond_0
    const/16 v0, 0x2c

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
    .packed-switch 0xe
        :pswitch_0
    .end packed-switch
.end method

.method public constructor <init>(Lccsanandroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lccsanandroid/widget/FrameLayout;-><init>(Lccsanandroid/content/Context;)V

    .line 2
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lccsancom/san/landingpage/widget/GalleryView;->mImageViewList:Ljava/util/List;

    .line 3
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lccsancom/san/landingpage/widget/GalleryView;->mClickUrlList:Ljava/util/List;

    .line 4
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lccsancom/san/landingpage/widget/GalleryView;->mIndicatorDots:Ljava/util/List;

    .line 6
    const/4 p1, 0x0

    iput-boolean p1, p0, Lccsancom/san/landingpage/widget/GalleryView;->mIsStop:Z

    .line 94
    new-instance p1, Lccsancom/san/landingpage/widget/GalleryView$2;

    invoke-direct {p1, p0}, Lccsancom/san/landingpage/widget/GalleryView$2;-><init>(Lccsancom/san/landingpage/widget/GalleryView;)V

    iput-object p1, p0, Lccsancom/san/landingpage/widget/GalleryView;->mPageChangeListener:Lccsanandroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    .line 95
    invoke-direct {p0}, Lccsancom/san/landingpage/widget/GalleryView;->initView()V

    return-void
.end method

.method public constructor <init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;)V
    .locals 0

    .line 96
    invoke-direct {p0, p1, p2}, Lccsanandroid/widget/FrameLayout;-><init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;)V

    .line 97
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lccsancom/san/landingpage/widget/GalleryView;->mImageViewList:Ljava/util/List;

    .line 98
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lccsancom/san/landingpage/widget/GalleryView;->mClickUrlList:Ljava/util/List;

    .line 99
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lccsancom/san/landingpage/widget/GalleryView;->mIndicatorDots:Ljava/util/List;

    .line 101
    const/4 p1, 0x0

    iput-boolean p1, p0, Lccsancom/san/landingpage/widget/GalleryView;->mIsStop:Z

    .line 189
    new-instance p1, Lccsancom/san/landingpage/widget/GalleryView$2;

    invoke-direct {p1, p0}, Lccsancom/san/landingpage/widget/GalleryView$2;-><init>(Lccsancom/san/landingpage/widget/GalleryView;)V

    iput-object p1, p0, Lccsancom/san/landingpage/widget/GalleryView;->mPageChangeListener:Lccsanandroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    .line 190
    invoke-direct {p0}, Lccsancom/san/landingpage/widget/GalleryView;->initView()V

    return-void
.end method

.method public constructor <init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;I)V
    .locals 0

    .line 191
    invoke-direct {p0, p1, p2, p3}, Lccsanandroid/widget/FrameLayout;-><init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;I)V

    .line 192
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lccsancom/san/landingpage/widget/GalleryView;->mImageViewList:Ljava/util/List;

    .line 193
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lccsancom/san/landingpage/widget/GalleryView;->mClickUrlList:Ljava/util/List;

    .line 194
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lccsancom/san/landingpage/widget/GalleryView;->mIndicatorDots:Ljava/util/List;

    .line 196
    const/4 p1, 0x0

    iput-boolean p1, p0, Lccsancom/san/landingpage/widget/GalleryView;->mIsStop:Z

    .line 284
    new-instance p1, Lccsancom/san/landingpage/widget/GalleryView$2;

    invoke-direct {p1, p0}, Lccsancom/san/landingpage/widget/GalleryView$2;-><init>(Lccsancom/san/landingpage/widget/GalleryView;)V

    iput-object p1, p0, Lccsancom/san/landingpage/widget/GalleryView;->mPageChangeListener:Lccsanandroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    .line 285
    invoke-direct {p0}, Lccsancom/san/landingpage/widget/GalleryView;->initView()V

    return-void
.end method

.method public constructor <init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;II)V
    .locals 0

    .line 286
    invoke-direct {p0, p1, p2, p3, p4}, Lccsanandroid/widget/FrameLayout;-><init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;II)V

    .line 287
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lccsancom/san/landingpage/widget/GalleryView;->mImageViewList:Ljava/util/List;

    .line 288
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lccsancom/san/landingpage/widget/GalleryView;->mClickUrlList:Ljava/util/List;

    .line 289
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lccsancom/san/landingpage/widget/GalleryView;->mIndicatorDots:Ljava/util/List;

    .line 291
    const/4 p1, 0x0

    iput-boolean p1, p0, Lccsancom/san/landingpage/widget/GalleryView;->mIsStop:Z

    .line 379
    new-instance p1, Lccsancom/san/landingpage/widget/GalleryView$2;

    invoke-direct {p1, p0}, Lccsancom/san/landingpage/widget/GalleryView$2;-><init>(Lccsancom/san/landingpage/widget/GalleryView;)V

    iput-object p1, p0, Lccsancom/san/landingpage/widget/GalleryView;->mPageChangeListener:Lccsanandroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    .line 380
    invoke-direct {p0}, Lccsancom/san/landingpage/widget/GalleryView;->initView()V

    return-void
.end method

.method static synthetic access$000(Lccsancom/san/landingpage/widget/GalleryView;)Ljava/util/List;
    .locals 3
    .param p0, "x0"    # Lccsancom/san/landingpage/widget/GalleryView;

    .line 1
    .end local p0    # "x0":Lccsancom/san/landingpage/widget/GalleryView;
    sget v0, Lccsancom/san/landingpage/widget/GalleryView;->unifiedDownload:I

    xor-int/lit8 v1, v0, 0x6f

    and-int/lit8 v0, v0, 0x6f

    shl-int/lit8 v0, v0, 0x1

    neg-int v0, v0

    neg-int v0, v0

    and-int v2, v1, v0

    or-int/2addr v0, v1

    add-int/2addr v2, v0

    rem-int/lit16 v0, v2, 0x80

    sput v0, Lccsancom/san/landingpage/widget/GalleryView;->removeDownloadListener:I

    const/4 v0, 0x2

    rem-int/2addr v2, v0

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const/16 v0, 0x3d

    :goto_0
    iget-object p0, p0, Lccsancom/san/landingpage/widget/GalleryView;->mImageViewList:Ljava/util/List;

    packed-switch v0, :pswitch_data_0

    const/16 v0, 0xa

    :try_start_0
    div-int/lit8 v0, v0, 0x0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :pswitch_0
    return-object p0

    :catchall_0
    move-exception p0

    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x3d
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic access$100(Lccsancom/san/landingpage/widget/GalleryView;)Lccsanandroidx/viewpager/widget/ViewPager;
    .locals 3
    .param p0, "x0"    # Lccsancom/san/landingpage/widget/GalleryView;

    .line 1
    .end local p0    # "x0":Lccsancom/san/landingpage/widget/GalleryView;
    sget v0, Lccsancom/san/landingpage/widget/GalleryView;->removeDownloadListener:I

    or-int/lit8 v1, v0, 0x41

    const/4 v2, 0x1

    shl-int/2addr v1, v2

    xor-int/lit8 v0, v0, 0x41

    sub-int/2addr v1, v0

    rem-int/lit16 v0, v1, 0x80

    sput v0, Lccsancom/san/landingpage/widget/GalleryView;->unifiedDownload:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    iget-object p0, p0, Lccsancom/san/landingpage/widget/GalleryView;->mViewPager:Lccsanandroidx/viewpager/widget/ViewPager;

    packed-switch v2, :pswitch_data_0

    const/4 v0, 0x0

    :try_start_0
    invoke-super {v0}, Ljava/lang/Object;->hashCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :pswitch_0
    return-object p0

    :catchall_0
    move-exception p0

    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic access$200(Lccsancom/san/landingpage/widget/GalleryView;)Z
    .locals 4
    .param p0, "x0"    # Lccsancom/san/landingpage/widget/GalleryView;

    .line 1
    .end local p0    # "x0":Lccsancom/san/landingpage/widget/GalleryView;
    sget v0, Lccsancom/san/landingpage/widget/GalleryView;->unifiedDownload:I

    xor-int/lit8 v1, v0, 0x79

    and-int/lit8 v0, v0, 0x79

    const/4 v2, 0x1

    shl-int/2addr v0, v2

    and-int v3, v1, v0

    or-int/2addr v0, v1

    add-int/2addr v3, v0

    rem-int/lit16 v0, v3, 0x80

    sput v0, Lccsancom/san/landingpage/widget/GalleryView;->removeDownloadListener:I

    rem-int/lit8 v3, v3, 0x2

    const/4 v1, 0x0

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    iget-boolean p0, p0, Lccsancom/san/landingpage/widget/GalleryView;->mIsStop:Z

    packed-switch v3, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    const/4 v3, 0x3

    :try_start_0
    div-int/2addr v3, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    throw p0

    :goto_1
    and-int/lit8 v1, v0, 0x47

    or-int/lit8 v0, v0, 0x47

    or-int v3, v1, v0

    shl-int/lit8 v2, v3, 0x1

    xor-int/2addr v0, v1

    sub-int/2addr v2, v0

    rem-int/lit16 v0, v2, 0x80

    sput v0, Lccsancom/san/landingpage/widget/GalleryView;->unifiedDownload:I

    rem-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_1

    const/16 v0, 0x5a

    goto :goto_2

    :cond_1
    const/16 v0, 0x50

    :goto_2
    packed-switch v0, :pswitch_data_1

    return p0

    :pswitch_1
    const/4 v0, 0x0

    :try_start_1
    array-length v0, v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return p0

    :catchall_1
    move-exception p0

    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x5a
        :pswitch_1
    .end packed-switch
.end method

.method static synthetic access$300(Lccsancom/san/landingpage/widget/GalleryView;)V
    .locals 3
    .param p0, "x0"    # Lccsancom/san/landingpage/widget/GalleryView;

    .line 1
    .end local p0    # "x0":Lccsancom/san/landingpage/widget/GalleryView;
    sget v0, Lccsancom/san/landingpage/widget/GalleryView;->unifiedDownload:I

    add-int/lit8 v0, v0, 0x4e

    and-int/lit8 v1, v0, -0x1

    or-int/lit8 v0, v0, -0x1

    add-int/2addr v1, v0

    rem-int/lit16 v0, v1, 0x80

    sput v0, Lccsancom/san/landingpage/widget/GalleryView;->removeDownloadListener:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_0

    :cond_0
    invoke-direct {p0}, Lccsancom/san/landingpage/widget/GalleryView;->autoPlayView()V

    sget p0, Lccsancom/san/landingpage/widget/GalleryView;->unifiedDownload:I

    const/16 v0, 0x17

    xor-int/lit8 v1, p0, 0x17

    and-int/lit8 v2, p0, 0x17

    or-int/2addr v1, v2

    shl-int/lit8 v1, v1, 0x1

    and-int/lit8 v2, p0, -0x18

    xor-int/lit8 p0, p0, -0x1

    and-int/2addr p0, v0

    or-int/2addr p0, v2

    sub-int/2addr v1, p0

    rem-int/lit16 p0, v1, 0x80

    sput p0, Lccsancom/san/landingpage/widget/GalleryView;->removeDownloadListener:I

    rem-int/lit8 v1, v1, 0x2

    return-void
.end method

.method static synthetic access$400(Lccsancom/san/landingpage/widget/GalleryView;)Ljava/util/List;
    .locals 4
    .param p0, "x0"    # Lccsancom/san/landingpage/widget/GalleryView;

    .line 1
    .end local p0    # "x0":Lccsancom/san/landingpage/widget/GalleryView;
    sget v0, Lccsancom/san/landingpage/widget/GalleryView;->removeDownloadListener:I

    and-int/lit8 v1, v0, 0x4

    or-int/lit8 v0, v0, 0x4

    add-int/2addr v1, v0

    const/4 v0, 0x1

    sub-int/2addr v1, v0

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsancom/san/landingpage/widget/GalleryView;->unifiedDownload:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_0

    :cond_0
    iget-object p0, p0, Lccsancom/san/landingpage/widget/GalleryView;->mIndicatorDots:Ljava/util/List;

    xor-int/lit8 v1, v2, 0x47

    and-int/lit8 v3, v2, 0x47

    or-int/2addr v1, v3

    shl-int/2addr v1, v0

    and-int/lit8 v3, v2, -0x48

    xor-int/lit8 v2, v2, -0x1

    and-int/lit8 v2, v2, 0x47

    or-int/2addr v2, v3

    neg-int v2, v2

    and-int v3, v1, v2

    or-int/2addr v1, v2

    add-int/2addr v3, v1

    rem-int/lit16 v1, v3, 0x80

    sput v1, Lccsancom/san/landingpage/widget/GalleryView;->removeDownloadListener:I

    rem-int/lit8 v3, v3, 0x2

    const/4 v1, 0x0

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    return-object p0

    :goto_1
    const/16 v0, 0x26

    :try_start_0
    div-int/2addr v0, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic access$500(Lccsancom/san/landingpage/widget/GalleryView;)I
    .locals 3
    .param p0, "x0"    # Lccsancom/san/landingpage/widget/GalleryView;

    .line 1
    .end local p0    # "x0":Lccsancom/san/landingpage/widget/GalleryView;
    sget v0, Lccsancom/san/landingpage/widget/GalleryView;->removeDownloadListener:I

    add-int/lit8 v0, v0, 0x50

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    rem-int/lit16 v2, v0, 0x80

    sput v2, Lccsancom/san/landingpage/widget/GalleryView;->unifiedDownload:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iget p0, p0, Lccsancom/san/landingpage/widget/GalleryView;->mPrePosition:I

    packed-switch v1, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    const/4 v0, 0x0

    :try_start_0
    array-length v0, v0
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

.method static synthetic access$502(Lccsancom/san/landingpage/widget/GalleryView;I)I
    .locals 3
    .param p0, "x0"    # Lccsancom/san/landingpage/widget/GalleryView;
    .param p1, "x1"    # I

    .line 1
    .end local p0    # "x0":Lccsancom/san/landingpage/widget/GalleryView;
    .end local p1    # "x1":I
    sget v0, Lccsancom/san/landingpage/widget/GalleryView;->unifiedDownload:I

    and-int/lit8 v1, v0, 0x6d

    or-int/lit8 v0, v0, 0x6d

    or-int v2, v1, v0

    shl-int/lit8 v2, v2, 0x1

    xor-int/2addr v0, v1

    sub-int/2addr v2, v0

    rem-int/lit16 v0, v2, 0x80

    sput v0, Lccsancom/san/landingpage/widget/GalleryView;->removeDownloadListener:I

    rem-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_0

    const/16 v0, 0x25

    goto :goto_0

    :cond_0
    const/16 v0, 0x1e

    :goto_0
    iput p1, p0, Lccsancom/san/landingpage/widget/GalleryView;->mPrePosition:I

    packed-switch v0, :pswitch_data_0

    const/4 p0, 0x0

    :try_start_0
    array-length p0, p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :pswitch_0
    return p1

    :catchall_0
    move-exception p0

    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x1e
        :pswitch_0
    .end packed-switch
.end method

.method private autoPlayView()V
    .locals 6

    .line 16
    nop

    .line 1
    iget-object v0, p0, Lccsancom/san/landingpage/widget/GalleryView;->mAutoPlayAction:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lccsanandroid/widget/FrameLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 2
    new-instance v0, Lccsancom/san/landingpage/widget/GalleryView$1;

    invoke-direct {v0, p0}, Lccsancom/san/landingpage/widget/GalleryView$1;-><init>(Lccsancom/san/landingpage/widget/GalleryView;)V

    iput-object v0, p0, Lccsancom/san/landingpage/widget/GalleryView;->mAutoPlayAction:Ljava/lang/Runnable;

    .line 15
    iget-object v0, p0, Lccsancom/san/landingpage/widget/GalleryView;->mImageViewList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-le v0, v2, :cond_0

    .line 16
    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    packed-switch v0, :pswitch_data_0

    :goto_1
    goto :goto_3

    :pswitch_0
    sget v0, Lccsancom/san/landingpage/widget/GalleryView;->removeDownloadListener:I

    const/16 v3, 0x31

    xor-int/lit8 v4, v0, 0x31

    and-int/lit8 v5, v0, 0x31

    or-int/2addr v4, v5

    shl-int/lit8 v2, v4, 0x1

    and-int/lit8 v4, v0, -0x32

    xor-int/lit8 v0, v0, -0x1

    and-int/2addr v0, v3

    or-int/2addr v0, v4

    sub-int/2addr v2, v0

    rem-int/lit16 v0, v2, 0x80

    sput v0, Lccsancom/san/landingpage/widget/GalleryView;->unifiedDownload:I

    rem-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_1

    const/16 v0, 0x13

    goto :goto_2

    :cond_1
    const/16 v0, 0x50

    :goto_2
    packed-switch v0, :pswitch_data_1

    iget-object v0, p0, Lccsancom/san/landingpage/widget/GalleryView;->mAutoPlayAction:Ljava/lang/Runnable;

    sget v1, Lccsancom/san/landingpage/widget/GalleryView;->PAGER_TIME:I

    int-to-long v1, v1

    invoke-virtual {p0, v0, v1, v2}, Lccsanandroid/widget/FrameLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    :pswitch_1
    iget-object v0, p0, Lccsancom/san/landingpage/widget/GalleryView;->mAutoPlayAction:Ljava/lang/Runnable;

    sget v2, Lccsancom/san/landingpage/widget/GalleryView;->PAGER_TIME:I

    int-to-long v2, v2

    invoke-virtual {p0, v0, v2, v3}, Lccsanandroid/widget/FrameLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    const/16 v0, 0x28

    :try_start_0
    div-int/2addr v0, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    throw v0

    :goto_3
    sget v0, Lccsancom/san/landingpage/widget/GalleryView;->removeDownloadListener:I

    add-int/lit8 v0, v0, 0x21

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/san/landingpage/widget/GalleryView;->unifiedDownload:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_2

    const/16 v0, 0x2c

    goto :goto_4

    :cond_2
    const/16 v0, 0x1e

    :goto_4
    packed-switch v0, :pswitch_data_2

    return-void

    :pswitch_2
    const/4 v0, 0x0

    :try_start_1
    invoke-super {v0}, Ljava/lang/Object;->hashCode()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-void

    :catchall_1
    move-exception v0

    goto :goto_6

    :goto_5
    throw v0

    :goto_6
    goto :goto_5

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x13
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x2c
        :pswitch_2
    .end packed-switch
.end method

.method private initView()V
    .locals 5

    .line 8
    nop

    .line 1
    new-instance v0, Lccsanandroidx/viewpager/widget/ViewPager;

    invoke-virtual {p0}, Lccsanandroid/widget/FrameLayout;->getContext()Lccsanandroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lccsanandroidx/viewpager/widget/ViewPager;-><init>(Lccsanandroid/content/Context;)V

    iput-object v0, p0, Lccsancom/san/landingpage/widget/GalleryView;->mViewPager:Lccsanandroidx/viewpager/widget/ViewPager;

    .line 2
    new-instance v1, Lccsanandroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Lccsanandroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Lccsanandroid/widget/FrameLayout;->addView(Lccsanandroid/view/View;Lccsanandroid/view/ViewGroup$LayoutParams;)V

    .line 3
    new-instance v0, Lccsanandroid/widget/LinearLayout;

    invoke-virtual {p0}, Lccsanandroid/widget/FrameLayout;->getContext()Lccsanandroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lccsanandroid/widget/LinearLayout;-><init>(Lccsanandroid/content/Context;)V

    iput-object v0, p0, Lccsancom/san/landingpage/widget/GalleryView;->mIndicatorContainer:Lccsanandroid/widget/LinearLayout;

    .line 4
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lccsanandroid/widget/LinearLayout;->setOrientation(I)V

    .line 5
    iget-object v0, p0, Lccsancom/san/landingpage/widget/GalleryView;->mIndicatorContainer:Lccsanandroid/widget/LinearLayout;

    const/16 v3, 0x11

    invoke-virtual {v0, v3}, Lccsanandroid/widget/LinearLayout;->setGravity(I)V

    .line 6
    new-instance v0, Lccsanandroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {p0}, Lccsanandroid/widget/FrameLayout;->getResources()Lccsanandroid/content/res/Resources;

    move-result-object v3

    const-string v4, "san_common_dimens_20dp"

    invoke-static {v4}, Lccsansan/bw/shouldTryHandlingAction;->unifiedDownload(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Lccsanandroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-direct {v0, v2, v3}, Lccsanandroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v2, 0x50

    .line 7
    iput v2, v0, Lccsanandroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 8
    iget-object v2, p0, Lccsancom/san/landingpage/widget/GalleryView;->mIndicatorContainer:Lccsanandroid/widget/LinearLayout;

    invoke-virtual {p0, v2, v0}, Lccsanandroid/widget/FrameLayout;->addView(Lccsanandroid/view/View;Lccsanandroid/view/ViewGroup$LayoutParams;)V

    sget v0, Lccsancom/san/landingpage/widget/GalleryView;->removeDownloadListener:I

    and-int/lit8 v2, v0, 0xf

    or-int/lit8 v0, v0, 0xf

    add-int/2addr v2, v0

    rem-int/lit16 v0, v2, 0x80

    sput v0, Lccsancom/san/landingpage/widget/GalleryView;->unifiedDownload:I

    rem-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    return-void

    :goto_1
    const/16 v0, 0x48

    :try_start_0
    div-int/2addr v0, v1
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
.method public renderViews(Ljava/util/List;Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lccsanandroid/widget/ImageView;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 28
    nop

    .line 20
    sget v0, Lccsancom/san/landingpage/widget/GalleryView;->removeDownloadListener:I

    or-int/lit8 v1, v0, 0xd

    const/4 v2, 0x1

    shl-int/2addr v1, v2

    xor-int/lit8 v0, v0, 0xd

    sub-int/2addr v1, v0

    rem-int/lit16 v0, v1, 0x80

    sput v0, Lccsancom/san/landingpage/widget/GalleryView;->unifiedDownload:I

    rem-int/lit8 v1, v1, 0x2

    const/4 v0, 0x0

    if-nez v1, :cond_0

    .line 4
    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    :goto_0
    packed-switch v1, :pswitch_data_0

    .line 1
    iget-object v1, p0, Lccsancom/san/landingpage/widget/GalleryView;->mImageViewList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 2
    iget-object p1, p0, Lccsancom/san/landingpage/widget/GalleryView;->mClickUrlList:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 4
    iget-object p1, p0, Lccsancom/san/landingpage/widget/GalleryView;->mViewPager:Lccsanandroidx/viewpager/widget/ViewPager;

    invoke-virtual {p1}, Lccsanandroidx/viewpager/widget/ViewPager;->getAdapter()Lccsanandroidx/viewpager/widget/PagerAdapter;

    move-result-object p1

    if-nez p1, :cond_2

    :goto_1
    goto :goto_2

    .line 1
    :pswitch_0
    iget-object v1, p0, Lccsancom/san/landingpage/widget/GalleryView;->mImageViewList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 2
    iget-object p1, p0, Lccsancom/san/landingpage/widget/GalleryView;->mClickUrlList:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 4
    iget-object p1, p0, Lccsancom/san/landingpage/widget/GalleryView;->mViewPager:Lccsanandroidx/viewpager/widget/ViewPager;

    invoke-virtual {p1}, Lccsanandroidx/viewpager/widget/ViewPager;->getAdapter()Lccsanandroidx/viewpager/widget/PagerAdapter;

    move-result-object p1

    const/4 p2, 0x0

    :try_start_0
    invoke-super {p2}, Ljava/lang/Object;->hashCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p1, :cond_2

    goto :goto_1

    .line 20
    :catchall_0
    move-exception p1

    throw p1

    .line 5
    :goto_2
    iget-object p1, p0, Lccsancom/san/landingpage/widget/GalleryView;->mViewPager:Lccsanandroidx/viewpager/widget/ViewPager;

    new-instance p2, Lccsancom/san/landingpage/widget/GalleryView$ViewPagerAdapter;

    iget-object v1, p0, Lccsancom/san/landingpage/widget/GalleryView;->mImageViewList:Ljava/util/List;

    iget-object v3, p0, Lccsancom/san/landingpage/widget/GalleryView;->mClickUrlList:Ljava/util/List;

    invoke-direct {p2, p0, v1, v3, p1}, Lccsancom/san/landingpage/widget/GalleryView$ViewPagerAdapter;-><init>(Lccsancom/san/landingpage/widget/GalleryView;Ljava/util/List;Ljava/util/List;Lccsanandroidx/viewpager/widget/ViewPager;)V

    invoke-virtual {p1, p2}, Lccsanandroidx/viewpager/widget/ViewPager;->setAdapter(Lccsanandroidx/viewpager/widget/PagerAdapter;)V

    .line 6
    iget-object p1, p0, Lccsancom/san/landingpage/widget/GalleryView;->mViewPager:Lccsanandroidx/viewpager/widget/ViewPager;

    iget-object p2, p0, Lccsancom/san/landingpage/widget/GalleryView;->mPageChangeListener:Lccsanandroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    invoke-virtual {p1, p2}, Lccsanandroidx/viewpager/widget/ViewPager;->addOnPageChangeListener(Lccsanandroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    .line 4
    sget p1, Lccsancom/san/landingpage/widget/GalleryView;->unifiedDownload:I

    and-int/lit8 p2, p1, 0x49

    xor-int/lit8 v1, p2, -0x1

    or-int/lit8 p1, p1, 0x49

    and-int/2addr p1, v1

    shl-int/2addr p2, v2

    xor-int v1, p1, p2

    and-int/2addr p1, p2

    shl-int/2addr p1, v2

    add-int/2addr v1, p1

    rem-int/lit16 p1, v1, 0x80

    sput p1, Lccsancom/san/landingpage/widget/GalleryView;->removeDownloadListener:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    const/4 p1, 0x1

    goto :goto_3

    :cond_1
    const/4 p1, 0x0

    :goto_3
    packed-switch p1, :pswitch_data_1

    .line 9
    :cond_2
    :pswitch_1
    iget-object p1, p0, Lccsancom/san/landingpage/widget/GalleryView;->mIndicatorContainer:Lccsanandroid/widget/LinearLayout;

    invoke-virtual {p1}, Lccsanandroid/widget/LinearLayout;->removeAllViews()V

    .line 28
    sget p1, Lccsancom/san/landingpage/widget/GalleryView;->unifiedDownload:I

    xor-int/lit8 p2, p1, 0x5d

    and-int/lit8 v1, p1, 0x5d

    or-int/2addr p2, v1

    shl-int/2addr p2, v2

    const/4 v3, -0x1

    xor-int/2addr v1, v3

    or-int/lit8 p1, p1, 0x5d

    and-int/2addr p1, v1

    neg-int p1, p1

    and-int v1, p2, p1

    or-int/2addr p1, p2

    add-int/2addr v1, p1

    rem-int/lit16 p1, v1, 0x80

    sput p1, Lccsancom/san/landingpage/widget/GalleryView;->removeDownloadListener:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_3

    :cond_3
    const/4 p1, 0x0

    .line 10
    :goto_4
    :pswitch_2
    iget-object p2, p0, Lccsancom/san/landingpage/widget/GalleryView;->mImageViewList:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-ge p1, p2, :cond_9

    .line 11
    new-instance p2, Lccsanandroid/view/View;

    invoke-virtual {p0}, Lccsanandroid/widget/FrameLayout;->getContext()Lccsanandroid/content/Context;

    move-result-object v1

    invoke-direct {p2, v1}, Lccsanandroid/view/View;-><init>(Lccsanandroid/content/Context;)V

    .line 12
    new-instance v1, Lccsanandroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x2

    invoke-direct {v1, v3, v4}, Lccsanandroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 13
    invoke-virtual {p0}, Lccsanandroid/widget/FrameLayout;->getResources()Lccsanandroid/content/res/Resources;

    move-result-object v4

    const-string v5, "san_common_dimens_7dp"

    invoke-static {v5}, Lccsansan/bw/shouldTryHandlingAction;->unifiedDownload(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v4, v6}, Lccsanandroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, v1, Lccsanandroid/widget/LinearLayout$LayoutParams;->width:I

    .line 14
    invoke-virtual {p0}, Lccsanandroid/widget/FrameLayout;->getResources()Lccsanandroid/content/res/Resources;

    move-result-object v4

    invoke-static {v5}, Lccsansan/bw/shouldTryHandlingAction;->unifiedDownload(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Lccsanandroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, v1, Lccsanandroid/widget/LinearLayout$LayoutParams;->height:I

    .line 15
    invoke-virtual {p0}, Lccsanandroid/widget/FrameLayout;->getResources()Lccsanandroid/content/res/Resources;

    move-result-object v4

    const-string v5, "san_common_dimens_3dp"

    invoke-static {v5}, Lccsansan/bw/shouldTryHandlingAction;->unifiedDownload(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Lccsanandroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 16
    invoke-virtual {v1, v4, v0, v4, v0}, Lccsanandroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 17
    invoke-virtual {p2, v1}, Lccsanandroid/view/View;->setLayoutParams(Lccsanandroid/view/ViewGroup$LayoutParams;)V

    .line 18
    invoke-virtual {p0}, Lccsanandroid/widget/FrameLayout;->getResources()Lccsanandroid/content/res/Resources;

    move-result-object v1

    const-string v4, "san_gallery_point"

    invoke-static {v4}, Lccsansan/bw/shouldTryHandlingAction;->addDownloadListener(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v1, v4}, Lccsanandroid/content/res/Resources;->getDrawable(I)Lccsanandroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p2, v1}, Lccsanandroid/view/View;->setBackground(Lccsanandroid/graphics/drawable/Drawable;)V

    if-nez p1, :cond_4

    .line 4
    const/16 v1, 0x30

    goto :goto_5

    :cond_4
    const/16 v1, 0x24

    :goto_5
    packed-switch v1, :pswitch_data_2

    .line 28
    sget v1, Lccsancom/san/landingpage/widget/GalleryView;->removeDownloadListener:I

    xor-int/lit8 v4, v1, 0x45

    and-int/lit8 v1, v1, 0x45

    shl-int/2addr v1, v2

    or-int v5, v4, v1

    shl-int/2addr v5, v2

    xor-int/2addr v1, v4

    sub-int/2addr v5, v1

    rem-int/lit16 v1, v5, 0x80

    sput v1, Lccsancom/san/landingpage/widget/GalleryView;->unifiedDownload:I

    rem-int/lit8 v5, v5, 0x2

    if-nez v5, :cond_6

    goto :goto_7

    .line 20
    :pswitch_3
    const v1, 0x3e99999a    # 0.3f

    .line 22
    invoke-virtual {p2, v1}, Lccsanandroid/view/View;->setAlpha(F)V

    .line 28
    sget v1, Lccsancom/san/landingpage/widget/GalleryView;->removeDownloadListener:I

    add-int/lit8 v1, v1, 0x53

    rem-int/lit16 v4, v1, 0x80

    sput v4, Lccsancom/san/landingpage/widget/GalleryView;->unifiedDownload:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_5

    :cond_5
    :goto_6
    :pswitch_4
    goto :goto_c

    .line 4
    :goto_7
    const/16 v1, 0x62

    goto :goto_8

    :cond_6
    const/16 v1, 0x13

    :goto_8
    const/high16 v4, 0x3f800000    # 1.0f

    packed-switch v1, :pswitch_data_3

    .line 18
    nop

    .line 20
    :goto_9
    invoke-virtual {p2, v4}, Lccsanandroid/view/View;->setAlpha(F)V

    goto :goto_a

    .line 28
    :pswitch_5
    goto :goto_9

    :goto_a
    sget v1, Lccsancom/san/landingpage/widget/GalleryView;->unifiedDownload:I

    const/16 v4, 0x5f

    or-int/lit8 v5, v1, 0x5f

    shl-int/2addr v5, v2

    and-int/lit8 v6, v1, -0x60

    xor-int/2addr v1, v3

    and-int/2addr v1, v4

    or-int/2addr v1, v6

    sub-int/2addr v5, v1

    rem-int/lit16 v1, v5, 0x80

    sput v1, Lccsancom/san/landingpage/widget/GalleryView;->removeDownloadListener:I

    rem-int/lit8 v5, v5, 0x2

    if-eqz v5, :cond_7

    .line 4
    const/4 v1, 0x1

    goto :goto_b

    :cond_7
    const/4 v1, 0x0

    :goto_b
    packed-switch v1, :pswitch_data_4

    .line 28
    goto :goto_6

    .line 23
    :goto_c
    iget-object v1, p0, Lccsancom/san/landingpage/widget/GalleryView;->mIndicatorDots:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 25
    iget-object v1, p0, Lccsancom/san/landingpage/widget/GalleryView;->mIndicatorContainer:Lccsanandroid/widget/LinearLayout;

    invoke-virtual {v1, p2}, Lccsanandroid/widget/LinearLayout;->addView(Lccsanandroid/view/View;)V

    add-int/lit8 p1, p1, 0x1

    .line 4
    sget p2, Lccsancom/san/landingpage/widget/GalleryView;->unifiedDownload:I

    add-int/lit8 p2, p2, 0x33

    sub-int/2addr p2, v2

    sub-int/2addr p2, v0

    sub-int/2addr p2, v2

    rem-int/lit16 v1, p2, 0x80

    sput v1, Lccsancom/san/landingpage/widget/GalleryView;->removeDownloadListener:I

    rem-int/lit8 p2, p2, 0x2

    if-eqz p2, :cond_8

    const/4 p2, 0x1

    goto :goto_d

    :cond_8
    const/4 p2, 0x0

    :goto_d
    packed-switch p2, :pswitch_data_5

    .line 28
    goto/16 :goto_4

    .line 25
    :cond_9
    nop

    .line 27
    iput-boolean v0, p0, Lccsancom/san/landingpage/widget/GalleryView;->mIsStop:Z

    .line 28
    invoke-direct {p0}, Lccsancom/san/landingpage/widget/GalleryView;->autoPlayView()V

    sget p1, Lccsancom/san/landingpage/widget/GalleryView;->removeDownloadListener:I

    and-int/lit8 p2, p1, 0xb

    xor-int/lit8 p1, p1, 0xb

    or-int/2addr p1, p2

    add-int/2addr p2, p1

    rem-int/lit16 p1, p2, 0x80

    sput p1, Lccsancom/san/landingpage/widget/GalleryView;->unifiedDownload:I

    rem-int/lit8 p2, p2, 0x2

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x24
        :pswitch_3
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x62
        :pswitch_5
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x1
        :pswitch_4
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0x1
        :pswitch_2
    .end packed-switch
.end method
