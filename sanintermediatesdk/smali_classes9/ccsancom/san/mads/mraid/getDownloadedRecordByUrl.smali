.class public Lccsancom/san/mads/mraid/getDownloadedRecordByUrl;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsancom/san/mads/mraid/getDownloadedRecordByUrl$unifiedDownload;,
        Lccsancom/san/mads/mraid/getDownloadedRecordByUrl$removeDownloadListener;,
        Lccsancom/san/mads/mraid/getDownloadedRecordByUrl$IncentiveDownloadUtils;
    }
.end annotation


# static fields
.field public static final IncentiveDownloadUtils:I

.field private static addDownloadListener:J

.field private static deleteDownItem:I

.field private static getDownloadedRecordByUrl:C

.field private static final getDownloadingList:[Ljava/lang/String;

.field private static getDownloadingRecordByUrl:I

.field private static removeDownloadListener:I

.field public static final unifiedDownload:[B


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x0

    sput v0, Lccsancom/san/mads/mraid/getDownloadedRecordByUrl;->getDownloadingRecordByUrl:I

    const/4 v1, 0x1

    sput v1, Lccsancom/san/mads/mraid/getDownloadedRecordByUrl;->deleteDownItem:I

    invoke-static {}, Lccsancom/san/mads/mraid/getDownloadedRecordByUrl;->getDownloadingList()V

    invoke-static {}, Lccsancom/san/mads/mraid/getDownloadedRecordByUrl;->removeDownloadListener()V

    .line 1
    const/4 v2, 0x2

    new-array v3, v2, [Ljava/lang/String;

    const-string v4, "yyyy-MM-dd\'T\'HH:mm:ssZZZZZ"

    aput-object v4, v3, v0

    const-string v4, "yyyy-MM-dd\'T\'HH:mmZZZZZ"

    aput-object v4, v3, v1

    sput-object v3, Lccsancom/san/mads/mraid/getDownloadedRecordByUrl;->getDownloadingList:[Ljava/lang/String;

    sget v1, Lccsancom/san/mads/mraid/getDownloadedRecordByUrl;->getDownloadingRecordByUrl:I

    add-int/lit8 v1, v1, 0x3b

    rem-int/lit16 v3, v1, 0x80

    sput v3, Lccsancom/san/mads/mraid/getDownloadedRecordByUrl;->deleteDownItem:I

    rem-int/2addr v1, v2

    if-nez v1, :cond_0

    const/16 v1, 0x54

    goto :goto_0

    :cond_0
    const/16 v1, 0x20

    :goto_0
    packed-switch v1, :pswitch_data_0

    return-void

    :pswitch_0
    const/16 v1, 0x45

    :try_start_0
    div-int/2addr v1, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x54
        :pswitch_0
    .end packed-switch
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private IncentiveDownloadUtils(I)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 75
    nop

    .line 0
    packed-switch p1, :pswitch_data_0

    .line 75
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid day of week "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    sget p1, Lccsancom/san/mads/mraid/getDownloadedRecordByUrl;->deleteDownItem:I

    add-int/lit8 p1, p1, 0x21

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lccsancom/san/mads/mraid/getDownloadedRecordByUrl;->getDownloadingRecordByUrl:I

    rem-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_0

    const/16 p1, 0x35

    goto :goto_0

    :cond_0
    const/16 p1, 0x9

    :goto_0
    packed-switch p1, :pswitch_data_1

    :pswitch_1
    const-string p1, "SA"

    goto :goto_2

    :pswitch_2
    const-string p1, "FR"

    goto :goto_2

    :pswitch_3
    const-string p1, "TH"

    goto :goto_2

    :pswitch_4
    const-string p1, "WE"

    goto :goto_2

    :pswitch_5
    const-string p1, "TU"

    goto :goto_2

    :pswitch_6
    const-string p1, "MO"

    goto :goto_2

    :pswitch_7
    sget p1, Lccsancom/san/mads/mraid/getDownloadedRecordByUrl;->deleteDownItem:I

    add-int/lit8 p1, p1, 0x15

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lccsancom/san/mads/mraid/getDownloadedRecordByUrl;->getDownloadingRecordByUrl:I

    rem-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    packed-switch p1, :pswitch_data_2

    :pswitch_8
    const-string p1, "SU"

    :goto_2
    return-object p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x35
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_8
    .end packed-switch
.end method

.method private IncentiveDownloadUtils(Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 74
    nop

    .line 58
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 59
    const/16 v1, 0x3f

    new-array v2, v1, [Z

    .line 60
    const-string v3, ","

    invoke-virtual {p1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 62
    array-length v4, p1

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_0

    .line 74
    const/16 v6, 0x61

    goto :goto_1

    :cond_0
    const/16 v6, 0x30

    :goto_1
    const/4 v7, 0x1

    packed-switch v6, :pswitch_data_0

    sget v6, Lccsancom/san/mads/mraid/getDownloadedRecordByUrl;->deleteDownItem:I

    add-int/lit8 v6, v6, 0x49

    rem-int/lit16 v8, v6, 0x80

    sput v8, Lccsancom/san/mads/mraid/getDownloadedRecordByUrl;->getDownloadingRecordByUrl:I

    rem-int/lit8 v6, v6, 0x2

    if-eqz v6, :cond_3

    goto :goto_4

    .line 69
    :pswitch_0
    array-length p1, p1

    if-eqz p1, :cond_1

    .line 74
    goto :goto_2

    :cond_1
    const/16 v1, 0x63

    :goto_2
    packed-switch v1, :pswitch_data_1

    sget p1, Lccsancom/san/mads/mraid/getDownloadedRecordByUrl;->getDownloadingRecordByUrl:I

    add-int/lit8 p1, p1, 0x3b

    rem-int/lit16 v1, p1, 0x80

    sput v1, Lccsancom/san/mads/mraid/getDownloadedRecordByUrl;->deleteDownItem:I

    rem-int/lit8 p1, p1, 0x2

    if-nez p1, :cond_2

    goto :goto_3

    :pswitch_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "must have at least 1 day of the month if specifying repeating weekly"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 72
    :cond_2
    :goto_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result p1

    sub-int/2addr p1, v7

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 73
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 62
    :cond_3
    :goto_4
    aget-object v6, p1, v5

    .line 63
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    add-int/lit8 v8, v6, 0x1f

    .line 64
    aget-boolean v9, v2, v8

    if-nez v9, :cond_4

    .line 65
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0, v6}, Lccsancom/san/mads/mraid/getDownloadedRecordByUrl;->getDownloadingList(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    aput-boolean v7, v2, v8

    :cond_4
    add-int/lit8 v5, v5, 0x1

    .line 74
    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x30
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x63
        :pswitch_1
    .end packed-switch
.end method

.method private IncentiveDownloadUtils(Ljava/util/Map;)Ljava/lang/String;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 101
    nop

    .line 55
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 56
    const-string v1, "frequency"

    invoke-interface {p1, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 57
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 59
    const-string v2, "interval"

    invoke-interface {p1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, -0x1

    if-eqz v3, :cond_0

    .line 60
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    goto :goto_0

    .line 59
    :cond_0
    const/4 v2, -0x1

    .line 60
    :goto_0
    nop

    .line 62
    const-string v3, "daily"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const-string v5, "INTERVAL="

    const/4 v6, 0x0

    const/4 v7, 0x1

    const-string v8, ";"

    if-eqz v3, :cond_3

    .line 68
    sget p1, Lccsancom/san/mads/mraid/getDownloadedRecordByUrl;->getDownloadingRecordByUrl:I

    add-int/2addr p1, v7

    rem-int/lit16 v1, p1, 0x80

    sput v1, Lccsancom/san/mads/mraid/getDownloadedRecordByUrl;->deleteDownItem:I

    rem-int/lit8 p1, p1, 0x2

    const-string v1, "FREQ=DAILY;"

    if-nez p1, :cond_1

    .line 63
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :try_start_0
    invoke-super {v6}, Ljava/lang/Object;->hashCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eq v2, v4, :cond_e

    goto :goto_1

    .line 68
    :catchall_0
    move-exception p1

    throw p1

    .line 62
    :cond_1
    nop

    .line 63
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eq v2, v4, :cond_e

    .line 65
    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    sget p1, Lccsancom/san/mads/mraid/getDownloadedRecordByUrl;->deleteDownItem:I

    add-int/lit8 p1, p1, 0x5f

    rem-int/lit16 v1, p1, 0x80

    sput v1, Lccsancom/san/mads/mraid/getDownloadedRecordByUrl;->getDownloadingRecordByUrl:I

    rem-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_2

    :cond_2
    :goto_2
    goto/16 :goto_e

    .line 65
    :cond_3
    nop

    .line 67
    const-string v3, "weekly"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v9, 0x0

    if-eqz v3, :cond_4

    .line 63
    const/4 v3, 0x0

    goto :goto_3

    :cond_4
    const/4 v3, 0x1

    :goto_3
    packed-switch v3, :pswitch_data_0

    .line 78
    nop

    .line 82
    const-string v3, "monthly"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    goto/16 :goto_9

    .line 83
    :pswitch_0
    sget v1, Lccsancom/san/mads/mraid/getDownloadedRecordByUrl;->getDownloadingRecordByUrl:I

    add-int/lit8 v1, v1, 0x17

    rem-int/lit16 v3, v1, 0x80

    sput v3, Lccsancom/san/mads/mraid/getDownloadedRecordByUrl;->deleteDownItem:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_5

    .line 63
    const/4 v7, 0x0

    goto :goto_4

    :cond_5
    nop

    :goto_4
    const-string v1, "FREQ=WEEKLY;"

    packed-switch v7, :pswitch_data_1

    .line 83
    nop

    .line 68
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_6

    .line 67
    :pswitch_1
    nop

    .line 68
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eq v2, v4, :cond_6

    :goto_5
    goto :goto_7

    :goto_6
    :try_start_1
    array-length v1, v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eq v2, v4, :cond_6

    goto :goto_5

    .line 70
    :goto_7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_6
    nop

    .line 72
    const-string v1, "daysInWeek"

    invoke-interface {p1, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 63
    const/16 v2, 0x2e

    goto :goto_8

    :cond_7
    const/16 v2, 0x3d

    :goto_8
    packed-switch v2, :pswitch_data_2

    goto/16 :goto_e

    .line 72
    :pswitch_2
    nop

    .line 73
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-direct {p0, p1}, Lccsancom/san/mads/mraid/getDownloadedRecordByUrl;->unifiedDownload(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_8

    .line 77
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BYDAY="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    .line 78
    :cond_8
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "invalid "

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 83
    :catchall_1
    move-exception p1

    throw p1

    .line 63
    :goto_9
    const/16 v1, 0xc

    goto :goto_a

    :cond_9
    const/16 v1, 0x10

    :goto_a
    packed-switch v1, :pswitch_data_3

    .line 101
    sget v1, Lccsancom/san/mads/mraid/getDownloadedRecordByUrl;->deleteDownItem:I

    add-int/lit8 v1, v1, 0x69

    rem-int/lit16 v3, v1, 0x80

    sput v3, Lccsancom/san/mads/mraid/getDownloadedRecordByUrl;->getDownloadingRecordByUrl:I

    rem-int/lit8 v1, v1, 0x2

    const-string v3, "FREQ=MONTHLY;"

    if-eqz v1, :cond_a

    goto :goto_b

    .line 98
    :pswitch_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "frequency is only supported for daily, weekly, and monthly."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 83
    :goto_b
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :try_start_2
    invoke-super {v6}, Ljava/lang/Object;->hashCode()I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-eq v2, v4, :cond_c

    goto :goto_c

    .line 101
    :catchall_2
    move-exception p1

    throw p1

    .line 82
    :cond_a
    nop

    .line 83
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eq v2, v4, :cond_c

    .line 85
    :goto_c
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    sget v1, Lccsancom/san/mads/mraid/getDownloadedRecordByUrl;->deleteDownItem:I

    add-int/lit8 v1, v1, 0x9

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsancom/san/mads/mraid/getDownloadedRecordByUrl;->getDownloadingRecordByUrl:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_b

    .line 63
    const/4 v7, 0x0

    goto :goto_d

    :cond_b
    nop

    :goto_d
    packed-switch v7, :pswitch_data_4

    .line 83
    nop

    .line 85
    :cond_c
    :pswitch_4
    nop

    .line 87
    const-string v1, "daysInMonth"

    invoke-interface {p1, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 88
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-direct {p0, p1}, Lccsancom/san/mads/mraid/getDownloadedRecordByUrl;->IncentiveDownloadUtils(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_d

    .line 92
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BYMONTHDAY="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_e

    .line 93
    :cond_d
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    .line 101
    :cond_e
    :goto_e
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x2e
        :pswitch_2
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x10
        :pswitch_3
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x1
        :pswitch_4
    .end packed-switch
.end method

.method private static addDownloadListener(IIS)Ljava/lang/String;
    .locals 6

    sget v0, Lccsancom/san/mads/mraid/getDownloadedRecordByUrl;->getDownloadingRecordByUrl:I

    add-int/lit8 v0, v0, 0x7

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/san/mads/mraid/getDownloadedRecordByUrl;->deleteDownItem:I

    rem-int/lit8 v0, v0, 0x2

    mul-int/lit8 p1, p1, 0x6

    add-int/lit8 p1, p1, 0x61

    mul-int/lit8 p0, p0, 0x16

    add-int/lit8 p0, p0, 0x4

    mul-int/lit8 p2, p2, 0x6

    add-int/lit8 p2, p2, 0x11

    sget-object v0, Lccsancom/san/mads/mraid/getDownloadedRecordByUrl;->unifiedDownload:[B

    new-array v2, p2, [B

    add-int/lit8 p2, p2, -0x1

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v0, :cond_0

    const/4 v5, 0x1

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    :goto_0
    packed-switch v5, :pswitch_data_0

    const/4 v1, 0x0

    goto :goto_3

    :pswitch_0
    add-int/lit8 v1, v1, 0x7

    rem-int/lit16 v5, v1, 0x80

    sput v5, Lccsancom/san/mads/mraid/getDownloadedRecordByUrl;->getDownloadingRecordByUrl:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    const/16 v1, 0x33

    goto :goto_1

    :cond_1
    const/16 v1, 0x1a

    :goto_1
    packed-switch v1, :pswitch_data_1

    goto :goto_2

    :pswitch_1
    const/4 v1, 0x0

    :try_start_0
    invoke-super {v1}, Ljava/lang/Object;->hashCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p0

    throw p0

    :goto_2
    const/4 v5, 0x0

    move v1, p0

    goto :goto_4

    :goto_3
    int-to-byte v5, p1

    aput-byte v5, v2, v1

    add-int/lit8 v5, v1, 0x1

    if-ne v1, p2, :cond_2

    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v2, v4}, Ljava/lang/String;-><init>([BI)V

    return-object p0

    :cond_2
    aget-byte v1, v0, p0

    :goto_4
    add-int/2addr p0, v3

    add-int/2addr p1, v1

    add-int/lit8 p1, p1, -0x8

    move v1, v5

    goto :goto_3

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x33
        :pswitch_1
    .end packed-switch
.end method

.method public static addDownloadListener(Lccsanandroid/content/Context;)Z
    .locals 4

    .line 2
    nop

    .line 1
    invoke-static {}, Lccsanandroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mounted"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 2
    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    packed-switch v0, :pswitch_data_0

    :cond_1
    :goto_1
    goto :goto_4

    :pswitch_0
    sget v0, Lccsancom/san/mads/mraid/getDownloadedRecordByUrl;->getDownloadingRecordByUrl:I

    add-int/lit8 v0, v0, 0x7

    rem-int/lit16 v3, v0, 0x80

    sput v3, Lccsancom/san/mads/mraid/getDownloadedRecordByUrl;->deleteDownItem:I

    rem-int/lit8 v0, v0, 0x2

    invoke-static {p0}, Lccsansan/bw/trackReportClick;->addDownloadListener(Lccsanandroid/content/Context;)Z

    move-result p0

    if-nez v0, :cond_3

    const/4 v0, 0x0

    :try_start_0
    invoke-super {v0}, Ljava/lang/Object;->hashCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_2

    const/16 p0, 0x2f

    goto :goto_2

    :cond_2
    const/4 p0, 0x1

    :goto_2
    packed-switch p0, :pswitch_data_1

    goto :goto_1

    :catchall_0
    move-exception p0

    throw p0

    :cond_3
    if-eqz p0, :cond_1

    :pswitch_1
    sget p0, Lccsancom/san/mads/mraid/getDownloadedRecordByUrl;->deleteDownItem:I

    add-int/lit8 p0, p0, 0x2b

    rem-int/lit16 v0, p0, 0x80

    sput v0, Lccsancom/san/mads/mraid/getDownloadedRecordByUrl;->getDownloadingRecordByUrl:I

    rem-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_4

    const/16 p0, 0x4a

    goto :goto_3

    :cond_4
    const/16 p0, 0x53

    :goto_3
    packed-switch p0, :pswitch_data_2

    :pswitch_2
    const/4 v1, 0x1

    :goto_4
    return v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x2f
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x4a
        :pswitch_2
    .end packed-switch
.end method

.method private getDownloadingList(I)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 104
    nop

    .line 0
    if-eqz p1, :cond_0

    .line 104
    const/16 v0, 0x3f

    goto :goto_0

    :cond_0
    const/16 v0, 0x59

    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 0
    const/16 v0, -0x1f

    if-lt p1, v0, :cond_1

    .line 104
    const/16 v0, 0x51

    goto :goto_1

    :cond_1
    const/16 v0, 0x13

    :goto_1
    packed-switch v0, :pswitch_data_1

    goto :goto_3

    :pswitch_0
    sget v0, Lccsancom/san/mads/mraid/getDownloadedRecordByUrl;->getDownloadingRecordByUrl:I

    const/16 v1, 0x9

    add-int/2addr v0, v1

    rem-int/lit16 v2, v0, 0x80

    sput v2, Lccsancom/san/mads/mraid/getDownloadedRecordByUrl;->deleteDownItem:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_2

    if-gt p1, v1, :cond_3

    goto :goto_2

    .line 0
    :cond_2
    const/16 v0, 0x1f

    if-gt p1, v0, :cond_3

    .line 102
    :goto_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 104
    sget v0, Lccsancom/san/mads/mraid/getDownloadedRecordByUrl;->getDownloadingRecordByUrl:I

    add-int/lit8 v0, v0, 0x43

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/san/mads/mraid/getDownloadedRecordByUrl;->deleteDownItem:I

    rem-int/lit8 v0, v0, 0x2

    return-object p1

    :cond_3
    :goto_3
    :pswitch_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid day of month "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x59
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x51
        :pswitch_0
    .end packed-switch
.end method

.method private static getDownloadingList(Ljava/lang/String;Ljava/lang/String;CILjava/lang/String;)Ljava/lang/String;
    .locals 7

    if-eqz p4, :cond_0

    invoke-virtual {p4}, Ljava/lang/String;->toCharArray()[C

    move-result-object p4

    :cond_0
    check-cast p4, [C

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    :cond_1
    check-cast p1, [C

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    :cond_2
    check-cast p0, [C

    .line 1123
    sget-object v0, Lccsansan/d/getDownloadingCount;->addDownloadListener:Ljava/lang/Object;

    monitor-enter v0

    .line 1125
    :try_start_0
    invoke-virtual {p4}, [C->clone()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, [C

    .line 1126
    invoke-virtual {p1}, [C->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [C

    .line 1127
    const/4 v1, 0x0

    aget-char v2, p4, v1

    xor-int/2addr p2, v2

    int-to-char p2, p2

    aput-char p2, p4, v1

    .line 1128
    const/4 p2, 0x2

    aget-char v2, p1, p2

    int-to-char p3, p3

    add-int/2addr v2, p3

    int-to-char p3, v2

    aput-char p3, p1, p2

    .line 1130
    array-length p3, p0

    .line 1131
    new-array v2, p3, [C

    .line 1132
    sput v1, Lccsansan/d/getDownloadingCount;->IncentiveDownloadUtils:I

    :goto_0
    sget v1, Lccsansan/d/getDownloadingCount;->IncentiveDownloadUtils:I

    if-ge v1, p3, :cond_3

    .line 1134
    sget v1, Lccsansan/d/getDownloadingCount;->IncentiveDownloadUtils:I

    add-int/2addr v1, p2

    rem-int/lit8 v1, v1, 0x4

    .line 1135
    sget v3, Lccsansan/d/getDownloadingCount;->IncentiveDownloadUtils:I

    add-int/lit8 v3, v3, 0x3

    rem-int/lit8 v3, v3, 0x4

    .line 1138
    sget v4, Lccsansan/d/getDownloadingCount;->IncentiveDownloadUtils:I

    rem-int/lit8 v4, v4, 0x4

    aget-char v4, p4, v4

    mul-int/lit16 v4, v4, 0x7fce

    aget-char v5, p1, v1

    add-int/2addr v4, v5

    const v5, 0xffff

    rem-int/2addr v4, v5

    int-to-char v4, v4

    sput-char v4, Lccsansan/d/getDownloadingCount;->unifiedDownload:C

    .line 1141
    aget-char v4, p4, v3

    mul-int/lit16 v4, v4, 0x7fce

    aget-char v1, p1, v1

    add-int/2addr v4, v1

    div-int/2addr v4, v5

    int-to-char v1, v4

    aput-char v1, p1, v3

    .line 1144
    sget-char v1, Lccsansan/d/getDownloadingCount;->unifiedDownload:C

    aput-char v1, p4, v3

    .line 1147
    sget v1, Lccsansan/d/getDownloadingCount;->IncentiveDownloadUtils:I

    sget v4, Lccsansan/d/getDownloadingCount;->IncentiveDownloadUtils:I

    aget-char v4, p0, v4

    aget-char v3, p4, v3

    xor-int/2addr v3, v4

    int-to-long v3, v3

    sget-wide v5, Lccsancom/san/mads/mraid/getDownloadedRecordByUrl;->addDownloadListener:J

    xor-long/2addr v3, v5

    sget v5, Lccsancom/san/mads/mraid/getDownloadedRecordByUrl;->removeDownloadListener:I

    int-to-long v5, v5

    xor-long/2addr v3, v5

    sget-char v5, Lccsancom/san/mads/mraid/getDownloadedRecordByUrl;->getDownloadedRecordByUrl:C

    int-to-long v5, v5

    xor-long/2addr v3, v5

    long-to-int v4, v3

    int-to-char v3, v4

    aput-char v3, v2, v1

    .line 1132
    sget v1, Lccsansan/d/getDownloadingCount;->IncentiveDownloadUtils:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lccsansan/d/getDownloadingCount;->IncentiveDownloadUtils:I

    goto :goto_0

    .line 1154
    :cond_3
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v2}, Ljava/lang/String;-><init>([C)V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    .line 1155
    :catchall_0
    move-exception p0

    monitor-exit v0

    goto :goto_2

    :goto_1
    throw p0

    :goto_2
    goto :goto_1
.end method

.method private getDownloadingList(Ljava/lang/String;)Ljava/util/Date;
    .locals 8

    .line 54
    nop

    .line 0
    const/4 v0, 0x0

    .line 52
    sget-object v1, Lccsancom/san/mads/mraid/getDownloadedRecordByUrl;->getDownloadingList:[Ljava/lang/String;

    array-length v2, v1

    .line 54
    sget v3, Lccsancom/san/mads/mraid/getDownloadedRecordByUrl;->getDownloadingRecordByUrl:I

    add-int/lit8 v3, v3, 0x1b

    rem-int/lit16 v4, v3, 0x80

    sput v4, Lccsancom/san/mads/mraid/getDownloadedRecordByUrl;->deleteDownItem:I

    rem-int/lit8 v3, v3, 0x2

    if-nez v3, :cond_0

    :cond_0
    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 52
    :goto_0
    if-ge v4, v2, :cond_3

    aget-object v5, v1, v4

    .line 54
    :try_start_0
    new-instance v6, Ljava/text/SimpleDateFormat;

    sget-object v7, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v6, v5, v7}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    invoke-virtual {v6, p1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_2

    sget p1, Lccsancom/san/mads/mraid/getDownloadedRecordByUrl;->getDownloadingRecordByUrl:I

    add-int/lit8 p1, p1, 0xd

    rem-int/lit16 v1, p1, 0x80

    sput v1, Lccsancom/san/mads/mraid/getDownloadedRecordByUrl;->deleteDownItem:I

    rem-int/lit8 p1, p1, 0x2

    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v3, 0x1

    :goto_1
    packed-switch v3, :pswitch_data_0

    :pswitch_0
    goto :goto_2

    :catch_0
    move-exception v5

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    :goto_2
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method static getDownloadingList()V
    .locals 2

    const-wide/16 v0, 0x0

    sput-wide v0, Lccsancom/san/mads/mraid/getDownloadedRecordByUrl;->addDownloadListener:J

    const v0, 0x80ca

    sput-char v0, Lccsancom/san/mads/mraid/getDownloadedRecordByUrl;->getDownloadedRecordByUrl:C

    const/4 v0, 0x0

    sput v0, Lccsancom/san/mads/mraid/getDownloadedRecordByUrl;->removeDownloadListener:I

    return-void
.end method

.method private getDownloadingList(Lccsanandroid/content/Context;Ljava/lang/String;Lccsancom/san/mads/mraid/getDownloadedRecordByUrl$IncentiveDownloadUtils;)V
    .locals 14

    move-object v0, p1

    .line 88
    nop

    .line 76
    new-instance v1, Lccsanandroid/app/AlertDialog$Builder;

    invoke-direct {v1, p1}, Lccsanandroid/app/AlertDialog$Builder;-><init>(Lccsanandroid/content/Context;)V

    .line 78
    const-string v2, "Save Image"

    invoke-virtual {v1, v2}, Lccsanandroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lccsanandroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-static {}, Lccsanandroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    const-string v8, "\u6cb3\u530c\u7156\ua970\u5532\uae77\ud38d\uac2e\u87d4\ud614\ufc30\u43af\u516e\uecfd\uf534\uae68\uefc9\u1edf\ua730\u2fc3\u80ad\u0c87\ue575\u93bf\u3ac2\ud1b5\u988e\u2632\u4d37\ub2ef\uf145\u4ce2\u9ab6\udf39"

    const-string v9, "\u0000\u0000\u0000\u0000"

    const-string v10, "\uba94\uafdf\u860b\uab18"

    const-string v11, "Cancel"

    const-string v12, "Okay"

    cmp-long v13, v2, v4

    add-int/lit8 v13, v13, -0x1

    int-to-char v2, v13

    const/high16 v3, -0x1000000

    invoke-static {v7, v7, v7}, Lccsanandroid/graphics/Color;->rgb(III)I

    move-result v4

    sub-int/2addr v3, v4

    invoke-static {v8, v9, v2, v3, v10}, Lccsancom/san/mads/mraid/getDownloadedRecordByUrl;->getDownloadingList(Ljava/lang/String;Ljava/lang/String;CILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    .line 79
    invoke-virtual {v1, v2}, Lccsanandroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lccsanandroid/app/AlertDialog$Builder;

    move-result-object v1

    const/4 v2, 0x0

    .line 80
    invoke-virtual {v1, v11, v2}, Lccsanandroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Lccsanandroid/content/DialogInterface$OnClickListener;)Lccsanandroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lccsancom/san/mads/mraid/getDownloadedRecordByUrl$addDownloadListener;

    move-object v3, p0

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    invoke-direct {v2, p0, p1, v4, v5}, Lccsancom/san/mads/mraid/getDownloadedRecordByUrl$addDownloadListener;-><init>(Lccsancom/san/mads/mraid/getDownloadedRecordByUrl;Lccsanandroid/content/Context;Ljava/lang/String;Lccsancom/san/mads/mraid/getDownloadedRecordByUrl$IncentiveDownloadUtils;)V

    .line 81
    invoke-virtual {v1, v12, v2}, Lccsanandroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Lccsanandroid/content/DialogInterface$OnClickListener;)Lccsanandroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 87
    invoke-virtual {v0, v6}, Lccsanandroid/app/AlertDialog$Builder;->setCancelable(Z)Lccsanandroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 88
    invoke-virtual {v0}, Lccsanandroid/app/AlertDialog$Builder;->show()Lccsanandroid/app/AlertDialog;

    sget v0, Lccsancom/san/mads/mraid/getDownloadedRecordByUrl;->getDownloadingRecordByUrl:I

    add-int/lit8 v0, v0, 0x67

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/san/mads/mraid/getDownloadedRecordByUrl;->deleteDownItem:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v6, 0x0

    :goto_0
    packed-switch v6, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    return-void

    :goto_1
    const/16 v0, 0x50

    :try_start_0
    div-int/2addr v0, v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    move-object v1, v0

    throw v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method private removeDownloadListener(Ljava/util/Map;)Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 57
    nop

    .line 5
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 6
    const-string v1, "description"

    invoke-interface {p1, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    const-string v2, "start"

    invoke-interface {p1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 13
    sget v3, Lccsancom/san/mads/mraid/getDownloadedRecordByUrl;->getDownloadingRecordByUrl:I

    add-int/lit8 v3, v3, 0x49

    rem-int/lit16 v4, v3, 0x80

    sput v4, Lccsancom/san/mads/mraid/getDownloadedRecordByUrl;->deleteDownItem:I

    rem-int/lit8 v3, v3, 0x2

    if-nez v3, :cond_0

    .line 6
    :cond_0
    nop

    .line 10
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    const-string v4, "title"

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    invoke-interface {p1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 13
    sget v3, Lccsancom/san/mads/mraid/getDownloadedRecordByUrl;->deleteDownItem:I

    add-int/lit8 v3, v3, 0x69

    rem-int/lit16 v4, v3, 0x80

    sput v4, Lccsancom/san/mads/mraid/getDownloadedRecordByUrl;->getDownloadingRecordByUrl:I

    rem-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_1

    .line 12
    :cond_1
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_c

    .line 57
    sget v3, Lccsancom/san/mads/mraid/getDownloadedRecordByUrl;->deleteDownItem:I

    add-int/lit8 v3, v3, 0x6f

    rem-int/lit16 v4, v3, 0x80

    sput v4, Lccsancom/san/mads/mraid/getDownloadedRecordByUrl;->getDownloadingRecordByUrl:I

    rem-int/lit8 v3, v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v3, :cond_2

    .line 13
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {p0, v2}, Lccsancom/san/mads/mraid/getDownloadedRecordByUrl;->getDownloadingList(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v2

    const/4 v3, 0x0

    :try_start_0
    array-length v3, v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_4

    goto :goto_1

    .line 57
    :catchall_0
    move-exception p1

    throw p1

    .line 12
    :cond_2
    nop

    .line 13
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {p0, v2}, Lccsancom/san/mads/mraid/getDownloadedRecordByUrl;->getDownloadingList(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v2

    if-eqz v2, :cond_3

    const/4 v3, 0x1

    goto :goto_0

    :cond_3
    const/4 v3, 0x0

    :goto_0
    packed-switch v3, :pswitch_data_0

    :cond_4
    goto/16 :goto_5

    .line 15
    :goto_1
    :pswitch_0
    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v3, "beginTime"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    const-string v2, "end"

    invoke-interface {p1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 13
    const/16 v3, 0x22

    goto :goto_2

    :cond_5
    const/16 v3, 0x4f

    :goto_2
    packed-switch v3, :pswitch_data_1

    .line 23
    nop

    .line 24
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {p0, v2}, Lccsancom/san/mads/mraid/getDownloadedRecordByUrl;->getDownloadingList(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 13
    const/16 v3, 0x20

    goto :goto_3

    :cond_6
    const/16 v3, 0x50

    :goto_3
    packed-switch v3, :pswitch_data_2

    .line 28
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Invalid calendar event: end time is malformed. Date format expecting (yyyy-MM-DDTHH:MM:SS-xx:xx) or (yyyy-MM-DDTHH:MM-xx:xx) i.e. 2013-08-14T09:00:01-08:00"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 26
    :pswitch_1
    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v3, "endTime"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    :cond_7
    :pswitch_2
    nop

    .line 32
    const-string v2, "location"

    invoke-interface {p1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 13
    const/4 v4, 0x0

    goto :goto_4

    :cond_8
    nop

    :goto_4
    packed-switch v4, :pswitch_data_3

    .line 32
    nop

    .line 33
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    const-string v3, "eventLocation"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    nop

    .line 33
    :pswitch_3
    nop

    .line 36
    const-string v2, "summary"

    invoke-interface {p1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 37
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    sget v1, Lccsancom/san/mads/mraid/getDownloadedRecordByUrl;->getDownloadingRecordByUrl:I

    add-int/lit8 v1, v1, 0x35

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsancom/san/mads/mraid/getDownloadedRecordByUrl;->deleteDownItem:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_9

    .line 57
    :cond_9
    nop

    .line 37
    :cond_a
    nop

    .line 40
    const-string v1, "transparency"

    invoke-interface {p1, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 43
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "transparent"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 44
    const-string v2, "availability"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    :cond_b
    invoke-direct {p0, p1}, Lccsancom/san/mads/mraid/getDownloadedRecordByUrl;->IncentiveDownloadUtils(Ljava/util/Map;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "rrule"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    sget p1, Lccsancom/san/mads/mraid/getDownloadedRecordByUrl;->deleteDownItem:I

    add-int/lit8 p1, p1, 0x3b

    rem-int/lit16 v1, p1, 0x80

    sput v1, Lccsancom/san/mads/mraid/getDownloadedRecordByUrl;->getDownloadingRecordByUrl:I

    rem-int/lit8 p1, p1, 0x2

    .line 57
    return-object v0

    .line 53
    :goto_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Invalid calendar event: start time is malformed. Date format expecting (yyyy-MM-DDTHH:MM:SS-xx:xx) or (yyyy-MM-DDTHH:MM-xx:xx) i.e. 2013-08-14T09:00:01-08:00"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 56
    :cond_c
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Invalid calendar event: start is null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 57
    :cond_d
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Missing start and description fields"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x4f
        :pswitch_2
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x20
        :pswitch_1
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x1
        :pswitch_3
    .end packed-switch
.end method

.method static removeDownloadListener()V
    .locals 2

    sget v0, Lccsancom/san/mads/mraid/getDownloadedRecordByUrl;->getDownloadingRecordByUrl:I

    add-int/lit8 v0, v0, 0x51

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/san/mads/mraid/getDownloadedRecordByUrl;->deleteDownItem:I

    rem-int/lit8 v0, v0, 0x2

    const/16 v0, 0x2a

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lccsancom/san/mads/mraid/getDownloadedRecordByUrl;->unifiedDownload:[B

    const/16 v0, 0xd4

    sput v0, Lccsancom/san/mads/mraid/getDownloadedRecordByUrl;->IncentiveDownloadUtils:I

    add-int/lit8 v1, v1, 0x6d

    rem-int/lit16 v0, v1, 0x80

    sput v0, Lccsancom/san/mads/mraid/getDownloadedRecordByUrl;->getDownloadingRecordByUrl:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_0

    const/16 v0, 0x3a

    goto :goto_0

    :cond_0
    const/16 v0, 0x1c

    :goto_0
    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    return-void

    :goto_1
    const/16 v0, 0x1d

    :try_start_0
    div-int/lit8 v0, v0, 0x0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    throw v0

    :pswitch_data_0
    .packed-switch 0x1c
        :pswitch_0
    .end packed-switch

    :array_0
    .array-data 1
        0x3dt
        0x1at
        0x2dt
        -0x31t
        0x15t
        -0x2t
        0x16t
        0x5t
        0x2t
        0x3t
        -0x2et
        0x3dt
        0x14t
        0x7t
        0xet
        -0x7t
        0x11t
        0xet
        -0x3et
        0x1dt
        0x34t
        0x7t
        0xet
        -0x7t
        0x1bt
        0x4t
        0x6t
        0x17t
        -0x1ct
        0x19t
        0xat
        0x10t
        -0x2t
        0xet
        0x6t
        -0x10t
        0x1ct
        0x15t
        -0x5t
        0xet
        0x6t
        0x15t
    .end array-data
.end method

.method public static removeDownloadListener(Lccsanandroid/content/Context;Lccsanandroid/content/Intent;)Z
    .locals 5

    .line 3
    sget v0, Lccsancom/san/mads/mraid/getDownloadedRecordByUrl;->deleteDownItem:I

    add-int/lit8 v0, v0, 0x27

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/san/mads/mraid/getDownloadedRecordByUrl;->getDownloadingRecordByUrl:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    :cond_0
    add-int/lit8 v1, v1, 0x75

    rem-int/lit16 v0, v1, 0x80

    sput v0, Lccsancom/san/mads/mraid/getDownloadedRecordByUrl;->deleteDownItem:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_1

    .line 0
    :cond_1
    const/4 v0, 0x0

    int-to-byte v1, v0

    int-to-byte v2, v1

    add-int/lit8 v3, v2, 0x1

    int-to-byte v3, v3

    :try_start_0
    invoke-static {v1, v2, v3}, Lccsancom/san/mads/mraid/getDownloadedRecordByUrl;->addDownloadListener(IIS)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sget-object v2, Lccsancom/san/mads/mraid/getDownloadedRecordByUrl;->unifiedDownload:[B

    const/16 v3, 0x8

    aget-byte v2, v2, v3

    add-int/lit8 v2, v2, -0x1

    int-to-byte v2, v2

    int-to-byte v3, v2

    add-int/lit8 v4, v3, -0x1

    int-to-byte v4, v4

    invoke-static {v2, v3, v4}, Lccsancom/san/mads/mraid/getDownloadedRecordByUrl;->addDownloadListener(IIS)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    invoke-virtual {v1, p0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lccsanandroid/content/pm/PackageManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    :try_start_1
    invoke-virtual {p0, p1, v0}, Lccsanandroid/content/pm/PackageManager;->queryIntentActivities(Lccsanandroid/content/Intent;I)Ljava/util/List;

    move-result-object p0

    .line 3
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0

    .line 0
    :catchall_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    if-eqz p1, :cond_2

    throw p1

    :cond_2
    throw p0
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0

    .line 3
    :catch_0
    move-exception p0

    return v0
.end method

.method private unifiedDownload(Ljava/lang/String;)Ljava/lang/String;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 36
    nop

    .line 19
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 20
    const/4 v1, 0x7

    new-array v2, v1, [Z

    .line 21
    const-string v3, ","

    invoke-virtual {p1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 23
    array-length v4, p1

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_0
    const/4 v7, 0x1

    if-ge v6, v4, :cond_5

    .line 36
    sget v8, Lccsancom/san/mads/mraid/getDownloadedRecordByUrl;->deleteDownItem:I

    add-int/lit8 v8, v8, 0xd

    rem-int/lit16 v9, v8, 0x80

    sput v9, Lccsancom/san/mads/mraid/getDownloadedRecordByUrl;->getDownloadingRecordByUrl:I

    rem-int/lit8 v8, v8, 0x2

    const/16 v9, 0x15

    if-eqz v8, :cond_0

    aget-object v8, p1, v6

    .line 24
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    const/16 v10, 0x66

    if-ne v8, v10, :cond_3

    :pswitch_0
    goto :goto_2

    .line 23
    :cond_0
    aget-object v8, p1, v6

    .line 24
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    if-ne v8, v1, :cond_1

    const/4 v10, 0x1

    goto :goto_1

    :cond_1
    const/4 v10, 0x0

    :goto_1
    packed-switch v10, :pswitch_data_0

    goto :goto_4

    .line 36
    :goto_2
    sget v8, Lccsancom/san/mads/mraid/getDownloadedRecordByUrl;->getDownloadingRecordByUrl:I

    add-int/lit8 v8, v8, 0x71

    rem-int/lit16 v10, v8, 0x80

    sput v10, Lccsancom/san/mads/mraid/getDownloadedRecordByUrl;->deleteDownItem:I

    rem-int/lit8 v8, v8, 0x2

    if-nez v8, :cond_2

    .line 24
    const/16 v8, 0x59

    goto :goto_3

    :cond_2
    const/16 v8, 0x15

    :goto_3
    packed-switch v8, :pswitch_data_1

    .line 36
    const/4 v8, 0x1

    goto :goto_4

    .line 24
    :pswitch_1
    const/4 v8, 0x0

    .line 26
    :cond_3
    :goto_4
    aget-boolean v10, v2, v8

    if-nez v10, :cond_4

    .line 27
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0, v8}, Lccsancom/san/mads/mraid/getDownloadedRecordByUrl;->IncentiveDownloadUtils(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    aput-boolean v7, v2, v8

    .line 36
    sget v7, Lccsancom/san/mads/mraid/getDownloadedRecordByUrl;->getDownloadingRecordByUrl:I

    add-int/2addr v7, v9

    rem-int/lit16 v8, v7, 0x80

    sput v8, Lccsancom/san/mads/mraid/getDownloadedRecordByUrl;->deleteDownItem:I

    rem-int/lit8 v7, v7, 0x2

    if-nez v7, :cond_4

    .line 28
    :cond_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 31
    :cond_5
    array-length p1, p1

    if-eqz p1, :cond_6

    .line 34
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result p1

    sub-int/2addr p1, v7

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 35
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 36
    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "must have at least 1 day of the week if specifying repeating weekly"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_6

    :goto_5
    throw p1

    :goto_6
    goto :goto_5

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x15
        :pswitch_1
    .end packed-switch
.end method

.method static unifiedDownload(Lccsanandroid/content/Context;)Z
    .locals 2

    .line 5
    nop

    .line 4
    new-instance v0, Lccsanandroid/content/Intent;

    const-string v1, "android.intent.action.INSERT"

    invoke-direct {v0, v1}, Lccsanandroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "vnd.android.cursor.item/event"

    invoke-virtual {v0, v1}, Lccsanandroid/content/Intent;->setType(Ljava/lang/String;)Lccsanandroid/content/Intent;

    move-result-object v0

    .line 5
    invoke-static {p0, v0}, Lccsancom/san/mads/mraid/getDownloadedRecordByUrl;->removeDownloadListener(Lccsanandroid/content/Context;Lccsanandroid/content/Intent;)Z

    move-result p0

    sget v0, Lccsancom/san/mads/mraid/getDownloadedRecordByUrl;->getDownloadingRecordByUrl:I

    add-int/lit8 v0, v0, 0x2f

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/san/mads/mraid/getDownloadedRecordByUrl;->deleteDownItem:I

    rem-int/lit8 v0, v0, 0x2

    return p0
.end method


# virtual methods
.method IncentiveDownloadUtils(Lccsanandroid/content/Context;)Z
    .locals 2

    .line 4
    nop

    .line 1
    new-instance v0, Lccsanandroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Lccsanandroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2
    const-string v1, "sms:"

    invoke-static {v1}, Lccsanandroid/net/Uri;->parse(Ljava/lang/String;)Lccsanandroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Lccsanandroid/content/Intent;->setData(Lccsanandroid/net/Uri;)Lccsanandroid/content/Intent;

    .line 4
    invoke-static {p1, v0}, Lccsancom/san/mads/mraid/getDownloadedRecordByUrl;->removeDownloadListener(Lccsanandroid/content/Context;Lccsanandroid/content/Intent;)Z

    move-result p1

    sget v0, Lccsancom/san/mads/mraid/getDownloadedRecordByUrl;->getDownloadingRecordByUrl:I

    add-int/lit8 v0, v0, 0x39

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/san/mads/mraid/getDownloadedRecordByUrl;->deleteDownItem:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    const/16 v0, 0xa

    goto :goto_0

    :cond_0
    const/16 v0, 0x9

    :goto_0
    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    return p1

    :goto_1
    const/4 v0, 0x0

    :try_start_0
    invoke-super {v0}, Ljava/lang/Object;->hashCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p1

    :catchall_0
    move-exception p1

    throw p1

    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_0
    .end packed-switch
.end method

.method addDownloadListener(Lccsanandroid/content/Context;Ljava/lang/String;Lccsancom/san/mads/mraid/getDownloadedRecordByUrl$IncentiveDownloadUtils;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lccsancom/san/mads/mraid/addDownloadListener;
        }
    .end annotation

    .line 18
    nop

    .line 12
    sget v0, Lccsancom/san/mads/mraid/getDownloadedRecordByUrl;->getDownloadingRecordByUrl:I

    add-int/lit8 v0, v0, 0x47

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/san/mads/mraid/getDownloadedRecordByUrl;->deleteDownItem:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 3
    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/4 v2, 0x0

    const-string v3, "\u0000\u0000\u0000\u0000"

    packed-switch v0, :pswitch_data_0

    invoke-static {p1}, Lccsancom/san/mads/mraid/getDownloadedRecordByUrl;->addDownloadListener(Lccsanandroid/content/Context;)Z

    move-result v0

    goto :goto_2

    :pswitch_0
    invoke-static {p1}, Lccsancom/san/mads/mraid/getDownloadedRecordByUrl;->addDownloadListener(Lccsanandroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    :goto_1
    goto :goto_3

    :goto_2
    :try_start_0
    invoke-super {v2}, Ljava/lang/Object;->hashCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v0, :cond_3

    goto :goto_1

    .line 11
    :goto_3
    instance-of v0, p1, Lccsanandroid/app/Activity;

    if-eqz v0, :cond_1

    .line 3
    const/16 v0, 0x18

    goto :goto_4

    :cond_1
    const/16 v0, 0x4f

    :goto_4
    packed-switch v0, :pswitch_data_1

    .line 18
    sget v0, Lccsancom/san/mads/mraid/getDownloadedRecordByUrl;->getDownloadingRecordByUrl:I

    add-int/lit8 v0, v0, 0x17

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/san/mads/mraid/getDownloadedRecordByUrl;->deleteDownItem:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_2

    goto :goto_5

    .line 12
    :pswitch_1
    invoke-static {v1}, Lccsanandroid/graphics/Color;->red(I)I

    move-result v0

    add-int/lit16 v0, v0, 0x37b5

    int-to-char v0, v0

    const v2, -0x446c1bb0

    invoke-static {}, Lccsanandroid/view/KeyEvent;->getMaxKeyCode()I

    move-result v4

    shr-int/lit8 v4, v4, 0x10

    add-int/2addr v4, v2

    const-string v2, "\u5853\u541a\u0f48\u5a4b\u3704\u96ec\u147e\u4546\u1e88\u94c5\u4630\ub434\u72ab\ue7d2\u519f\u16c0\u199e\u85f5\u1dcb\uc9ff\u4d73\udaa7\u533b\u8df6\ub17c\ufc28\u9794\u4a39\uef88\u1d7d\u92a0\u02ae\u61ea\ubad8\uaa9c\uf817\uf238\uca98\u4986"

    const-string v5, "\u501f\u93e4\ub5bb\udb37"

    invoke-static {v2, v3, v0, v4, v5}, Lccsancom/san/mads/mraid/getDownloadedRecordByUrl;->getDownloadingList(Ljava/lang/String;Ljava/lang/String;CILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    .line 14
    invoke-static {v0, v1}, Lccsansan/bq/deleteDownItem;->getDownloadingList(Ljava/lang/String;I)V

    .line 15
    invoke-virtual {p0, p1, p2, p3}, Lccsancom/san/mads/mraid/getDownloadedRecordByUrl;->removeDownloadListener(Lccsanandroid/content/Context;Ljava/lang/String;Lccsancom/san/mads/mraid/getDownloadedRecordByUrl$IncentiveDownloadUtils;)V

    goto :goto_7

    .line 12
    :goto_5
    invoke-direct {p0, p1, p2, p3}, Lccsancom/san/mads/mraid/getDownloadedRecordByUrl;->getDownloadingList(Lccsanandroid/content/Context;Ljava/lang/String;Lccsancom/san/mads/mraid/getDownloadedRecordByUrl$IncentiveDownloadUtils;)V

    :try_start_1
    array-length p1, v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_6

    .line 18
    :catchall_0
    move-exception p1

    throw p1

    .line 12
    :cond_2
    invoke-direct {p0, p1, p2, p3}, Lccsancom/san/mads/mraid/getDownloadedRecordByUrl;->getDownloadingList(Lccsanandroid/content/Context;Ljava/lang/String;Lccsancom/san/mads/mraid/getDownloadedRecordByUrl$IncentiveDownloadUtils;)V

    .line 18
    :goto_6
    nop

    .line 15
    :goto_7
    return-void

    :cond_3
    const/4 p1, 0x0

    invoke-static {p1, p1}, Lccsanandroid/graphics/PointF;->length(FF)F

    move-result p2

    const-string p3, ""

    const-string v0, "Ads.MraidNativeCommandHandler"

    const-string v1, "\u3ec6\ucfa9\ufe32\ua82a\u34c2\u67d2\u4f64\ud9d7\ude03\uacc7\ua775\u954b\u97d0\u7b59\u583c\u8930\u52d3\u283a\u2306\u3803\ue0c9\u4338\u21d9\uaccb\u8abe\u0417\u57b8\ud195\u6faf\uedd9\u0ddc\u27e1\ufd56\u1d35\udaa5\ueb4c\u596b\u5544\ufeae\u1188\uda79\u0fca\u5714\ubbd4\u0c71\u78f6\u4a3b\u3b27\u9994\u9bd9\u35f6\u8490\u1bad\ufa60\ubd0b\u54d8\u3a72\u68ea\ub529\ufd97\u81d8\u0112\u3df0\u5f2d\u294f\u643a\u8574\u83db\ubf0a\u3211\uc653\u2605\u66e7\ue7f4\u1b0d\ua712\udab1\u58ee\u84da\ud5a1\u3c9d\uce1b\uf932\ua05c\u7040\udcf7\u48d1\u331b\u37db\u3301\u7154\u69c3\u1d1a\u94bd\ub4ce\uf98e\u114b\uac8c\u11f0\u6315\ub0f7\uba8b\u0fc6\u7021\u30d9\ue9a9\u196a\u2c28\uaa8f\u1a35\u55ae"

    const-string v2, "\ud7e3\ue7fc\ufd08\u550f"

    const-string v4, "\u72e2\ucedc\uf6d5\u5bb7\u8eb8\u9237\u4a53\u06b9\uc722\uc64e\u9a40\u8cae\u0c0c\u70ec\ucfe7\udba3\u11bc\u7268\udeaa\u1a0e\uc986\u9a9e\u906b\u8bd9\u3c5e\uf367\ue20a\u8af1\uad12\uc8bd\u3a0f\u599d\u08fa,\ua461\u8326\u905a\ua7f8\u9195\u58fe\ue623\u3562\u3f6b\ub11c\ud2b1\u1c67\ubdf0\u8167\ud3cd\ucd3f\u75df\ufc98\u81da\ubf53\u225d\ub000\ueb45\u0711\u3cfa\u7e6e\u5aa0\ucb1e\u7d89\ub480\u4fc2\uf8e3\u1007\u5f3d\ud898\u6b52\u81cc\ub91b\u5c9a\u73da\ucbda\uef77\u9673\u5aeb\ud92f\u3ab0\u10d7\u3699\uf171\u3d9c\u25cf\uc566\uc3a0\u3edd\u6b63\ud85b\ucf2b\u86c3\uaaf0\u9446\u6b71\ufa2a\uf805\ufbd3\ud758\u1384\ude4b\u3ee8\u3b00\ud07c\u7d3c\u62bb\u495b\u56a4\u74c4\uf227\u8f03\u9fef"

    const-string v5, "\u0fca\u76d8\u6cf5\u92b7"

    cmpl-float p1, p2, p1

    int-to-char p1, p1

    const p2, 0x8e7fcd7

    invoke-static {p3}, Lccsanandroid/text/TextUtils;->getTrimmedLength(Ljava/lang/CharSequence;)I

    move-result v6

    add-int/2addr v6, p2

    invoke-static {v1, v3, p1, v6, v2}, Lccsancom/san/mads/mraid/getDownloadedRecordByUrl;->getDownloadingList(Ljava/lang/String;Ljava/lang/String;CILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p1

    .line 16
    invoke-static {v0, p1}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    new-instance p1, Lccsancom/san/mads/mraid/addDownloadListener;

    invoke-static {p3, p3}, Lccsanandroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I

    move-result p2

    int-to-char p2, p2

    invoke-static {}, Lccsanandroid/view/ViewConfiguration;->getJumpTapTimeout()I

    move-result p3

    shr-int/lit8 p3, p3, 0x10

    invoke-static {v4, v3, p2, p3, v5}, Lccsancom/san/mads/mraid/getDownloadedRecordByUrl;->getDownloadingList(Ljava/lang/String;Ljava/lang/String;CILjava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lccsancom/san/mads/mraid/addDownloadListener;-><init>(Ljava/lang/String;)V

    throw p1

    .line 12
    :catchall_1
    move-exception p1

    goto :goto_9

    :goto_8
    throw p1

    :goto_9
    goto :goto_8

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x4f
        :pswitch_1
    .end packed-switch
.end method

.method removeDownloadListener(Lccsanandroid/content/Context;Ljava/lang/String;Lccsancom/san/mads/mraid/getDownloadedRecordByUrl$IncentiveDownloadUtils;)V
    .locals 2

    .line 120
    nop

    .line 105
    new-instance v0, Lccsancom/san/mads/mraid/getDownloadedRecordByUrl$removeDownloadListener;

    new-instance v1, Lccsancom/san/mads/mraid/getDownloadedRecordByUrl$getDownloadingList;

    invoke-direct {v1, p0, p3}, Lccsancom/san/mads/mraid/getDownloadedRecordByUrl$getDownloadingList;-><init>(Lccsancom/san/mads/mraid/getDownloadedRecordByUrl;Lccsancom/san/mads/mraid/getDownloadedRecordByUrl$IncentiveDownloadUtils;)V

    invoke-direct {v0, p1, v1}, Lccsancom/san/mads/mraid/getDownloadedRecordByUrl$removeDownloadListener;-><init>(Lccsanandroid/content/Context;Lccsancom/san/mads/mraid/getDownloadedRecordByUrl$removeDownloadListener$getDownloadingList;)V

    const/4 p1, 0x1

    .line 120
    new-array p1, p1, [Ljava/lang/String;

    const/4 p3, 0x0

    aput-object p2, p1, p3

    invoke-static {v0, p1}, Lccsansan/cx/getDownloadingList;->addDownloadListener(Lccsanandroid/os/AsyncTask;[Ljava/lang/Object;)V

    sget p1, Lccsancom/san/mads/mraid/getDownloadedRecordByUrl;->deleteDownItem:I

    add-int/lit8 p1, p1, 0x15

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lccsancom/san/mads/mraid/getDownloadedRecordByUrl;->getDownloadingRecordByUrl:I

    rem-int/lit8 p1, p1, 0x2

    return-void
.end method

.method removeDownloadListener(Lccsanandroid/content/Context;Ljava/util/Map;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsanandroid/content/Context;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lccsancom/san/mads/mraid/addDownloadListener;
        }
    .end annotation

    .line 46
    sget v0, Lccsancom/san/mads/mraid/getDownloadedRecordByUrl;->deleteDownItem:I

    add-int/lit8 v0, v0, 0x71

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/san/mads/mraid/getDownloadedRecordByUrl;->getDownloadingRecordByUrl:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    .line 15
    const/16 v0, 0x34

    goto :goto_0

    :cond_0
    const/16 v0, 0x11

    :goto_0
    const-string v1, "Ads.MraidNativeCommandHandler"

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    .line 6
    invoke-static {p1}, Lccsancom/san/mads/mraid/getDownloadedRecordByUrl;->unifiedDownload(Lccsanandroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_8

    :goto_1
    goto :goto_2

    :pswitch_0
    invoke-static {p1}, Lccsancom/san/mads/mraid/getDownloadedRecordByUrl;->unifiedDownload(Lccsanandroid/content/Context;)Z

    move-result v0

    const/16 v3, 0x33

    :try_start_0
    div-int/2addr v3, v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_8

    goto :goto_1

    .line 46
    :catchall_0
    move-exception p1

    throw p1

    .line 8
    :goto_2
    :try_start_1
    invoke-direct {p0, p2}, Lccsancom/san/mads/mraid/getDownloadedRecordByUrl;->removeDownloadListener(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p2

    .line 9
    new-instance v0, Lccsanandroid/content/Intent;

    const-string v3, "android.intent.action.INSERT"

    invoke-direct {v0, v3}, Lccsanandroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "vnd.android.cursor.item/event"

    invoke-virtual {v0, v3}, Lccsanandroid/content/Intent;->setType(Ljava/lang/String;)Lccsanandroid/content/Intent;

    move-result-object v0

    .line 10
    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 46
    nop

    .line 10
    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_1

    .line 15
    const/4 v4, 0x0

    goto :goto_4

    :cond_1
    const/4 v4, 0x1

    :goto_4
    const/4 v6, 0x0

    packed-switch v4, :pswitch_data_1

    .line 17
    const/high16 p2, 0x10000000

    .line 20
    invoke-virtual {v0, p2}, Lccsanandroid/content/Intent;->setFlags(I)Lccsanandroid/content/Intent;
    :try_end_1
    .catch Lccsanandroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_8

    .line 46
    :pswitch_1
    sget v4, Lccsancom/san/mads/mraid/getDownloadedRecordByUrl;->getDownloadingRecordByUrl:I

    add-int/lit8 v4, v4, 0x45

    rem-int/lit16 v7, v4, 0x80

    sput v7, Lccsancom/san/mads/mraid/getDownloadedRecordByUrl;->deleteDownItem:I

    rem-int/lit8 v4, v4, 0x2

    if-nez v4, :cond_2

    .line 10
    :cond_2
    :try_start_2
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 11
    invoke-interface {p2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .line 12
    instance-of v8, v7, Ljava/lang/Long;

    if-eqz v8, :cond_3

    .line 15
    goto :goto_5

    :cond_3
    const/4 v5, 0x0

    :goto_5
    packed-switch v5, :pswitch_data_2

    .line 14
    instance-of v5, v7, Ljava/lang/Integer;
    :try_end_2
    .catch Lccsanandroid/content/ActivityNotFoundException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_6

    .line 6
    :pswitch_2
    sget v5, Lccsancom/san/mads/mraid/getDownloadedRecordByUrl;->getDownloadingRecordByUrl:I

    add-int/lit8 v5, v5, 0x33

    rem-int/lit16 v6, v5, 0x80

    sput v6, Lccsancom/san/mads/mraid/getDownloadedRecordByUrl;->deleteDownItem:I

    rem-int/lit8 v5, v5, 0x2

    if-nez v5, :cond_4

    .line 13
    :cond_4
    :try_start_3
    check-cast v7, Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-virtual {v0, v4, v5, v6}, Lccsanandroid/content/Intent;->putExtra(Ljava/lang/String;J)Lccsanandroid/content/Intent;
    :try_end_3
    .catch Lccsanandroid/content/ActivityNotFoundException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_7

    .line 14
    :goto_6
    if-eqz v5, :cond_6

    .line 6
    sget v5, Lccsancom/san/mads/mraid/getDownloadedRecordByUrl;->getDownloadingRecordByUrl:I

    add-int/lit8 v5, v5, 0x29

    rem-int/lit16 v8, v5, 0x80

    sput v8, Lccsancom/san/mads/mraid/getDownloadedRecordByUrl;->deleteDownItem:I

    rem-int/lit8 v5, v5, 0x2

    if-nez v5, :cond_5

    .line 15
    :try_start_4
    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v0, v4, v5}, Lccsanandroid/content/Intent;->putExtra(Ljava/lang/String;I)Lccsanandroid/content/Intent;
    :try_end_4
    .catch Lccsanandroid/content/ActivityNotFoundException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :try_start_5
    invoke-super {v6}, Ljava/lang/Object;->hashCode()I
    :try_end_5
    .catch Lccsanandroid/content/ActivityNotFoundException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_7

    .line 6
    :catchall_1
    move-exception p1

    throw p1

    .line 15
    :cond_5
    :try_start_6
    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v0, v4, v5}, Lccsanandroid/content/Intent;->putExtra(Ljava/lang/String;I)Lccsanandroid/content/Intent;

    goto :goto_7

    .line 17
    :cond_6
    check-cast v7, Ljava/lang/String;

    invoke-virtual {v0, v4, v7}, Lccsanandroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Lccsanandroid/content/Intent;

    .line 13
    :goto_7
    goto :goto_3

    .line 21
    :goto_8
    invoke-virtual {p1, v0}, Lccsanandroid/content/Context;->startActivity(Lccsanandroid/content/Intent;)V
    :try_end_6
    .catch Lccsanandroid/content/ActivityNotFoundException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    .line 46
    sget p1, Lccsancom/san/mads/mraid/getDownloadedRecordByUrl;->getDownloadingRecordByUrl:I

    add-int/lit8 p1, p1, 0x1b

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lccsancom/san/mads/mraid/getDownloadedRecordByUrl;->deleteDownItem:I

    rem-int/lit8 p1, p1, 0x2

    if-nez p1, :cond_7

    :try_start_7
    invoke-super {v6}, Ljava/lang/Object;->hashCode()I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    return-void

    :catchall_2
    move-exception p1

    throw p1

    :cond_7
    return-void

    .line 21
    :catch_0
    move-exception p1

    .line 30
    const-string p2, "could not create calendar event"

    invoke-static {v1, p2}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    new-instance p2, Lccsancom/san/mads/mraid/addDownloadListener;

    invoke-direct {p2, p1}, Lccsancom/san/mads/mraid/addDownloadListener;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p1

    .line 32
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "create calendar: invalid parameters "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    new-instance p2, Lccsancom/san/mads/mraid/addDownloadListener;

    invoke-direct {p2, p1}, Lccsancom/san/mads/mraid/addDownloadListener;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :catch_2
    move-exception p1

    invoke-static {}, Lccsanandroid/view/ViewConfiguration;->getTouchSlop()I

    move-result p1

    shr-int/lit8 p1, p1, 0x8

    int-to-char p1, p1

    const p2, -0x635d0d7c

    invoke-static {}, Lccsanandroid/view/ViewConfiguration;->getTouchSlop()I

    move-result v0

    shr-int/lit8 v0, v0, 0x8

    add-int/2addr v0, p2

    const-string p2, "\u404d\u4194\uec79\u048f\ue73e\u616b\u53af\u2e74\u9804\ue7a6\u23d9\u2499\u6a85\u7454\u67af\u8995\u7546\uc68a\ua481\ue7d9\uf260\uf941\u242c\udf11\ua1f3"

    const-string v3, "\u0000\u0000\u0000\u0000"

    const-string v4, "\u84e1\ua2f2\u859c\u866b"

    invoke-static {p2, v3, p1, v0, v4}, Lccsancom/san/mads/mraid/getDownloadedRecordByUrl;->getDownloadingList(Ljava/lang/String;Ljava/lang/String;CILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p1

    .line 34
    invoke-static {v1, p1}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    new-instance p1, Lccsancom/san/mads/mraid/addDownloadListener;

    invoke-static {v2, v2}, Lccsanandroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result p2

    int-to-char p2, p2

    invoke-static {v2}, Lccsanandroid/util/TypedValue;->complexToFloat(I)F

    move-result v0

    const/4 v1, 0x0

    const-string v2, "\u51ef\u6ee3\u483b\u750e\udf28\ua20f\uf53e\ueae5\uc629\ue7f5\u040f\u1549\u44c2\ufba7\u36b0\u44f5\ufd38\uafbd\u48b9\u1041\u4a2e\u91df\u91fd\ubb51\uf472\u8a2c\u7009\ufd8e\u9208\ub01c\ud055\uda46\u465f\u601f\u84fb\ub3cd\u3837\u0d88_\u43ec\uc030\u79db\u04a3\uc3ce\u32f2\u189a\u74f7\u4624\ub3e3\u1a73\u68cd\u0f2f\u747a\u3558\u0dcf\ua034\u9cf4\u2fd4\u0d2b\u4c52\u2429\uad11\ub5e8\u7446"

    const-string v4, "\uae31\ue5b2\ue66e\ub10a"

    cmpl-float v0, v0, v1

    invoke-static {v2, v3, p2, v0, v4}, Lccsancom/san/mads/mraid/getDownloadedRecordByUrl;->getDownloadingList(Ljava/lang/String;Ljava/lang/String;CILjava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lccsancom/san/mads/mraid/addDownloadListener;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_8
    nop

    .line 45
    const-string p1, "unsupported action createCalendarEvent for devices pre-ICS"

    invoke-static {v1, p1}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    new-instance p1, Lccsancom/san/mads/mraid/addDownloadListener;

    const-string p2, "Action is unsupported on this device (need Android version Ice Cream Sandwich or above)"

    invoke-direct {p1, p2}, Lccsancom/san/mads/mraid/addDownloadListener;-><init>(Ljava/lang/String;)V

    goto :goto_a

    :goto_9
    throw p1

    :goto_a
    goto :goto_9

    nop

    :pswitch_data_0
    .packed-switch 0x34
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_2
    .end packed-switch
.end method

.method removeDownloadListener(Lccsanandroid/content/Context;)Z
    .locals 2

    .line 4
    nop

    .line 1
    new-instance v0, Lccsanandroid/content/Intent;

    const-string v1, "android.intent.action.DIAL"

    invoke-direct {v0, v1}, Lccsanandroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2
    const-string v1, "tel:"

    invoke-static {v1}, Lccsanandroid/net/Uri;->parse(Ljava/lang/String;)Lccsanandroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Lccsanandroid/content/Intent;->setData(Lccsanandroid/net/Uri;)Lccsanandroid/content/Intent;

    .line 4
    invoke-static {p1, v0}, Lccsancom/san/mads/mraid/getDownloadedRecordByUrl;->removeDownloadListener(Lccsanandroid/content/Context;Lccsanandroid/content/Intent;)Z

    move-result p1

    sget v0, Lccsancom/san/mads/mraid/getDownloadedRecordByUrl;->getDownloadingRecordByUrl:I

    add-int/lit8 v0, v0, 0x57

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/san/mads/mraid/getDownloadedRecordByUrl;->deleteDownItem:I

    rem-int/lit8 v0, v0, 0x2

    return p1
.end method

.method unifiedDownload(Lccsanandroid/app/Activity;Lccsanandroid/view/View;)Z
    .locals 3

    .line 51
    nop

    .line 47
    invoke-virtual {p1}, Lccsanandroid/app/Activity;->getWindow()Lccsanandroid/view/Window;

    move-result-object p2

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p2, :cond_1

    .line 51
    sget p1, Lccsancom/san/mads/mraid/getDownloadedRecordByUrl;->getDownloadingRecordByUrl:I

    add-int/lit8 p1, p1, 0x73

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lccsancom/san/mads/mraid/getDownloadedRecordByUrl;->deleteDownItem:I

    rem-int/lit8 p1, p1, 0x2

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    :goto_0
    packed-switch p1, :pswitch_data_0

    return v0

    .line 47
    :pswitch_0
    return v1

    .line 51
    :cond_1
    invoke-virtual {p1}, Lccsanandroid/app/Activity;->getWindow()Lccsanandroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Lccsanandroid/view/Window;->getAttributes()Lccsanandroid/view/WindowManager$LayoutParams;

    move-result-object p1

    iget p1, p1, Lccsanandroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 p2, 0x1000000

    and-int/2addr p1, p2

    if-eqz p1, :cond_3

    sget p1, Lccsancom/san/mads/mraid/getDownloadedRecordByUrl;->deleteDownItem:I

    add-int/lit8 p1, p1, 0x7d

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lccsancom/san/mads/mraid/getDownloadedRecordByUrl;->getDownloadingRecordByUrl:I

    rem-int/lit8 p1, p1, 0x2

    const/16 v2, 0x45

    if-eqz p1, :cond_2

    const/16 p1, 0x2f

    goto :goto_1

    :cond_2
    const/16 p1, 0x45

    :goto_1
    packed-switch p1, :pswitch_data_1

    goto :goto_2

    :pswitch_1
    const/4 v0, 0x0

    :goto_2
    add-int/2addr p2, v2

    rem-int/lit16 p1, p2, 0x80

    sput p1, Lccsancom/san/mads/mraid/getDownloadedRecordByUrl;->deleteDownItem:I

    rem-int/lit8 p2, p2, 0x2

    move v1, v0

    :cond_3
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x2f
        :pswitch_1
    .end packed-switch
.end method
