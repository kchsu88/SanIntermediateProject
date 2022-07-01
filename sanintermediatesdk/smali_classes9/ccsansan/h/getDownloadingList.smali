.class public Lccsansan/h/getDownloadingList;
.super Lccsanandroid/content/BroadcastReceiver;
.source ""


# static fields
.field private static getDownloadingList:I

.field private static unifiedDownload:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lccsansan/h/getDownloadingList;->unifiedDownload:I

    const/4 v0, 0x1

    sput v0, Lccsansan/h/getDownloadingList;->getDownloadingList:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lccsanandroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Lccsanandroid/content/Context;Lccsanandroid/content/Intent;)V
    .locals 5

    .line 7
    nop

    .line 1
    sget v0, Lccsansan/h/getDownloadingList;->getDownloadingList:I

    and-int/lit8 v1, v0, 0x21

    xor-int/lit8 v0, v0, 0x21

    or-int/2addr v0, v1

    neg-int v0, v0

    neg-int v0, v0

    or-int v2, v1, v0

    const/4 v3, 0x1

    shl-int/2addr v2, v3

    xor-int/2addr v0, v1

    sub-int/2addr v2, v0

    rem-int/lit16 v0, v2, 0x80

    sput v0, Lccsansan/h/getDownloadingList;->unifiedDownload:I

    rem-int/lit8 v2, v2, 0x2

    const/4 v0, 0x0

    if-eqz v2, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    :goto_0
    const/4 v2, 0x0

    packed-switch v1, :pswitch_data_0

    .line 0
    if-eqz p2, :cond_2

    goto :goto_2

    .line 1
    :pswitch_0
    :try_start_0
    invoke-super {v2}, Ljava/lang/Object;->hashCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p2, :cond_1

    const/16 v1, 0x31

    goto :goto_1

    :cond_1
    const/16 v1, 0x2a

    :goto_1
    packed-switch v1, :pswitch_data_1

    goto :goto_4

    :catchall_0
    move-exception p1

    throw p1

    :goto_2
    const/16 v1, 0x11

    goto :goto_3

    :cond_2
    const/16 v1, 0x16

    :goto_3
    packed-switch v1, :pswitch_data_2

    :goto_4
    goto/16 :goto_a

    .line 7
    :pswitch_1
    sget v1, Lccsansan/h/getDownloadingList;->unifiedDownload:I

    and-int/lit8 v4, v1, 0x63

    xor-int/lit8 v1, v1, 0x63

    or-int/2addr v1, v4

    add-int/2addr v4, v1

    rem-int/lit16 v1, v4, 0x80

    sput v1, Lccsansan/h/getDownloadingList;->getDownloadingList:I

    rem-int/lit8 v4, v4, 0x2

    if-nez v4, :cond_3

    .line 1
    const/4 v1, 0x1

    goto :goto_5

    :cond_3
    const/4 v1, 0x0

    :goto_5
    packed-switch v1, :pswitch_data_3

    invoke-virtual {p2}, Lccsanandroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    :goto_6
    goto :goto_7

    :pswitch_2
    invoke-virtual {p2}, Lccsanandroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v4, 0x6

    :try_start_1
    div-int/2addr v4, v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v1, :cond_5

    goto :goto_6

    .line 7
    :catchall_1
    move-exception p1

    throw p1

    :goto_7
    sget p1, Lccsansan/h/getDownloadingList;->getDownloadingList:I

    add-int/lit8 p1, p1, 0x7b

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lccsansan/h/getDownloadingList;->unifiedDownload:I

    rem-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_4

    .line 1
    const/16 p1, 0x1d

    goto :goto_8

    :cond_4
    const/4 p1, 0x1

    :goto_8
    packed-switch p1, :pswitch_data_4

    .line 7
    :pswitch_3
    goto :goto_a

    .line 4
    :cond_5
    invoke-virtual {p2}, Lccsanandroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    const-string v1, "reserve_alarm_manager_receive"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_7

    .line 7
    sget p1, Lccsansan/h/getDownloadingList;->getDownloadingList:I

    and-int/lit8 p2, p1, 0x38

    or-int/lit8 p1, p1, 0x38

    add-int/2addr p2, p1

    or-int/lit8 p1, p2, -0x1

    shl-int/2addr p1, v3

    xor-int/lit8 p2, p2, -0x1

    sub-int/2addr p1, p2

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lccsansan/h/getDownloadingList;->unifiedDownload:I

    rem-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_6

    .line 1
    goto :goto_9

    :cond_6
    const/4 v3, 0x0

    :goto_9
    packed-switch v3, :pswitch_data_5

    .line 7
    return-void

    :pswitch_4
    :try_start_2
    array-length p1, v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    return-void

    :catchall_2
    move-exception p1

    throw p1

    :cond_7
    const-string p2, "keepalive"

    const-string v0, "reserve_alarm_receive"

    invoke-static {p1, p2, v0}, Lccsansan/aj/removeDownloadListener;->addDownloadListener(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 1
    sget p1, Lccsansan/h/getDownloadingList;->getDownloadingList:I

    xor-int/lit8 p2, p1, 0xf

    and-int/lit8 v0, p1, 0xf

    or-int/2addr p2, v0

    shl-int/2addr p2, v3

    xor-int/lit8 v0, v0, -0x1

    or-int/lit8 p1, p1, 0xf

    and-int/2addr p1, v0

    sub-int/2addr p2, p1

    rem-int/lit16 p1, p2, 0x80

    sput p1, Lccsansan/h/getDownloadingList;->unifiedDownload:I

    rem-int/lit8 p2, p2, 0x2

    .line 7
    return-void

    :goto_a
    sget p1, Lccsansan/h/getDownloadingList;->unifiedDownload:I

    const/16 p2, 0x51

    and-int/lit8 v0, p1, -0x52

    xor-int/lit8 v1, p1, -0x1

    and-int/2addr v1, p2

    or-int/2addr v0, v1

    and-int/2addr p1, p2

    shl-int/2addr p1, v3

    xor-int/lit8 p1, p1, -0x1

    sub-int/2addr v0, p1

    sub-int/2addr v0, v3

    rem-int/lit16 p1, v0, 0x80

    sput p1, Lccsansan/h/getDownloadingList;->getDownloadingList:I

    rem-int/lit8 v0, v0, 0x2

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x31
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x11
        :pswitch_1
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x1
        :pswitch_2
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x1
        :pswitch_3
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0x1
        :pswitch_4
    .end packed-switch
.end method
