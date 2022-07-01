.class Lccsancom/san/landingpage/widget/GalleryView$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/san/landingpage/widget/GalleryView;->autoPlayView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static removeDownloadListener:I

.field private static unifiedDownload:I


# instance fields
.field final synthetic this$0:Lccsancom/san/landingpage/widget/GalleryView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lccsancom/san/landingpage/widget/GalleryView$1;->unifiedDownload:I

    const/4 v0, 0x1

    sput v0, Lccsancom/san/landingpage/widget/GalleryView$1;->removeDownloadListener:I

    return-void
.end method

.method constructor <init>(Lccsancom/san/landingpage/widget/GalleryView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lccsancom/san/landingpage/widget/GalleryView$1;->this$0:Lccsancom/san/landingpage/widget/GalleryView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 8
    sget v0, Lccsancom/san/landingpage/widget/GalleryView$1;->removeDownloadListener:I

    or-int/lit8 v1, v0, 0x7e

    const/4 v2, 0x1

    shl-int/2addr v1, v2

    xor-int/lit8 v0, v0, 0x7e

    sub-int/2addr v1, v0

    const/4 v0, 0x0

    sub-int/2addr v1, v0

    sub-int/2addr v1, v2

    rem-int/lit16 v3, v1, 0x80

    sput v3, Lccsancom/san/landingpage/widget/GalleryView$1;->unifiedDownload:I

    const/4 v3, 0x2

    rem-int/2addr v1, v3

    if-eqz v1, :cond_0

    .line 1
    :cond_0
    iget-object v1, p0, Lccsancom/san/landingpage/widget/GalleryView$1;->this$0:Lccsancom/san/landingpage/widget/GalleryView;

    invoke-static {v1}, Lccsancom/san/landingpage/widget/GalleryView;->access$000(Lccsancom/san/landingpage/widget/GalleryView;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-gt v1, v3, :cond_1

    .line 2
    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    :goto_0
    packed-switch v1, :pswitch_data_0

    .line 8
    sget v1, Lccsancom/san/landingpage/widget/GalleryView$1;->removeDownloadListener:I

    and-int/lit8 v4, v1, 0x49

    xor-int/lit8 v5, v4, -0x1

    or-int/lit8 v1, v1, 0x49

    and-int/2addr v1, v5

    shl-int/2addr v4, v2

    neg-int v4, v4

    neg-int v4, v4

    and-int v5, v1, v4

    or-int/2addr v1, v4

    add-int/2addr v5, v1

    rem-int/lit16 v1, v5, 0x80

    sput v1, Lccsancom/san/landingpage/widget/GalleryView$1;->unifiedDownload:I

    rem-int/2addr v5, v3

    if-eqz v5, :cond_2

    .line 1
    :cond_2
    iget-object v1, p0, Lccsancom/san/landingpage/widget/GalleryView$1;->this$0:Lccsancom/san/landingpage/widget/GalleryView;

    invoke-static {v1}, Lccsancom/san/landingpage/widget/GalleryView;->access$100(Lccsancom/san/landingpage/widget/GalleryView;)Lccsanandroidx/viewpager/widget/ViewPager;

    move-result-object v1

    invoke-virtual {v1}, Lccsanandroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v1

    iget-object v4, p0, Lccsancom/san/landingpage/widget/GalleryView$1;->this$0:Lccsancom/san/landingpage/widget/GalleryView;

    invoke-static {v4}, Lccsancom/san/landingpage/widget/GalleryView;->access$000(Lccsancom/san/landingpage/widget/GalleryView;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    sub-int/2addr v4, v2

    if-ne v1, v4, :cond_3

    .line 2
    const/16 v1, 0x60

    goto :goto_1

    :cond_3
    const/16 v1, 0x5b

    :goto_1
    packed-switch v1, :pswitch_data_1

    goto :goto_4

    .line 8
    :pswitch_0
    sget v1, Lccsancom/san/landingpage/widget/GalleryView$1;->unifiedDownload:I

    and-int/lit8 v4, v1, 0x6f

    xor-int/lit8 v1, v1, 0x6f

    or-int/2addr v1, v4

    or-int v5, v4, v1

    shl-int/2addr v5, v2

    xor-int/2addr v1, v4

    sub-int/2addr v5, v1

    rem-int/lit16 v1, v5, 0x80

    sput v1, Lccsancom/san/landingpage/widget/GalleryView$1;->removeDownloadListener:I

    rem-int/2addr v5, v3

    if-nez v5, :cond_4

    .line 2
    const/16 v1, 0x32

    goto :goto_2

    :cond_4
    const/16 v1, 0x5e

    :goto_2
    packed-switch v1, :pswitch_data_2

    :pswitch_1
    iget-object v1, p0, Lccsancom/san/landingpage/widget/GalleryView$1;->this$0:Lccsancom/san/landingpage/widget/GalleryView;

    invoke-static {v1}, Lccsancom/san/landingpage/widget/GalleryView;->access$100(Lccsancom/san/landingpage/widget/GalleryView;)Lccsanandroidx/viewpager/widget/ViewPager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lccsanandroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    .line 8
    sget v1, Lccsancom/san/landingpage/widget/GalleryView$1;->removeDownloadListener:I

    xor-int/lit8 v4, v1, 0x4d

    and-int/lit8 v1, v1, 0x4d

    shl-int/2addr v1, v2

    add-int/2addr v4, v1

    rem-int/lit16 v1, v4, 0x80

    sput v1, Lccsancom/san/landingpage/widget/GalleryView$1;->unifiedDownload:I

    rem-int/2addr v4, v3

    if-eqz v4, :cond_5

    .line 2
    const/4 v1, 0x0

    goto :goto_3

    :cond_5
    const/4 v1, 0x1

    :goto_3
    packed-switch v1, :pswitch_data_3

    .line 8
    goto :goto_5

    .line 4
    :goto_4
    :pswitch_2
    iget-object v1, p0, Lccsancom/san/landingpage/widget/GalleryView$1;->this$0:Lccsancom/san/landingpage/widget/GalleryView;

    invoke-static {v1}, Lccsancom/san/landingpage/widget/GalleryView;->access$100(Lccsancom/san/landingpage/widget/GalleryView;)Lccsanandroidx/viewpager/widget/ViewPager;

    move-result-object v1

    iget-object v4, p0, Lccsancom/san/landingpage/widget/GalleryView$1;->this$0:Lccsancom/san/landingpage/widget/GalleryView;

    invoke-static {v4}, Lccsancom/san/landingpage/widget/GalleryView;->access$100(Lccsancom/san/landingpage/widget/GalleryView;)Lccsanandroidx/viewpager/widget/ViewPager;

    move-result-object v4

    invoke-virtual {v4}, Lccsanandroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v4

    xor-int/lit8 v5, v4, 0x1

    and-int/2addr v4, v2

    or-int/2addr v4, v5

    shl-int/2addr v4, v2

    sub-int/2addr v4, v5

    invoke-virtual {v1, v4}, Lccsanandroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    .line 2
    sget v1, Lccsancom/san/landingpage/widget/GalleryView$1;->unifiedDownload:I

    and-int/lit8 v4, v1, 0x29

    xor-int/lit8 v5, v4, -0x1

    or-int/lit8 v1, v1, 0x29

    and-int/2addr v1, v5

    shl-int/2addr v4, v2

    and-int v5, v1, v4

    or-int/2addr v1, v4

    add-int/2addr v5, v1

    rem-int/lit16 v1, v5, 0x80

    sput v1, Lccsancom/san/landingpage/widget/GalleryView$1;->removeDownloadListener:I

    rem-int/2addr v5, v3

    if-nez v5, :cond_6

    .line 8
    :cond_6
    :goto_5
    :pswitch_3
    nop

    .line 6
    iget-object v1, p0, Lccsancom/san/landingpage/widget/GalleryView$1;->this$0:Lccsancom/san/landingpage/widget/GalleryView;

    invoke-static {v1}, Lccsancom/san/landingpage/widget/GalleryView;->access$200(Lccsancom/san/landingpage/widget/GalleryView;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 2
    sget v0, Lccsancom/san/landingpage/widget/GalleryView$1;->removeDownloadListener:I

    xor-int/lit8 v1, v0, 0x15

    and-int/lit8 v0, v0, 0x15

    shl-int/2addr v0, v2

    neg-int v0, v0

    neg-int v0, v0

    or-int v4, v1, v0

    shl-int/lit8 v2, v4, 0x1

    xor-int/2addr v0, v1

    sub-int/2addr v2, v0

    rem-int/lit16 v0, v2, 0x80

    sput v0, Lccsancom/san/landingpage/widget/GalleryView$1;->unifiedDownload:I

    rem-int/2addr v2, v3

    .line 8
    return-void

    :cond_7
    iget-object v1, p0, Lccsancom/san/landingpage/widget/GalleryView$1;->this$0:Lccsancom/san/landingpage/widget/GalleryView;

    invoke-static {v1}, Lccsancom/san/landingpage/widget/GalleryView;->access$300(Lccsancom/san/landingpage/widget/GalleryView;)V

    sget v1, Lccsancom/san/landingpage/widget/GalleryView$1;->unifiedDownload:I

    add-int/lit8 v1, v1, 0x2d

    rem-int/lit16 v4, v1, 0x80

    sput v4, Lccsancom/san/landingpage/widget/GalleryView$1;->removeDownloadListener:I

    rem-int/2addr v1, v3

    if-nez v1, :cond_8

    .line 2
    goto :goto_6

    :cond_8
    const/4 v2, 0x0

    :goto_6
    packed-switch v2, :pswitch_data_4

    .line 8
    return-void

    :pswitch_4
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
    .packed-switch 0x1
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x60
        :pswitch_0
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x32
        :pswitch_1
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_3
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x1
        :pswitch_4
    .end packed-switch
.end method
