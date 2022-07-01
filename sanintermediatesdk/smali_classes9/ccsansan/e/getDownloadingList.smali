.class public Lccsansan/e/getDownloadingList;
.super Lccsanandroid/service/notification/NotificationListenerService;
.source ""


# static fields
.field private static IncentiveDownloadUtils:J = 0x0L

.field private static addDownloadListener:J = 0x0L

.field private static unifiedDownload:J = 0x2bf20L


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lccsanandroid/service/notification/NotificationListenerService;-><init>()V

    return-void
.end method

.method private static IncentiveDownloadUtils(Lccsanandroid/content/Context;)V
    .locals 2

    .line 6
    const-string v0, "keepalive"

    const-string v1, "reserve_keep_alive"

    invoke-static {p0, v0, v1}, Lccsancom/san/bridge/addDownloadListener;->removeDownloadListener(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic addDownloadListener(Lccsanandroid/content/Context;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lccsansan/e/getDownloadingList;->IncentiveDownloadUtils(Lccsanandroid/content/Context;)V

    return-void
.end method

.method private static addDownloadListener(Ljava/lang/String;)Z
    .locals 5

    .line 40
    invoke-static {p0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 44
    :cond_0
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v0

    const-string v2, "notify_config"

    invoke-static {v0, v2}, Lccsansan/bw/performActionWhenOffline;->removeDownloadListener(Lccsanandroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 45
    invoke-static {v0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    return v1

    .line 49
    :cond_1
    :try_start_0
    new-instance v2, Lccsanorg/json/JSONObject;

    invoke-direct {v2, v0}, Lccsanorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "enable"

    .line 50
    invoke-virtual {v2, v0}, Lccsanorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 51
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_2

    return v1

    .line 55
    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v3, "pkgs"

    .line 56
    invoke-virtual {v2, v3}, Lccsanorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lccsanorg/json/JSONArray;

    move-result-object v2

    const/4 v3, 0x0

    .line 57
    :goto_0
    invoke-virtual {v2}, Lccsanorg/json/JSONArray;->length()I

    move-result v4

    if-ge v3, v4, :cond_3

    .line 58
    invoke-virtual {v2, v3}, Lccsanorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 60
    :cond_3
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_4

    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception p0

    :cond_4
    return v1
.end method

.method private static removeDownloadListener()J
    .locals 4

    .line 65
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v0

    const-string v1, "notify_config"

    invoke-static {v0, v1}, Lccsansan/bw/performActionWhenOffline;->removeDownloadListener(Lccsanandroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 66
    invoke-static {v0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const-wide/32 v2, 0x2bf20

    if-eqz v1, :cond_0

    return-wide v2

    .line 70
    :cond_0
    :try_start_0
    new-instance v1, Lccsanorg/json/JSONObject;

    invoke-direct {v1, v0}, Lccsanorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "interval"

    .line 71
    invoke-virtual {v1, v0, v2, v3}, Lccsanorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    move-exception v0

    return-wide v2
.end method

.method private static removeDownloadListener(Lccsanandroid/service/notification/StatusBarNotification;)V
    .locals 12

    const-string v0, "android.text"

    const-string v1, "android.title"

    .line 2
    invoke-virtual {p0}, Lccsanandroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sget-wide v5, Lccsansan/e/getDownloadingList;->IncentiveDownloadUtils:J

    sub-long/2addr v3, v5

    sget-wide v5, Lccsansan/e/getDownloadingList;->unifiedDownload:J

    cmp-long v7, v3, v5

    if-gez v7, :cond_0

    return-void

    .line 7
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "pkgName = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "; id = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lccsanandroid/service/notification/StatusBarNotification;->getId()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "NotifyManager"

    invoke-static {v4, v3}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sput-wide v5, Lccsansan/e/getDownloadingList;->IncentiveDownloadUtils:J

    .line 9
    invoke-static {}, Lccsansan/e/getDownloadingList;->removeDownloadListener()J

    move-result-wide v5

    sput-wide v5, Lccsansan/e/getDownloadingList;->unifiedDownload:J

    .line 10
    invoke-static {v2}, Lccsansan/e/getDownloadingList;->addDownloadListener(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    return-void

    .line 14
    :cond_1
    invoke-virtual {p0}, Lccsanandroid/service/notification/StatusBarNotification;->getNotification()Lccsanandroid/app/Notification;

    move-result-object v3

    if-eqz v3, :cond_7

    .line 17
    :try_start_0
    iget-object v5, v3, Lccsanandroid/app/Notification;->extras:Lccsanandroid/os/Bundle;

    if-nez v5, :cond_2

    return-void

    .line 21
    :cond_2
    invoke-virtual {v5}, Lccsanandroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v6

    .line 22
    iget-object v3, v3, Lccsanandroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    if-nez v3, :cond_3

    const/4 v3, 0x0

    goto :goto_0

    :cond_3
    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    .line 23
    :goto_0
    invoke-virtual {v5, v1}, Lccsanandroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 24
    invoke-virtual {v5, v0}, Lccsanandroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 25
    invoke-virtual {p0}, Lccsanandroid/service/notification/StatusBarNotification;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 28
    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_4
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 29
    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v9

    const-string v10, "text"

    invoke-virtual {v9, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_5

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v9

    const-string v10, "title"

    invoke-virtual {v9, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 30
    :cond_5
    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_4

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_4

    .line 31
    invoke-virtual {v5, v6}, Lccsanandroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    if-eqz v9, :cond_4

    .line 33
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "notification.extras:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {p0, v6, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 37
    :cond_6
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    .line 39
    invoke-static {v2, v3, v7, v8, p0}, Lccsansan/l/IncentiveDownloadUtils;->removeDownloadListener(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p0

    :cond_7
    :goto_2
    return-void
.end method

.method public static unifiedDownload(Lccsanandroid/content/Context;Z)V
    .locals 1

    .line 61
    invoke-static {}, Lccsansan/e/getDownloadingList;->unifiedDownload()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 64
    :cond_0
    invoke-static {}, Lccsancom/san/ads/TaskHelper;->getInstance()Lccsancom/san/ads/TaskHelper;

    move-result-object p1

    new-instance v0, Lccsansan/e/getDownloadingList$removeDownloadListener;

    invoke-direct {v0, p0}, Lccsansan/e/getDownloadingList$removeDownloadListener;-><init>(Lccsanandroid/content/Context;)V

    invoke-virtual {p1, v0}, Lccsancom/san/ads/TaskHelper;->run(Lccsancom/san/ads/Task;)V

    return-void
.end method

.method public static unifiedDownload()Z
    .locals 7

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 2
    sget-wide v2, Lccsansan/e/getDownloadingList;->addDownloadListener:J

    sub-long v2, v0, v2

    const-wide/32 v4, 0xea60

    cmp-long v6, v2, v4

    if-gtz v6, :cond_0

    const/4 v0, 0x0

    return v0

    .line 5
    :cond_0
    sput-wide v0, Lccsansan/e/getDownloadingList;->addDownloadListener:J

    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public getResources()Lccsanandroid/content/res/Resources;
    .locals 1

    invoke-super {p0}, Lccsanandroid/service/notification/NotificationListenerService;->getResources()Lccsanandroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0}, Lccsansan/d/deleteDownItem;->IncentiveDownloadUtils(Lccsanandroid/content/res/Resources;)Lccsanandroid/content/res/Resources;

    move-result-object v0

    return-object v0
.end method

.method public onNotificationPosted(Lccsanandroid/service/notification/StatusBarNotification;)V
    .locals 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "#onNotificationPosted sbn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NotifyManagerService"

    invoke-static {v1, v0}, Lccsansan/ch/IncentiveDownloadUtils;->getDownloadingList(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    if-eqz p1, :cond_5

    .line 2
    invoke-virtual {p1}, Lccsanandroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 3
    invoke-virtual {p1}, Lccsanandroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lccsanandroid/service/notification/NotificationListenerService;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 4
    invoke-static {p0, v0}, Lccsansan/e/getDownloadingList;->unifiedDownload(Lccsanandroid/content/Context;Z)V

    .line 7
    :cond_0
    invoke-virtual {p1}, Lccsanandroid/service/notification/StatusBarNotification;->getTag()Ljava/lang/String;

    move-result-object v0

    .line 8
    invoke-virtual {p1}, Lccsanandroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 9
    const-string v2, "com.android.vending"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "com.sec.android.app.samsungapps"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_0

    .line 11
    :cond_1
    invoke-static {v0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 12
    :cond_2
    invoke-static {}, Lccsansan/e/removeDownloadListener;->unifiedDownload()Lccsansan/e/removeDownloadListener;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lccsansan/e/removeDownloadListener;->getDownloadingList(Lccsanandroid/service/notification/StatusBarNotification;Ljava/lang/String;)V

    goto :goto_1

    .line 13
    :cond_3
    :goto_0
    invoke-static {}, Lccsansan/e/removeDownloadListener;->unifiedDownload()Lccsansan/e/removeDownloadListener;

    move-result-object v0

    invoke-virtual {v0, p1, v1}, Lccsansan/e/removeDownloadListener;->getDownloadingList(Lccsanandroid/service/notification/StatusBarNotification;Ljava/lang/String;)V

    .line 17
    :cond_4
    :goto_1
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_6

    .line 18
    invoke-static {p1}, Lccsansan/e/getDownloadingList;->removeDownloadListener(Lccsanandroid/service/notification/StatusBarNotification;)V

    goto :goto_2

    :cond_5
    nop

    .line 21
    invoke-static {p0, v0}, Lccsansan/e/getDownloadingList;->unifiedDownload(Lccsanandroid/content/Context;Z)V

    :cond_6
    :goto_2
    return-void
.end method

.method public onNotificationRemoved(Lccsanandroid/service/notification/StatusBarNotification;)V
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p1}, Lccsanandroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 2
    invoke-virtual {p1}, Lccsanandroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lccsanandroid/service/notification/NotificationListenerService;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 3
    invoke-static {p0, v0}, Lccsansan/e/getDownloadingList;->unifiedDownload(Lccsanandroid/content/Context;Z)V

    goto :goto_0

    :cond_0
    nop

    .line 6
    invoke-static {p0, v0}, Lccsansan/e/getDownloadingList;->unifiedDownload(Lccsanandroid/content/Context;Z)V

    :cond_1
    :goto_0
    return-void
.end method
