.class public Lccsansan/cy/getDownloadingList;
.super Lccsanandroid/os/AsyncTask;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lccsanandroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lccsansan/m/removeDownloadListener;",
        ">;"
    }
.end annotation


# static fields
.field private static addDownloadListener:J

.field private static deleteDownItem:I

.field private static getDownloadedList:I

.field public static final getDownloadingList:[B

.field public static final removeDownloadListener:I


# instance fields
.field private final IncentiveDownloadUtils:Ljava/lang/String;

.field private final unifiedDownload:Lccsanandroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x0

    sput v0, Lccsansan/cy/getDownloadingList;->deleteDownItem:I

    const/4 v0, 0x1

    sput v0, Lccsansan/cy/getDownloadingList;->getDownloadedList:I

    invoke-static {}, Lccsansan/cy/getDownloadingList;->IncentiveDownloadUtils()V

    const/16 v0, 0x57

    new-array v1, v0, [B

    fill-array-data v1, :array_0

    sput-object v1, Lccsansan/cy/getDownloadingList;->getDownloadingList:[B

    const/16 v1, 0xb2

    sput v1, Lccsansan/cy/getDownloadingList;->removeDownloadListener:I

    sget v1, Lccsansan/cy/getDownloadingList;->deleteDownItem:I

    add-int/lit8 v1, v1, 0x43

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsansan/cy/getDownloadingList;->getDownloadedList:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/16 v0, 0xe

    :goto_0
    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    return-void

    :goto_1
    const/4 v0, 0x0

    :try_start_0
    invoke-super {v0}, Ljava/lang/Object;->hashCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0xe
        :pswitch_0
    .end packed-switch

    :array_0
    .array-data 1
        0x63t
        0x7dt
        0x46t
        0x60t
        0x0t
        0x11t
        -0x22t
        0x13t
        0x4t
        0xat
        -0x8t
        0x8t
        0x0t
        -0x1at
        0x27t
        -0x6t
        0xbt
        0xft
        -0x8t
        0x10t
        -0x1t
        -0x4t
        -0x3t
        -0x34t
        0x37t
        0xet
        0x1t
        0x8t
        -0xdt
        0xbt
        0x8t
        -0x44t
        0x17t
        0x2et
        0x1t
        0x8t
        -0xdt
        0x15t
        -0x2t
        0xft
        -0x8t
        0x10t
        -0x1t
        -0x4t
        -0x3t
        -0x34t
        0x37t
        0xet
        0x1t
        0x8t
        -0xdt
        0xbt
        0x8t
        -0x44t
        0x44t
        -0x1t
        -0x3dt
        0x24t
        0x13t
        0x4t
        0xat
        -0x8t
        0x8t
        0x0t
        -0x16t
        0x16t
        0xft
        -0xbt
        0x8t
        0x0t
        0xft
        0x0t
        0x11t
        -0x22t
        0x13t
        0x4t
        0xat
        -0x8t
        0x8t
        0x0t
        -0x16t
        0x16t
        0xft
        -0xbt
        0x8t
        0x0t
        0xft
    .end array-data
.end method

.method public constructor <init>(Lccsanandroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lccsanandroid/os/AsyncTask;-><init>()V

    .line 2
    invoke-virtual {p1}, Lccsanandroid/content/Context;->getApplicationContext()Lccsanandroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lccsansan/cy/getDownloadingList;->unifiedDownload:Lccsanandroid/content/Context;

    .line 3
    iput-object p2, p0, Lccsansan/cy/getDownloadingList;->IncentiveDownloadUtils:Ljava/lang/String;

    return-void
.end method

.method static IncentiveDownloadUtils()V
    .locals 2

    const-wide v0, -0x87798bb5625b7e5L    # -6.295008913888066E267

    sput-wide v0, Lccsansan/cy/getDownloadingList;->addDownloadListener:J

    return-void
.end method

.method private static addDownloadListener(BSS)Ljava/lang/String;
    .locals 9

    mul-int/lit8 p2, p2, 0x6

    rsub-int/lit8 p2, p2, 0x67

    add-int/lit8 p0, p0, 0x4

    sget-object v0, Lccsansan/cy/getDownloadingList;->getDownloadingList:[B

    add-int/lit8 p1, p1, 0xe

    new-array v1, p1, [B

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v0, :cond_0

    const/4 v4, 0x0

    goto :goto_0

    :cond_0
    const/4 v4, 0x1

    :goto_0
    packed-switch v4, :pswitch_data_0

    const/4 v4, 0x0

    goto :goto_1

    :pswitch_0
    sget v4, Lccsansan/cy/getDownloadingList;->getDownloadedList:I

    add-int/lit8 v4, v4, 0x7

    rem-int/lit16 v5, v4, 0x80

    sput v5, Lccsansan/cy/getDownloadingList;->deleteDownItem:I

    rem-int/lit8 v4, v4, 0x2

    move v4, p2

    const/4 v6, 0x0

    move p2, p1

    goto :goto_3

    :goto_1
    add-int/2addr p0, v2

    int-to-byte v5, p2

    add-int/lit8 v6, v4, 0x1

    aput-byte v5, v1, v4

    if-ne v6, p1, :cond_1

    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v1, v3}, Ljava/lang/String;-><init>([BI)V

    return-object p0

    :cond_1
    aget-byte v4, v0, p0

    sget v5, Lccsansan/cy/getDownloadingList;->deleteDownItem:I

    add-int/lit8 v5, v5, 0x1b

    rem-int/lit16 v7, v5, 0x80

    sput v7, Lccsansan/cy/getDownloadingList;->getDownloadedList:I

    rem-int/lit8 v5, v5, 0x2

    if-nez v5, :cond_2

    const/16 v5, 0x1a

    goto :goto_2

    :cond_2
    const/16 v5, 0x27

    :goto_2
    packed-switch v5, :pswitch_data_1

    :pswitch_1
    move v8, p2

    move p2, p1

    move p1, v8

    :goto_3
    add-int/2addr p1, v4

    add-int/lit8 p1, p1, -0x2

    move v4, v6

    move v8, p2

    move p2, p1

    move p1, v8

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x27
        :pswitch_1
    .end packed-switch
.end method

.method private addDownloadListener(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 33
    nop

    .line 24
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "startActivity() pkgName: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AD.CPI.ReceiverTask"

    invoke-static {v1, v0}, Lccsansan/ch/IncentiveDownloadUtils;->getDownloadingList(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 29
    const/16 v0, 0x5d

    goto :goto_0

    :cond_0
    const/16 v0, 0x3c

    :goto_0
    packed-switch v0, :pswitch_data_0

    goto :goto_3

    .line 33
    :pswitch_0
    sget v0, Lccsansan/cy/getDownloadingList;->getDownloadedList:I

    add-int/lit8 v0, v0, 0x23

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/cy/getDownloadingList;->deleteDownItem:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 25
    :cond_1
    invoke-static {p3}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_3

    .line 33
    sget p1, Lccsansan/cy/getDownloadingList;->getDownloadedList:I

    add-int/lit8 p1, p1, 0x19

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lccsansan/cy/getDownloadingList;->deleteDownItem:I

    rem-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_2

    .line 29
    goto :goto_1

    :cond_2
    const/4 v1, 0x1

    :goto_1
    packed-switch v1, :pswitch_data_1

    .line 33
    :pswitch_1
    goto :goto_3

    .line 28
    :cond_3
    invoke-static {}, Lccsancom/san/az/unifiedDownload;->getDownloadedRecordByUrl()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 33
    sget p1, Lccsansan/cy/getDownloadingList;->deleteDownItem:I

    add-int/lit8 p1, p1, 0x65

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lccsansan/cy/getDownloadingList;->getDownloadedList:I

    rem-int/lit8 p1, p1, 0x2

    if-nez p1, :cond_4

    .line 29
    invoke-static {p3}, Lccsancom/san/bridge/addDownloadListener;->unifiedDownload(Ljava/lang/String;)V

    const/16 p1, 0x2c

    :try_start_0
    div-int/2addr p1, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    .line 33
    :catchall_0
    move-exception p1

    throw p1

    .line 29
    :cond_4
    invoke-static {p3}, Lccsancom/san/bridge/addDownloadListener;->unifiedDownload(Ljava/lang/String;)V

    goto :goto_3

    .line 31
    :cond_5
    invoke-static {p1, p3, p2}, Lccsancom/san/core/IncentiveDownloadUtils;->unifiedDownload(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_6

    .line 29
    const/4 v1, 0x1

    goto :goto_2

    :cond_6
    nop

    :goto_2
    packed-switch v1, :pswitch_data_2

    sget p2, Lccsansan/cy/getDownloadingList;->deleteDownItem:I

    add-int/2addr p2, v2

    rem-int/lit16 v0, p2, 0x80

    sput v0, Lccsansan/cy/getDownloadingList;->getDownloadedList:I

    rem-int/lit8 p2, p2, 0x2

    if-nez p2, :cond_7

    .line 33
    :cond_7
    invoke-static {p1, p3}, Lccsansan/l/IncentiveDownloadUtils;->getDownloadingList(Lccsanandroid/content/Context;Ljava/lang/String;)V

    :goto_3
    :pswitch_2
    return-void

    :pswitch_data_0
    .packed-switch 0x5d
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_2
    .end packed-switch
.end method

.method private addDownloadListener(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 44
    nop

    .line 34
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sendReferrer() pkgname: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", referrer: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AD.CPI.ReceiverTask"

    invoke-static {v1, v0}, Lccsansan/ch/IncentiveDownloadUtils;->getDownloadingList(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    invoke-static {p4}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 44
    sget p1, Lccsansan/cy/getDownloadingList;->deleteDownItem:I

    add-int/lit8 p1, p1, 0x45

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lccsansan/cy/getDownloadingList;->getDownloadedList:I

    rem-int/lit8 p1, p1, 0x2

    if-nez p1, :cond_0

    const/16 p1, 0x5a

    goto :goto_0

    :cond_0
    const/16 p1, 0xc

    :goto_0
    packed-switch p1, :pswitch_data_0

    return-void

    :pswitch_0
    const/4 p1, 0x0

    :try_start_0
    invoke-super {p1}, Ljava/lang/Object;->hashCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    throw p1

    .line 39
    :cond_1
    :try_start_1
    new-instance v0, Lccsanandroid/content/Intent;

    const-string v1, "\u4878\u8a8b\ucd88\u00c8\u4386\u868e\ud985\u1c90\u5f8c\u9285\ud589\u28c0\u6b99\uae8d\ue187\u248e\u6782\uba9a\ufd92\u30d8\u73be\ub6be\u89a2\ucca6\u0fb2\u42b0\u85b1\ud8a1\u1bad\u5ebd\u91bf\ud4bf\u17a9\u6a96\uad80\ue094"

    const v2, 0xc2ff

    const/4 v3, 0x0

    invoke-static {v3}, Lccsanandroid/graphics/Color;->red(I)I

    move-result v3

    add-int/2addr v3, v2

    invoke-static {v1, v3}, Lccsansan/cy/getDownloadingList;->removeDownloadListener(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lccsanandroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "referrer"

    .line 40
    invoke-virtual {v0, v1, p4}, Lccsanandroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Lccsanandroid/content/Intent;

    .line 41
    invoke-virtual {v0, p3}, Lccsanandroid/content/Intent;->setPackage(Ljava/lang/String;)Lccsanandroid/content/Intent;

    const/16 v1, 0x20

    .line 42
    invoke-virtual {v0, v1}, Lccsanandroid/content/Intent;->addFlags(I)Lccsanandroid/content/Intent;

    .line 43
    invoke-virtual {p1, v0}, Lccsanandroid/content/Context;->sendBroadcast(Lccsanandroid/content/Intent;)V

    .line 44
    invoke-static {p2, p3, p4}, Lccsansan/l/IncentiveDownloadUtils;->getDownloadingList(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    sget p1, Lccsansan/cy/getDownloadingList;->deleteDownItem:I

    add-int/lit8 p1, p1, 0x59

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lccsansan/cy/getDownloadingList;->getDownloadedList:I

    rem-int/lit8 p1, p1, 0x2

    goto :goto_1

    :catch_0
    move-exception p1

    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x5a
        :pswitch_0
    .end packed-switch
.end method

.method private getDownloadingList(Lccsansan/m/removeDownloadListener;)Z
    .locals 6

    .line 23
    sget v0, Lccsansan/cy/getDownloadingList;->getDownloadedList:I

    add-int/lit8 v0, v0, 0x37

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/cy/getDownloadingList;->deleteDownItem:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object p1, p1, Lccsansan/m/removeDownloadListener;->deleteDownList:Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    invoke-static {}, Lccsansan/cy/addDownloadListener;->removeDownloadListener()J

    move-result-wide v2

    const/4 p1, 0x1

    const/4 v4, 0x0

    cmp-long v5, v0, v2

    if-ltz v5, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    packed-switch v0, :pswitch_data_0

    sget v0, Lccsansan/cy/getDownloadingList;->deleteDownItem:I

    add-int/lit8 v0, v0, 0x37

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/cy/getDownloadingList;->getDownloadedList:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_2

    goto :goto_1

    :pswitch_0
    const/4 p1, 0x0

    :cond_2
    :goto_1
    return p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method private static removeDownloadListener(Ljava/lang/String;I)Ljava/lang/String;
    .locals 6

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    :cond_0
    check-cast p0, [C

    .line 1077
    sget-object v0, Lccsansan/d/deleteDownList;->addDownloadListener:Ljava/lang/Object;

    monitor-enter v0

    .line 1080
    :try_start_0
    sput p1, Lccsansan/d/deleteDownList;->unifiedDownload:I

    .line 1083
    array-length p1, p0

    new-array p1, p1, [C

    .line 1084
    const/4 v1, 0x0

    sput v1, Lccsansan/d/deleteDownList;->getDownloadingList:I

    :goto_0
    sget v1, Lccsansan/d/deleteDownList;->getDownloadingList:I

    array-length v2, p0

    if-ge v1, v2, :cond_1

    .line 1086
    sget v1, Lccsansan/d/deleteDownList;->getDownloadingList:I

    sget v2, Lccsansan/d/deleteDownList;->getDownloadingList:I

    aget-char v2, p0, v2

    sget v3, Lccsansan/d/deleteDownList;->getDownloadingList:I

    sget v4, Lccsansan/d/deleteDownList;->unifiedDownload:I

    mul-int v3, v3, v4

    xor-int/2addr v2, v3

    int-to-long v2, v2

    sget-wide v4, Lccsansan/cy/getDownloadingList;->addDownloadListener:J

    xor-long/2addr v2, v4

    long-to-int v3, v2

    int-to-char v2, v3

    aput-char v2, p1, v1

    .line 1084
    sget v1, Lccsansan/d/deleteDownList;->getDownloadingList:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lccsansan/d/deleteDownList;->getDownloadingList:I

    goto :goto_0

    .line 1090
    :cond_1
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, p1}, Ljava/lang/String;-><init>([C)V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    .line 1091
    :catchall_0
    move-exception p0

    monitor-exit v0

    goto :goto_2

    :goto_1
    throw p0

    :goto_2
    goto :goto_1
.end method


# virtual methods
.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    sget v0, Lccsansan/cy/getDownloadingList;->deleteDownItem:I

    add-int/lit8 v0, v0, 0x69

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/cy/getDownloadingList;->getDownloadedList:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    :cond_0
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lccsansan/cy/getDownloadingList;->getDownloadingList([Ljava/lang/Void;)Lccsansan/m/removeDownloadListener;

    move-result-object p1

    sget v0, Lccsansan/cy/getDownloadingList;->getDownloadedList:I

    add-int/lit8 v0, v0, 0x31

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/cy/getDownloadingList;->deleteDownItem:I

    rem-int/lit8 v0, v0, 0x2

    return-object p1
.end method

.method protected varargs getDownloadingList([Ljava/lang/Void;)Lccsansan/m/removeDownloadListener;
    .locals 10

    .line 22
    nop

    .line 1
    iget-object p1, p0, Lccsansan/cy/getDownloadingList;->unifiedDownload:Lccsanandroid/content/Context;

    invoke-static {p1}, Lccsansan/m/unifiedDownload;->getDownloadingList(Lccsanandroid/content/Context;)Lccsansan/m/unifiedDownload;

    move-result-object p1

    iget-object v0, p0, Lccsansan/cy/getDownloadingList;->IncentiveDownloadUtils:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lccsansan/m/unifiedDownload;->addDownloadListener(Ljava/lang/String;)Lccsansan/m/removeDownloadListener;

    move-result-object p1

    const/4 v0, 0x1

    const/4 v1, 0x2

    const-wide/16 v2, 0x0

    if-eqz p1, :cond_1

    .line 2
    iget-object v4, p1, Lccsansan/m/removeDownloadListener;->getDownloadedCount:Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v6, v4, v2

    if-eqz v6, :cond_1

    .line 15
    sget v4, Lccsansan/cy/getDownloadingList;->getDownloadedList:I

    add-int/lit8 v4, v4, 0x2b

    rem-int/lit16 v5, v4, 0x80

    sput v5, Lccsansan/cy/getDownloadingList;->deleteDownItem:I

    rem-int/2addr v4, v1

    if-eqz v4, :cond_0

    iget-object v4, p1, Lccsansan/m/removeDownloadListener;->getThumbPathByRecord:Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v6, v4, v2

    if-nez v6, :cond_1

    goto :goto_0

    .line 2
    :cond_0
    iget-object v4, p1, Lccsansan/m/removeDownloadListener;->getThumbPathByRecord:Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v6, v4, v2

    if-nez v6, :cond_1

    :goto_0
    invoke-direct {p0, p1}, Lccsansan/cy/getDownloadingList;->getDownloadingList(Lccsansan/m/removeDownloadListener;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 3
    iget-object v4, p0, Lccsansan/cy/getDownloadingList;->unifiedDownload:Lccsanandroid/content/Context;

    iget-object v5, p0, Lccsansan/cy/getDownloadingList;->IncentiveDownloadUtils:Ljava/lang/String;

    invoke-static {v4, v5}, Lccsansan/l/IncentiveDownloadUtils;->unifiedDownload(Lccsanandroid/content/Context;Ljava/lang/String;)V

    .line 4
    iget-object v4, p1, Lccsansan/m/removeDownloadListener;->addDownloadListener:Ljava/lang/String;

    iget-object v5, p0, Lccsansan/cy/getDownloadingList;->IncentiveDownloadUtils:Ljava/lang/String;

    iget-object v6, p1, Lccsansan/m/removeDownloadListener;->shouldTryHandlingAction:Ljava/lang/String;

    iget-object v7, p1, Lccsansan/m/removeDownloadListener;->ActionTypeDetailPage:Ljava/lang/String;

    invoke-static {v4, v5, v0, v6, v7}, Lccsansan/l/IncentiveDownloadUtils;->getDownloadingList(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 5
    iget-object v4, p0, Lccsansan/cy/getDownloadingList;->unifiedDownload:Lccsanandroid/content/Context;

    invoke-static {v4}, Lccsansan/m/unifiedDownload;->getDownloadingList(Lccsanandroid/content/Context;)Lccsansan/m/unifiedDownload;

    move-result-object v4

    iget-object v5, p1, Lccsansan/m/removeDownloadListener;->addDownloadListener:Ljava/lang/String;

    iget-object v6, p0, Lccsansan/cy/getDownloadingList;->IncentiveDownloadUtils:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-virtual {v4, v5, v6, v7, v8}, Lccsansan/m/unifiedDownload;->removeDownloadListener(Ljava/lang/String;Ljava/lang/String;J)Z

    :cond_1
    if-eqz p1, :cond_2

    .line 15
    const/16 v4, 0x15

    goto :goto_1

    :cond_2
    const/16 v4, 0xf

    :goto_1
    const/4 v5, 0x0

    packed-switch v4, :pswitch_data_0

    goto :goto_2

    .line 7
    :pswitch_0
    iget-object v4, p1, Lccsansan/m/removeDownloadListener;->getThumbPathByRecord:Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    cmp-long v4, v6, v2

    if-eqz v4, :cond_4

    .line 22
    sget v4, Lccsansan/cy/getDownloadingList;->deleteDownItem:I

    add-int/lit8 v4, v4, 0x43

    rem-int/lit16 v6, v4, 0x80

    sput v6, Lccsansan/cy/getDownloadingList;->getDownloadedList:I

    rem-int/2addr v4, v1

    if-nez v4, :cond_3

    .line 7
    :cond_3
    invoke-direct {p0, p1}, Lccsansan/cy/getDownloadingList;->getDownloadingList(Lccsansan/m/removeDownloadListener;)Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v4, p1, Lccsansan/m/removeDownloadListener;->getDownloadingRecordByUrl:Ljava/util/List;

    .line 8
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_4

    iget-object v4, p1, Lccsansan/m/removeDownloadListener;->getDownloadingRecordByUrl:Ljava/util/List;

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    invoke-static {v4}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 9
    iget-object v4, p0, Lccsansan/cy/getDownloadingList;->unifiedDownload:Lccsanandroid/content/Context;

    iget-object v6, p0, Lccsansan/cy/getDownloadingList;->IncentiveDownloadUtils:Ljava/lang/String;

    invoke-static {v4, v6}, Lccsansan/l/IncentiveDownloadUtils;->removeDownloadListener(Lccsanandroid/content/Context;Ljava/lang/String;)V

    .line 10
    iget-object v4, p1, Lccsansan/m/removeDownloadListener;->addDownloadListener:Ljava/lang/String;

    iget-object v6, p0, Lccsansan/cy/getDownloadingList;->IncentiveDownloadUtils:Ljava/lang/String;

    iget-object v7, p1, Lccsansan/m/removeDownloadListener;->shouldTryHandlingAction:Ljava/lang/String;

    iget-object v8, p1, Lccsansan/m/removeDownloadListener;->ActionTypeDetailPage:Ljava/lang/String;

    invoke-static {v4, v6, v1, v7, v8}, Lccsansan/l/IncentiveDownloadUtils;->getDownloadingList(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 11
    iget-object v4, p0, Lccsansan/cy/getDownloadingList;->unifiedDownload:Lccsanandroid/content/Context;

    invoke-static {v4}, Lccsansan/m/unifiedDownload;->getDownloadingList(Lccsanandroid/content/Context;)Lccsansan/m/unifiedDownload;

    move-result-object v4

    iget-object v6, p1, Lccsansan/m/removeDownloadListener;->addDownloadListener:Ljava/lang/String;

    iget-object v7, p0, Lccsansan/cy/getDownloadingList;->IncentiveDownloadUtils:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-virtual {v4, v6, v7, v8, v9}, Lccsansan/m/unifiedDownload;->removeDownloadListener(Ljava/lang/String;Ljava/lang/String;J)Z

    :cond_4
    :goto_2
    const-wide/16 v6, -0x1

    if-eqz p1, :cond_7

    .line 22
    sget v4, Lccsansan/cy/getDownloadingList;->deleteDownItem:I

    add-int/lit8 v4, v4, 0x5f

    rem-int/lit16 v8, v4, 0x80

    sput v8, Lccsansan/cy/getDownloadingList;->getDownloadedList:I

    rem-int/2addr v4, v1

    if-nez v4, :cond_5

    .line 15
    const/16 v4, 0x5a

    goto :goto_3

    :cond_5
    const/16 v4, 0x1d

    :goto_3
    packed-switch v4, :pswitch_data_1

    iget-object v4, p1, Lccsansan/m/removeDownloadListener;->trackReportClick:Lccsansan/m/getDownloadingRecordByUrl;

    goto :goto_5

    :pswitch_1
    iget-object v4, p1, Lccsansan/m/removeDownloadListener;->trackReportClick:Lccsansan/m/getDownloadingRecordByUrl;

    if-eqz v4, :cond_7

    :goto_4
    goto :goto_6

    :goto_5
    const/16 v8, 0x21

    :try_start_0
    div-int/2addr v8, v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v4, :cond_7

    goto :goto_4

    .line 22
    :goto_6
    sget v8, Lccsansan/cy/getDownloadingList;->deleteDownItem:I

    add-int/2addr v8, v0

    rem-int/lit16 v9, v8, 0x80

    sput v9, Lccsansan/cy/getDownloadingList;->getDownloadedList:I

    rem-int/2addr v8, v1

    if-nez v8, :cond_6

    iget-wide v8, v4, Lccsansan/m/getDownloadingRecordByUrl;->getDownloadingRecordByUrl:J

    cmp-long v4, v8, v2

    if-lez v4, :cond_7

    move-wide v6, v8

    goto :goto_7

    .line 15
    :cond_6
    iget-wide v8, v4, Lccsansan/m/getDownloadingRecordByUrl;->getDownloadingRecordByUrl:J

    cmp-long v4, v8, v2

    if-lez v4, :cond_7

    move-wide v6, v8

    :goto_7
    goto :goto_c

    .line 22
    :catchall_0
    move-exception p1

    throw p1

    .line 15
    :cond_7
    if-eqz p1, :cond_8

    const/16 v4, 0x63

    goto :goto_8

    :cond_8
    const/16 v4, 0x1f

    :goto_8
    packed-switch v4, :pswitch_data_2

    :cond_9
    :pswitch_2
    goto :goto_b

    .line 17
    :pswitch_3
    iget-object v4, p1, Lccsansan/m/removeDownloadListener;->trackReportClick:Lccsansan/m/getDownloadingRecordByUrl;

    if-eqz v4, :cond_a

    .line 15
    const/4 v8, 0x0

    goto :goto_9

    :cond_a
    const/4 v8, 0x1

    :goto_9
    packed-switch v8, :pswitch_data_3

    sget v8, Lccsansan/cy/getDownloadingList;->getDownloadedList:I

    add-int/lit8 v8, v8, 0x39

    rem-int/lit16 v9, v8, 0x80

    sput v9, Lccsansan/cy/getDownloadingList;->deleteDownItem:I

    rem-int/2addr v8, v1

    if-eqz v8, :cond_b

    iget-wide v8, v4, Lccsansan/m/getDownloadingRecordByUrl;->deleteDownList:J

    cmp-long v1, v8, v2

    if-lez v1, :cond_9

    move-wide v6, v8

    goto :goto_a

    .line 17
    :cond_b
    iget-wide v8, v4, Lccsansan/m/getDownloadingRecordByUrl;->deleteDownList:J

    cmp-long v1, v8, v2

    if-lez v1, :cond_c

    move-wide v6, v8

    :goto_a
    nop

    .line 22
    goto :goto_c

    .line 17
    :cond_c
    :goto_b
    nop

    :goto_c
    cmp-long v1, v6, v2

    if-lez v1, :cond_d

    .line 15
    goto :goto_d

    :cond_d
    const/4 v0, 0x0

    :goto_d
    packed-switch v0, :pswitch_data_4

    .line 22
    :try_start_1
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_e

    :catch_0
    move-exception v0

    :goto_e
    :pswitch_4
    return-object p1

    :pswitch_data_0
    .packed-switch 0x15
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1d
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x63
        :pswitch_3
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x1
        :pswitch_2
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x0
        :pswitch_4
    .end packed-switch
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 2

    .line 1
    sget v0, Lccsansan/cy/getDownloadingList;->getDownloadedList:I

    add-int/lit8 v0, v0, 0x73

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/cy/getDownloadingList;->deleteDownItem:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    :cond_0
    check-cast p1, Lccsansan/m/removeDownloadListener;

    invoke-virtual {p0, p1}, Lccsansan/cy/getDownloadingList;->unifiedDownload(Lccsansan/m/removeDownloadListener;)V

    sget p1, Lccsansan/cy/getDownloadingList;->deleteDownItem:I

    add-int/lit8 p1, p1, 0x65

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lccsansan/cy/getDownloadingList;->getDownloadedList:I

    rem-int/lit8 p1, p1, 0x2

    if-nez p1, :cond_1

    const/4 p1, 0x0

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    :goto_0
    packed-switch p1, :pswitch_data_0

    return-void

    :pswitch_0
    const/4 p1, 0x0

    :try_start_0
    array-length p1, p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    throw p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method protected unifiedDownload(Lccsansan/m/removeDownloadListener;)V
    .locals 19

    .line 91
    move-object/from16 v1, p0

    move-object/from16 v0, p1

    const-string v2, ""

    .line 1
    sget v3, Lccsansan/cy/getDownloadingList;->getDownloadedList:I

    add-int/lit8 v3, v3, 0x39

    rem-int/lit16 v4, v3, 0x80

    sput v4, Lccsansan/cy/getDownloadingList;->deleteDownItem:I

    const/4 v5, 0x2

    rem-int/2addr v3, v5

    const/16 v6, 0x5d

    const-string v7, "AD.CPI.ReceiverTask"

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    if-eqz v3, :cond_1

    :try_start_0
    array-length v3, v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 45
    const/16 v3, 0x22

    goto :goto_0

    :cond_0
    const/16 v3, 0x5d

    :goto_0
    packed-switch v3, :pswitch_data_0

    goto :goto_2

    .line 1
    :catchall_0
    move-exception v0

    move-object v2, v0

    throw v2

    .line 0
    :cond_1
    if-eqz v0, :cond_2

    .line 45
    const/16 v3, 0x4f

    goto :goto_1

    :cond_2
    const/16 v3, 0x4c

    :goto_1
    packed-switch v3, :pswitch_data_1

    :goto_2
    :pswitch_0
    goto/16 :goto_b

    .line 6
    :pswitch_1
    add-int/lit8 v4, v4, 0x6d

    rem-int/lit16 v3, v4, 0x80

    sput v3, Lccsansan/cy/getDownloadingList;->getDownloadedList:I

    rem-int/2addr v4, v5

    if-nez v4, :cond_3

    .line 1
    :try_start_1
    iget-object v3, v0, Lccsansan/m/removeDownloadListener;->trackReportClick:Lccsansan/m/getDownloadingRecordByUrl;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :try_start_2
    invoke-super {v9}, Ljava/lang/Object;->hashCode()I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v3, :cond_e

    goto :goto_3

    .line 6
    :catchall_1
    move-exception v0

    move-object v2, v0

    throw v2

    .line 1
    :cond_3
    :try_start_3
    iget-object v3, v0, Lccsansan/m/removeDownloadListener;->trackReportClick:Lccsansan/m/getDownloadingRecordByUrl;

    if-eqz v3, :cond_e

    :goto_3
    iget-boolean v3, v3, Lccsansan/m/getDownloadingRecordByUrl;->removeDownloadListener:Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    if-eqz v3, :cond_e

    sget v3, Lccsansan/cy/getDownloadingList;->getDownloadedList:I

    add-int/2addr v3, v6

    rem-int/lit16 v4, v3, 0x80

    sput v4, Lccsansan/cy/getDownloadingList;->deleteDownItem:I

    rem-int/2addr v3, v5

    if-eqz v3, :cond_5

    :try_start_4
    invoke-direct/range {p0 .. p1}, Lccsansan/cy/getDownloadingList;->getDownloadingList(Lccsansan/m/removeDownloadListener;)Z

    move-result v3
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :try_start_5
    invoke-super {v9}, Ljava/lang/Object;->hashCode()I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    if-eqz v3, :cond_4

    .line 45
    const/16 v3, 0xb

    goto :goto_4

    :cond_4
    const/16 v3, 0x1b

    :goto_4
    packed-switch v3, :pswitch_data_2

    goto :goto_6

    .line 1
    :catchall_2
    move-exception v0

    move-object v2, v0

    throw v2

    :cond_5
    :try_start_6
    invoke-direct/range {p0 .. p1}, Lccsansan/cy/getDownloadingList;->getDownloadingList(Lccsansan/m/removeDownloadListener;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 45
    const/4 v3, 0x0

    goto :goto_5

    :cond_6
    const/4 v3, 0x1

    :goto_5
    packed-switch v3, :pswitch_data_3

    goto :goto_2

    .line 2
    :goto_6
    :pswitch_2
    iget-object v3, v0, Lccsansan/m/removeDownloadListener;->getDownloadedCount:Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    const-wide/16 v11, 0x0

    cmp-long v6, v3, v11

    if-eqz v6, :cond_a

    .line 3
    iget-object v2, v0, Lccsansan/m/removeDownloadListener;->trackReportClick:Lccsansan/m/getDownloadingRecordByUrl;

    iget-boolean v2, v2, Lccsansan/m/getDownloadingRecordByUrl;->getDownloadedRecordByUrl:Z

    if-eqz v2, :cond_7

    .line 4
    iget-object v2, v1, Lccsansan/cy/getDownloadingList;->unifiedDownload:Lccsanandroid/content/Context;

    iget-object v3, v0, Lccsansan/m/removeDownloadListener;->addDownloadListener:Ljava/lang/String;

    iget-object v4, v1, Lccsansan/cy/getDownloadingList;->IncentiveDownloadUtils:Ljava/lang/String;

    invoke-direct {v1, v2, v3, v4}, Lccsansan/cy/getDownloadingList;->addDownloadListener(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    nop

    .line 5
    :cond_7
    iget-object v2, v0, Lccsansan/m/removeDownloadListener;->trackReportClick:Lccsansan/m/getDownloadingRecordByUrl;

    iget-boolean v2, v2, Lccsansan/m/getDownloadingRecordByUrl;->deleteDownItem:Z
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    if-eqz v2, :cond_8

    .line 45
    const/4 v8, 0x0

    goto :goto_7

    :cond_8
    nop

    :goto_7
    packed-switch v8, :pswitch_data_4

    .line 91
    sget v2, Lccsansan/cy/getDownloadingList;->getDownloadedList:I

    add-int/lit8 v2, v2, 0x67

    rem-int/lit16 v3, v2, 0x80

    sput v3, Lccsansan/cy/getDownloadingList;->deleteDownItem:I

    rem-int/2addr v2, v5

    if-eqz v2, :cond_9

    .line 45
    const/16 v2, 0xf

    goto :goto_8

    :cond_9
    const/16 v2, 0x4e

    :goto_8
    packed-switch v2, :pswitch_data_5

    .line 6
    :try_start_7
    iget-object v2, v1, Lccsansan/cy/getDownloadingList;->unifiedDownload:Lccsanandroid/content/Context;

    goto :goto_9

    :pswitch_3
    iget-object v2, v1, Lccsansan/cy/getDownloadingList;->unifiedDownload:Lccsanandroid/content/Context;

    iget-object v3, v0, Lccsansan/m/removeDownloadListener;->addDownloadListener:Ljava/lang/String;

    iget-object v4, v1, Lccsansan/cy/getDownloadingList;->IncentiveDownloadUtils:Ljava/lang/String;

    iget-object v0, v0, Lccsansan/m/removeDownloadListener;->IncentiveSDK:Ljava/lang/String;

    invoke-direct {v1, v2, v3, v4, v0}, Lccsansan/cy/getDownloadingList;->addDownloadListener(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    :try_start_8
    array-length v0, v9
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    goto :goto_a

    .line 91
    :catchall_3
    move-exception v0

    move-object v2, v0

    throw v2

    .line 6
    :goto_9
    :try_start_9
    iget-object v3, v0, Lccsansan/m/removeDownloadListener;->addDownloadListener:Ljava/lang/String;

    iget-object v4, v1, Lccsansan/cy/getDownloadingList;->IncentiveDownloadUtils:Ljava/lang/String;

    iget-object v0, v0, Lccsansan/m/removeDownloadListener;->IncentiveSDK:Ljava/lang/String;

    invoke-direct {v1, v2, v3, v4, v0}, Lccsansan/cy/getDownloadingList;->addDownloadListener(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_a
    :pswitch_4
    const-string v0, "Process click ad complete"

    .line 7
    invoke-static {v7, v0}, Lccsansan/ch/IncentiveDownloadUtils;->getDownloadingList(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 11
    :cond_a
    iget-object v3, v0, Lccsansan/m/removeDownloadListener;->getThumbPathByRecord:Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    cmp-long v6, v3, v11

    if-eqz v6, :cond_e

    .line 12
    iget-object v2, v0, Lccsansan/m/removeDownloadListener;->trackReportClick:Lccsansan/m/getDownloadingRecordByUrl;

    iget-boolean v2, v2, Lccsansan/m/getDownloadingRecordByUrl;->getDownloadStatusByUrl:Z

    if-eqz v2, :cond_b

    .line 13
    iget-object v2, v1, Lccsansan/cy/getDownloadingList;->unifiedDownload:Lccsanandroid/content/Context;

    iget-object v3, v0, Lccsansan/m/removeDownloadListener;->addDownloadListener:Ljava/lang/String;

    iget-object v4, v1, Lccsansan/cy/getDownloadingList;->IncentiveDownloadUtils:Ljava/lang/String;

    invoke-direct {v1, v2, v3, v4}, Lccsansan/cy/getDownloadingList;->addDownloadListener(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    :cond_b
    iget-object v2, v0, Lccsansan/m/removeDownloadListener;->trackReportClick:Lccsansan/m/getDownloadingRecordByUrl;

    iget-boolean v2, v2, Lccsansan/m/getDownloadingRecordByUrl;->pause:Z

    if-eqz v2, :cond_c

    .line 15
    iget-object v2, v1, Lccsansan/cy/getDownloadingList;->unifiedDownload:Lccsanandroid/content/Context;

    iget-object v3, v0, Lccsansan/m/removeDownloadListener;->addDownloadListener:Ljava/lang/String;

    iget-object v4, v1, Lccsansan/cy/getDownloadingList;->IncentiveDownloadUtils:Ljava/lang/String;

    iget-object v0, v0, Lccsansan/m/removeDownloadListener;->IncentiveSDK:Ljava/lang/String;

    invoke-direct {v1, v2, v3, v4, v0}, Lccsansan/cy/getDownloadingList;->addDownloadListener(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_c
    const-string v0, "Process supplement ad complete"

    .line 16
    invoke-static {v7, v0}, Lccsansan/ch/IncentiveDownloadUtils;->getDownloadingList(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0

    .line 6
    sget v0, Lccsansan/cy/getDownloadingList;->deleteDownItem:I

    add-int/lit8 v0, v0, 0x13

    rem-int/lit16 v2, v0, 0x80

    sput v2, Lccsansan/cy/getDownloadingList;->getDownloadedList:I

    rem-int/2addr v0, v5

    if-nez v0, :cond_d

    :try_start_a
    array-length v0, v9
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    return-void

    :catchall_4
    move-exception v0

    move-object v2, v0

    throw v2

    .line 91
    :cond_d
    return-void

    .line 16
    :cond_e
    :goto_b
    nop

    .line 20
    :try_start_b
    iget-object v0, v1, Lccsansan/cy/getDownloadingList;->IncentiveDownloadUtils:Ljava/lang/String;

    invoke-static {v5, v0, v9}, Lccsansan/ab/getDownloadingList;->unifiedDownload(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 21
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "In white list: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v1, Lccsansan/cy/getDownloadingList;->IncentiveDownloadUtils:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Lccsansan/ch/IncentiveDownloadUtils;->getDownloadingList(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_0

    .line 1
    sget v0, Lccsansan/cy/getDownloadingList;->deleteDownItem:I

    add-int/lit8 v0, v0, 0x2f

    rem-int/lit16 v2, v0, 0x80

    sput v2, Lccsansan/cy/getDownloadingList;->getDownloadedList:I

    rem-int/2addr v0, v5

    if-nez v0, :cond_f

    :try_start_c
    invoke-super {v9}, Ljava/lang/Object;->hashCode()I
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_5

    return-void

    :catchall_5
    move-exception v0

    move-object v2, v0

    throw v2

    .line 91
    :cond_f
    return-void

    .line 25
    :cond_10
    :try_start_d
    iget-object v0, v1, Lccsansan/cy/getDownloadingList;->unifiedDownload:Lccsanandroid/content/Context;
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_0

    :try_start_e
    sget-object v3, Lccsansan/cy/getDownloadingList;->getDownloadingList:[B

    const/16 v4, 0x10

    aget-byte v6, v3, v4

    add-int/2addr v6, v8

    int-to-byte v6, v6

    add-int/lit8 v11, v6, -0x3

    int-to-byte v11, v11

    const/16 v12, 0x1a

    aget-byte v13, v3, v12

    int-to-byte v13, v13

    invoke-static {v6, v11, v13}, Lccsansan/cy/getDownloadingList;->addDownloadListener(BSS)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    const/16 v11, 0x42

    int-to-byte v11, v11

    const/16 v13, 0x16

    aget-byte v14, v3, v13

    neg-int v14, v14

    int-to-byte v14, v14

    const/4 v15, 0x4

    aget-byte v13, v3, v15

    int-to-byte v13, v13

    invoke-static {v11, v14, v13}, Lccsansan/cy/getDownloadingList;->addDownloadListener(BSS)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v6, v13, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    invoke-virtual {v6, v0, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_9

    :try_start_f
    iget-object v6, v1, Lccsansan/cy/getDownloadingList;->IncentiveDownloadUtils:Ljava/lang/String;
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_0

    :try_start_10
    new-array v13, v5, [Ljava/lang/Object;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v13, v8

    aput-object v6, v13, v10

    const/4 v6, 0x6

    aget-byte v6, v3, v6

    neg-int v6, v6

    int-to-byte v6, v6

    const/4 v14, 0x7

    aget-byte v9, v3, v14

    int-to-byte v9, v9

    aget-byte v14, v3, v12

    int-to-byte v14, v14

    invoke-static {v6, v9, v14}, Lccsansan/cy/getDownloadingList;->addDownloadListener(BSS)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    const/16 v9, 0x14

    aget-byte v9, v3, v9

    int-to-byte v9, v9

    aget-byte v14, v3, v15

    int-to-byte v14, v14

    int-to-byte v15, v14

    invoke-static {v9, v14, v15}, Lccsansan/cy/getDownloadingList;->addDownloadListener(BSS)Ljava/lang/String;

    move-result-object v9

    new-array v14, v5, [Ljava/lang/Class;

    const-class v15, Ljava/lang/String;

    aput-object v15, v14, v10

    sget-object v15, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v15, v14, v8

    invoke-virtual {v6, v9, v14}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    invoke-virtual {v6, v0, v13}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsanandroid/content/pm/PackageInfo;
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_8

    .line 33
    :try_start_11
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lccsansan/m/unifiedDownload;->getDownloadingList(Lccsanandroid/content/Context;)Lccsansan/m/unifiedDownload;

    move-result-object v6

    iget-object v9, v0, Lccsanandroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v9, v2}, Lccsansan/m/unifiedDownload;->getDownloadingList(Ljava/lang/String;Ljava/lang/String;)Lccsansan/m/getDownloadedList;

    move-result-object v6
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_0

    const-string v9, "pkg_type"

    if-eqz v6, :cond_11

    .line 35
    :try_start_12
    invoke-virtual {v6, v9, v8}, Lccsansan/m/getDownloadedList;->IncentiveDownloadUtils(Ljava/lang/String;I)I

    move-result v13

    const-string v14, "\u487f\u333b\ubef2\u3998\ua54b\u20ff\uaba0\u1756\u923c\u1da8\u9974\u040e\u8fca"

    invoke-static {}, Lccsanandroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v15

    shr-int/2addr v15, v4

    rsub-int v15, v15, 0x7b4f

    invoke-static {v14, v15}, Lccsansan/cy/getDownloadingList;->removeDownloadListener(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v14

    .line 36
    invoke-virtual {v6, v14, v10}, Lccsansan/m/getDownloadedList;->IncentiveDownloadUtils(Ljava/lang/String;I)I

    move-result v14

    .line 37
    iget-object v15, v6, Lccsansan/m/getDownloadedList;->getThumbPathByRecord:Ljava/lang/String;

    goto :goto_c

    .line 33
    :cond_11
    move-object v15, v2

    const/4 v13, 0x1

    const/4 v14, 0x0

    .line 37
    :goto_c
    const-string v5, "\u4872\u0836\uc8ee\u88a6\u4976\u0938\uc9e5"

    invoke-static {v10}, Lccsanandroid/graphics/Color;->alpha(I)I

    move-result v12

    add-int/lit16 v12, v12, 0x4043

    invoke-static {v5, v12}, Lccsansan/cy/getDownloadingList;->removeDownloadListener(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v5

    .line 40
    invoke-static {v5}, Lccsansan/cy/addDownloadListener;->IncentiveDownloadUtils(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1e

    .line 41
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "\u4873\ubadd\uad3b\u9f8a\u82eb\uf53d\ue7a3\ueaef\udd40\ucfa1\u32f4\u2540\u17aa\u1a29\u0d57\u7fa6\u620e\u5562\u47d1\u4a56\ubd3e\uaf88\u9232\u856e\uf7d2\ufa26\uec99\udfa6\uc22a\u3480\u27e5\u2a4d\u1c9a\u0ff8\u7215\u64a7\u5709\u5a4b\u4ca5\ubf0b\ua26f\u94c8\u875d\u8a62\ufcce\uef33\ud272\uc488\u376b"

    const v16, 0xf2a7

    invoke-static {v10}, Lccsanandroid/util/TypedValue;->complexToFloat(I)F

    move-result v17

    const/16 v18, 0x0

    cmpl-float v17, v17, v18

    sub-int v10, v16, v17

    invoke-static {v12, v10}, Lccsansan/cy/getDownloadingList;->removeDownloadListener(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v1, Lccsansan/cy/getDownloadingList;->IncentiveDownloadUtils:Ljava/lang/String;

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5}, Lccsansan/ch/IncentiveDownloadUtils;->getDownloadingList(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    iget-object v5, v1, Lccsansan/cy/getDownloadingList;->unifiedDownload:Lccsanandroid/content/Context;
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_0

    .line 91
    nop

    .line 42
    :try_start_13
    aget-byte v4, v3, v4

    add-int/2addr v4, v8

    int-to-byte v4, v4

    add-int/lit8 v10, v4, -0x3

    int-to-byte v10, v10

    const/16 v12, 0x1a

    aget-byte v12, v3, v12

    int-to-byte v12, v12

    invoke-static {v4, v10, v12}, Lccsansan/cy/getDownloadingList;->addDownloadListener(BSS)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    const/16 v10, 0x16

    aget-byte v10, v3, v10

    neg-int v10, v10

    int-to-byte v10, v10

    const/4 v12, 0x4

    aget-byte v3, v3, v12

    int-to-byte v3, v3

    invoke-static {v11, v10, v3}, Lccsansan/cy/getDownloadingList;->addDownloadListener(BSS)Ljava/lang/String;

    move-result-object v3

    const/4 v10, 0x0

    invoke-virtual {v4, v3, v10}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    invoke-virtual {v3, v5, v10}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lccsanandroid/content/pm/PackageManager;
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_7

    :try_start_14
    iget-object v4, v0, Lccsanandroid/content/pm/PackageInfo;->applicationInfo:Lccsanandroid/content/pm/ApplicationInfo;

    invoke-virtual {v3, v4}, Lccsanandroid/content/pm/PackageManager;->getApplicationLabel(Lccsanandroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    .line 44
    sget v4, Lccsanandroid/os/Build$VERSION;->SDK_INT:I
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_0

    const/16 v5, 0x15

    if-lt v4, v5, :cond_12

    .line 45
    const/4 v4, 0x0

    goto :goto_d

    :cond_12
    const/4 v4, 0x1

    :goto_d
    packed-switch v4, :pswitch_data_6

    .line 1
    sget v4, Lccsansan/cy/getDownloadingList;->getDownloadedList:I

    add-int/lit8 v4, v4, 0x65

    rem-int/lit16 v5, v4, 0x80

    sput v5, Lccsansan/cy/getDownloadingList;->deleteDownItem:I

    const/4 v5, 0x2

    rem-int/2addr v4, v5

    if-eqz v4, :cond_13

    goto :goto_e

    .line 45
    :pswitch_5
    const/4 v4, 0x0

    const/4 v5, 0x0

    goto :goto_10

    :goto_e
    :try_start_15
    iget-object v4, v0, Lccsanandroid/content/pm/PackageInfo;->applicationInfo:Lccsanandroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Lccsanandroid/content/pm/ApplicationInfo;->splitPublicSourceDirs:[Ljava/lang/String;
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_0

    const/4 v5, 0x0

    :try_start_16
    invoke-super {v5}, Ljava/lang/Object;->hashCode()I
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_0
    .catchall {:try_start_16 .. :try_end_16} :catchall_6

    if-eqz v4, :cond_14

    goto :goto_f

    .line 1
    :catchall_6
    move-exception v0

    move-object v2, v0

    throw v2

    :cond_13
    const/4 v5, 0x0

    .line 45
    :try_start_17
    iget-object v4, v0, Lccsanandroid/content/pm/PackageInfo;->applicationInfo:Lccsanandroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Lccsanandroid/content/pm/ApplicationInfo;->splitPublicSourceDirs:[Ljava/lang/String;

    if-eqz v4, :cond_14

    :goto_f
    const/4 v4, 0x1

    goto :goto_10

    :cond_14
    const/4 v4, 0x0

    .line 47
    :goto_10
    new-instance v10, Lccsansan/cy/getDownloadingRecordByUrl$addDownloadListener;

    invoke-direct {v10}, Lccsansan/cy/getDownloadingRecordByUrl$addDownloadListener;-><init>()V

    iget-object v11, v1, Lccsansan/cy/getDownloadingList;->IncentiveDownloadUtils:Ljava/lang/String;

    iget-object v12, v0, Lccsanandroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    iget v5, v0, Lccsanandroid/content/pm/PackageInfo;->versionCode:I

    .line 48
    invoke-virtual {v10, v11, v12, v5}, Lccsansan/cy/getDownloadingRecordByUrl$addDownloadListener;->getDownloadingList(Ljava/lang/String;Ljava/lang/String;I)Lccsansan/cy/getDownloadingRecordByUrl$addDownloadListener;

    move-result-object v5

    .line 49
    invoke-virtual {v5, v15}, Lccsansan/cy/getDownloadingRecordByUrl$addDownloadListener;->IncentiveDownloadUtils(Ljava/lang/String;)Lccsansan/cy/getDownloadingRecordByUrl$addDownloadListener;

    move-result-object v5

    .line 50
    invoke-virtual {v5, v13}, Lccsansan/cy/getDownloadingRecordByUrl$addDownloadListener;->removeDownloadListener(I)Lccsansan/cy/getDownloadingRecordByUrl$addDownloadListener;

    move-result-object v5

    .line 51
    const/4 v10, 0x7

    invoke-virtual {v5, v10}, Lccsansan/cy/getDownloadingRecordByUrl$addDownloadListener;->IncentiveDownloadUtils(I)Lccsansan/cy/getDownloadingRecordByUrl$addDownloadListener;

    move-result-object v5

    sget-object v10, Lccsansan/p/deleteDownList;->AZ_FINISHED:Lccsansan/p/deleteDownList;

    .line 52
    invoke-virtual {v10}, Lccsansan/p/deleteDownList;->getValue()I

    move-result v10

    invoke-virtual {v5, v10}, Lccsansan/cy/getDownloadingRecordByUrl$addDownloadListener;->addDownloadListener(I)Lccsansan/cy/getDownloadingRecordByUrl$addDownloadListener;

    move-result-object v5

    .line 53
    const/4 v10, 0x2

    invoke-virtual {v5, v10}, Lccsansan/cy/getDownloadingRecordByUrl$addDownloadListener;->getDownloadingList(I)Lccsansan/cy/getDownloadingRecordByUrl$addDownloadListener;

    move-result-object v5

    .line 54
    const/4 v10, -0x2

    invoke-virtual {v5, v10}, Lccsansan/cy/getDownloadingRecordByUrl$addDownloadListener;->unifiedDownload(I)Lccsansan/cy/getDownloadingRecordByUrl$addDownloadListener;

    move-result-object v5

    if-nez v6, :cond_15

    const/4 v11, 0x0

    goto :goto_11

    :cond_15
    iget-object v11, v6, Lccsansan/m/getDownloadedList;->trackReportClick:Ljava/lang/String;

    :goto_11
    invoke-virtual {v5, v11}, Lccsansan/cy/getDownloadingRecordByUrl$addDownloadListener;->getDownloadingList(Ljava/lang/String;)Lccsansan/cy/getDownloadingRecordByUrl$addDownloadListener;

    move-result-object v5

    .line 55
    const/4 v11, 0x0

    invoke-virtual {v5, v11}, Lccsansan/cy/getDownloadingRecordByUrl$addDownloadListener;->removeDownloadListener(Z)Lccsansan/cy/getDownloadingRecordByUrl$addDownloadListener;

    move-result-object v5

    iget-object v11, v1, Lccsansan/cy/getDownloadingList;->unifiedDownload:Lccsanandroid/content/Context;

    iget-object v12, v1, Lccsansan/cy/getDownloadingList;->IncentiveDownloadUtils:Ljava/lang/String;

    invoke-static {v11, v12}, Lccsansan/bw/getDownloadedCount;->removeDownloadListener(Lccsanandroid/content/Context;Ljava/lang/String;)J

    move-result-wide v11

    invoke-virtual {v5, v11, v12}, Lccsansan/cy/getDownloadingRecordByUrl$addDownloadListener;->getDownloadingList(J)Lccsansan/cy/getDownloadingRecordByUrl$addDownloadListener;

    move-result-object v5

    const/4 v11, 0x0

    invoke-virtual {v5, v11}, Lccsansan/cy/getDownloadingRecordByUrl$addDownloadListener;->getDownloadingRecordByUrl(I)Lccsansan/cy/getDownloadingRecordByUrl$addDownloadListener;

    move-result-object v5

    .line 56
    invoke-virtual {v5, v4}, Lccsansan/cy/getDownloadingRecordByUrl$addDownloadListener;->addDownloadListener(Z)Lccsansan/cy/getDownloadingRecordByUrl$addDownloadListener;

    move-result-object v4

    if-eqz v6, :cond_16

    .line 45
    const/4 v11, 0x1

    goto :goto_12

    :cond_16
    const/4 v11, 0x0

    :goto_12
    packed-switch v11, :pswitch_data_7

    goto :goto_15

    .line 59
    :pswitch_6
    invoke-static {v3}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_17} :catch_0

    if-eqz v5, :cond_17

    .line 45
    const/16 v5, 0x26

    goto :goto_13

    :cond_17
    const/16 v5, 0x43

    :goto_13
    packed-switch v5, :pswitch_data_8

    goto :goto_14

    .line 6
    :pswitch_7
    sget v3, Lccsansan/cy/getDownloadingList;->getDownloadedList:I

    add-int/lit8 v3, v3, 0x1d

    rem-int/lit16 v5, v3, 0x80

    sput v5, Lccsansan/cy/getDownloadingList;->deleteDownItem:I

    const/4 v5, 0x2

    rem-int/2addr v3, v5

    if-eqz v3, :cond_18

    .line 59
    :cond_18
    :try_start_18
    iget-object v3, v6, Lccsansan/m/getDownloadedList;->getDownloadedList:Ljava/lang/String;

    :goto_14
    iget-object v5, v6, Lccsansan/m/getDownloadedList;->getDownloadingList:Ljava/lang/String;

    iget-wide v11, v6, Lccsansan/m/getDownloadedList;->getDownloadingRecordByUrl:J

    invoke-virtual {v4, v3, v5, v11, v12}, Lccsansan/cy/getDownloadingRecordByUrl$addDownloadListener;->getDownloadingList(Ljava/lang/String;Ljava/lang/String;J)Lccsansan/cy/getDownloadingRecordByUrl$addDownloadListener;

    move-result-object v3

    .line 60
    invoke-virtual {v3, v14}, Lccsansan/cy/getDownloadingRecordByUrl$addDownloadListener;->getDownloadStatusByUrl(I)Lccsansan/cy/getDownloadingRecordByUrl$addDownloadListener;

    .line 62
    :goto_15
    invoke-virtual {v4}, Lccsansan/cy/getDownloadingRecordByUrl$addDownloadListener;->getDownloadingList()Lccsansan/cy/getDownloadingRecordByUrl;

    move-result-object v3

    .line 63
    new-instance v4, Lccsansan/cy/resume;

    iget-object v5, v1, Lccsansan/cy/getDownloadingList;->unifiedDownload:Lccsanandroid/content/Context;

    invoke-direct {v4, v5, v3}, Lccsansan/cy/resume;-><init>(Lccsanandroid/content/Context;Lccsansan/cy/getDownloadingRecordByUrl;)V

    invoke-static {}, Lccsansan/cy/IncentiveDownloadUtils;->IncentiveDownloadUtils()Lccsansan/cy/IncentiveDownloadUtils;

    move-result-object v3

    invoke-virtual {v3}, Lccsansan/cy/IncentiveDownloadUtils;->removeDownloadListener()Ljava/util/concurrent/Executor;

    move-result-object v3

    const/4 v5, 0x0

    new-array v11, v5, [Ljava/lang/Void;

    invoke-virtual {v4, v3, v11}, Lccsanandroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Lccsanandroid/os/AsyncTask;
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_18} :catch_0

    const-string v3, "-1"

    const-string v4, "s2s_track_status"

    if-nez v6, :cond_19

    .line 65
    :try_start_19
    new-instance v5, Lccsansan/m/getDownloadedList;

    invoke-direct {v5}, Lccsansan/m/getDownloadedList;-><init>()V

    .line 66
    iget-object v6, v0, Lccsanandroid/content/pm/PackageInfo;->applicationInfo:Lccsanandroid/content/pm/ApplicationInfo;

    iget-object v6, v6, Lccsanandroid/content/pm/ApplicationInfo;->name:Ljava/lang/String;

    iput-object v6, v5, Lccsansan/m/getDownloadedList;->getDownloadedList:Ljava/lang/String;

    .line 67
    iget-object v6, v0, Lccsanandroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    iput-object v6, v5, Lccsansan/m/getDownloadedList;->getDownloadStatusByUrl:Ljava/lang/String;

    .line 68
    iget v6, v0, Lccsanandroid/content/pm/PackageInfo;->versionCode:I

    iput v6, v5, Lccsansan/m/getDownloadedList;->getDownloadedRecordByUrl:I

    .line 69
    iget-object v6, v0, Lccsanandroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    iput-object v6, v5, Lccsansan/m/getDownloadedList;->deleteDownItem:Ljava/lang/String;

    .line 70
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    iput-wide v11, v5, Lccsansan/m/getDownloadedList;->getDownloadedCount:J

    .line 71
    invoke-virtual {v5, v4, v3}, Lccsansan/m/getDownloadedList;->getDownloadingList(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    sget-object v3, Lccsansan/m/getDownloadedList;->removeDownloadListener:Ljava/util/Map;

    iget-object v4, v0, Lccsanandroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v3, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    sget-object v3, Lccsansan/m/getDownloadedList$unifiedDownload;->NO_ACTIVE:Lccsansan/m/getDownloadedList$unifiedDownload;

    invoke-virtual {v3}, Lccsansan/m/getDownloadedList$unifiedDownload;->toInt()I

    move-result v3

    iput v3, v5, Lccsansan/m/getDownloadedList;->execute:I

    .line 74
    const/4 v3, 0x7

    iput v3, v5, Lccsansan/m/getDownloadedList;->addDownloadListener:I

    .line 75
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v9, v2}, Lccsansan/m/getDownloadedList;->getDownloadingList(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_19} :catch_0

    invoke-static {}, Lccsanandroid/media/AudioTrack;->getMaxVolume()F

    move-result v2

    const-string v3, "\u4872\u5f28\u66d2\u0e78\u150e\u3ca6\uc459\uebcf\uf287\u9a37\ua1d4\u4881"

    cmpl-float v2, v2, v18

    rsub-int v2, v2, 0x175e

    invoke-static {v3, v2}, Lccsansan/cy/getDownloadingList;->removeDownloadListener(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    .line 76
    :try_start_1a
    iget-wide v3, v0, Lccsanandroid/content/pm/PackageInfo;->firstInstallTime:J

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v2, v0}, Lccsansan/m/getDownloadedList;->getDownloadingList(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lccsansan/m/unifiedDownload;->getDownloadingList(Lccsanandroid/content/Context;)Lccsansan/m/unifiedDownload;

    move-result-object v0

    invoke-virtual {v0, v5}, Lccsansan/m/unifiedDownload;->addDownloadListener(Lccsansan/m/getDownloadedList;)V

    goto/16 :goto_1a

    .line 79
    :cond_19
    iget-object v0, v6, Lccsansan/m/getDownloadedList;->getDownloadingList:Ljava/lang/String;

    invoke-static {v0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 45
    goto :goto_16

    :cond_1a
    const/4 v8, 0x0

    :goto_16
    packed-switch v8, :pswitch_data_9

    .line 82
    sget-object v0, Lccsansan/m/getDownloadedList;->removeDownloadListener:Ljava/util/Map;

    goto :goto_17

    .line 80
    :pswitch_8
    sget-object v0, Lccsansan/m/getDownloadedList;->removeDownloadListener:Ljava/util/Map;

    iget-object v2, v6, Lccsansan/m/getDownloadedList;->getDownloadStatusByUrl:Ljava/lang/String;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v0, v2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_18

    .line 82
    :goto_17
    iget-object v2, v6, Lccsansan/m/getDownloadedList;->getDownloadingList:Ljava/lang/String;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v0, v2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_1a} :catch_0

    .line 80
    :goto_18
    nop

    .line 91
    sget v0, Lccsansan/cy/getDownloadingList;->getDownloadedList:I

    add-int/lit8 v0, v0, 0x6f

    rem-int/lit16 v2, v0, 0x80

    sput v2, Lccsansan/cy/getDownloadingList;->deleteDownItem:I

    const/4 v2, 0x2

    rem-int/2addr v0, v2

    if-eqz v0, :cond_1b

    .line 82
    :cond_1b
    nop

    .line 84
    :try_start_1b
    invoke-virtual {v6, v4, v3}, Lccsansan/m/getDownloadedList;->getDownloadingList(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lccsansan/m/unifiedDownload;->getDownloadingList(Lccsanandroid/content/Context;)Lccsansan/m/unifiedDownload;

    move-result-object v0

    invoke-virtual {v0, v6}, Lccsansan/m/unifiedDownload;->IncentiveDownloadUtils(Lccsansan/m/getDownloadedList;)V

    goto :goto_1a

    .line 42
    :catchall_7
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    if-eqz v2, :cond_1c

    throw v2

    :cond_1c
    throw v0

    .line 25
    :catchall_8
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    if-eqz v2, :cond_1d

    :goto_19
    throw v2

    :cond_1d
    throw v0

    :catchall_9
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_1b} :catch_0

    if-eqz v2, :cond_1d

    goto :goto_19

    .line 85
    :catch_0
    move-exception v0

    .line 90
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 91
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleReceiveIntent() Exception:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Lccsansan/ch/IncentiveDownloadUtils;->addDownloadListener(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1e
    :goto_1a
    return-void

    :pswitch_data_0
    .packed-switch 0x22
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x4f
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1b
        :pswitch_0
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_2
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x1
        :pswitch_4
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0xf
        :pswitch_3
    .end packed-switch

    :pswitch_data_6
    .packed-switch 0x1
        :pswitch_5
    .end packed-switch

    :pswitch_data_7
    .packed-switch 0x1
        :pswitch_6
    .end packed-switch

    :pswitch_data_8
    .packed-switch 0x26
        :pswitch_7
    .end packed-switch

    :pswitch_data_9
    .packed-switch 0x1
        :pswitch_8
    .end packed-switch
.end method
