.class public Lccsansan/t/unifiedDownload;
.super Lccsanandroid/content/BroadcastReceiver;
.source ""


# static fields
.field private static unifiedDownload:Lccsansan/t/unifiedDownload;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lccsanandroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public static addDownloadListener(Lccsanandroid/content/Context;)V
    .locals 4

    .line 1
    :try_start_0
    new-instance v0, Lccsanandroid/content/IntentFilter;

    invoke-direct {v0}, Lccsanandroid/content/IntentFilter;-><init>()V

    const-string v1, "android.net.wifi.SCAN_RESULTS"

    .line 2
    invoke-virtual {v0, v1}, Lccsanandroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    .line 3
    invoke-virtual {v0, v1}, Lccsanandroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.net.wifi.STATE_CHANGE"

    .line 4
    invoke-virtual {v0, v1}, Lccsanandroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.ACTION_POWER_CONNECTED"

    .line 5
    invoke-virtual {v0, v1}, Lccsanandroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.USER_PRESENT"

    .line 6
    invoke-virtual {v0, v1}, Lccsanandroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.SCREEN_ON"

    .line 7
    invoke-virtual {v0, v1}, Lccsanandroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.SCREEN_OFF"

    .line 8
    invoke-virtual {v0, v1}, Lccsanandroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 10
    new-instance v1, Lccsanandroid/content/IntentFilter;

    invoke-direct {v1}, Lccsanandroid/content/IntentFilter;-><init>()V

    const-string v2, "file"

    .line 11
    invoke-virtual {v1, v2}, Lccsanandroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    const-string v2, "android.intent.action.MEDIA_UNMOUNTED"

    .line 12
    invoke-virtual {v1, v2}, Lccsanandroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.intent.action.MEDIA_MOUNTED"

    .line 13
    invoke-virtual {v1, v2}, Lccsanandroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 15
    new-instance v2, Lccsanandroid/content/IntentFilter;

    invoke-direct {v2}, Lccsanandroid/content/IntentFilter;-><init>()V

    const-string v3, "package"

    .line 16
    invoke-virtual {v2, v3}, Lccsanandroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    const-string v3, "android.intent.action.PACKAGE_ADDED"

    .line 17
    invoke-virtual {v2, v3}, Lccsanandroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v3, "android.intent.action.PACKAGE_REMOVED"

    .line 18
    invoke-virtual {v2, v3}, Lccsanandroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v3, "android.intent.action.PACKAGE_REPLACED"

    .line 19
    invoke-virtual {v2, v3}, Lccsanandroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 21
    new-instance v3, Lccsansan/t/unifiedDownload;

    invoke-direct {v3}, Lccsansan/t/unifiedDownload;-><init>()V

    sput-object v3, Lccsansan/t/unifiedDownload;->unifiedDownload:Lccsansan/t/unifiedDownload;

    .line 22
    invoke-virtual {p0, v3, v0}, Lccsanandroid/content/Context;->registerReceiver(Lccsanandroid/content/BroadcastReceiver;Lccsanandroid/content/IntentFilter;)Lccsanandroid/content/Intent;

    .line 23
    sget-object v0, Lccsansan/t/unifiedDownload;->unifiedDownload:Lccsansan/t/unifiedDownload;

    invoke-virtual {p0, v0, v1}, Lccsanandroid/content/Context;->registerReceiver(Lccsanandroid/content/BroadcastReceiver;Lccsanandroid/content/IntentFilter;)Lccsanandroid/content/Intent;

    .line 24
    sget-object v0, Lccsansan/t/unifiedDownload;->unifiedDownload:Lccsansan/t/unifiedDownload;

    invoke-virtual {p0, v0, v2}, Lccsanandroid/content/Context;->registerReceiver(Lccsanandroid/content/BroadcastReceiver;Lccsanandroid/content/IntentFilter;)Lccsanandroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    :goto_0
    return-void
.end method

.method public static removeDownloadListener(Lccsanandroid/content/Context;)V
    .locals 1

    if-eqz p0, :cond_0

    .line 1
    sget-object v0, Lccsansan/t/unifiedDownload;->unifiedDownload:Lccsansan/t/unifiedDownload;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0, v0}, Lccsanandroid/content/Context;->unregisterReceiver(Lccsanandroid/content/BroadcastReceiver;)V

    const/4 p0, 0x0

    .line 3
    sput-object p0, Lccsansan/t/unifiedDownload;->unifiedDownload:Lccsansan/t/unifiedDownload;

    :cond_0
    return-void
.end method


# virtual methods
.method public onReceive(Lccsanandroid/content/Context;Lccsanandroid/content/Intent;)V
    .locals 1

    if-eqz p2, :cond_e

    .line 1
    invoke-virtual {p2}, Lccsanandroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    goto/16 :goto_2

    .line 4
    :cond_0
    invoke-virtual {p2}, Lccsanandroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 5
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onReceive:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "GlobalReceiver"

    invoke-static {v0, p2}, Lccsansan/ch/IncentiveDownloadUtils;->getDownloadingList(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    invoke-static {p1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_1

    return-void

    .line 9
    :cond_1
    invoke-static {p1}, Lccsansan/t/getDownloadingList;->addDownloadListener(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 10
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    const/4 p2, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    :goto_0
    goto/16 :goto_1

    :sswitch_0
    const-string v0, "ScreenOff"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const/16 p2, 0xb

    goto/16 :goto_1

    :sswitch_1
    const-string v0, "Connectivity"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    const/16 p2, 0xa

    goto/16 :goto_1

    :sswitch_2
    const-string v0, "PowerConnected"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    goto :goto_0

    :cond_4
    const/16 p2, 0x9

    goto/16 :goto_1

    :sswitch_3
    const-string v0, "UserPresent"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    goto :goto_0

    :cond_5
    const/16 p2, 0x8

    goto/16 :goto_1

    :sswitch_4
    const-string v0, "PackageReplaced"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    goto :goto_0

    :cond_6
    const/4 p2, 0x7

    goto :goto_1

    :sswitch_5
    const-string v0, "Unmounted"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    goto :goto_0

    :cond_7
    const/4 p2, 0x6

    goto :goto_1

    :sswitch_6
    const-string v0, "PackageRemoved"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_8

    goto :goto_0

    :cond_8
    const/4 p2, 0x5

    goto :goto_1

    :sswitch_7
    const-string v0, "ScreenOn"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_9

    goto :goto_0

    :cond_9
    const/4 p2, 0x4

    goto :goto_1

    :sswitch_8
    const-string v0, "NetWorkStateChanged"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_a

    goto :goto_0

    :cond_a
    const/4 p2, 0x3

    goto :goto_1

    :sswitch_9
    const-string v0, "Mounted"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_b

    goto :goto_0

    :cond_b
    const/4 p2, 0x2

    goto :goto_1

    :sswitch_a
    const-string v0, "PackageAdded"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_c

    goto/16 :goto_0

    :cond_c
    const/4 p2, 0x1

    goto :goto_1

    :sswitch_b
    const-string v0, "WifiStateChanged"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_d

    goto/16 :goto_0

    :cond_d
    const/4 p2, 0x0

    :goto_1
    packed-switch p2, :pswitch_data_0

    goto :goto_2

    .line 25
    :pswitch_0
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object p1

    const-string p2, "broadcast_user_action"

    invoke-static {p1, p2}, Lccsansan/y/getDownloadingList;->unifiedDownload(Lccsanandroid/content/Context;Ljava/lang/String;)V

    goto :goto_2

    .line 26
    :pswitch_1
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object p1

    const-string p2, "broadcast_net_changed"

    invoke-static {p1, p2}, Lccsansan/y/getDownloadingList;->unifiedDownload(Lccsanandroid/content/Context;Ljava/lang/String;)V

    :cond_e
    :goto_2
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x6a288f48 -> :sswitch_b
        -0x67c33386 -> :sswitch_a
        -0x52b1c1a8 -> :sswitch_9
        -0x1727f9cf -> :sswitch_8
        -0x14ae3c75 -> :sswitch_7
        0x1be0d5a -> :sswitch_6
        0x278fc99f -> :sswitch_5
        0x3aee4e76 -> :sswitch_4
        0x3e730250 -> :sswitch_3
        0x6f8daba4 -> :sswitch_2
        0x7c6ebdd7 -> :sswitch_1
        0x7ee6ad43 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
