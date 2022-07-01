.class Lccsancom/san/landingpage/widget/GalleryView$ViewPagerAdapter$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lccsanandroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/san/landingpage/widget/GalleryView$ViewPagerAdapter;->instantiateItem(Lccsanandroid/view/ViewGroup;I)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static IncentiveDownloadUtils:I

.field private static removeDownloadListener:I


# instance fields
.field final synthetic this$1:Lccsancom/san/landingpage/widget/GalleryView$ViewPagerAdapter;

.field final synthetic val$clickUrl:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lccsancom/san/landingpage/widget/GalleryView$ViewPagerAdapter$1;->removeDownloadListener:I

    const/4 v0, 0x1

    sput v0, Lccsancom/san/landingpage/widget/GalleryView$ViewPagerAdapter$1;->IncentiveDownloadUtils:I

    return-void
.end method

.method constructor <init>(Lccsancom/san/landingpage/widget/GalleryView$ViewPagerAdapter;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lccsancom/san/landingpage/widget/GalleryView$ViewPagerAdapter$1;->this$1:Lccsancom/san/landingpage/widget/GalleryView$ViewPagerAdapter;

    iput-object p2, p0, Lccsancom/san/landingpage/widget/GalleryView$ViewPagerAdapter$1;->val$clickUrl:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Lccsanandroid/view/View;)V
    .locals 3
    .param p1, "v"    # Lccsanandroid/view/View;

    .line 1
    .end local p1    # "v":Lccsanandroid/view/View;
    sget p1, Lccsancom/san/landingpage/widget/GalleryView$ViewPagerAdapter$1;->IncentiveDownloadUtils:I

    const/16 v0, 0x57

    or-int/lit8 v1, p1, 0x57

    shl-int/lit8 v1, v1, 0x1

    and-int/lit8 v2, p1, -0x58

    xor-int/lit8 p1, p1, -0x1

    and-int/2addr p1, v0

    or-int/2addr p1, v2

    neg-int p1, p1

    or-int v0, v1, p1

    shl-int/lit8 v0, v0, 0x1

    xor-int/2addr p1, v1

    sub-int/2addr v0, p1

    rem-int/lit16 p1, v0, 0x80

    sput p1, Lccsancom/san/landingpage/widget/GalleryView$ViewPagerAdapter$1;->removeDownloadListener:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    :cond_0
    iget-object p1, p0, Lccsancom/san/landingpage/widget/GalleryView$ViewPagerAdapter$1;->val$clickUrl:Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, ""

    invoke-static {p1, v0, v1}, Lccsansan/ck/getDownloadingRecordByUrl;->getDownloadingList(Ljava/lang/String;Lccsansan/dt/removeDownloadListener;Ljava/lang/String;)Z

    sget p1, Lccsancom/san/landingpage/widget/GalleryView$ViewPagerAdapter$1;->removeDownloadListener:I

    and-int/lit8 v1, p1, 0x71

    or-int/lit8 p1, p1, 0x71

    add-int/2addr v1, p1

    rem-int/lit16 p1, v1, 0x80

    sput p1, Lccsancom/san/landingpage/widget/GalleryView$ViewPagerAdapter$1;->IncentiveDownloadUtils:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_1

    const/4 p1, 0x3

    goto :goto_0

    :cond_1
    const/16 p1, 0x29

    :goto_0
    packed-switch p1, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    return-void

    :goto_1
    :try_start_0
    array-length p1, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    throw p1

    nop

    :pswitch_data_0
    .packed-switch 0x29
        :pswitch_0
    .end packed-switch
.end method
