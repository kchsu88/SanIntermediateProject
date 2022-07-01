.class Lccsancom/san/landingpage/IncentiveDownloadUtils$deleteDownItem;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lccsansan/j/unifiedDownload$IncentiveDownloadUtils;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/san/landingpage/IncentiveDownloadUtils;->unifiedDownload(Lccsanandroid/content/Context;Lccsanandroid/view/View;Lccsanandroid/widget/FrameLayout;Lccsanandroid/widget/LinearLayout;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static getDownloadingList:I

.field private static removeDownloadListener:I


# instance fields
.field final synthetic addDownloadListener:Lccsanandroid/content/Context;

.field final synthetic unifiedDownload:Lccsancom/san/landingpage/IncentiveDownloadUtils;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lccsancom/san/landingpage/IncentiveDownloadUtils$deleteDownItem;->removeDownloadListener:I

    const/4 v0, 0x1

    sput v0, Lccsancom/san/landingpage/IncentiveDownloadUtils$deleteDownItem;->getDownloadingList:I

    return-void
.end method

.method constructor <init>(Lccsancom/san/landingpage/IncentiveDownloadUtils;Lccsanandroid/content/Context;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lccsancom/san/landingpage/IncentiveDownloadUtils$deleteDownItem;->unifiedDownload:Lccsancom/san/landingpage/IncentiveDownloadUtils;

    iput-object p2, p0, Lccsancom/san/landingpage/IncentiveDownloadUtils$deleteDownItem;->addDownloadListener:Lccsanandroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ZZ)V
    .locals 5

    .line 2
    sget v0, Lccsancom/san/landingpage/IncentiveDownloadUtils$deleteDownItem;->getDownloadingList:I

    and-int/lit8 v1, v0, 0x44

    or-int/lit8 v0, v0, 0x44

    add-int/2addr v1, v0

    xor-int/lit8 v0, v1, -0x1

    and-int/lit8 v1, v1, -0x1

    const/4 v2, 0x1

    shl-int/2addr v1, v2

    add-int/2addr v0, v1

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/san/landingpage/IncentiveDownloadUtils$deleteDownItem;->removeDownloadListener:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    .line 1
    const/16 v0, 0x2f

    goto :goto_0

    :cond_0
    const/16 v0, 0x58

    :goto_0
    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lccsancom/san/landingpage/IncentiveDownloadUtils$deleteDownItem;->unifiedDownload:Lccsancom/san/landingpage/IncentiveDownloadUtils;

    invoke-static {v0}, Lccsancom/san/landingpage/IncentiveDownloadUtils;->IncentiveDownloadUtils(Lccsancom/san/landingpage/IncentiveDownloadUtils;)Lccsansan/dt/removeDownloadListener;

    move-result-object v0

    goto :goto_2

    :pswitch_0
    iget-object v0, p0, Lccsancom/san/landingpage/IncentiveDownloadUtils$deleteDownItem;->unifiedDownload:Lccsancom/san/landingpage/IncentiveDownloadUtils;

    invoke-static {v0}, Lccsancom/san/landingpage/IncentiveDownloadUtils;->IncentiveDownloadUtils(Lccsancom/san/landingpage/IncentiveDownloadUtils;)Lccsansan/dt/removeDownloadListener;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v0, 0x3

    goto :goto_1

    :cond_1
    const/16 v0, 0x38

    :goto_1
    packed-switch v0, :pswitch_data_1

    :pswitch_1
    goto :goto_4

    :goto_2
    const/16 v3, 0x51

    :try_start_0
    div-int/2addr v3, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_3

    :cond_2
    const/4 v0, 0x0

    :goto_3
    packed-switch v0, :pswitch_data_2

    goto :goto_7

    :goto_4
    iget-object v0, p0, Lccsancom/san/landingpage/IncentiveDownloadUtils$deleteDownItem;->unifiedDownload:Lccsancom/san/landingpage/IncentiveDownloadUtils;

    invoke-static {v0}, Lccsancom/san/landingpage/IncentiveDownloadUtils;->unifiedDownload(Lccsancom/san/landingpage/IncentiveDownloadUtils;)Lccsansan/bv/getDownloadingList;

    move-result-object v0

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    goto :goto_5

    :cond_3
    const/4 v0, 0x1

    :goto_5
    packed-switch v0, :pswitch_data_3

    .line 2
    sget v0, Lccsancom/san/landingpage/IncentiveDownloadUtils$deleteDownItem;->getDownloadingList:I

    or-int/lit8 v3, v0, 0x67

    shl-int/lit8 v4, v3, 0x1

    and-int/lit8 v0, v0, 0x67

    xor-int/lit8 v0, v0, -0x1

    and-int/2addr v0, v3

    sub-int/2addr v4, v0

    rem-int/lit16 v0, v4, 0x80

    sput v0, Lccsancom/san/landingpage/IncentiveDownloadUtils$deleteDownItem;->removeDownloadListener:I

    rem-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_4

    .line 1
    const/4 v0, 0x1

    goto :goto_6

    :cond_4
    const/4 v0, 0x0

    :goto_6
    const-string v3, "cardbutton"

    packed-switch v0, :pswitch_data_4

    .line 2
    :pswitch_2
    iget-object v0, p0, Lccsancom/san/landingpage/IncentiveDownloadUtils$deleteDownItem;->unifiedDownload:Lccsancom/san/landingpage/IncentiveDownloadUtils;

    invoke-static {v0}, Lccsancom/san/landingpage/IncentiveDownloadUtils;->unifiedDownload(Lccsancom/san/landingpage/IncentiveDownloadUtils;)Lccsansan/bv/getDownloadingList;

    move-result-object v0

    iget-object v4, p0, Lccsancom/san/landingpage/IncentiveDownloadUtils$deleteDownItem;->addDownloadListener:Lccsanandroid/content/Context;

    invoke-static {p1, p2}, Lccsansan/ck/getDownloadingRecordByUrl;->removeDownloadListener(ZZ)I

    move-result p1

    invoke-virtual {v0, v4, v3, v2, p1}, Lccsansan/bv/getDownloadingList;->removeDownloadListener(Lccsanandroid/content/Context;Ljava/lang/String;ZI)V

    sget p1, Lccsancom/san/landingpage/IncentiveDownloadUtils$deleteDownItem;->removeDownloadListener:I

    or-int/lit8 p2, p1, 0x59

    shl-int/lit8 v0, p2, 0x1

    and-int/lit8 p1, p1, 0x59

    xor-int/lit8 p1, p1, -0x1

    and-int/2addr p1, p2

    neg-int p1, p1

    xor-int p2, v0, p1

    and-int/2addr p1, v0

    shl-int/2addr p1, v2

    add-int/2addr p2, p1

    rem-int/lit16 p1, p2, 0x80

    sput p1, Lccsancom/san/landingpage/IncentiveDownloadUtils$deleteDownItem;->getDownloadingList:I

    rem-int/lit8 p2, p2, 0x2

    if-nez p2, :cond_5

    :cond_5
    :goto_7
    :pswitch_3
    sget p1, Lccsancom/san/landingpage/IncentiveDownloadUtils$deleteDownItem;->removeDownloadListener:I

    xor-int/lit8 p2, p1, 0xf

    and-int/lit8 v0, p1, 0xf

    or-int/2addr p2, v0

    shl-int/2addr p2, v2

    and-int/lit8 v0, p1, -0x10

    xor-int/lit8 p1, p1, -0x1

    and-int/lit8 p1, p1, 0xf

    or-int/2addr p1, v0

    neg-int p1, p1

    xor-int/lit8 p1, p1, -0x1

    sub-int/2addr p2, p1

    sub-int/2addr p2, v2

    rem-int/lit16 p1, p2, 0x80

    sput p1, Lccsancom/san/landingpage/IncentiveDownloadUtils$deleteDownItem;->getDownloadingList:I

    rem-int/lit8 p2, p2, 0x2

    if-nez p2, :cond_6

    .line 1
    const/4 v2, 0x0

    goto :goto_8

    :cond_6
    nop

    :goto_8
    packed-switch v2, :pswitch_data_5

    .line 2
    goto :goto_9

    :pswitch_4
    return-void

    :goto_9
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

    throw p1

    nop

    :pswitch_data_0
    .packed-switch 0x58
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x38
        :pswitch_3
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_1
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x1
        :pswitch_3
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x0
        :pswitch_2
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0x1
        :pswitch_4
    .end packed-switch
.end method
