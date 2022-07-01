.class Lccsancom/san/landingpage/BaseLandingPageActivity$removeDownloadListener;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lccsanandroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/san/landingpage/BaseLandingPageActivity;->initListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static addDownloadListener:I

.field private static removeDownloadListener:I


# instance fields
.field final synthetic getDownloadingList:Lccsancom/san/landingpage/BaseLandingPageActivity;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lccsancom/san/landingpage/BaseLandingPageActivity$removeDownloadListener;->addDownloadListener:I

    const/4 v0, 0x1

    sput v0, Lccsancom/san/landingpage/BaseLandingPageActivity$removeDownloadListener;->removeDownloadListener:I

    return-void
.end method

.method constructor <init>(Lccsancom/san/landingpage/BaseLandingPageActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lccsancom/san/landingpage/BaseLandingPageActivity$removeDownloadListener;->getDownloadingList:Lccsancom/san/landingpage/BaseLandingPageActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Lccsanandroid/view/View;)V
    .locals 2

    .line 1
    sget p1, Lccsancom/san/landingpage/BaseLandingPageActivity$removeDownloadListener;->removeDownloadListener:I

    and-int/lit8 v0, p1, 0x25

    or-int/lit8 p1, p1, 0x25

    add-int/2addr v0, p1

    rem-int/lit16 p1, v0, 0x80

    sput p1, Lccsancom/san/landingpage/BaseLandingPageActivity$removeDownloadListener;->addDownloadListener:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    :cond_0
    iget-object p1, p0, Lccsancom/san/landingpage/BaseLandingPageActivity$removeDownloadListener;->getDownloadingList:Lccsancom/san/landingpage/BaseLandingPageActivity;

    invoke-virtual {p1}, Lccsancom/san/landingpage/BaseLandingPageActivity;->onBackPressed()V

    sget p1, Lccsancom/san/landingpage/BaseLandingPageActivity$removeDownloadListener;->addDownloadListener:I

    and-int/lit8 v0, p1, -0x28

    xor-int/lit8 v1, p1, -0x1

    and-int/lit8 v1, v1, 0x27

    or-int/2addr v0, v1

    and-int/lit8 p1, p1, 0x27

    shl-int/lit8 p1, p1, 0x1

    and-int v1, v0, p1

    or-int/2addr p1, v0

    add-int/2addr v1, p1

    rem-int/lit16 p1, v1, 0x80

    sput p1, Lccsancom/san/landingpage/BaseLandingPageActivity$removeDownloadListener;->removeDownloadListener:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_1

    const/16 p1, 0x52

    goto :goto_0

    :cond_1
    const/16 p1, 0x39

    :goto_0
    packed-switch p1, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    return-void

    :goto_1
    const/4 p1, 0x0

    :try_start_0
    array-length p1, p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    throw p1

    :pswitch_data_0
    .packed-switch 0x39
        :pswitch_0
    .end packed-switch
.end method
