.class public Lccsansan/cy/getDownloadedRecordByUrl;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsansan/cy/getDownloadedRecordByUrl$addDownloadListener;
    }
.end annotation


# static fields
.field private static IncentiveDownloadUtils:Lccsansan/a/addDownloadListener; = null

.field protected static addDownloadListener:Ljava/lang/String; = "AD.AdNetListener"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-static {}, Lccsansan/r/IncentiveDownloadUtils;->removeDownloadListener()Lccsansan/r/IncentiveDownloadUtils;

    move-result-object v0

    new-instance v1, Lccsansan/cy/getDownloadedRecordByUrl$IncentiveDownloadUtils;

    invoke-direct {v1, p0}, Lccsansan/cy/getDownloadedRecordByUrl$IncentiveDownloadUtils;-><init>(Lccsansan/cy/getDownloadedRecordByUrl;)V

    const-string v2, "connectivity_change"

    invoke-virtual {v0, v2, v1}, Lccsansan/r/IncentiveDownloadUtils;->getDownloadingList(Ljava/lang/String;Lccsansan/r/addDownloadListener;)V

    return-void
.end method

.method synthetic constructor <init>(Lccsansan/cy/getDownloadedRecordByUrl$IncentiveDownloadUtils;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lccsansan/cy/getDownloadedRecordByUrl;-><init>()V

    return-void
.end method

.method public static IncentiveDownloadUtils()Lccsansan/cy/getDownloadedRecordByUrl;
    .locals 1

    .line 1
    invoke-static {}, Lccsansan/cy/getDownloadedRecordByUrl$addDownloadListener;->IncentiveDownloadUtils()Lccsansan/cy/getDownloadedRecordByUrl;

    move-result-object v0

    return-object v0
.end method

.method public static getDownloadingList()V
    .locals 3

    .line 1
    new-instance v0, Lccsansan/a/addDownloadListener;

    invoke-direct {v0}, Lccsansan/a/addDownloadListener;-><init>()V

    sput-object v0, Lccsansan/cy/getDownloadedRecordByUrl;->IncentiveDownloadUtils:Lccsansan/a/addDownloadListener;

    .line 2
    new-instance v0, Lccsanandroid/content/IntentFilter;

    invoke-direct {v0}, Lccsanandroid/content/IntentFilter;-><init>()V

    .line 3
    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v1}, Lccsanandroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 4
    const-string v1, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v1}, Lccsanandroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 5
    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Lccsanandroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 6
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v1

    sget-object v2, Lccsansan/cy/getDownloadedRecordByUrl;->IncentiveDownloadUtils:Lccsansan/a/addDownloadListener;

    invoke-virtual {v1, v2, v0}, Lccsanandroid/content/Context;->registerReceiver(Lccsanandroid/content/BroadcastReceiver;Lccsanandroid/content/IntentFilter;)Lccsanandroid/content/Intent;

    .line 8
    invoke-static {}, Lccsansan/cy/getDownloadedRecordByUrl;->IncentiveDownloadUtils()Lccsansan/cy/getDownloadedRecordByUrl;

    return-void
.end method
