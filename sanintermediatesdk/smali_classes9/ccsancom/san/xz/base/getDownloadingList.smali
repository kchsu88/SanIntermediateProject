.class public final Lccsancom/san/xz/base/getDownloadingList;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static IncentiveDownloadUtils:I

.field private static unifiedDownload:I


# instance fields
.field private removeDownloadListener:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lccsancom/san/xz/base/getDownloadingList;->unifiedDownload:I

    const/4 v0, 0x1

    sput v0, Lccsancom/san/xz/base/getDownloadingList;->IncentiveDownloadUtils:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 128
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lccsancom/san/xz/base/getDownloadingList;->removeDownloadListener:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public addDownloadListener(Ljava/lang/String;J)J
    .locals 5

    .line 10
    sget v0, Lccsancom/san/xz/base/getDownloadingList;->unifiedDownload:I

    xor-int/lit8 v1, v0, 0x71

    and-int/lit8 v0, v0, 0x71

    const/4 v2, 0x1

    shl-int/2addr v0, v2

    xor-int/lit8 v0, v0, -0x1

    sub-int/2addr v1, v0

    sub-int/2addr v1, v2

    rem-int/lit16 v0, v1, 0x80

    sput v0, Lccsancom/san/xz/base/getDownloadingList;->IncentiveDownloadUtils:I

    rem-int/lit8 v1, v1, 0x2

    const/4 v0, 0x0

    if-nez v1, :cond_0

    .line 8
    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const/16 v3, 0x59

    const/4 v4, 0x0

    packed-switch v1, :pswitch_data_0

    iget-object v0, p0, Lccsancom/san/xz/base/getDownloadingList;->removeDownloadListener:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_2

    goto :goto_1

    :pswitch_0
    iget-object v1, p0, Lccsancom/san/xz/base/getDownloadingList;->removeDownloadListener:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    :try_start_0
    array-length v1, v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    :cond_1
    packed-switch v0, :pswitch_data_1

    goto :goto_3

    .line 10
    :catchall_0
    move-exception p1

    throw p1

    .line 8
    :goto_1
    const/16 v0, 0x31

    goto :goto_2

    :cond_2
    const/16 v0, 0x59

    :goto_2
    packed-switch v0, :pswitch_data_2

    :pswitch_1
    goto :goto_4

    .line 10
    :goto_3
    :pswitch_2
    nop

    .line 8
    sget p1, Lccsancom/san/xz/base/getDownloadingList;->IncentiveDownloadUtils:I

    and-int/lit8 v0, p1, 0x21

    xor-int/lit8 p1, p1, 0x21

    or-int/2addr p1, v0

    neg-int p1, p1

    neg-int p1, p1

    or-int v1, v0, p1

    shl-int/2addr v1, v2

    xor-int/2addr p1, v0

    sub-int/2addr v1, p1

    rem-int/lit16 p1, v1, 0x80

    sput p1, Lccsancom/san/xz/base/getDownloadingList;->unifiedDownload:I

    rem-int/lit8 v1, v1, 0x2

    .line 10
    return-wide p2

    :goto_4
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    sget p3, Lccsancom/san/xz/base/getDownloadingList;->unifiedDownload:I

    add-int/lit8 p3, p3, 0x2f

    rem-int/lit16 v0, p3, 0x80

    sput v0, Lccsancom/san/xz/base/getDownloadingList;->IncentiveDownloadUtils:I

    rem-int/lit8 p3, p3, 0x2

    if-nez p3, :cond_3

    .line 8
    const/16 v3, 0x28

    goto :goto_5

    :cond_3
    nop

    :goto_5
    packed-switch v3, :pswitch_data_3

    .line 10
    return-wide p1

    :pswitch_3
    :try_start_1
    array-length p3, v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-wide p1

    :catchall_1
    move-exception p1

    throw p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x59
        :pswitch_2
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x28
        :pswitch_3
    .end packed-switch
.end method

.method public addDownloadListener(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 4

    .line 1
    sget v0, Lccsancom/san/xz/base/getDownloadingList;->IncentiveDownloadUtils:I

    and-int/lit8 v1, v0, 0x4d

    xor-int/lit8 v0, v0, 0x4d

    or-int/2addr v0, v1

    neg-int v0, v0

    neg-int v0, v0

    or-int v2, v1, v0

    const/4 v3, 0x1

    shl-int/2addr v2, v3

    xor-int/2addr v0, v1

    sub-int/2addr v2, v0

    rem-int/lit16 v0, v2, 0x80

    sput v0, Lccsancom/san/xz/base/getDownloadingList;->unifiedDownload:I

    rem-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_0

    const/4 v3, 0x0

    :cond_0
    iget-object v0, p0, Lccsancom/san/xz/base/getDownloadingList;->removeDownloadListener:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    packed-switch v3, :pswitch_data_0

    const/4 p1, 0x0

    :try_start_0
    invoke-super {p1}, Ljava/lang/Object;->hashCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :pswitch_0
    return-void

    :catchall_0
    move-exception p1

    throw p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public getDownloadingList(Ljava/lang/String;I)I
    .locals 5

    .line 7
    sget v0, Lccsancom/san/xz/base/getDownloadingList;->unifiedDownload:I

    xor-int/lit8 v1, v0, 0x2d

    and-int/lit8 v2, v0, 0x2d

    or-int/2addr v1, v2

    const/4 v3, 0x1

    shl-int/2addr v1, v3

    xor-int/lit8 v2, v2, -0x1

    or-int/lit8 v0, v0, 0x2d

    and-int/2addr v0, v2

    neg-int v0, v0

    xor-int/lit8 v0, v0, -0x1

    sub-int/2addr v1, v0

    sub-int/2addr v1, v3

    rem-int/lit16 v0, v1, 0x80

    sput v0, Lccsancom/san/xz/base/getDownloadingList;->IncentiveDownloadUtils:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_0

    .line 5
    const/16 v0, 0x3a

    goto :goto_0

    :cond_0
    const/4 v0, 0x3

    :goto_0
    const/4 v1, 0x0

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lccsancom/san/xz/base/getDownloadingList;->removeDownloadListener:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_2

    goto :goto_2

    :pswitch_0
    iget-object v0, p0, Lccsancom/san/xz/base/getDownloadingList;->removeDownloadListener:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    :try_start_0
    array-length v0, v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    const/4 v0, 0x1

    :goto_1
    packed-switch v0, :pswitch_data_1

    goto :goto_4

    .line 7
    :catchall_0
    move-exception p1

    throw p1

    .line 5
    :goto_2
    const/16 v0, 0x12

    goto :goto_3

    :cond_2
    const/16 v0, 0xe

    :goto_3
    packed-switch v0, :pswitch_data_2

    :goto_4
    goto :goto_6

    .line 7
    :pswitch_1
    nop

    .line 5
    sget p1, Lccsancom/san/xz/base/getDownloadingList;->unifiedDownload:I

    or-int/lit8 v0, p1, 0x37

    shl-int/2addr v0, v3

    xor-int/lit8 p1, p1, 0x37

    neg-int p1, p1

    or-int v4, v0, p1

    shl-int/2addr v4, v3

    xor-int/2addr p1, v0

    sub-int/2addr v4, p1

    rem-int/lit16 p1, v4, 0x80

    sput p1, Lccsancom/san/xz/base/getDownloadingList;->IncentiveDownloadUtils:I

    rem-int/lit8 v4, v4, 0x2

    if-nez v4, :cond_3

    const/4 v3, 0x0

    :cond_3
    packed-switch v3, :pswitch_data_3

    goto :goto_5

    .line 7
    :pswitch_2
    return p2

    .line 5
    :goto_5
    :try_start_1
    invoke-super {v2}, Ljava/lang/Object;->hashCode()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return p2

    :catchall_1
    move-exception p1

    throw p1

    .line 7
    :goto_6
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    sget p2, Lccsancom/san/xz/base/getDownloadingList;->unifiedDownload:I

    and-int/lit8 v0, p2, 0x29

    xor-int/lit8 p2, p2, 0x29

    or-int/2addr p2, v0

    or-int v1, v0, p2

    shl-int/2addr v1, v3

    xor-int/2addr p2, v0

    sub-int/2addr v1, p2

    rem-int/lit16 p2, v1, 0x80

    sput p2, Lccsancom/san/xz/base/getDownloadingList;->IncentiveDownloadUtils:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_4

    .line 5
    const/16 p2, 0x23

    goto :goto_7

    :cond_4
    const/16 p2, 0xb

    :goto_7
    packed-switch p2, :pswitch_data_4

    .line 7
    goto :goto_8

    :pswitch_3
    return p1

    :goto_8
    :try_start_2
    invoke-super {v2}, Ljava/lang/Object;->hashCode()I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    return p1

    :catchall_2
    move-exception p1

    throw p1

    :pswitch_data_0
    .packed-switch 0x3a
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0xe
        :pswitch_1
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x1
        :pswitch_2
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0xb
        :pswitch_3
    .end packed-switch
.end method

.method public getDownloadingList(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    sget v0, Lccsancom/san/xz/base/getDownloadingList;->unifiedDownload:I

    and-int/lit8 v1, v0, 0x6f

    or-int/lit8 v0, v0, 0x6f

    xor-int v2, v1, v0

    and-int/2addr v0, v1

    const/4 v1, 0x1

    shl-int/2addr v0, v1

    add-int/2addr v2, v0

    rem-int/lit16 v0, v2, 0x80

    sput v0, Lccsancom/san/xz/base/getDownloadingList;->IncentiveDownloadUtils:I

    rem-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_0

    const/16 v0, 0x63

    goto :goto_0

    :cond_0
    const/16 v0, 0x22

    :goto_0
    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lccsancom/san/xz/base/getDownloadingList;->removeDownloadListener:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_2

    goto :goto_2

    :pswitch_0
    iget-object v0, p0, Lccsancom/san/xz/base/getDownloadingList;->removeDownloadListener:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    const/4 v0, 0x0

    :try_start_0
    array-length v0, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    const/4 v0, 0x1

    :goto_1
    packed-switch v0, :pswitch_data_1

    goto :goto_4

    :catchall_0
    move-exception p1

    throw p1

    :goto_2
    const/16 v0, 0x60

    goto :goto_3

    :cond_2
    const/16 v0, 0x12

    :goto_3
    packed-switch v0, :pswitch_data_2

    :pswitch_1
    goto :goto_6

    :goto_4
    :pswitch_2
    sget p2, Lccsancom/san/xz/base/getDownloadingList;->unifiedDownload:I

    and-int/lit8 v0, p2, 0x5f

    or-int/lit8 p2, p2, 0x5f

    add-int/2addr v0, p2

    rem-int/lit16 p2, v0, 0x80

    sput p2, Lccsancom/san/xz/base/getDownloadingList;->IncentiveDownloadUtils:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_3

    const/16 p2, 0x5b

    goto :goto_5

    :cond_3
    const/16 p2, 0x62

    :goto_5
    packed-switch p2, :pswitch_data_3

    return-object p1

    :pswitch_3
    const/16 p2, 0x52

    :try_start_1
    div-int/2addr p2, v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-object p1

    :catchall_1
    move-exception p1

    throw p1

    :goto_6
    sget p1, Lccsancom/san/xz/base/getDownloadingList;->IncentiveDownloadUtils:I

    and-int/lit8 v0, p1, 0x70

    or-int/lit8 p1, p1, 0x70

    add-int/2addr v0, p1

    xor-int/lit8 p1, v0, -0x1

    and-int/lit8 v0, v0, -0x1

    shl-int/2addr v0, v1

    add-int/2addr p1, v0

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lccsancom/san/xz/base/getDownloadingList;->unifiedDownload:I

    rem-int/lit8 p1, p1, 0x2

    return-object p2

    :pswitch_data_0
    .packed-switch 0x63
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x60
        :pswitch_2
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x5b
        :pswitch_3
    .end packed-switch
.end method

.method public getDownloadingList(Ljava/lang/String;Z)Z
    .locals 5

    .line 4
    sget v0, Lccsancom/san/xz/base/getDownloadingList;->unifiedDownload:I

    xor-int/lit8 v1, v0, 0x16

    and-int/lit8 v0, v0, 0x16

    const/4 v2, 0x1

    shl-int/2addr v0, v2

    add-int/2addr v1, v0

    or-int/lit8 v0, v1, -0x1

    shl-int/2addr v0, v2

    xor-int/lit8 v1, v1, -0x1

    sub-int/2addr v0, v1

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/san/xz/base/getDownloadingList;->IncentiveDownloadUtils:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 2
    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    const/4 v3, 0x0

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lccsancom/san/xz/base/getDownloadingList;->removeDownloadListener:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_2

    :pswitch_0
    iget-object v0, p0, Lccsancom/san/xz/base/getDownloadingList;->removeDownloadListener:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    const/4 v0, 0x1

    :goto_1
    packed-switch v0, :pswitch_data_1

    :pswitch_1
    goto :goto_4

    :goto_2
    :try_start_0
    array-length v0, v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-eqz p1, :cond_2

    const/4 v0, 0x5

    goto :goto_3

    :cond_2
    const/16 v0, 0x8

    :goto_3
    packed-switch v0, :pswitch_data_2

    goto :goto_5

    .line 4
    :goto_4
    sget p1, Lccsancom/san/xz/base/getDownloadingList;->IncentiveDownloadUtils:I

    and-int/lit8 v0, p1, 0x37

    xor-int/lit8 p1, p1, 0x37

    or-int/2addr p1, v0

    and-int v1, v0, p1

    or-int/2addr p1, v0

    add-int/2addr v1, p1

    rem-int/lit16 p1, v1, 0x80

    sput p1, Lccsancom/san/xz/base/getDownloadingList;->unifiedDownload:I

    rem-int/lit8 v1, v1, 0x2

    return p2

    :goto_5
    :pswitch_2
    sget p2, Lccsancom/san/xz/base/getDownloadingList;->unifiedDownload:I

    and-int/lit8 v0, p2, 0x49

    xor-int/lit8 v4, v0, -0x1

    or-int/lit8 p2, p2, 0x49

    and-int/2addr p2, v4

    shl-int/2addr v0, v2

    or-int v4, p2, v0

    shl-int/2addr v4, v2

    xor-int/2addr p2, v0

    sub-int/2addr v4, p2

    rem-int/lit16 p2, v4, 0x80

    sput p2, Lccsancom/san/xz/base/getDownloadingList;->IncentiveDownloadUtils:I

    rem-int/lit8 v4, v4, 0x2

    if-nez v4, :cond_3

    .line 2
    const/4 p2, 0x1

    goto :goto_6

    :cond_3
    const/4 p2, 0x0

    :goto_6
    packed-switch p2, :pswitch_data_3

    .line 4
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    goto :goto_7

    :pswitch_3
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    :try_start_1
    array-length p2, v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_7

    :catchall_0
    move-exception p1

    throw p1

    :goto_7
    sget p2, Lccsancom/san/xz/base/getDownloadingList;->unifiedDownload:I

    and-int/lit8 v0, p2, 0x33

    or-int/lit8 p2, p2, 0x33

    add-int/2addr v0, p2

    rem-int/lit16 p2, v0, 0x80

    sput p2, Lccsancom/san/xz/base/getDownloadingList;->IncentiveDownloadUtils:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_4

    .line 2
    goto :goto_8

    :cond_4
    const/4 v2, 0x0

    :goto_8
    packed-switch v2, :pswitch_data_4

    .line 4
    goto :goto_9

    :pswitch_4
    return p1

    :goto_9
    :try_start_2
    invoke-super {v3}, Ljava/lang/Object;->hashCode()I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return p1

    :catchall_1
    move-exception p1

    throw p1

    :catchall_2
    move-exception p1

    throw p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x8
        :pswitch_1
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x1
        :pswitch_3
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x0
        :pswitch_4
    .end packed-switch
.end method

.method public removeDownloadListener(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 13
    sget v0, Lccsancom/san/xz/base/getDownloadingList;->IncentiveDownloadUtils:I

    xor-int/lit8 v1, v0, 0x5f

    and-int/lit8 v0, v0, 0x5f

    shl-int/lit8 v0, v0, 0x1

    add-int/2addr v1, v0

    rem-int/lit16 v0, v1, 0x80

    sput v0, Lccsancom/san/xz/base/getDownloadingList;->unifiedDownload:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_0

    .line 11
    :cond_0
    iget-object v0, p0, Lccsancom/san/xz/base/getDownloadingList;->removeDownloadListener:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 13
    const/16 v0, 0x50

    goto :goto_0

    :cond_1
    const/16 v0, 0x2c

    :goto_0
    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    sget p2, Lccsancom/san/xz/base/getDownloadingList;->unifiedDownload:I

    and-int/lit8 v0, p2, 0x17

    or-int/lit8 p2, p2, 0x17

    and-int v2, v0, p2

    or-int/2addr p2, v0

    add-int/2addr v2, p2

    rem-int/lit16 p2, v2, 0x80

    sput p2, Lccsancom/san/xz/base/getDownloadingList;->IncentiveDownloadUtils:I

    rem-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_3

    goto :goto_2

    :pswitch_0
    sget p1, Lccsancom/san/xz/base/getDownloadingList;->unifiedDownload:I

    and-int/lit8 v0, p1, 0xb

    xor-int/lit8 p1, p1, 0xb

    or-int/2addr p1, v0

    neg-int p1, p1

    neg-int p1, p1

    or-int v2, v0, p1

    shl-int/lit8 v2, v2, 0x1

    xor-int/2addr p1, v0

    sub-int/2addr v2, p1

    rem-int/lit16 p1, v2, 0x80

    sput p1, Lccsancom/san/xz/base/getDownloadingList;->IncentiveDownloadUtils:I

    rem-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_2

    const/16 p1, 0x32

    goto :goto_1

    :cond_2
    const/16 p1, 0x5e

    :goto_1
    packed-switch p1, :pswitch_data_1

    return-object p2

    :pswitch_1
    :try_start_0
    array-length p1, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p2

    :catchall_0
    move-exception p1

    throw p1

    :goto_2
    const/16 p2, 0x36

    goto :goto_3

    :cond_3
    const/16 p2, 0x2d

    :goto_3
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    packed-switch p2, :pswitch_data_2

    goto :goto_4

    :pswitch_2
    :try_start_1
    invoke-super {v1}, Ljava/lang/Object;->hashCode()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_4

    :catchall_1
    move-exception p1

    throw p1

    :goto_4
    sget p2, Lccsancom/san/xz/base/getDownloadingList;->IncentiveDownloadUtils:I

    or-int/lit8 v0, p2, 0x11

    shl-int/lit8 v0, v0, 0x1

    xor-int/lit8 p2, p2, 0x11

    sub-int/2addr v0, p2

    rem-int/lit16 p2, v0, 0x80

    sput p2, Lccsancom/san/xz/base/getDownloadingList;->unifiedDownload:I

    rem-int/lit8 v0, v0, 0x2

    return-object p1

    :pswitch_data_0
    .packed-switch 0x2c
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x32
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x36
        :pswitch_2
    .end packed-switch
.end method
