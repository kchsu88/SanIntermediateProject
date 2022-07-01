.class public Lccsancom/san/landingpage/widget/ObservableScrollView;
.super Lccsanandroid/widget/ScrollView;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsancom/san/landingpage/widget/ObservableScrollView$ScrollViewListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "Mads.ObservableScrollView"

.field private static getDownloadingList:I

.field private static unifiedDownload:I


# instance fields
.field private mDownX:F

.field private mDownY:F

.field private mIsBannerShow:Z

.field private mIsWebContentOnTop:Z

.field private mScrollViewListeners:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Lccsancom/san/landingpage/widget/ObservableScrollView$ScrollViewListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lccsancom/san/landingpage/widget/ObservableScrollView;->getDownloadingList:I

    const/4 v0, 0x1

    sput v0, Lccsancom/san/landingpage/widget/ObservableScrollView;->unifiedDownload:I

    return-void
.end method

.method public constructor <init>(Lccsanandroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lccsanandroid/widget/ScrollView;-><init>(Lccsanandroid/content/Context;)V

    .line 2
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lccsancom/san/landingpage/widget/ObservableScrollView;->mScrollViewListeners:Ljava/util/HashSet;

    return-void
.end method

.method public constructor <init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2}, Lccsanandroid/widget/ScrollView;-><init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;)V

    .line 4
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lccsancom/san/landingpage/widget/ObservableScrollView;->mScrollViewListeners:Ljava/util/HashSet;

    return-void
.end method

.method public constructor <init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;I)V
    .locals 0

    .line 5
    invoke-direct {p0, p1, p2, p3}, Lccsanandroid/widget/ScrollView;-><init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;I)V

    .line 6
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lccsancom/san/landingpage/widget/ObservableScrollView;->mScrollViewListeners:Ljava/util/HashSet;

    return-void
.end method


# virtual methods
.method public addScrollViewListener(Lccsancom/san/landingpage/widget/ObservableScrollView$ScrollViewListener;)Z
    .locals 3
    .param p1, "scrollViewListener"    # Lccsancom/san/landingpage/widget/ObservableScrollView$ScrollViewListener;

    .line 1
    .end local p1    # "scrollViewListener":Lccsancom/san/landingpage/widget/ObservableScrollView$ScrollViewListener;
    sget v0, Lccsancom/san/landingpage/widget/ObservableScrollView;->unifiedDownload:I

    and-int/lit8 v1, v0, 0x31

    xor-int/lit8 v0, v0, 0x31

    or-int/2addr v0, v1

    neg-int v0, v0

    neg-int v0, v0

    xor-int/lit8 v0, v0, -0x1

    sub-int/2addr v1, v0

    const/4 v0, 0x1

    sub-int/2addr v1, v0

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsancom/san/landingpage/widget/ObservableScrollView;->getDownloadingList:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lccsancom/san/landingpage/widget/ObservableScrollView;->mScrollViewListeners:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result p1

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lccsancom/san/landingpage/widget/ObservableScrollView;->mScrollViewListeners:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result p1

    goto :goto_1

    :goto_0
    const/4 v0, 0x0

    :try_start_0
    invoke-super {v0}, Ljava/lang/Object;->hashCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    return p1

    :catchall_0
    move-exception p1

    throw p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public clearScrollViewListeners()V
    .locals 3

    .line 1
    sget v0, Lccsancom/san/landingpage/widget/ObservableScrollView;->unifiedDownload:I

    xor-int/lit8 v1, v0, 0x1b

    and-int/lit8 v0, v0, 0x1b

    const/4 v2, 0x1

    shl-int/2addr v0, v2

    add-int/2addr v1, v0

    rem-int/lit16 v0, v1, 0x80

    sput v0, Lccsancom/san/landingpage/widget/ObservableScrollView;->getDownloadingList:I

    rem-int/lit8 v1, v1, 0x2

    const/4 v0, 0x0

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    packed-switch v2, :pswitch_data_0

    iget-object v0, p0, Lccsancom/san/landingpage/widget/ObservableScrollView;->mScrollViewListeners:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    goto :goto_1

    :pswitch_0
    iget-object v1, p0, Lccsancom/san/landingpage/widget/ObservableScrollView;->mScrollViewListeners:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->clear()V

    const/16 v1, 0x45

    :try_start_0
    div-int/2addr v1, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    throw v0

    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onInterceptTouchEvent(Lccsanandroid/view/MotionEvent;)Z
    .locals 10
    .param p1, "ev"    # Lccsanandroid/view/MotionEvent;

    .line 31
    .end local p1    # "ev":Lccsanandroid/view/MotionEvent;
    sget v0, Lccsancom/san/landingpage/widget/ObservableScrollView;->unifiedDownload:I

    xor-int/lit8 v1, v0, 0xf

    and-int/lit8 v2, v0, 0xf

    or-int/2addr v1, v2

    const/4 v2, 0x1

    shl-int/2addr v1, v2

    and-int/lit8 v3, v0, -0x10

    xor-int/lit8 v0, v0, -0x1

    const/16 v4, 0xf

    and-int/2addr v0, v4

    or-int/2addr v0, v3

    neg-int v0, v0

    and-int v3, v1, v0

    or-int/2addr v0, v1

    add-int/2addr v3, v0

    rem-int/lit16 v0, v3, 0x80

    sput v0, Lccsancom/san/landingpage/widget/ObservableScrollView;->getDownloadingList:I

    const/4 v0, 0x2

    rem-int/2addr v3, v0

    if-eqz v3, :cond_0

    .line 1
    :cond_0
    invoke-virtual {p1}, Lccsanandroid/view/MotionEvent;->getY()F

    move-result v1

    .line 2
    invoke-virtual {p1}, Lccsanandroid/view/MotionEvent;->getX()F

    move-result v3

    .line 3
    invoke-virtual {p1}, Lccsanandroid/view/MotionEvent;->getAction()I

    move-result v5

    if-eqz v5, :cond_1

    .line 13
    const/16 v6, 0x13

    goto :goto_0

    :cond_1
    const/16 v6, 0x4b

    :goto_0
    const/16 v7, 0x69

    packed-switch v6, :pswitch_data_0

    .line 16
    iput v1, p0, Lccsancom/san/landingpage/widget/ObservableScrollView;->mDownY:F

    .line 17
    iput v3, p0, Lccsancom/san/landingpage/widget/ObservableScrollView;->mDownX:F

    goto/16 :goto_17

    .line 31
    :pswitch_0
    sget v6, Lccsancom/san/landingpage/widget/ObservableScrollView;->unifiedDownload:I

    add-int/lit8 v8, v6, 0x37

    rem-int/lit16 v9, v8, 0x80

    sput v9, Lccsancom/san/landingpage/widget/ObservableScrollView;->getDownloadingList:I

    rem-int/2addr v8, v0

    if-eqz v8, :cond_2

    .line 3
    :cond_2
    if-eq v5, v0, :cond_3

    .line 31
    const/16 v1, 0x79

    and-int/lit8 v3, v6, -0x7a

    xor-int/lit8 v4, v6, -0x1

    and-int/2addr v4, v1

    or-int/2addr v3, v4

    and-int/2addr v1, v6

    shl-int/2addr v1, v2

    xor-int/lit8 v1, v1, -0x1

    sub-int/2addr v3, v1

    sub-int/2addr v3, v2

    rem-int/lit16 v1, v3, 0x80

    sput v1, Lccsancom/san/landingpage/widget/ObservableScrollView;->getDownloadingList:I

    rem-int/2addr v3, v0

    if-eqz v3, :cond_15

    goto/16 :goto_18

    .line 9
    :cond_3
    iget v5, p0, Lccsancom/san/landingpage/widget/ObservableScrollView;->mDownY:F

    sub-float/2addr v1, v5

    .line 10
    iget v5, p0, Lccsancom/san/landingpage/widget/ObservableScrollView;->mDownX:F

    sub-float/2addr v3, v5

    .line 11
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onInterceptTouchEvent dy = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v6, "  mIsBannerShow = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v6, p0, Lccsancom/san/landingpage/widget/ObservableScrollView;->mIsBannerShow:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "Mads.ObservableScrollView"

    invoke-static {v6, v5}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v5

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpl-float v3, v5, v3

    if-lez v3, :cond_4

    .line 13
    const/16 v4, 0x35

    goto :goto_1

    :cond_4
    nop

    :goto_1
    const/16 v3, 0x4f

    const/4 v5, 0x0

    packed-switch v4, :pswitch_data_1

    .line 31
    sget v4, Lccsancom/san/landingpage/widget/ObservableScrollView;->getDownloadingList:I

    and-int/lit8 v6, v4, 0x19

    xor-int/lit8 v8, v4, 0x19

    or-int/2addr v8, v6

    xor-int v9, v6, v8

    and-int/2addr v6, v8

    shl-int/2addr v6, v2

    add-int/2addr v9, v6

    rem-int/lit16 v6, v9, 0x80

    sput v6, Lccsancom/san/landingpage/widget/ObservableScrollView;->unifiedDownload:I

    rem-int/2addr v9, v0

    if-nez v9, :cond_6

    goto :goto_2

    .line 12
    :pswitch_1
    nop

    .line 31
    sget v4, Lccsancom/san/landingpage/widget/ObservableScrollView;->getDownloadingList:I

    or-int/lit8 v6, v4, 0x16

    shl-int/2addr v6, v2

    xor-int/lit8 v4, v4, 0x16

    sub-int/2addr v6, v4

    or-int/lit8 v4, v6, -0x1

    shl-int/2addr v4, v2

    xor-int/lit8 v6, v6, -0x1

    sub-int/2addr v4, v6

    rem-int/lit16 v6, v4, 0x80

    sput v6, Lccsancom/san/landingpage/widget/ObservableScrollView;->unifiedDownload:I

    rem-int/2addr v4, v0

    if-nez v4, :cond_5

    :cond_5
    const/4 v4, 0x0

    goto :goto_6

    .line 13
    :goto_2
    const/16 v6, 0x62

    goto :goto_3

    :cond_6
    const/16 v6, 0x2a

    :goto_3
    packed-switch v6, :pswitch_data_2

    .line 31
    goto :goto_4

    .line 12
    :pswitch_2
    nop

    .line 31
    :goto_4
    const/16 v6, 0xd

    and-int/lit8 v8, v4, -0xe

    xor-int/lit8 v9, v4, -0x1

    and-int/2addr v9, v6

    or-int/2addr v8, v9

    and-int/2addr v4, v6

    shl-int/2addr v4, v2

    neg-int v4, v4

    neg-int v4, v4

    xor-int v6, v8, v4

    and-int/2addr v4, v8

    shl-int/2addr v4, v2

    add-int/2addr v6, v4

    rem-int/lit16 v4, v6, 0x80

    sput v4, Lccsancom/san/landingpage/widget/ObservableScrollView;->unifiedDownload:I

    rem-int/2addr v6, v0

    if-nez v6, :cond_7

    .line 13
    const/16 v4, 0x8

    goto :goto_5

    :cond_7
    const/16 v4, 0x4f

    :goto_5
    packed-switch v4, :pswitch_data_3

    .line 31
    :pswitch_3
    nop

    .line 12
    const/4 v4, 0x1

    :goto_6
    if-eqz v4, :cond_8

    .line 13
    const/4 v6, 0x0

    goto :goto_7

    :cond_8
    const/4 v6, 0x1

    :goto_7
    const/4 v8, 0x0

    packed-switch v6, :pswitch_data_4

    sget v6, Lccsancom/san/landingpage/widget/ObservableScrollView;->unifiedDownload:I

    and-int/lit8 v9, v6, 0x4f

    or-int/2addr v3, v6

    add-int/2addr v9, v3

    rem-int/lit16 v3, v9, 0x80

    sput v3, Lccsancom/san/landingpage/widget/ObservableScrollView;->getDownloadingList:I

    rem-int/2addr v9, v0

    if-eqz v9, :cond_9

    .line 12
    :cond_9
    cmpg-float v6, v1, v8

    if-gez v6, :cond_a

    .line 13
    const/4 v6, 0x1

    goto :goto_8

    :cond_a
    const/4 v6, 0x0

    :goto_8
    packed-switch v6, :pswitch_data_5

    goto :goto_e

    .line 31
    :pswitch_4
    or-int/lit8 v6, v3, 0x69

    shl-int/2addr v6, v2

    xor-int/2addr v3, v7

    neg-int v3, v3

    xor-int/lit8 v3, v3, -0x1

    sub-int/2addr v6, v3

    sub-int/2addr v6, v2

    rem-int/lit16 v3, v6, 0x80

    sput v3, Lccsancom/san/landingpage/widget/ObservableScrollView;->unifiedDownload:I

    rem-int/2addr v6, v0

    if-nez v6, :cond_b

    .line 13
    const/4 v3, 0x0

    goto :goto_9

    :cond_b
    const/4 v3, 0x1

    :goto_9
    packed-switch v3, :pswitch_data_6

    iget-boolean v3, p0, Lccsancom/san/landingpage/widget/ObservableScrollView;->mIsBannerShow:Z

    if-eqz v3, :cond_d

    goto :goto_b

    :pswitch_5
    iget-boolean v3, p0, Lccsancom/san/landingpage/widget/ObservableScrollView;->mIsBannerShow:Z

    const/4 v6, 0x0

    :try_start_0
    invoke-super {v6}, Ljava/lang/Object;->hashCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_c

    const/16 v3, 0x14

    goto :goto_a

    :cond_c
    const/16 v3, 0x29

    :goto_a
    packed-switch v3, :pswitch_data_7

    goto :goto_e

    .line 31
    :catchall_0
    move-exception p1

    throw p1

    .line 13
    :goto_b
    const/4 v3, 0x1

    goto :goto_c

    :cond_d
    const/16 v3, 0x5b

    :goto_c
    packed-switch v3, :pswitch_data_8

    goto :goto_e

    :pswitch_6
    sget p1, Lccsancom/san/landingpage/widget/ObservableScrollView;->getDownloadingList:I

    and-int/lit8 v1, p1, 0x2d

    xor-int/lit8 p1, p1, 0x2d

    or-int/2addr p1, v1

    add-int/2addr v1, p1

    rem-int/lit16 p1, v1, 0x80

    sput p1, Lccsancom/san/landingpage/widget/ObservableScrollView;->unifiedDownload:I

    rem-int/2addr v1, v0

    if-nez v1, :cond_e

    const/4 p1, 0x0

    goto :goto_d

    :cond_e
    const/4 p1, 0x1

    :goto_d
    packed-switch p1, :pswitch_data_9

    .line 31
    return v2

    .line 13
    :pswitch_7
    const/16 p1, 0x38

    :try_start_1
    div-int/2addr p1, v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return v2

    :catchall_1
    move-exception p1

    throw p1

    :goto_e
    :pswitch_8
    if-eqz v4, :cond_f

    const/4 v3, 0x0

    goto :goto_f

    :cond_f
    const/4 v3, 0x1

    :goto_f
    packed-switch v3, :pswitch_data_a

    :goto_10
    :pswitch_9
    goto/16 :goto_18

    .line 31
    :pswitch_a
    sget v3, Lccsancom/san/landingpage/widget/ObservableScrollView;->unifiedDownload:I

    xor-int/lit8 v4, v3, 0x5d

    and-int/lit8 v3, v3, 0x5d

    shl-int/2addr v3, v2

    add-int/2addr v4, v3

    rem-int/lit16 v3, v4, 0x80

    sput v3, Lccsancom/san/landingpage/widget/ObservableScrollView;->getDownloadingList:I

    rem-int/2addr v4, v0

    if-eqz v4, :cond_10

    .line 13
    const/4 v4, 0x1

    goto :goto_11

    :cond_10
    const/4 v4, 0x0

    :goto_11
    packed-switch v4, :pswitch_data_b

    cmpl-float v1, v1, v8

    if-lez v1, :cond_12

    goto :goto_13

    .line 31
    :pswitch_b
    cmpl-float v1, v1, v8

    if-lez v1, :cond_11

    .line 13
    const/16 v1, 0x43

    goto :goto_12

    :cond_11
    const/16 v1, 0x3f

    :goto_12
    packed-switch v1, :pswitch_data_c

    goto :goto_15

    :goto_13
    const/16 v1, 0x5c

    goto :goto_14

    :cond_12
    const/4 v1, 0x1

    :goto_14
    packed-switch v1, :pswitch_data_d

    goto :goto_10

    .line 15
    :goto_15
    :pswitch_c
    iget-boolean v1, p0, Lccsancom/san/landingpage/widget/ObservableScrollView;->mIsWebContentOnTop:Z

    if-nez v1, :cond_13

    .line 13
    const/16 v5, 0x1c

    goto :goto_16

    :cond_13
    nop

    :goto_16
    packed-switch v5, :pswitch_data_e

    .line 31
    add-int/lit8 v3, v3, 0x51

    rem-int/lit16 p1, v3, 0x80

    sput p1, Lccsancom/san/landingpage/widget/ObservableScrollView;->unifiedDownload:I

    rem-int/2addr v3, v0

    if-nez v3, :cond_14

    .line 15
    :cond_14
    nop

    .line 31
    xor-int/lit8 v1, p1, 0x63

    and-int/lit8 p1, p1, 0x63

    shl-int/2addr p1, v2

    neg-int p1, p1

    neg-int p1, p1

    xor-int v3, v1, p1

    and-int/2addr p1, v1

    shl-int/2addr p1, v2

    add-int/2addr v3, p1

    rem-int/lit16 p1, v3, 0x80

    sput p1, Lccsancom/san/landingpage/widget/ObservableScrollView;->getDownloadingList:I

    rem-int/2addr v3, v0

    return v2

    :goto_17
    sget v1, Lccsancom/san/landingpage/widget/ObservableScrollView;->getDownloadingList:I

    or-int/lit8 v3, v1, 0x69

    shl-int/2addr v3, v2

    and-int/lit8 v4, v1, -0x6a

    xor-int/lit8 v1, v1, -0x1

    and-int/2addr v1, v7

    or-int/2addr v1, v4

    neg-int v1, v1

    or-int v4, v3, v1

    shl-int/2addr v4, v2

    xor-int/2addr v1, v3

    sub-int/2addr v4, v1

    rem-int/lit16 v1, v4, 0x80

    sput v1, Lccsancom/san/landingpage/widget/ObservableScrollView;->unifiedDownload:I

    rem-int/2addr v4, v0

    if-nez v4, :cond_15

    :cond_15
    :goto_18
    invoke-super {p0, p1}, Lccsanandroid/widget/ScrollView;->onInterceptTouchEvent(Lccsanandroid/view/MotionEvent;)Z

    move-result p1

    sget v1, Lccsancom/san/landingpage/widget/ObservableScrollView;->getDownloadingList:I

    xor-int/lit8 v3, v1, 0x5

    and-int/lit8 v1, v1, 0x5

    or-int/2addr v1, v3

    shl-int/2addr v1, v2

    neg-int v2, v3

    and-int v3, v1, v2

    or-int/2addr v1, v2

    add-int/2addr v3, v1

    rem-int/lit16 v1, v3, 0x80

    sput v1, Lccsancom/san/landingpage/widget/ObservableScrollView;->unifiedDownload:I

    rem-int/2addr v3, v0

    return p1

    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xf
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x2a
        :pswitch_2
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x4f
        :pswitch_3
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x1
        :pswitch_8
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0x1
        :pswitch_4
    .end packed-switch

    :pswitch_data_6
    .packed-switch 0x0
        :pswitch_5
    .end packed-switch

    :pswitch_data_7
    .packed-switch 0x14
        :pswitch_6
    .end packed-switch

    :pswitch_data_8
    .packed-switch 0x1
        :pswitch_6
    .end packed-switch

    :pswitch_data_9
    .packed-switch 0x0
        :pswitch_7
    .end packed-switch

    :pswitch_data_a
    .packed-switch 0x0
        :pswitch_a
    .end packed-switch

    :pswitch_data_b
    .packed-switch 0x1
        :pswitch_b
    .end packed-switch

    :pswitch_data_c
    .packed-switch 0x3f
        :pswitch_9
    .end packed-switch

    :pswitch_data_d
    .packed-switch 0x5c
        :pswitch_c
    .end packed-switch

    :pswitch_data_e
    .packed-switch 0x0
        :pswitch_9
    .end packed-switch
.end method

.method protected onScrollChanged(IIII)V
    .locals 10
    .param p1, "l"    # I
    .param p2, "t"    # I
    .param p3, "oldl"    # I
    .param p4, "oldt"    # I

    .line 3
    .end local p1    # "l":I
    .end local p2    # "t":I
    .end local p3    # "oldl":I
    .end local p4    # "oldt":I
    sget v0, Lccsancom/san/landingpage/widget/ObservableScrollView;->unifiedDownload:I

    add-int/lit8 v0, v0, 0x13

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    const/4 v2, 0x0

    sub-int/2addr v0, v2

    sub-int/2addr v0, v1

    rem-int/lit16 v3, v0, 0x80

    sput v3, Lccsancom/san/landingpage/widget/ObservableScrollView;->getDownloadingList:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    .line 2
    const/16 v0, 0x54

    goto :goto_0

    :cond_0
    const/16 v0, 0x1b

    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Lccsanandroid/widget/ScrollView;->onScrollChanged(IIII)V

    .line 2
    iget-object v0, p0, Lccsancom/san/landingpage/widget/ObservableScrollView;->mScrollViewListeners:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    goto :goto_1

    .line 1
    :pswitch_0
    invoke-super {p0, p1, p2, p3, p4}, Lccsanandroid/widget/ScrollView;->onScrollChanged(IIII)V

    .line 2
    iget-object v0, p0, Lccsancom/san/landingpage/widget/ObservableScrollView;->mScrollViewListeners:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    goto :goto_2

    :goto_1
    const/4 v3, 0x0

    :try_start_0
    invoke-super {v3}, Ljava/lang/Object;->hashCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 3
    :goto_2
    sget v3, Lccsancom/san/landingpage/widget/ObservableScrollView;->unifiedDownload:I

    add-int/lit8 v3, v3, 0xd

    sub-int/2addr v3, v1

    xor-int/lit8 v4, v3, -0x1

    and-int/lit8 v3, v3, -0x1

    shl-int/2addr v3, v1

    add-int/2addr v4, v3

    rem-int/lit16 v3, v4, 0x80

    sput v3, Lccsancom/san/landingpage/widget/ObservableScrollView;->getDownloadingList:I

    rem-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_1

    .line 2
    const/16 v3, 0x11

    goto :goto_3

    :cond_1
    const/16 v3, 0x4b

    :goto_3
    packed-switch v3, :pswitch_data_1

    .line 3
    :goto_4
    :pswitch_1
    nop

    .line 2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    const/16 v3, 0x62

    goto :goto_5

    :cond_2
    const/16 v3, 0x50

    :goto_5
    packed-switch v3, :pswitch_data_2

    sget v3, Lccsancom/san/landingpage/widget/ObservableScrollView;->unifiedDownload:I

    and-int/lit8 v4, v3, 0x6b

    or-int/lit8 v3, v3, 0x6b

    add-int/2addr v4, v3

    rem-int/lit16 v3, v4, 0x80

    sput v3, Lccsancom/san/landingpage/widget/ObservableScrollView;->getDownloadingList:I

    rem-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_4

    goto :goto_8

    .line 3
    :pswitch_2
    sget p1, Lccsancom/san/landingpage/widget/ObservableScrollView;->getDownloadingList:I

    and-int/lit8 p2, p1, 0x35

    xor-int/lit8 p1, p1, 0x35

    or-int/2addr p1, p2

    or-int p3, p2, p1

    shl-int/2addr p3, v1

    xor-int/2addr p1, p2

    sub-int/2addr p3, p1

    rem-int/lit16 p1, p3, 0x80

    sput p1, Lccsancom/san/landingpage/widget/ObservableScrollView;->unifiedDownload:I

    rem-int/lit8 p3, p3, 0x2

    if-nez p3, :cond_3

    .line 2
    const/16 p1, 0x17

    goto :goto_6

    :cond_3
    const/16 p1, 0x56

    :goto_6
    packed-switch p1, :pswitch_data_3

    .line 3
    goto :goto_7

    :pswitch_3
    return-void

    :goto_7
    const/16 p1, 0x32

    :try_start_1
    div-int/2addr p1, v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    throw p1

    .line 2
    :cond_4
    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Lccsancom/san/landingpage/widget/ObservableScrollView$ScrollViewListener;

    .line 3
    move-object v5, p0

    move v6, p1

    move v7, p2

    move v8, p3

    move v9, p4

    invoke-interface/range {v4 .. v9}, Lccsancom/san/landingpage/widget/ObservableScrollView$ScrollViewListener;->onScrollChanged(Lccsancom/san/landingpage/widget/ObservableScrollView;IIII)V

    sget v3, Lccsancom/san/landingpage/widget/ObservableScrollView;->getDownloadingList:I

    and-int/lit8 v4, v3, 0x4f

    xor-int/lit8 v3, v3, 0x4f

    or-int/2addr v3, v4

    add-int/2addr v4, v3

    rem-int/lit16 v3, v4, 0x80

    sput v3, Lccsancom/san/landingpage/widget/ObservableScrollView;->unifiedDownload:I

    rem-int/lit8 v4, v4, 0x2

    if-nez v4, :cond_5

    .line 2
    const/4 v3, 0x0

    goto :goto_9

    :cond_5
    const/4 v3, 0x1

    :goto_9
    packed-switch v3, :pswitch_data_4

    .line 3
    goto :goto_4

    :catchall_1
    move-exception p1

    goto :goto_b

    :goto_a
    throw p1

    :goto_b
    goto :goto_a

    nop

    :pswitch_data_0
    .packed-switch 0x1b
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x11
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x50
        :pswitch_2
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x56
        :pswitch_3
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x1
        :pswitch_1
    .end packed-switch
.end method

.method public setBannerShow(Z)V
    .locals 2
    .param p1, "isBannerShow"    # Z

    .line 1
    .end local p1    # "isBannerShow":Z
    sget v0, Lccsancom/san/landingpage/widget/ObservableScrollView;->unifiedDownload:I

    add-int/lit8 v0, v0, 0xa

    xor-int/lit8 v1, v0, -0x1

    and-int/lit8 v0, v0, -0x1

    shl-int/lit8 v0, v0, 0x1

    add-int/2addr v1, v0

    rem-int/lit16 v0, v1, 0x80

    sput v0, Lccsancom/san/landingpage/widget/ObservableScrollView;->getDownloadingList:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_0

    const/16 v0, 0x55

    goto :goto_0

    :cond_0
    const/16 v0, 0x10

    :goto_0
    iput-boolean p1, p0, Lccsancom/san/landingpage/widget/ObservableScrollView;->mIsBannerShow:Z

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
    .packed-switch 0x55
        :pswitch_0
    .end packed-switch
.end method

.method public setWebContentOnTop(Z)V
    .locals 5
    .param p1, "webContentOnTop"    # Z

    .line 1
    .end local p1    # "webContentOnTop":Z
    sget v0, Lccsancom/san/landingpage/widget/ObservableScrollView;->unifiedDownload:I

    xor-int/lit8 v1, v0, 0x41

    and-int/lit8 v2, v0, 0x41

    or-int/2addr v1, v2

    const/4 v2, 0x1

    shl-int/2addr v1, v2

    and-int/lit8 v3, v0, -0x42

    xor-int/lit8 v4, v0, -0x1

    and-int/lit8 v4, v4, 0x41

    or-int/2addr v3, v4

    neg-int v3, v3

    xor-int v4, v1, v3

    and-int/2addr v1, v3

    shl-int/2addr v1, v2

    add-int/2addr v4, v1

    rem-int/lit16 v1, v4, 0x80

    sput v1, Lccsancom/san/landingpage/widget/ObservableScrollView;->getDownloadingList:I

    rem-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_0

    :cond_0
    iput-boolean p1, p0, Lccsancom/san/landingpage/widget/ObservableScrollView;->mIsWebContentOnTop:Z

    const/16 p1, 0x59

    xor-int/lit8 v1, v0, 0x59

    and-int/lit8 v3, v0, 0x59

    or-int/2addr v1, v3

    shl-int/2addr v1, v2

    and-int/lit8 v3, v0, -0x5a

    xor-int/lit8 v0, v0, -0x1

    and-int/2addr p1, v0

    or-int/2addr p1, v3

    neg-int p1, p1

    xor-int/lit8 p1, p1, -0x1

    sub-int/2addr v1, p1

    sub-int/2addr v1, v2

    rem-int/lit16 p1, v1, 0x80

    sput p1, Lccsancom/san/landingpage/widget/ObservableScrollView;->getDownloadingList:I

    rem-int/lit8 v1, v1, 0x2

    const/4 p1, 0x0

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    packed-switch v2, :pswitch_data_0

    return-void

    :pswitch_0
    const/16 v0, 0x21

    :try_start_0
    div-int/2addr v0, p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    throw p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
