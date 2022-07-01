.class Lccsancom/san/landingpage/widget/GalleryView$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lccsanandroidx/viewpager/widget/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/san/landingpage/widget/GalleryView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static addDownloadListener:I

.field private static getDownloadingList:I


# instance fields
.field final synthetic this$0:Lccsancom/san/landingpage/widget/GalleryView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lccsancom/san/landingpage/widget/GalleryView$2;->addDownloadListener:I

    const/4 v0, 0x1

    sput v0, Lccsancom/san/landingpage/widget/GalleryView$2;->getDownloadingList:I

    return-void
.end method

.method constructor <init>(Lccsancom/san/landingpage/widget/GalleryView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lccsancom/san/landingpage/widget/GalleryView$2;->this$0:Lccsancom/san/landingpage/widget/GalleryView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 3

    sget p1, Lccsancom/san/landingpage/widget/GalleryView$2;->getDownloadingList:I

    const/16 v0, 0x4f

    and-int/lit8 v1, p1, -0x50

    xor-int/lit8 v2, p1, -0x1

    and-int/2addr v2, v0

    or-int/2addr v1, v2

    and-int/2addr p1, v0

    shl-int/lit8 p1, p1, 0x1

    neg-int p1, p1

    neg-int p1, p1

    xor-int/lit8 p1, p1, -0x1

    sub-int/2addr v1, p1

    add-int/lit8 v1, v1, -0x1

    rem-int/lit16 p1, v1, 0x80

    sput p1, Lccsancom/san/landingpage/widget/GalleryView$2;->addDownloadListener:I

    rem-int/lit8 v1, v1, 0x2

    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0

    sget p1, Lccsancom/san/landingpage/widget/GalleryView$2;->addDownloadListener:I

    or-int/lit8 p2, p1, 0x2f

    shl-int/lit8 p2, p2, 0x1

    xor-int/lit8 p1, p1, 0x2f

    sub-int/2addr p2, p1

    rem-int/lit16 p1, p2, 0x80

    sput p1, Lccsancom/san/landingpage/widget/GalleryView$2;->getDownloadingList:I

    rem-int/lit8 p2, p2, 0x2

    return-void
.end method

.method public onPageSelected(I)V
    .locals 4
    .param p1, "position"    # I

    .line 6
    .end local p1    # "position":I
    sget v0, Lccsancom/san/landingpage/widget/GalleryView$2;->addDownloadListener:I

    and-int/lit8 v1, v0, 0x69

    xor-int/lit8 v0, v0, 0x69

    or-int/2addr v0, v1

    neg-int v0, v0

    neg-int v0, v0

    or-int v2, v1, v0

    const/4 v3, 0x1

    shl-int/2addr v2, v3

    xor-int/2addr v0, v1

    sub-int/2addr v2, v0

    rem-int/lit16 v0, v2, 0x80

    sput v0, Lccsancom/san/landingpage/widget/GalleryView$2;->getDownloadingList:I

    rem-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_0

    .line 1
    :cond_0
    iget-object v0, p0, Lccsancom/san/landingpage/widget/GalleryView$2;->this$0:Lccsancom/san/landingpage/widget/GalleryView;

    invoke-static {v0}, Lccsancom/san/landingpage/widget/GalleryView;->access$000(Lccsancom/san/landingpage/widget/GalleryView;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    rem-int/2addr p1, v0

    .line 3
    iget-object v0, p0, Lccsancom/san/landingpage/widget/GalleryView$2;->this$0:Lccsancom/san/landingpage/widget/GalleryView;

    invoke-static {v0}, Lccsancom/san/landingpage/widget/GalleryView;->access$400(Lccsancom/san/landingpage/widget/GalleryView;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsanandroid/view/View;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lccsanandroid/view/View;->setAlpha(F)V

    .line 4
    iget-object v0, p0, Lccsancom/san/landingpage/widget/GalleryView$2;->this$0:Lccsancom/san/landingpage/widget/GalleryView;

    invoke-static {v0}, Lccsancom/san/landingpage/widget/GalleryView;->access$400(Lccsancom/san/landingpage/widget/GalleryView;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lccsancom/san/landingpage/widget/GalleryView$2;->this$0:Lccsancom/san/landingpage/widget/GalleryView;

    invoke-static {v1}, Lccsancom/san/landingpage/widget/GalleryView;->access$500(Lccsancom/san/landingpage/widget/GalleryView;)I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsanandroid/view/View;

    const v1, 0x3e99999a    # 0.3f

    invoke-virtual {v0, v1}, Lccsanandroid/view/View;->setAlpha(F)V

    .line 6
    iget-object v0, p0, Lccsancom/san/landingpage/widget/GalleryView$2;->this$0:Lccsancom/san/landingpage/widget/GalleryView;

    invoke-static {v0, p1}, Lccsancom/san/landingpage/widget/GalleryView;->access$502(Lccsancom/san/landingpage/widget/GalleryView;I)I

    sget p1, Lccsancom/san/landingpage/widget/GalleryView$2;->addDownloadListener:I

    add-int/lit8 p1, p1, 0x70

    sub-int/2addr p1, v3

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lccsancom/san/landingpage/widget/GalleryView$2;->getDownloadingList:I

    rem-int/lit8 p1, p1, 0x2

    const/4 v0, 0x0

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_0
    packed-switch v3, :pswitch_data_0

    return-void

    :pswitch_0
    const/16 p1, 0x49

    :try_start_0
    div-int/2addr p1, v0
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
