.class Lccsansan/f/addDownloadListener$removeDownloadListener;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lccsansan/cv/IncentiveDownloadUtils$IncentiveDownloadUtils;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsansan/f/addDownloadListener;->addDownloadListener(Lccsansan/f/IncentiveDownloadUtils;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static addDownloadListener:I

.field private static removeDownloadListener:I


# instance fields
.field final synthetic IncentiveDownloadUtils:Lccsansan/f/IncentiveDownloadUtils;

.field final synthetic getDownloadingList:Lccsansan/f/addDownloadListener;

.field final synthetic unifiedDownload:Lccsansan/cv/IncentiveDownloadUtils;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lccsansan/f/addDownloadListener$removeDownloadListener;->addDownloadListener:I

    const/4 v0, 0x1

    sput v0, Lccsansan/f/addDownloadListener$removeDownloadListener;->removeDownloadListener:I

    return-void
.end method

.method constructor <init>(Lccsansan/f/addDownloadListener;Lccsansan/f/IncentiveDownloadUtils;Lccsansan/cv/IncentiveDownloadUtils;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lccsansan/f/addDownloadListener$removeDownloadListener;->getDownloadingList:Lccsansan/f/addDownloadListener;

    iput-object p2, p0, Lccsansan/f/addDownloadListener$removeDownloadListener;->IncentiveDownloadUtils:Lccsansan/f/IncentiveDownloadUtils;

    iput-object p3, p0, Lccsansan/f/addDownloadListener$removeDownloadListener;->unifiedDownload:Lccsansan/cv/IncentiveDownloadUtils;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public IncentiveDownloadUtils(Ljava/lang/String;JJ)V
    .locals 4

    .line 3
    sget v0, Lccsansan/f/addDownloadListener$removeDownloadListener;->addDownloadListener:I

    xor-int/lit8 v1, v0, 0x75

    and-int/lit8 v0, v0, 0x75

    or-int/2addr v0, v1

    const/4 v2, 0x1

    shl-int/2addr v0, v2

    neg-int v1, v1

    and-int v3, v0, v1

    or-int/2addr v0, v1

    add-int/2addr v3, v0

    rem-int/lit16 v0, v3, 0x80

    sput v0, Lccsansan/f/addDownloadListener$removeDownloadListener;->removeDownloadListener:I

    rem-int/lit8 v3, v3, 0x2

    if-nez v3, :cond_0

    .line 1
    :cond_0
    iget-object v0, p0, Lccsansan/f/addDownloadListener$removeDownloadListener;->IncentiveDownloadUtils:Lccsansan/f/IncentiveDownloadUtils;

    invoke-virtual {v0}, Lccsansan/f/IncentiveDownloadUtils;->getDownloadedList()Lccsancom/san/xz/base/XzRecord;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/san/xz/base/XzRecord;->getItem()Lccsansan/ae/getDownloadingList;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Lccsansan/ae/getDownloadingList;->unifiedDownload(J)V

    const-wide/16 v0, 0x0

    cmp-long v3, p2, v0

    if-nez v3, :cond_1

    .line 3
    const/4 p2, 0x0

    goto :goto_0

    :cond_1
    const/4 p2, 0x1

    :goto_0
    packed-switch p2, :pswitch_data_0

    sget p2, Lccsansan/f/addDownloadListener$removeDownloadListener;->addDownloadListener:I

    const/16 p3, 0x25

    xor-int/lit8 v0, p2, 0x25

    and-int/lit8 v1, p2, 0x25

    or-int/2addr v0, v1

    shl-int/2addr v0, v2

    and-int/lit8 v1, p2, -0x26

    xor-int/lit8 p2, p2, -0x1

    and-int/2addr p2, p3

    or-int/2addr p2, v1

    neg-int p2, p2

    xor-int/lit8 p2, p2, -0x1

    sub-int/2addr v0, p2

    sub-int/2addr v0, v2

    rem-int/lit16 p2, v0, 0x80

    sput p2, Lccsansan/f/addDownloadListener$removeDownloadListener;->removeDownloadListener:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_2

    :cond_2
    iget-object p2, p0, Lccsansan/f/addDownloadListener$removeDownloadListener;->IncentiveDownloadUtils:Lccsansan/f/IncentiveDownloadUtils;

    iget-object p3, p0, Lccsansan/f/addDownloadListener$removeDownloadListener;->unifiedDownload:Lccsansan/cv/IncentiveDownloadUtils;

    invoke-virtual {p3}, Lccsansan/cv/IncentiveDownloadUtils;->unifiedDownload()Lccsansan/cv/IncentiveDownloadUtils$addDownloadListener;

    move-result-object p3

    invoke-static {p2, p1, p4, p5, p3}, Lccsansan/bn/getDownloadingList;->IncentiveDownloadUtils(Lccsansan/f/IncentiveDownloadUtils;Ljava/lang/String;JLccsansan/cv/IncentiveDownloadUtils$addDownloadListener;)V

    sget p1, Lccsansan/f/addDownloadListener$removeDownloadListener;->removeDownloadListener:I

    xor-int/lit8 p2, p1, 0x19

    and-int/lit8 p1, p1, 0x19

    shl-int/2addr p1, v2

    neg-int p1, p1

    neg-int p1, p1

    xor-int/lit8 p1, p1, -0x1

    sub-int/2addr p2, p1

    sub-int/2addr p2, v2

    rem-int/lit16 p1, p2, 0x80

    sput p1, Lccsansan/f/addDownloadListener$removeDownloadListener;->addDownloadListener:I

    rem-int/lit8 p2, p2, 0x2

    if-eqz p2, :cond_3

    :cond_3
    :pswitch_0
    sget p1, Lccsansan/f/addDownloadListener$removeDownloadListener;->addDownloadListener:I

    xor-int/lit8 p2, p1, 0x23

    and-int/lit8 p3, p1, 0x23

    or-int/2addr p2, p3

    shl-int/2addr p2, v2

    xor-int/lit8 p3, p3, -0x1

    or-int/lit8 p1, p1, 0x23

    and-int/2addr p1, p3

    neg-int p1, p1

    or-int p3, p2, p1

    shl-int/2addr p3, v2

    xor-int/2addr p1, p2

    sub-int/2addr p3, p1

    rem-int/lit16 p1, p3, 0x80

    sput p1, Lccsansan/f/addDownloadListener$removeDownloadListener;->removeDownloadListener:I

    rem-int/lit8 p3, p3, 0x2

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public IncentiveDownloadUtils(Ljava/lang/String;Z)V
    .locals 6

    .line 6
    sget p1, Lccsansan/f/addDownloadListener$removeDownloadListener;->removeDownloadListener:I

    and-int/lit8 v0, p1, 0xb

    xor-int/lit8 v1, p1, 0xb

    or-int/2addr v1, v0

    and-int v2, v0, v1

    or-int/2addr v0, v1

    add-int/2addr v2, v0

    rem-int/lit16 v0, v2, 0x80

    sput v0, Lccsansan/f/addDownloadListener$removeDownloadListener;->addDownloadListener:I

    rem-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_0

    .line 0
    :cond_0
    if-nez p2, :cond_1

    .line 6
    xor-int/lit8 p2, p1, 0xd

    and-int/lit8 v0, p1, 0xd

    or-int/2addr p2, v0

    shl-int/lit8 p2, p2, 0x1

    and-int/lit8 v0, p1, -0xe

    xor-int/lit8 p1, p1, -0x1

    and-int/lit8 p1, p1, 0xd

    or-int/2addr p1, v0

    neg-int p1, p1

    xor-int/lit8 p1, p1, -0x1

    sub-int/2addr p2, p1

    add-int/lit8 p2, p2, -0x1

    rem-int/lit16 p1, p2, 0x80

    sput p1, Lccsansan/f/addDownloadListener$removeDownloadListener;->addDownloadListener:I

    rem-int/lit8 p2, p2, 0x2

    return-void

    .line 4
    :cond_1
    iget-object p1, p0, Lccsansan/f/addDownloadListener$removeDownloadListener;->IncentiveDownloadUtils:Lccsansan/f/IncentiveDownloadUtils;

    invoke-virtual {p1}, Lccsansan/aw/IncentiveDownloadUtils;->IncentiveSDK()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lccsansan/aw/IncentiveDownloadUtils;->getDownloadingList(J)V

    .line 5
    iget-object p1, p0, Lccsansan/f/addDownloadListener$removeDownloadListener;->IncentiveDownloadUtils:Lccsansan/f/IncentiveDownloadUtils;

    invoke-virtual {p1}, Lccsansan/aw/IncentiveDownloadUtils;->resolveUrl()V

    .line 6
    iget-object v0, p0, Lccsansan/f/addDownloadListener$removeDownloadListener;->getDownloadingList:Lccsansan/f/addDownloadListener;

    iget-object v1, p0, Lccsansan/f/addDownloadListener$removeDownloadListener;->IncentiveDownloadUtils:Lccsansan/f/IncentiveDownloadUtils;

    invoke-virtual {v1}, Lccsansan/aw/IncentiveDownloadUtils;->IncentiveSDK()J

    move-result-wide v2

    iget-object p1, p0, Lccsansan/f/addDownloadListener$removeDownloadListener;->IncentiveDownloadUtils:Lccsansan/f/IncentiveDownloadUtils;

    invoke-virtual {p1}, Lccsansan/aw/IncentiveDownloadUtils;->IncentiveSDK()J

    move-result-wide v4

    invoke-virtual/range {v0 .. v5}, Lccsansan/aw/getDownloadedRecordByUrl;->unifiedDownload(Lccsansan/aw/IncentiveDownloadUtils;JJ)V

    sget p1, Lccsansan/f/addDownloadListener$removeDownloadListener;->addDownloadListener:I

    and-int/lit8 p2, p1, 0x2f

    xor-int/lit8 p1, p1, 0x2f

    or-int/2addr p1, p2

    neg-int p1, p1

    neg-int p1, p1

    and-int v0, p2, p1

    or-int/2addr p1, p2

    add-int/2addr v0, p1

    rem-int/lit16 p1, v0, 0x80

    sput p1, Lccsansan/f/addDownloadListener$removeDownloadListener;->removeDownloadListener:I

    rem-int/lit8 v0, v0, 0x2

    return-void
.end method

.method public removeDownloadListener(Ljava/lang/String;JJ)V
    .locals 6

    .line 3
    sget p1, Lccsansan/f/addDownloadListener$removeDownloadListener;->removeDownloadListener:I

    add-int/lit8 p1, p1, 0x79

    add-int/lit8 p1, p1, -0x1

    xor-int/lit8 v0, p1, -0x1

    and-int/lit8 p1, p1, -0x1

    shl-int/lit8 p1, p1, 0x1

    add-int/2addr v0, p1

    rem-int/lit16 p1, v0, 0x80

    sput p1, Lccsansan/f/addDownloadListener$removeDownloadListener;->addDownloadListener:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/16 p1, 0x62

    goto :goto_0

    :cond_0
    const/16 p1, 0x25

    :goto_0
    packed-switch p1, :pswitch_data_0

    .line 1
    iget-object p1, p0, Lccsansan/f/addDownloadListener$removeDownloadListener;->IncentiveDownloadUtils:Lccsansan/f/IncentiveDownloadUtils;

    invoke-virtual {p1, p2, p3}, Lccsansan/aw/IncentiveDownloadUtils;->getDownloadingList(J)V

    .line 2
    iget-object p1, p0, Lccsansan/f/addDownloadListener$removeDownloadListener;->IncentiveDownloadUtils:Lccsansan/f/IncentiveDownloadUtils;

    invoke-virtual {p1}, Lccsansan/aw/IncentiveDownloadUtils;->resolveUrl()V

    .line 3
    iget-object v0, p0, Lccsansan/f/addDownloadListener$removeDownloadListener;->getDownloadingList:Lccsansan/f/addDownloadListener;

    iget-object v1, p0, Lccsansan/f/addDownloadListener$removeDownloadListener;->IncentiveDownloadUtils:Lccsansan/f/IncentiveDownloadUtils;

    move-wide v2, p4

    move-wide v4, p2

    invoke-virtual/range {v0 .. v5}, Lccsansan/aw/getDownloadedRecordByUrl;->unifiedDownload(Lccsansan/aw/IncentiveDownloadUtils;JJ)V

    goto :goto_1

    .line 1
    :pswitch_0
    iget-object p1, p0, Lccsansan/f/addDownloadListener$removeDownloadListener;->IncentiveDownloadUtils:Lccsansan/f/IncentiveDownloadUtils;

    invoke-virtual {p1, p2, p3}, Lccsansan/aw/IncentiveDownloadUtils;->getDownloadingList(J)V

    .line 2
    iget-object p1, p0, Lccsansan/f/addDownloadListener$removeDownloadListener;->IncentiveDownloadUtils:Lccsansan/f/IncentiveDownloadUtils;

    invoke-virtual {p1}, Lccsansan/aw/IncentiveDownloadUtils;->resolveUrl()V

    .line 3
    iget-object v0, p0, Lccsansan/f/addDownloadListener$removeDownloadListener;->getDownloadingList:Lccsansan/f/addDownloadListener;

    iget-object v1, p0, Lccsansan/f/addDownloadListener$removeDownloadListener;->IncentiveDownloadUtils:Lccsansan/f/IncentiveDownloadUtils;

    move-wide v2, p4

    move-wide v4, p2

    invoke-virtual/range {v0 .. v5}, Lccsansan/aw/getDownloadedRecordByUrl;->unifiedDownload(Lccsansan/aw/IncentiveDownloadUtils;JJ)V

    const/4 p1, 0x0

    :try_start_0
    array-length p1, p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    throw p1

    :goto_1
    sget p1, Lccsansan/f/addDownloadListener$removeDownloadListener;->removeDownloadListener:I

    and-int/lit8 p2, p1, 0x6d

    or-int/lit8 p1, p1, 0x6d

    or-int p3, p2, p1

    shl-int/lit8 p3, p3, 0x1

    xor-int/2addr p1, p2

    sub-int/2addr p3, p1

    rem-int/lit16 p1, p3, 0x80

    sput p1, Lccsansan/f/addDownloadListener$removeDownloadListener;->addDownloadListener:I

    rem-int/lit8 p3, p3, 0x2

    return-void

    :pswitch_data_0
    .packed-switch 0x62
        :pswitch_0
    .end packed-switch
.end method
