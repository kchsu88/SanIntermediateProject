.class Lccsancom/san/landingpage/IncentiveDownloadUtils$getDownloadingRecordByUrl;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lccsansan/j/unifiedDownload$IncentiveDownloadUtils;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/san/landingpage/IncentiveDownloadUtils;->unifiedDownload(Lccsanandroid/content/Context;Lccsansan/dt/deleteDownItem$removeDownloadListener;Lccsanandroid/widget/FrameLayout;Lccsanandroid/widget/LinearLayout;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static IncentiveDownloadUtils:I

.field private static removeDownloadListener:I


# instance fields
.field final synthetic addDownloadListener:Lccsanandroid/content/Context;

.field final synthetic unifiedDownload:Lccsancom/san/landingpage/IncentiveDownloadUtils;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lccsancom/san/landingpage/IncentiveDownloadUtils$getDownloadingRecordByUrl;->IncentiveDownloadUtils:I

    const/4 v0, 0x1

    sput v0, Lccsancom/san/landingpage/IncentiveDownloadUtils$getDownloadingRecordByUrl;->removeDownloadListener:I

    return-void
.end method

.method constructor <init>(Lccsancom/san/landingpage/IncentiveDownloadUtils;Lccsanandroid/content/Context;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lccsancom/san/landingpage/IncentiveDownloadUtils$getDownloadingRecordByUrl;->unifiedDownload:Lccsancom/san/landingpage/IncentiveDownloadUtils;

    iput-object p2, p0, Lccsancom/san/landingpage/IncentiveDownloadUtils$getDownloadingRecordByUrl;->addDownloadListener:Lccsanandroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ZZ)V
    .locals 4

    .line 2
    sget v0, Lccsancom/san/landingpage/IncentiveDownloadUtils$getDownloadingRecordByUrl;->removeDownloadListener:I

    const/16 v1, 0x39

    and-int/lit8 v2, v0, -0x3a

    xor-int/lit8 v3, v0, -0x1

    and-int/2addr v3, v1

    or-int/2addr v2, v3

    and-int/2addr v0, v1

    const/4 v1, 0x1

    shl-int/2addr v0, v1

    neg-int v0, v0

    neg-int v0, v0

    xor-int/lit8 v0, v0, -0x1

    sub-int/2addr v2, v0

    sub-int/2addr v2, v1

    rem-int/lit16 v0, v2, 0x80

    sput v0, Lccsancom/san/landingpage/IncentiveDownloadUtils$getDownloadingRecordByUrl;->IncentiveDownloadUtils:I

    rem-int/lit8 v2, v2, 0x2

    const/4 v0, 0x0

    if-eqz v2, :cond_0

    .line 1
    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    :goto_0
    packed-switch v2, :pswitch_data_0

    iget-object v0, p0, Lccsancom/san/landingpage/IncentiveDownloadUtils$getDownloadingRecordByUrl;->unifiedDownload:Lccsancom/san/landingpage/IncentiveDownloadUtils;

    invoke-static {v0}, Lccsancom/san/landingpage/IncentiveDownloadUtils;->IncentiveDownloadUtils(Lccsancom/san/landingpage/IncentiveDownloadUtils;)Lccsansan/dt/removeDownloadListener;

    move-result-object v0

    if-eqz v0, :cond_2

    goto :goto_2

    :pswitch_0
    iget-object v2, p0, Lccsancom/san/landingpage/IncentiveDownloadUtils$getDownloadingRecordByUrl;->unifiedDownload:Lccsancom/san/landingpage/IncentiveDownloadUtils;

    invoke-static {v2}, Lccsancom/san/landingpage/IncentiveDownloadUtils;->IncentiveDownloadUtils(Lccsancom/san/landingpage/IncentiveDownloadUtils;)Lccsansan/dt/removeDownloadListener;

    move-result-object v2

    const/4 v3, 0x0

    :try_start_0
    array-length v3, v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x1

    :goto_1
    packed-switch v0, :pswitch_data_1

    goto :goto_4

    .line 2
    :catchall_0
    move-exception p1

    throw p1

    .line 1
    :goto_2
    const/16 v0, 0x10

    goto :goto_3

    :cond_2
    const/16 v0, 0x5b

    :goto_3
    packed-switch v0, :pswitch_data_2

    :goto_4
    iget-object v0, p0, Lccsancom/san/landingpage/IncentiveDownloadUtils$getDownloadingRecordByUrl;->unifiedDownload:Lccsancom/san/landingpage/IncentiveDownloadUtils;

    invoke-static {v0}, Lccsancom/san/landingpage/IncentiveDownloadUtils;->unifiedDownload(Lccsancom/san/landingpage/IncentiveDownloadUtils;)Lccsansan/bv/getDownloadingList;

    move-result-object v0

    if-eqz v0, :cond_3

    const/16 v0, 0x1c

    goto :goto_5

    :cond_3
    const/4 v0, 0x1

    :goto_5
    packed-switch v0, :pswitch_data_3

    goto :goto_7

    :pswitch_1
    sget v0, Lccsancom/san/landingpage/IncentiveDownloadUtils$getDownloadingRecordByUrl;->IncentiveDownloadUtils:I

    xor-int/lit8 v2, v0, 0x55

    and-int/lit8 v3, v0, 0x55

    or-int/2addr v2, v3

    shl-int/2addr v2, v1

    xor-int/lit8 v3, v3, -0x1

    or-int/lit8 v0, v0, 0x55

    and-int/2addr v0, v3

    neg-int v0, v0

    and-int v3, v2, v0

    or-int/2addr v0, v2

    add-int/2addr v3, v0

    rem-int/lit16 v0, v3, 0x80

    sput v0, Lccsancom/san/landingpage/IncentiveDownloadUtils$getDownloadingRecordByUrl;->removeDownloadListener:I

    rem-int/lit8 v3, v3, 0x2

    if-nez v3, :cond_4

    .line 2
    :cond_4
    iget-object v0, p0, Lccsancom/san/landingpage/IncentiveDownloadUtils$getDownloadingRecordByUrl;->unifiedDownload:Lccsancom/san/landingpage/IncentiveDownloadUtils;

    invoke-static {v0}, Lccsancom/san/landingpage/IncentiveDownloadUtils;->unifiedDownload(Lccsancom/san/landingpage/IncentiveDownloadUtils;)Lccsansan/bv/getDownloadingList;

    move-result-object v0

    iget-object v2, p0, Lccsancom/san/landingpage/IncentiveDownloadUtils$getDownloadingRecordByUrl;->addDownloadListener:Lccsanandroid/content/Context;

    invoke-static {p1, p2}, Lccsansan/ck/getDownloadingRecordByUrl;->removeDownloadListener(ZZ)I

    move-result p1

    const-string p2, "cardbutton"

    invoke-virtual {v0, v2, p2, v1, p1}, Lccsansan/bv/getDownloadingList;->removeDownloadListener(Lccsanandroid/content/Context;Ljava/lang/String;ZI)V

    .line 1
    sget p1, Lccsancom/san/landingpage/IncentiveDownloadUtils$getDownloadingRecordByUrl;->IncentiveDownloadUtils:I

    and-int/lit8 p2, p1, 0x47

    xor-int/lit8 p1, p1, 0x47

    or-int/2addr p1, p2

    add-int/2addr p2, p1

    rem-int/lit16 p1, p2, 0x80

    sput p1, Lccsancom/san/landingpage/IncentiveDownloadUtils$getDownloadingRecordByUrl;->removeDownloadListener:I

    rem-int/lit8 p2, p2, 0x2

    if-nez p2, :cond_5

    const/4 p1, 0x3

    goto :goto_6

    :cond_5
    const/4 p1, 0x5

    :goto_6
    packed-switch p1, :pswitch_data_4

    goto :goto_7

    .line 2
    :pswitch_2
    nop

    :goto_7
    :pswitch_3
    nop

    .line 1
    sget p1, Lccsancom/san/landingpage/IncentiveDownloadUtils$getDownloadingRecordByUrl;->IncentiveDownloadUtils:I

    add-int/lit8 p1, p1, 0x3d

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lccsancom/san/landingpage/IncentiveDownloadUtils$getDownloadingRecordByUrl;->removeDownloadListener:I

    rem-int/lit8 p1, p1, 0x2

    .line 2
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x5b
        :pswitch_3
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x1c
        :pswitch_1
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x5
        :pswitch_2
    .end packed-switch
.end method
