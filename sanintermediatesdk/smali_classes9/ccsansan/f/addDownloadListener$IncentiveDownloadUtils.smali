.class Lccsansan/f/addDownloadListener$IncentiveDownloadUtils;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lccsansan/cv/IncentiveDownloadUtils$IncentiveDownloadUtils;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsansan/f/addDownloadListener;->unifiedDownload(Lccsansan/f/IncentiveDownloadUtils;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static getDownloadingList:I

.field private static removeDownloadListener:I


# instance fields
.field final synthetic IncentiveDownloadUtils:Lccsansan/f/addDownloadListener;

.field final synthetic unifiedDownload:Lccsansan/f/IncentiveDownloadUtils;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lccsansan/f/addDownloadListener$IncentiveDownloadUtils;->removeDownloadListener:I

    const/4 v0, 0x1

    sput v0, Lccsansan/f/addDownloadListener$IncentiveDownloadUtils;->getDownloadingList:I

    return-void
.end method

.method constructor <init>(Lccsansan/f/addDownloadListener;Lccsansan/f/IncentiveDownloadUtils;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lccsansan/f/addDownloadListener$IncentiveDownloadUtils;->IncentiveDownloadUtils:Lccsansan/f/addDownloadListener;

    iput-object p2, p0, Lccsansan/f/addDownloadListener$IncentiveDownloadUtils;->unifiedDownload:Lccsansan/f/IncentiveDownloadUtils;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public IncentiveDownloadUtils(Ljava/lang/String;JJ)V
    .locals 0

    .line 1
    sget p1, Lccsansan/f/addDownloadListener$IncentiveDownloadUtils;->getDownloadingList:I

    and-int/lit8 p4, p1, 0x7d

    or-int/lit8 p1, p1, 0x7d

    add-int/2addr p4, p1

    rem-int/lit16 p1, p4, 0x80

    sput p1, Lccsansan/f/addDownloadListener$IncentiveDownloadUtils;->removeDownloadListener:I

    rem-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_0

    :cond_0
    iget-object p1, p0, Lccsansan/f/addDownloadListener$IncentiveDownloadUtils;->unifiedDownload:Lccsansan/f/IncentiveDownloadUtils;

    invoke-virtual {p1}, Lccsansan/f/IncentiveDownloadUtils;->getDownloadedList()Lccsancom/san/xz/base/XzRecord;

    move-result-object p1

    invoke-virtual {p1}, Lccsancom/san/xz/base/XzRecord;->getItem()Lccsansan/ae/getDownloadingList;

    move-result-object p1

    invoke-virtual {p1, p2, p3}, Lccsansan/ae/getDownloadingList;->unifiedDownload(J)V

    sget p1, Lccsansan/f/addDownloadListener$IncentiveDownloadUtils;->getDownloadingList:I

    or-int/lit8 p2, p1, 0x1e

    shl-int/lit8 p2, p2, 0x1

    xor-int/lit8 p1, p1, 0x1e

    sub-int/2addr p2, p1

    add-int/lit8 p2, p2, 0x0

    add-int/lit8 p2, p2, -0x1

    rem-int/lit16 p1, p2, 0x80

    sput p1, Lccsansan/f/addDownloadListener$IncentiveDownloadUtils;->removeDownloadListener:I

    rem-int/lit8 p2, p2, 0x2

    return-void
.end method

.method public IncentiveDownloadUtils(Ljava/lang/String;Z)V
    .locals 9

    .line 15
    sget p1, Lccsansan/f/addDownloadListener$IncentiveDownloadUtils;->removeDownloadListener:I

    and-int/lit8 v0, p1, 0x63

    xor-int/lit8 v1, p1, 0x63

    or-int/2addr v1, v0

    neg-int v1, v1

    neg-int v1, v1

    xor-int v2, v0, v1

    and-int/2addr v0, v1

    const/4 v1, 0x1

    shl-int/2addr v0, v1

    add-int/2addr v2, v0

    rem-int/lit16 v0, v2, 0x80

    sput v0, Lccsansan/f/addDownloadListener$IncentiveDownloadUtils;->getDownloadingList:I

    rem-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_0

    .line 0
    :cond_0
    if-nez p2, :cond_1

    .line 15
    const/16 p2, 0x3b

    goto :goto_0

    :cond_1
    const/16 p2, 0x40

    :goto_0
    packed-switch p2, :pswitch_data_0

    xor-int/lit8 p2, p1, 0x16

    and-int/lit8 p1, p1, 0x16

    shl-int/2addr p1, v1

    add-int/2addr p2, p1

    and-int/lit8 p1, p2, -0x1

    or-int/lit8 p2, p2, -0x1

    add-int/2addr p1, p2

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lccsansan/f/addDownloadListener$IncentiveDownloadUtils;->getDownloadingList:I

    rem-int/lit8 p1, p1, 0x2

    if-nez p1, :cond_6

    goto/16 :goto_5

    .line 2
    :pswitch_0
    const-wide/16 p1, 0x0

    .line 7
    iget-object v0, p0, Lccsansan/f/addDownloadListener$IncentiveDownloadUtils;->unifiedDownload:Lccsansan/f/IncentiveDownloadUtils;

    invoke-virtual {v0}, Lccsansan/f/IncentiveDownloadUtils;->getDownloadedList()Lccsancom/san/xz/base/XzRecord;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/san/xz/base/XzRecord;->getMultiPartRecords()Ljava/util/List;

    move-result-object v0

    .line 8
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 15
    sget v2, Lccsansan/f/addDownloadListener$IncentiveDownloadUtils;->getDownloadingList:I

    xor-int/lit8 v3, v2, 0x3

    and-int/lit8 v4, v2, 0x3

    or-int/2addr v3, v4

    shl-int/2addr v3, v1

    xor-int/lit8 v4, v4, -0x1

    or-int/lit8 v2, v2, 0x3

    and-int/2addr v2, v4

    neg-int v2, v2

    xor-int/lit8 v2, v2, -0x1

    sub-int/2addr v3, v2

    sub-int/2addr v3, v1

    rem-int/lit16 v2, v3, 0x80

    sput v2, Lccsansan/f/addDownloadListener$IncentiveDownloadUtils;->removeDownloadListener:I

    rem-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_2

    const/16 v2, 0x28

    goto :goto_1

    :cond_2
    const/16 v2, 0xd

    :goto_1
    packed-switch v2, :pswitch_data_1

    .line 8
    :pswitch_1
    move-wide v7, p1

    :cond_3
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 15
    const/4 p1, 0x1

    goto :goto_3

    :cond_4
    const/4 p1, 0x0

    :goto_3
    packed-switch p1, :pswitch_data_2

    .line 12
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "onResult completed = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "CloudXzManager"

    invoke-static {p2, p1}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    iget-object p1, p0, Lccsansan/f/addDownloadListener$IncentiveDownloadUtils;->unifiedDownload:Lccsansan/f/IncentiveDownloadUtils;

    invoke-virtual {p1, v7, v8}, Lccsansan/aw/IncentiveDownloadUtils;->getDownloadingList(J)V

    .line 14
    iget-object p1, p0, Lccsansan/f/addDownloadListener$IncentiveDownloadUtils;->unifiedDownload:Lccsansan/f/IncentiveDownloadUtils;

    invoke-virtual {p1}, Lccsansan/aw/IncentiveDownloadUtils;->resolveUrl()V

    .line 15
    iget-object v3, p0, Lccsansan/f/addDownloadListener$IncentiveDownloadUtils;->IncentiveDownloadUtils:Lccsansan/f/addDownloadListener;

    iget-object v4, p0, Lccsansan/f/addDownloadListener$IncentiveDownloadUtils;->unifiedDownload:Lccsansan/f/IncentiveDownloadUtils;

    invoke-virtual {v4}, Lccsansan/aw/IncentiveDownloadUtils;->IncentiveSDK()J

    move-result-wide v5

    invoke-virtual/range {v3 .. v8}, Lccsansan/aw/getDownloadedRecordByUrl;->unifiedDownload(Lccsansan/aw/IncentiveDownloadUtils;JJ)V

    goto :goto_4

    :pswitch_2
    sget p1, Lccsansan/f/addDownloadListener$IncentiveDownloadUtils;->getDownloadingList:I

    add-int/lit8 p1, p1, 0x3

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lccsansan/f/addDownloadListener$IncentiveDownloadUtils;->removeDownloadListener:I

    rem-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_5

    .line 8
    :cond_5
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lccsansan/cs/removeDownloadListener;

    .line 9
    invoke-virtual {p1}, Lccsansan/cs/removeDownloadListener;->unifiedDownload()J

    move-result-wide p1

    add-long/2addr v7, p1

    .line 15
    sget p1, Lccsansan/f/addDownloadListener$IncentiveDownloadUtils;->removeDownloadListener:I

    or-int/lit8 p2, p1, 0xb

    shl-int/lit8 v2, p2, 0x1

    and-int/lit8 p1, p1, 0xb

    xor-int/lit8 p1, p1, -0x1

    and-int/2addr p1, p2

    sub-int/2addr v2, p1

    rem-int/lit16 p1, v2, 0x80

    sput p1, Lccsansan/f/addDownloadListener$IncentiveDownloadUtils;->getDownloadingList:I

    rem-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_3

    goto :goto_2

    :goto_4
    sget p1, Lccsansan/f/addDownloadListener$IncentiveDownloadUtils;->removeDownloadListener:I

    xor-int/lit8 p2, p1, 0x1

    and-int/lit8 v0, p1, 0x1

    or-int/2addr p2, v0

    shl-int/2addr p2, v1

    xor-int/lit8 v0, v0, -0x1

    or-int/2addr p1, v1

    and-int/2addr p1, v0

    neg-int p1, p1

    xor-int/lit8 p1, p1, -0x1

    sub-int/2addr p2, p1

    sub-int/2addr p2, v1

    rem-int/lit16 p1, p2, 0x80

    sput p1, Lccsansan/f/addDownloadListener$IncentiveDownloadUtils;->getDownloadingList:I

    rem-int/lit8 p2, p2, 0x2

    return-void

    .line 2
    :cond_6
    :goto_5
    iget-object p1, p0, Lccsansan/f/addDownloadListener$IncentiveDownloadUtils;->unifiedDownload:Lccsansan/f/IncentiveDownloadUtils;

    invoke-virtual {p1, v1}, Lccsansan/f/IncentiveDownloadUtils;->IncentiveDownloadUtils(Z)V

    .line 15
    sget p1, Lccsansan/f/addDownloadListener$IncentiveDownloadUtils;->getDownloadingList:I

    and-int/lit8 p2, p1, 0x17

    or-int/lit8 p1, p1, 0x17

    neg-int p1, p1

    neg-int p1, p1

    xor-int/lit8 p1, p1, -0x1

    sub-int/2addr p2, p1

    sub-int/2addr p2, v1

    rem-int/lit16 p1, p2, 0x80

    sput p1, Lccsansan/f/addDownloadListener$IncentiveDownloadUtils;->removeDownloadListener:I

    rem-int/lit8 p2, p2, 0x2

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x40
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x28
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_2
    .end packed-switch
.end method

.method public removeDownloadListener(Ljava/lang/String;JJ)V
    .locals 8

    .line 7
    nop

    .line 3
    sget p1, Lccsansan/f/addDownloadListener$IncentiveDownloadUtils;->removeDownloadListener:I

    xor-int/lit8 p2, p1, 0x6f

    and-int/lit8 p1, p1, 0x6f

    const/4 p3, 0x1

    shl-int/2addr p1, p3

    neg-int p1, p1

    neg-int p1, p1

    or-int v0, p2, p1

    shl-int/2addr v0, p3

    xor-int/2addr p1, p2

    sub-int/2addr v0, p1

    rem-int/lit16 p1, v0, 0x80

    sput p1, Lccsansan/f/addDownloadListener$IncentiveDownloadUtils;->getDownloadingList:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    .line 2
    const/16 p1, 0x1c

    goto :goto_0

    :cond_0
    const/16 p1, 0x25

    :goto_0
    packed-switch p1, :pswitch_data_0

    .line 0
    const-wide/16 p1, 0x0

    goto :goto_1

    .line 3
    :pswitch_0
    const-wide/16 p1, 0x1

    .line 1
    :goto_1
    iget-object v0, p0, Lccsansan/f/addDownloadListener$IncentiveDownloadUtils;->unifiedDownload:Lccsansan/f/IncentiveDownloadUtils;

    invoke-virtual {v0}, Lccsansan/f/IncentiveDownloadUtils;->getDownloadedList()Lccsancom/san/xz/base/XzRecord;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/san/xz/base/XzRecord;->getMultiPartRecords()Ljava/util/List;

    move-result-object v0

    .line 2
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 7
    sget v1, Lccsansan/f/addDownloadListener$IncentiveDownloadUtils;->removeDownloadListener:I

    and-int/lit8 v2, v1, 0x6d

    xor-int/lit8 v1, v1, 0x6d

    or-int/2addr v1, v2

    add-int/2addr v2, v1

    rem-int/lit16 v1, v2, 0x80

    sput v1, Lccsansan/f/addDownloadListener$IncentiveDownloadUtils;->getDownloadingList:I

    rem-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_1

    .line 2
    const/16 v1, 0x22

    goto :goto_2

    :cond_1
    const/16 v1, 0x37

    :goto_2
    packed-switch v1, :pswitch_data_1

    .line 7
    :pswitch_1
    nop

    .line 2
    move-wide v6, p1

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_2

    const/16 p1, 0xf

    goto :goto_4

    :cond_2
    const/16 p1, 0x11

    :goto_4
    packed-switch p1, :pswitch_data_2

    .line 5
    iget-object p1, p0, Lccsansan/f/addDownloadListener$IncentiveDownloadUtils;->unifiedDownload:Lccsansan/f/IncentiveDownloadUtils;

    invoke-virtual {p1, v6, v7}, Lccsansan/aw/IncentiveDownloadUtils;->getDownloadingList(J)V

    .line 6
    iget-object p1, p0, Lccsansan/f/addDownloadListener$IncentiveDownloadUtils;->unifiedDownload:Lccsansan/f/IncentiveDownloadUtils;

    invoke-virtual {p1}, Lccsansan/aw/IncentiveDownloadUtils;->resolveUrl()V

    .line 7
    iget-object v2, p0, Lccsansan/f/addDownloadListener$IncentiveDownloadUtils;->IncentiveDownloadUtils:Lccsansan/f/addDownloadListener;

    iget-object v3, p0, Lccsansan/f/addDownloadListener$IncentiveDownloadUtils;->unifiedDownload:Lccsansan/f/IncentiveDownloadUtils;

    move-wide v4, p4

    invoke-virtual/range {v2 .. v7}, Lccsansan/aw/getDownloadedRecordByUrl;->unifiedDownload(Lccsansan/aw/IncentiveDownloadUtils;JJ)V

    goto :goto_8

    :pswitch_2
    sget p1, Lccsansan/f/addDownloadListener$IncentiveDownloadUtils;->getDownloadingList:I

    add-int/lit8 p1, p1, 0x73

    sub-int/2addr p1, p3

    sub-int/2addr p1, p3

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lccsansan/f/addDownloadListener$IncentiveDownloadUtils;->removeDownloadListener:I

    rem-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_3

    .line 2
    const/4 p1, 0x0

    goto :goto_5

    :cond_3
    const/4 p1, 0x1

    :goto_5
    packed-switch p1, :pswitch_data_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lccsansan/cs/removeDownloadListener;

    .line 3
    invoke-virtual {p1}, Lccsansan/cs/removeDownloadListener;->unifiedDownload()J

    move-result-wide p1

    add-long/2addr v6, p1

    goto :goto_6

    .line 7
    :pswitch_3
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lccsansan/cs/removeDownloadListener;

    .line 3
    invoke-virtual {p1}, Lccsansan/cs/removeDownloadListener;->unifiedDownload()J

    move-result-wide p1

    mul-long v6, v6, p1

    .line 7
    :goto_6
    sget p1, Lccsansan/f/addDownloadListener$IncentiveDownloadUtils;->getDownloadingList:I

    add-int/lit8 p1, p1, 0x21

    sub-int/2addr p1, p3

    sub-int/2addr p1, p3

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lccsansan/f/addDownloadListener$IncentiveDownloadUtils;->removeDownloadListener:I

    rem-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_4

    .line 2
    const/16 p1, 0x23

    goto :goto_7

    :cond_4
    const/16 p1, 0x27

    :goto_7
    packed-switch p1, :pswitch_data_4

    .line 7
    :pswitch_4
    goto :goto_3

    :goto_8
    sget p1, Lccsansan/f/addDownloadListener$IncentiveDownloadUtils;->removeDownloadListener:I

    and-int/lit8 p2, p1, 0x33

    xor-int/lit8 p4, p2, -0x1

    or-int/lit8 p1, p1, 0x33

    and-int/2addr p1, p4

    shl-int/2addr p2, p3

    neg-int p2, p2

    neg-int p2, p2

    xor-int/lit8 p2, p2, -0x1

    sub-int/2addr p1, p2

    sub-int/2addr p1, p3

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lccsansan/f/addDownloadListener$IncentiveDownloadUtils;->getDownloadingList:I

    rem-int/lit8 p1, p1, 0x2

    return-void

    :pswitch_data_0
    .packed-switch 0x1c
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x22
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0xf
        :pswitch_2
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_3
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x27
        :pswitch_4
    .end packed-switch
.end method
