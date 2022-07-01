.class public Lccsansan/ab/removeDownloadListener;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsansan/ab/removeDownloadListener$removeDownloadListener;,
        Lccsansan/ab/removeDownloadListener$getDownloadingList;,
        Lccsansan/ab/removeDownloadListener$addDownloadListener;
    }
.end annotation


# static fields
.field private static IncentiveDownloadUtils:Lccsansan/ab/removeDownloadListener$removeDownloadListener;

.field private static removeDownloadListener:Lccsansan/bu/getDownloadingList;

.field private static final unifiedDownload:Lccsansan/r/addDownloadListener;


# instance fields
.field private addDownloadListener:Lccsansan/ab/removeDownloadListener$addDownloadListener;

.field private deleteDownItem:Ljava/lang/Boolean;

.field private getDownloadStatusByUrl:Ljava/lang/String;

.field private getDownloadedCount:Z

.field private getDownloadedList:I

.field private getDownloadedRecordByUrl:Lccsansan/ab/removeDownloadListener$getDownloadingList;

.field private getDownloadingList:Ljava/lang/String;

.field private getDownloadingRecordByUrl:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lccsansan/ab/removeDownloadListener$IncentiveDownloadUtils;

    invoke-direct {v0}, Lccsansan/ab/removeDownloadListener$IncentiveDownloadUtils;-><init>()V

    sput-object v0, Lccsansan/ab/removeDownloadListener;->unifiedDownload:Lccsansan/r/addDownloadListener;

    return-void
.end method

.method public constructor <init>(Lccsansan/ab/removeDownloadListener$addDownloadListener;Lccsansan/ab/removeDownloadListener$getDownloadingList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    const/16 p4, -0x3e9

    iput p4, p0, Lccsansan/ab/removeDownloadListener;->getDownloadedList:I

    .line 6
    sget-object p4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object p4, p0, Lccsansan/ab/removeDownloadListener;->deleteDownItem:Ljava/lang/Boolean;

    .line 7
    const/4 p4, 0x1

    iput-boolean p4, p0, Lccsansan/ab/removeDownloadListener;->getDownloadedCount:Z

    .line 10
    iput-object p1, p0, Lccsansan/ab/removeDownloadListener;->addDownloadListener:Lccsansan/ab/removeDownloadListener$addDownloadListener;

    .line 11
    iput-object p2, p0, Lccsansan/ab/removeDownloadListener;->getDownloadedRecordByUrl:Lccsansan/ab/removeDownloadListener$getDownloadingList;

    .line 12
    iput-object p3, p0, Lccsansan/ab/removeDownloadListener;->getDownloadStatusByUrl:Ljava/lang/String;

    .line 14
    iput-object p5, p0, Lccsansan/ab/removeDownloadListener;->getDownloadingRecordByUrl:Ljava/lang/String;

    return-void
.end method

.method public static IncentiveDownloadUtils(Lccsanandroid/content/Context;)Lccsansan/ab/removeDownloadListener;
    .locals 9

    .line 2
    invoke-virtual {p0}, Lccsanandroid/content/Context;->getApplicationContext()Lccsanandroid/content/Context;

    move-result-object v0

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Lccsanandroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsanandroid/telephony/TelephonyManager;

    .line 3
    invoke-virtual {p0}, Lccsanandroid/content/Context;->getApplicationContext()Lccsanandroid/content/Context;

    move-result-object v1

    const-string v2, "connectivity"

    invoke-virtual {v1, v2}, Lccsanandroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lccsanandroid/net/ConnectivityManager;

    .line 5
    new-instance v8, Lccsansan/ab/removeDownloadListener;

    sget-object v3, Lccsansan/ab/removeDownloadListener$addDownloadListener;->OFFLINE:Lccsansan/ab/removeDownloadListener$addDownloadListener;

    sget-object v4, Lccsansan/ab/removeDownloadListener$getDownloadingList;->UNKNOWN:Lccsansan/ab/removeDownloadListener$getDownloadingList;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, v8

    invoke-direct/range {v2 .. v7}, Lccsansan/ab/removeDownloadListener;-><init>(Lccsansan/ab/removeDownloadListener$addDownloadListener;Lccsansan/ab/removeDownloadListener$getDownloadingList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_9

    if-nez v1, :cond_0

    goto/16 :goto_3

    .line 12
    :cond_0
    invoke-virtual {v0}, Lccsanandroid/telephony/TelephonyManager;->getSimOperatorName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v8, Lccsansan/ab/removeDownloadListener;->getDownloadStatusByUrl:Ljava/lang/String;

    .line 13
    invoke-virtual {v0}, Lccsanandroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v8, Lccsansan/ab/removeDownloadListener;->getDownloadingRecordByUrl:Ljava/lang/String;

    .line 14
    iget-object v2, v8, Lccsansan/ab/removeDownloadListener;->getDownloadStatusByUrl:Ljava/lang/String;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1

    iget-object v2, v8, Lccsansan/ab/removeDownloadListener;->getDownloadStatusByUrl:Ljava/lang/String;

    const-string v3, "null"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 15
    :cond_1
    invoke-static {}, Lccsansan/bw/setAdFormat;->IncentiveDownloadUtils()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v8, Lccsansan/ab/removeDownloadListener;->getDownloadStatusByUrl:Ljava/lang/String;

    :cond_2
    const/4 v2, 0x0

    .line 19
    :try_start_0
    invoke-virtual {v1}, Lccsanandroid/net/ConnectivityManager;->getActiveNetworkInfo()Lccsanandroid/net/NetworkInfo;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 21
    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    const-string v3, "NetworkStatus"

    invoke-static {v3, v1}, Lccsansan/ch/IncentiveDownloadUtils;->addDownloadListener(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    if-eqz v2, :cond_8

    .line 23
    invoke-virtual {v2}, Lccsanandroid/net/NetworkInfo;->isAvailable()Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_2

    .line 29
    :cond_3
    invoke-virtual {v2}, Lccsanandroid/net/NetworkInfo;->getType()I

    move-result v1

    .line 30
    invoke-virtual {v2}, Lccsanandroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    iput-boolean v2, v8, Lccsansan/ab/removeDownloadListener;->getDownloadedCount:Z

    if-nez v1, :cond_4

    .line 33
    sget-object p0, Lccsansan/ab/removeDownloadListener$addDownloadListener;->MOBILE:Lccsansan/ab/removeDownloadListener$addDownloadListener;

    iput-object p0, v8, Lccsansan/ab/removeDownloadListener;->addDownloadListener:Lccsansan/ab/removeDownloadListener$addDownloadListener;

    .line 34
    invoke-static {v0}, Lccsansan/ab/removeDownloadListener;->removeDownloadListener(Lccsanandroid/telephony/TelephonyManager;)I

    move-result p0

    .line 35
    iput p0, v8, Lccsansan/ab/removeDownloadListener;->getDownloadedList:I

    .line 36
    invoke-static {p0}, Lccsansan/ab/removeDownloadListener;->removeDownloadListener(I)Lccsansan/ab/removeDownloadListener$getDownloadingList;

    move-result-object p0

    iput-object p0, v8, Lccsansan/ab/removeDownloadListener;->getDownloadedRecordByUrl:Lccsansan/ab/removeDownloadListener$getDownloadingList;

    goto :goto_1

    :cond_4
    const/4 v0, 0x1

    if-ne v1, v0, :cond_7

    .line 40
    invoke-virtual {p0}, Lccsanandroid/content/Context;->getApplicationContext()Lccsanandroid/content/Context;

    move-result-object p0

    const-string v0, "wifi"

    invoke-virtual {p0, v0}, Lccsanandroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lccsanandroid/net/wifi/WifiManager;

    if-eqz p0, :cond_6

    .line 42
    invoke-virtual {p0}, Lccsanandroid/net/wifi/WifiManager;->getConnectionInfo()Lccsanandroid/net/wifi/WifiInfo;

    move-result-object p0

    if-eqz p0, :cond_6

    .line 44
    invoke-virtual {p0}, Lccsanandroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 45
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 46
    :cond_5
    invoke-virtual {p0}, Lccsanandroid/net/wifi/WifiInfo;->getIpAddress()I

    move-result p0

    invoke-static {p0}, Lccsansan/ab/removeDownloadListener;->addDownloadListener(I)Ljava/lang/String;

    move-result-object p0

    .line 47
    sget-object v1, Lccsansan/ab/removeDownloadListener;->IncentiveDownloadUtils:Lccsansan/ab/removeDownloadListener$removeDownloadListener;

    if-eqz v1, :cond_6

    if-eqz v0, :cond_6

    .line 48
    const-string v2, "\""

    const-string v3, ""

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, p0, v0}, Lccsansan/ab/removeDownloadListener$removeDownloadListener;->addDownloadListener(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    iput-object p0, v8, Lccsansan/ab/removeDownloadListener;->deleteDownItem:Ljava/lang/Boolean;

    .line 51
    :cond_6
    sget-object p0, Lccsansan/ab/removeDownloadListener$addDownloadListener;->WIFI:Lccsansan/ab/removeDownloadListener$addDownloadListener;

    iput-object p0, v8, Lccsansan/ab/removeDownloadListener;->addDownloadListener:Lccsansan/ab/removeDownloadListener$addDownloadListener;

    goto :goto_1

    .line 54
    :cond_7
    sget-object p0, Lccsansan/ab/removeDownloadListener$addDownloadListener;->UNKNOWN:Lccsansan/ab/removeDownloadListener$addDownloadListener;

    iput-object p0, v8, Lccsansan/ab/removeDownloadListener;->addDownloadListener:Lccsansan/ab/removeDownloadListener$addDownloadListener;

    .line 55
    :goto_1
    invoke-static {v8}, Lccsansan/ab/removeDownloadListener;->removeDownloadListener(Lccsansan/ab/removeDownloadListener;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v8, Lccsansan/ab/removeDownloadListener;->getDownloadingList:Ljava/lang/String;

    return-object v8

    .line 56
    :cond_8
    :goto_2
    invoke-static {v8}, Lccsansan/ab/removeDownloadListener;->removeDownloadListener(Lccsansan/ab/removeDownloadListener;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v8, Lccsansan/ab/removeDownloadListener;->getDownloadingList:Ljava/lang/String;

    return-object v8

    .line 57
    :cond_9
    :goto_3
    invoke-static {v8}, Lccsansan/ab/removeDownloadListener;->removeDownloadListener(Lccsansan/ab/removeDownloadListener;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v8, Lccsansan/ab/removeDownloadListener;->getDownloadingList:Ljava/lang/String;

    return-object v8
.end method

.method private static addDownloadListener(I)Ljava/lang/String;
    .locals 3

    .line 9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    and-int/lit16 v1, p0, 0xff

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    shr-int/lit8 v2, p0, 0x8

    and-int/lit16 v2, v2, 0xff

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    shr-int/lit8 v2, p0, 0x10

    and-int/lit16 v2, v2, 0xff

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    shr-int/lit8 p0, p0, 0x18

    and-int/lit16 p0, p0, 0xff

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getDownloadingList(Lccsanandroid/content/Context;)Lccsansan/ab/removeDownloadListener$addDownloadListener;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lccsanandroid/content/Context;->getApplicationContext()Lccsanandroid/content/Context;

    move-result-object p0

    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Lccsanandroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lccsanandroid/net/ConnectivityManager;

    if-nez p0, :cond_0

    .line 3
    sget-object p0, Lccsansan/ab/removeDownloadListener$addDownloadListener;->OFFLINE:Lccsansan/ab/removeDownloadListener$addDownloadListener;

    return-object p0

    :cond_0
    const/4 v0, 0x0

    .line 8
    :try_start_0
    invoke-virtual {p0}, Lccsanandroid/net/ConnectivityManager;->getActiveNetworkInfo()Lccsanandroid/net/NetworkInfo;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 10
    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    const-string v1, "NetworkStatus"

    invoke-static {v1, p0}, Lccsansan/ch/IncentiveDownloadUtils;->addDownloadListener(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    if-eqz v0, :cond_4

    .line 12
    invoke-virtual {v0}, Lccsanandroid/net/NetworkInfo;->isAvailable()Z

    move-result p0

    if-nez p0, :cond_1

    goto :goto_2

    .line 16
    :cond_1
    invoke-virtual {v0}, Lccsanandroid/net/NetworkInfo;->getType()I

    move-result p0

    if-nez p0, :cond_2

    .line 17
    sget-object p0, Lccsansan/ab/removeDownloadListener$addDownloadListener;->MOBILE:Lccsansan/ab/removeDownloadListener$addDownloadListener;

    goto :goto_1

    :cond_2
    const/4 v0, 0x1

    if-ne p0, v0, :cond_3

    sget-object p0, Lccsansan/ab/removeDownloadListener$addDownloadListener;->WIFI:Lccsansan/ab/removeDownloadListener$addDownloadListener;

    goto :goto_1

    :cond_3
    sget-object p0, Lccsansan/ab/removeDownloadListener$addDownloadListener;->UNKNOWN:Lccsansan/ab/removeDownloadListener$addDownloadListener;

    :goto_1
    return-object p0

    .line 18
    :cond_4
    :goto_2
    sget-object p0, Lccsansan/ab/removeDownloadListener$addDownloadListener;->OFFLINE:Lccsansan/ab/removeDownloadListener$addDownloadListener;

    return-object p0
.end method

.method static synthetic getDownloadingList()Lccsansan/bu/getDownloadingList;
    .locals 1

    .line 1
    sget-object v0, Lccsansan/ab/removeDownloadListener;->removeDownloadListener:Lccsansan/bu/getDownloadingList;

    return-object v0
.end method

.method private static removeDownloadListener(Lccsanandroid/telephony/TelephonyManager;)I
    .locals 2

    .line 70
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-ge v0, v1, :cond_0

    .line 71
    invoke-virtual {p0}, Lccsanandroid/telephony/TelephonyManager;->getNetworkType()I

    move-result p0

    return p0

    .line 74
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lccsanandroid/telephony/TelephonyManager;->getDataNetworkType()I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    const/4 p0, 0x0

    return p0
.end method

.method private static removeDownloadListener(Lccsansan/ab/removeDownloadListener;)Ljava/lang/String;
    .locals 4

    .line 58
    sget-object v0, Lccsansan/ab/removeDownloadListener$unifiedDownload;->addDownloadListener:[I

    invoke-virtual {p0}, Lccsansan/ab/removeDownloadListener;->IncentiveDownloadUtils()Lccsansan/ab/removeDownloadListener$addDownloadListener;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_6

    const/4 v2, 0x2

    if-eq v0, v2, :cond_4

    const/4 v3, 0x3

    if-eq v0, v3, :cond_0

    const-string p0, "UNKNOWN"

    return-object p0

    .line 64
    :cond_0
    sget-object v0, Lccsansan/ab/removeDownloadListener$unifiedDownload;->getDownloadingList:[I

    iget-object p0, p0, Lccsansan/ab/removeDownloadListener;->getDownloadedRecordByUrl:Lccsansan/ab/removeDownloadListener$getDownloadingList;

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    if-eq p0, v1, :cond_3

    if-eq p0, v2, :cond_2

    if-eq p0, v3, :cond_1

    const-string p0, "MOBILE_UNKNOWN"

    return-object p0

    :cond_1
    const-string p0, "MOBILE_4G"

    return-object p0

    :cond_2
    const-string p0, "MOBILE_3G"

    return-object p0

    :cond_3
    const-string p0, "MOBILE_2G"

    return-object p0

    .line 65
    :cond_4
    iget-object p0, p0, Lccsansan/ab/removeDownloadListener;->deleteDownItem:Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_5

    const-string p0, "WIFI_HOT"

    goto :goto_0

    :cond_5
    const-string p0, "WIFI"

    :goto_0
    return-object p0

    :cond_6
    const-string p0, "OFFLINE"

    return-object p0
.end method

.method public static removeDownloadListener(I)Lccsansan/ab/removeDownloadListener$getDownloadingList;
    .locals 0

    packed-switch p0, :pswitch_data_0

    .line 66
    sget-object p0, Lccsansan/ab/removeDownloadListener$getDownloadingList;->UNKNOWN:Lccsansan/ab/removeDownloadListener$getDownloadingList;

    return-object p0

    .line 67
    :pswitch_0
    sget-object p0, Lccsansan/ab/removeDownloadListener$getDownloadingList;->MOBILE_4G:Lccsansan/ab/removeDownloadListener$getDownloadingList;

    return-object p0

    .line 68
    :pswitch_1
    sget-object p0, Lccsansan/ab/removeDownloadListener$getDownloadingList;->MOBILE_3G:Lccsansan/ab/removeDownloadListener$getDownloadingList;

    return-object p0

    .line 69
    :pswitch_2
    sget-object p0, Lccsansan/ab/removeDownloadListener$getDownloadingList;->MOBILE_2G:Lccsansan/ab/removeDownloadListener$getDownloadingList;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static removeDownloadListener(Lccsanandroid/content/Context;)Lccsansan/ab/removeDownloadListener;
    .locals 6

    .line 1
    sget-object v0, Lccsansan/ab/removeDownloadListener;->removeDownloadListener:Lccsansan/bu/getDownloadingList;

    if-nez v0, :cond_0

    .line 2
    invoke-static {}, Lccsansan/r/IncentiveDownloadUtils;->removeDownloadListener()Lccsansan/r/IncentiveDownloadUtils;

    move-result-object v0

    sget-object v1, Lccsansan/ab/removeDownloadListener;->unifiedDownload:Lccsansan/r/addDownloadListener;

    const-string v2, "connectivity_change"

    invoke-virtual {v0, v2, v1}, Lccsansan/r/IncentiveDownloadUtils;->addDownloadListener(Ljava/lang/String;Lccsansan/r/addDownloadListener;)V

    .line 3
    new-instance v0, Lccsansan/bu/getDownloadingList;

    invoke-static {p0}, Lccsansan/ab/removeDownloadListener;->IncentiveDownloadUtils(Lccsanandroid/content/Context;)Lccsansan/ab/removeDownloadListener;

    move-result-object p0

    const/4 v3, 0x1

    const-wide/16 v4, 0x3e8

    invoke-direct {v0, p0, v3, v4, v5}, Lccsansan/bu/getDownloadingList;-><init>(Ljava/lang/Object;ZJ)V

    sput-object v0, Lccsansan/ab/removeDownloadListener;->removeDownloadListener:Lccsansan/bu/getDownloadingList;

    .line 4
    invoke-static {}, Lccsansan/r/IncentiveDownloadUtils;->removeDownloadListener()Lccsansan/r/IncentiveDownloadUtils;

    move-result-object p0

    invoke-virtual {p0, v2, v1}, Lccsansan/r/IncentiveDownloadUtils;->getDownloadingList(Ljava/lang/String;Lccsansan/r/addDownloadListener;)V

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {v0}, Lccsansan/bu/getDownloadingList;->removeDownloadListener()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6
    sget-object v0, Lccsansan/ab/removeDownloadListener;->removeDownloadListener:Lccsansan/bu/getDownloadingList;

    invoke-static {p0}, Lccsansan/ab/removeDownloadListener;->IncentiveDownloadUtils(Lccsanandroid/content/Context;)Lccsansan/ab/removeDownloadListener;

    move-result-object p0

    invoke-virtual {v0, p0}, Lccsansan/bu/getDownloadingList;->removeDownloadListener(Ljava/lang/Object;)V

    .line 8
    :cond_1
    :goto_0
    sget-object p0, Lccsansan/ab/removeDownloadListener;->removeDownloadListener:Lccsansan/bu/getDownloadingList;

    invoke-virtual {p0}, Lccsansan/bu/getDownloadingList;->addDownloadListener()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lccsansan/ab/removeDownloadListener;

    return-object p0
.end method


# virtual methods
.method public IncentiveDownloadUtils()Lccsansan/ab/removeDownloadListener$addDownloadListener;
    .locals 1

    .line 1
    iget-object v0, p0, Lccsansan/ab/removeDownloadListener;->addDownloadListener:Lccsansan/ab/removeDownloadListener$addDownloadListener;

    return-object v0
.end method

.method public addDownloadListener()Ljava/lang/String;
    .locals 3

    .line 1
    sget-object v0, Lccsansan/ab/removeDownloadListener$addDownloadListener;->OFFLINE:Lccsansan/ab/removeDownloadListener$addDownloadListener;

    iget-object v1, p0, Lccsansan/ab/removeDownloadListener;->addDownloadListener:Lccsansan/ab/removeDownloadListener$addDownloadListener;

    invoke-virtual {v0, v1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lccsansan/ab/removeDownloadListener;->getDownloadingList:Ljava/lang/String;

    return-object v0

    .line 4
    :cond_0
    iget-boolean v0, p0, Lccsansan/ab/removeDownloadListener;->getDownloadedCount:Z

    if-eqz v0, :cond_1

    const-string v0, "_CONNECT"

    goto :goto_0

    :cond_1
    const-string v0, "_OFFLINE"

    .line 8
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lccsansan/ab/removeDownloadListener;->getDownloadingList:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDownloadStatusByUrl()Lccsansan/ab/removeDownloadListener$getDownloadingList;
    .locals 1

    .line 19
    iget-object v0, p0, Lccsansan/ab/removeDownloadListener;->getDownloadedRecordByUrl:Lccsansan/ab/removeDownloadListener$getDownloadingList;

    return-object v0
.end method

.method public getDownloadedList()Ljava/lang/String;
    .locals 1

    .line 10
    iget-object v0, p0, Lccsansan/ab/removeDownloadListener;->getDownloadStatusByUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getDownloadingRecordByUrl()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lccsansan/ab/removeDownloadListener;->getDownloadingRecordByUrl:Ljava/lang/String;

    return-object v0
.end method

.method public removeDownloadListener()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lccsansan/ab/removeDownloadListener;->getDownloadingList:Ljava/lang/String;

    return-object v0
.end method

.method public unifiedDownload()I
    .locals 2

    .line 1
    iget-object v0, p0, Lccsansan/ab/removeDownloadListener;->addDownloadListener:Lccsansan/ab/removeDownloadListener$addDownloadListener;

    sget-object v1, Lccsansan/ab/removeDownloadListener$addDownloadListener;->MOBILE:Lccsansan/ab/removeDownloadListener$addDownloadListener;

    if-ne v0, v1, :cond_0

    .line 2
    iget v0, p0, Lccsansan/ab/removeDownloadListener;->getDownloadedList:I

    return v0

    :cond_0
    const/16 v0, -0x3e9

    return v0
.end method
