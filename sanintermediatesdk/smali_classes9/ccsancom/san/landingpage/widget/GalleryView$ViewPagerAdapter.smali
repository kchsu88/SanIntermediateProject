.class public Lccsancom/san/landingpage/widget/GalleryView$ViewPagerAdapter;
.super Lccsanandroidx/viewpager/widget/PagerAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/san/landingpage/widget/GalleryView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ViewPagerAdapter"
.end annotation


# static fields
.field private static getDownloadingList:I

.field private static removeDownloadListener:I


# instance fields
.field private images:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lccsanandroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field

.field private listUrls:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lccsancom/san/landingpage/widget/GalleryView;

.field private viewPager:Lccsanandroidx/viewpager/widget/ViewPager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lccsancom/san/landingpage/widget/GalleryView$ViewPagerAdapter;->removeDownloadListener:I

    const/4 v0, 0x1

    sput v0, Lccsancom/san/landingpage/widget/GalleryView$ViewPagerAdapter;->getDownloadingList:I

    return-void
.end method

.method public constructor <init>(Lccsancom/san/landingpage/widget/GalleryView;Ljava/util/List;Ljava/util/List;Lccsanandroidx/viewpager/widget/ViewPager;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lccsanandroid/widget/ImageView;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lccsanandroidx/viewpager/widget/ViewPager;",
            ")V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lccsancom/san/landingpage/widget/GalleryView$ViewPagerAdapter;->this$0:Lccsancom/san/landingpage/widget/GalleryView;

    invoke-direct {p0}, Lccsanandroidx/viewpager/widget/PagerAdapter;-><init>()V

    .line 2
    iput-object p2, p0, Lccsancom/san/landingpage/widget/GalleryView$ViewPagerAdapter;->images:Ljava/util/List;

    .line 3
    iput-object p3, p0, Lccsancom/san/landingpage/widget/GalleryView$ViewPagerAdapter;->listUrls:Ljava/util/List;

    .line 4
    iput-object p4, p0, Lccsancom/san/landingpage/widget/GalleryView$ViewPagerAdapter;->viewPager:Lccsanandroidx/viewpager/widget/ViewPager;

    return-void
.end method


# virtual methods
.method public destroyItem(Lccsanandroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 3
    .param p1, "container"    # Lccsanandroid/view/ViewGroup;
    .param p2, "position"    # I
    .param p3, "object"    # Ljava/lang/Object;

    .line 2
    .end local p1    # "container":Lccsanandroid/view/ViewGroup;
    .end local p2    # "position":I
    .end local p3    # "object":Ljava/lang/Object;
    sget p1, Lccsancom/san/landingpage/widget/GalleryView$ViewPagerAdapter;->getDownloadingList:I

    xor-int/lit8 p3, p1, 0x78

    and-int/lit8 p1, p1, 0x78

    const/4 v0, 0x1

    shl-int/2addr p1, v0

    add-int/2addr p3, p1

    and-int/lit8 p1, p3, -0x1

    or-int/lit8 p3, p3, -0x1

    add-int/2addr p1, p3

    rem-int/lit16 p3, p1, 0x80

    sput p3, Lccsancom/san/landingpage/widget/GalleryView$ViewPagerAdapter;->removeDownloadListener:I

    const/4 p3, 0x2

    rem-int/2addr p1, p3

    if-eqz p1, :cond_0

    .line 1
    :cond_0
    iget-object p1, p0, Lccsancom/san/landingpage/widget/GalleryView$ViewPagerAdapter;->images:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-le p1, p3, :cond_1

    .line 2
    const/4 p1, 0x0

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    :goto_0
    packed-switch p1, :pswitch_data_0

    :cond_2
    :goto_1
    goto :goto_3

    :pswitch_0
    sget p1, Lccsancom/san/landingpage/widget/GalleryView$ViewPagerAdapter;->removeDownloadListener:I

    add-int/lit8 p1, p1, 0x4e

    xor-int/lit8 v1, p1, -0x1

    and-int/lit8 p1, p1, -0x1

    shl-int/2addr p1, v0

    add-int/2addr v1, p1

    rem-int/lit16 p1, v1, 0x80

    sput p1, Lccsancom/san/landingpage/widget/GalleryView$ViewPagerAdapter;->getDownloadingList:I

    rem-int/2addr v1, p3

    if-nez v1, :cond_3

    const/4 p1, 0x6

    goto :goto_2

    :cond_3
    const/16 p1, 0xd

    :goto_2
    packed-switch p1, :pswitch_data_1

    :pswitch_1
    iget-object p1, p0, Lccsancom/san/landingpage/widget/GalleryView$ViewPagerAdapter;->viewPager:Lccsanandroidx/viewpager/widget/ViewPager;

    iget-object v1, p0, Lccsancom/san/landingpage/widget/GalleryView$ViewPagerAdapter;->images:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    rem-int/2addr p2, v2

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lccsanandroid/view/View;

    invoke-virtual {p1, p2}, Lccsanandroidx/viewpager/widget/ViewPager;->removeView(Lccsanandroid/view/View;)V

    sget p1, Lccsancom/san/landingpage/widget/GalleryView$ViewPagerAdapter;->removeDownloadListener:I

    and-int/lit8 p2, p1, 0x21

    xor-int/lit8 v1, p2, -0x1

    or-int/lit8 p1, p1, 0x21

    and-int/2addr p1, v1

    shl-int/2addr p2, v0

    neg-int p2, p2

    neg-int p2, p2

    and-int v1, p1, p2

    or-int/2addr p1, p2

    add-int/2addr v1, p1

    rem-int/lit16 p1, v1, 0x80

    sput p1, Lccsancom/san/landingpage/widget/GalleryView$ViewPagerAdapter;->getDownloadingList:I

    rem-int/2addr v1, p3

    if-nez v1, :cond_2

    goto :goto_1

    :goto_3
    sget p1, Lccsancom/san/landingpage/widget/GalleryView$ViewPagerAdapter;->getDownloadingList:I

    and-int/lit8 p2, p1, 0x21

    xor-int/lit8 v1, p2, -0x1

    or-int/lit8 p1, p1, 0x21

    and-int/2addr p1, v1

    shl-int/2addr p2, v0

    xor-int/lit8 p2, p2, -0x1

    sub-int/2addr p1, p2

    sub-int/2addr p1, v0

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lccsancom/san/landingpage/widget/GalleryView$ViewPagerAdapter;->removeDownloadListener:I

    rem-int/2addr p1, p3

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x6
        :pswitch_1
    .end packed-switch
.end method

.method public getCount()I
    .locals 7

    .line 2
    sget v0, Lccsancom/san/landingpage/widget/GalleryView$ViewPagerAdapter;->removeDownloadListener:I

    xor-int/lit8 v1, v0, 0x8

    const/16 v2, 0x8

    and-int/2addr v0, v2

    const/4 v3, 0x1

    shl-int/2addr v0, v3

    add-int/2addr v1, v0

    xor-int/lit8 v0, v1, -0x1

    and-int/lit8 v1, v1, -0x1

    shl-int/2addr v1, v3

    add-int/2addr v0, v1

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/san/landingpage/widget/GalleryView$ViewPagerAdapter;->getDownloadingList:I

    const/4 v1, 0x2

    rem-int/2addr v0, v1

    if-nez v0, :cond_0

    .line 1
    const/16 v0, 0x59

    goto :goto_0

    :cond_0
    const/16 v0, 0xb

    :goto_0
    const/4 v4, 0x0

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lccsancom/san/landingpage/widget/GalleryView$ViewPagerAdapter;->images:Ljava/util/List;

    if-eqz v0, :cond_2

    goto :goto_2

    :pswitch_0
    iget-object v0, p0, Lccsancom/san/landingpage/widget/GalleryView$ViewPagerAdapter;->images:Ljava/util/List;

    const/16 v5, 0x2f

    :try_start_0
    div-int/2addr v5, v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    const/4 v5, 0x1

    goto :goto_1

    :cond_1
    const/4 v5, 0x0

    :goto_1
    packed-switch v5, :pswitch_data_1

    goto/16 :goto_b

    .line 2
    :catchall_0
    move-exception v0

    throw v0

    .line 1
    :goto_2
    const/16 v5, 0xa

    goto :goto_3

    :cond_2
    const/4 v5, 0x4

    :goto_3
    packed-switch v5, :pswitch_data_2

    :pswitch_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gt v0, v1, :cond_3

    goto :goto_4

    :cond_3
    const/16 v2, 0x46

    :goto_4
    packed-switch v2, :pswitch_data_3

    goto/16 :goto_b

    .line 2
    :pswitch_2
    sget v0, Lccsancom/san/landingpage/widget/GalleryView$ViewPagerAdapter;->removeDownloadListener:I

    or-int/lit8 v2, v0, 0x7e

    shl-int/2addr v2, v3

    xor-int/lit8 v0, v0, 0x7e

    sub-int/2addr v2, v0

    sub-int/2addr v2, v3

    rem-int/lit16 v0, v2, 0x80

    sput v0, Lccsancom/san/landingpage/widget/GalleryView$ViewPagerAdapter;->getDownloadingList:I

    rem-int/2addr v2, v1

    if-nez v2, :cond_4

    .line 1
    :cond_4
    iget-object v0, p0, Lccsancom/san/landingpage/widget/GalleryView$ViewPagerAdapter;->images:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_5

    :cond_5
    const/4 v4, 0x1

    :goto_5
    packed-switch v4, :pswitch_data_4

    goto :goto_b

    .line 2
    :pswitch_3
    sget v0, Lccsancom/san/landingpage/widget/GalleryView$ViewPagerAdapter;->getDownloadingList:I

    add-int/lit8 v0, v0, 0x7a

    sub-int/2addr v0, v3

    rem-int/lit16 v2, v0, 0x80

    sput v2, Lccsancom/san/landingpage/widget/GalleryView$ViewPagerAdapter;->removeDownloadListener:I

    rem-int/2addr v0, v1

    if-eqz v0, :cond_6

    .line 1
    const/16 v0, 0x1b

    goto :goto_6

    :cond_6
    const/16 v0, 0x17

    :goto_6
    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_5

    .line 2
    iget-object v0, p0, Lccsancom/san/landingpage/widget/GalleryView$ViewPagerAdapter;->images:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_7

    :pswitch_4
    iget-object v0, p0, Lccsancom/san/landingpage/widget/GalleryView$ViewPagerAdapter;->images:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_8

    :goto_7
    :try_start_1
    array-length v4, v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :goto_8
    sget v4, Lccsancom/san/landingpage/widget/GalleryView$ViewPagerAdapter;->removeDownloadListener:I

    and-int/lit8 v5, v4, -0x40

    xor-int/lit8 v6, v4, -0x1

    and-int/lit8 v6, v6, 0x3f

    or-int/2addr v5, v6

    and-int/lit8 v4, v4, 0x3f

    shl-int/lit8 v3, v4, 0x1

    neg-int v3, v3

    neg-int v3, v3

    and-int v4, v5, v3

    or-int/2addr v3, v5

    add-int/2addr v4, v3

    rem-int/lit16 v3, v4, 0x80

    sput v3, Lccsancom/san/landingpage/widget/GalleryView$ViewPagerAdapter;->getDownloadingList:I

    rem-int/2addr v4, v1

    if-nez v4, :cond_7

    .line 1
    const/16 v1, 0x48

    goto :goto_9

    :cond_7
    const/16 v1, 0x9

    :goto_9
    packed-switch v1, :pswitch_data_6

    .line 2
    goto :goto_a

    :pswitch_5
    return v0

    :goto_a
    :try_start_2
    invoke-super {v2}, Ljava/lang/Object;->hashCode()I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return v0

    :catchall_1
    move-exception v0

    throw v0

    :catchall_2
    move-exception v0

    throw v0

    :goto_b
    :pswitch_6
    const v0, 0x7fffffff

    sget v2, Lccsancom/san/landingpage/widget/GalleryView$ViewPagerAdapter;->removeDownloadListener:I

    and-int/lit8 v3, v2, 0x21

    or-int/lit8 v2, v2, 0x21

    add-int/2addr v3, v2

    rem-int/lit16 v2, v3, 0x80

    sput v2, Lccsancom/san/landingpage/widget/GalleryView$ViewPagerAdapter;->getDownloadingList:I

    rem-int/2addr v3, v1

    return v0

    :pswitch_data_0
    .packed-switch 0x59
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x4
        :pswitch_6
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x8
        :pswitch_2
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x0
        :pswitch_3
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0x17
        :pswitch_4
    .end packed-switch

    :pswitch_data_6
    .packed-switch 0x9
        :pswitch_5
    .end packed-switch
.end method

.method public instantiateItem(Lccsanandroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 5
    .param p1, "container"    # Lccsanandroid/view/ViewGroup;
    .param p2, "position"    # I

    .line 14
    .end local p1    # "container":Lccsanandroid/view/ViewGroup;
    .end local p2    # "position":I
    sget p1, Lccsancom/san/landingpage/widget/GalleryView$ViewPagerAdapter;->getDownloadingList:I

    add-int/lit8 p1, p1, 0x30

    const/4 v0, 0x1

    sub-int/2addr p1, v0

    rem-int/lit16 v1, p1, 0x80

    sput v1, Lccsancom/san/landingpage/widget/GalleryView$ViewPagerAdapter;->removeDownloadListener:I

    const/4 v1, 0x2

    rem-int/2addr p1, v1

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    .line 3
    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    packed-switch p1, :pswitch_data_0

    .line 1
    iget-object p1, p0, Lccsancom/san/landingpage/widget/GalleryView$ViewPagerAdapter;->images:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    neg-int v3, v3

    and-int/lit8 v4, v3, -0x1

    xor-int/lit8 v4, v4, -0x1

    or-int/lit8 v3, v3, -0x1

    and-int/2addr v3, v4

    neg-int v3, v3

    xor-int v4, p2, v3

    and-int/2addr v3, p2

    shl-int/2addr v3, v0

    add-int/2addr v4, v3

    sub-int/2addr v4, v0

    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lccsanandroid/widget/ImageView;

    .line 2
    iget-object v3, p0, Lccsancom/san/landingpage/widget/GalleryView$ViewPagerAdapter;->listUrls:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    div-int/2addr p2, v4

    invoke-interface {v3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 3
    invoke-static {p2}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    goto :goto_1

    .line 1
    :pswitch_0
    iget-object p1, p0, Lccsancom/san/landingpage/widget/GalleryView$ViewPagerAdapter;->images:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    rem-int v3, p2, v3

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lccsanandroid/widget/ImageView;

    .line 2
    iget-object v3, p0, Lccsancom/san/landingpage/widget/GalleryView$ViewPagerAdapter;->listUrls:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    rem-int/2addr p2, v4

    invoke-interface {v3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 3
    invoke-static {p2}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 4
    :goto_1
    new-instance v3, Lccsancom/san/landingpage/widget/GalleryView$ViewPagerAdapter$1;

    invoke-direct {v3, p0, p2}, Lccsancom/san/landingpage/widget/GalleryView$ViewPagerAdapter$1;-><init>(Lccsancom/san/landingpage/widget/GalleryView$ViewPagerAdapter;Ljava/lang/String;)V

    invoke-virtual {p1, v3}, Lccsanandroid/widget/ImageView;->setOnClickListener(Lccsanandroid/view/View$OnClickListener;)V

    .line 14
    sget p2, Lccsancom/san/landingpage/widget/GalleryView$ViewPagerAdapter;->removeDownloadListener:I

    and-int/lit8 v3, p2, 0x1d

    xor-int/lit8 p2, p2, 0x1d

    or-int/2addr p2, v3

    neg-int p2, p2

    neg-int p2, p2

    and-int v4, v3, p2

    or-int/2addr p2, v3

    add-int/2addr v4, p2

    rem-int/lit16 p2, v4, 0x80

    sput p2, Lccsancom/san/landingpage/widget/GalleryView$ViewPagerAdapter;->getDownloadingList:I

    rem-int/2addr v4, v1

    if-nez v4, :cond_1

    .line 3
    const/4 p2, 0x1

    goto :goto_2

    :cond_1
    const/4 p2, 0x0

    :goto_2
    packed-switch p2, :pswitch_data_1

    .line 14
    :pswitch_1
    nop

    .line 11
    :cond_2
    iget-object p2, p0, Lccsancom/san/landingpage/widget/GalleryView$ViewPagerAdapter;->images:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-gt p2, v1, :cond_3

    .line 3
    const/16 p2, 0x4e

    goto :goto_3

    :cond_3
    const/16 p2, 0xf

    :goto_3
    packed-switch p2, :pswitch_data_2

    :pswitch_2
    goto :goto_5

    .line 14
    :pswitch_3
    sget p2, Lccsancom/san/landingpage/widget/GalleryView$ViewPagerAdapter;->removeDownloadListener:I

    and-int/lit8 v3, p2, 0x5f

    xor-int/lit8 v4, v3, -0x1

    or-int/lit8 p2, p2, 0x5f

    and-int/2addr p2, v4

    shl-int/2addr v3, v0

    xor-int/lit8 v3, v3, -0x1

    sub-int/2addr p2, v3

    sub-int/2addr p2, v0

    rem-int/lit16 v3, p2, 0x80

    sput v3, Lccsancom/san/landingpage/widget/GalleryView$ViewPagerAdapter;->getDownloadingList:I

    rem-int/2addr p2, v1

    if-nez p2, :cond_4

    .line 11
    :cond_4
    invoke-virtual {p1}, Lccsanandroid/widget/ImageView;->getParent()Lccsanandroid/view/ViewParent;

    move-result-object p2

    if-eqz p2, :cond_5

    .line 3
    goto :goto_4

    :cond_5
    const/4 v2, 0x1

    :goto_4
    packed-switch v2, :pswitch_data_3

    .line 14
    sget p2, Lccsancom/san/landingpage/widget/GalleryView$ViewPagerAdapter;->getDownloadingList:I

    and-int/lit8 v2, p2, 0x55

    xor-int/lit8 p2, p2, 0x55

    or-int/2addr p2, v2

    neg-int p2, p2

    neg-int p2, p2

    or-int v3, v2, p2

    shl-int/2addr v3, v0

    xor-int/2addr p2, v2

    sub-int/2addr v3, p2

    rem-int/lit16 p2, v3, 0x80

    sput p2, Lccsancom/san/landingpage/widget/GalleryView$ViewPagerAdapter;->removeDownloadListener:I

    rem-int/2addr v3, v1

    if-eqz v3, :cond_6

    .line 12
    :cond_6
    iget-object p2, p0, Lccsancom/san/landingpage/widget/GalleryView$ViewPagerAdapter;->viewPager:Lccsanandroidx/viewpager/widget/ViewPager;

    invoke-virtual {p2, p1}, Lccsanandroidx/viewpager/widget/ViewPager;->removeView(Lccsanandroid/view/View;)V

    .line 14
    sget p2, Lccsancom/san/landingpage/widget/GalleryView$ViewPagerAdapter;->removeDownloadListener:I

    xor-int/lit8 v2, p2, 0x57

    and-int/lit8 v3, p2, 0x57

    or-int/2addr v2, v3

    shl-int/2addr v2, v0

    and-int/lit8 v3, p2, -0x58

    xor-int/lit8 p2, p2, -0x1

    and-int/lit8 p2, p2, 0x57

    or-int/2addr p2, v3

    neg-int p2, p2

    xor-int v3, v2, p2

    and-int/2addr p2, v2

    shl-int/2addr p2, v0

    add-int/2addr v3, p2

    rem-int/lit16 p2, v3, 0x80

    sput p2, Lccsancom/san/landingpage/widget/GalleryView$ViewPagerAdapter;->getDownloadingList:I

    rem-int/2addr v3, v1

    if-nez v3, :cond_7

    :cond_7
    :goto_5
    iget-object p2, p0, Lccsancom/san/landingpage/widget/GalleryView$ViewPagerAdapter;->viewPager:Lccsanandroidx/viewpager/widget/ViewPager;

    invoke-virtual {p2, p1}, Lccsanandroidx/viewpager/widget/ViewPager;->addView(Lccsanandroid/view/View;)V

    sget p2, Lccsancom/san/landingpage/widget/GalleryView$ViewPagerAdapter;->removeDownloadListener:I

    or-int/lit8 v2, p2, 0x7

    shl-int/lit8 v0, v2, 0x1

    xor-int/lit8 p2, p2, 0x7

    sub-int/2addr v0, p2

    rem-int/lit16 p2, v0, 0x80

    sput p2, Lccsancom/san/landingpage/widget/GalleryView$ViewPagerAdapter;->getDownloadingList:I

    rem-int/2addr v0, v1

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x4e
        :pswitch_3
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x1
        :pswitch_2
    .end packed-switch
.end method

.method public isViewFromObject(Lccsanandroid/view/View;Ljava/lang/Object;)Z
    .locals 5

    sget v0, Lccsancom/san/landingpage/widget/GalleryView$ViewPagerAdapter;->getDownloadingList:I

    xor-int/lit8 v1, v0, 0x5

    and-int/lit8 v2, v0, 0x5

    or-int/2addr v1, v2

    const/4 v3, 0x1

    shl-int/2addr v1, v3

    xor-int/lit8 v2, v2, -0x1

    or-int/lit8 v4, v0, 0x5

    and-int/2addr v2, v4

    neg-int v2, v2

    xor-int v4, v1, v2

    and-int/2addr v1, v2

    shl-int/2addr v1, v3

    add-int/2addr v4, v1

    rem-int/lit16 v1, v4, 0x80

    sput v1, Lccsancom/san/landingpage/widget/GalleryView$ViewPagerAdapter;->removeDownloadListener:I

    rem-int/lit8 v4, v4, 0x2

    if-ne p1, p2, :cond_0

    const/16 p1, 0x17

    goto :goto_0

    :cond_0
    const/16 p1, 0x9

    :goto_0
    const/4 p2, 0x0

    packed-switch p1, :pswitch_data_0

    add-int/lit8 p1, v1, 0x1c

    or-int/lit8 p2, p1, -0x1

    shl-int/2addr p2, v3

    xor-int/lit8 p1, p1, -0x1

    sub-int/2addr p2, p1

    rem-int/lit16 p1, p2, 0x80

    sput p1, Lccsancom/san/landingpage/widget/GalleryView$ViewPagerAdapter;->getDownloadingList:I

    rem-int/lit8 p2, p2, 0x2

    goto :goto_1

    :pswitch_0
    and-int/lit8 p1, v0, 0x47

    xor-int/lit8 v1, p1, -0x1

    or-int/lit8 v0, v0, 0x47

    and-int/2addr v0, v1

    shl-int/2addr p1, v3

    neg-int p1, p1

    neg-int p1, p1

    and-int v1, v0, p1

    or-int/2addr p1, v0

    add-int/2addr v1, p1

    rem-int/lit16 p1, v1, 0x80

    sput p1, Lccsancom/san/landingpage/widget/GalleryView$ViewPagerAdapter;->removeDownloadListener:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    const/4 v3, 0x0

    :cond_1
    packed-switch v3, :pswitch_data_1

    :pswitch_1
    const/4 v3, 0x0

    goto :goto_2

    :goto_1
    or-int/lit8 p1, v1, 0x39

    shl-int/2addr p1, v3

    xor-int/lit8 p2, v1, 0x39

    sub-int/2addr p1, p2

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lccsancom/san/landingpage/widget/GalleryView$ViewPagerAdapter;->getDownloadingList:I

    rem-int/lit8 p1, p1, 0x2

    :goto_2
    sget p1, Lccsancom/san/landingpage/widget/GalleryView$ViewPagerAdapter;->getDownloadingList:I

    and-int/lit8 p2, p1, 0x19

    xor-int/lit8 p1, p1, 0x19

    or-int/2addr p1, p2

    and-int v0, p2, p1

    or-int/2addr p1, p2

    add-int/2addr v0, p1

    rem-int/lit16 p1, v0, 0x80

    sput p1, Lccsancom/san/landingpage/widget/GalleryView$ViewPagerAdapter;->removeDownloadListener:I

    rem-int/lit8 v0, v0, 0x2

    return v3

    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
    .end packed-switch
.end method
