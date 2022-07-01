.class public Lccsancom/vungle/warren/VungleApiClient;
.super Ljava/lang/Object;
.source "VungleApiClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsancom/vungle/warren/VungleApiClient$ClearTextTrafficException;,
        Lccsancom/vungle/warren/VungleApiClient$ConnectionTypeDetail;,
        Lccsancom/vungle/warren/VungleApiClient$WrapperFramework;,
        Lccsancom/vungle/warren/VungleApiClient$GzipRequestInterceptor;
    }
.end annotation


# static fields
.field private static BASE_URL:Ljava/lang/String; = null

.field private static final ID:Ljava/lang/String; = "id"

.field static final MANUFACTURER_AMAZON:Ljava/lang/String; = "Amazon"

.field private static final TAG:Ljava/lang/String;

.field protected static WRAPPER_FRAMEWORK_SELECTED:Lccsancom/vungle/warren/VungleApiClient$WrapperFramework;

.field private static headerUa:Ljava/lang/String;

.field private static logInterceptors:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lccsanokhttp3/Interceptor;",
            ">;"
        }
    .end annotation
.end field

.field private static networkInterceptors:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lccsanokhttp3/Interceptor;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private api:Lccsancom/vungle/warren/network/VungleApi;

.field private appBody:Lccsancom/google/gson/JsonObject;

.field private bustAnalyticsEndpoint:Ljava/lang/String;

.field private cacheBustEndpoint:Ljava/lang/String;

.field private cacheManager:Lccsancom/vungle/warren/persistence/CacheManager;

.field private client:Lccsanokhttp3/OkHttpClient;

.field private context:Lccsanandroid/content/Context;

.field private defaultIdFallbackDisabled:Z

.field private deviceBody:Lccsancom/google/gson/JsonObject;

.field private enableOm:Z

.field private gzipApi:Lccsancom/vungle/warren/network/VungleApi;

.field private isGooglePlayServicesAvailable:Ljava/lang/Boolean;

.field private logEndpoint:Ljava/lang/String;

.field private newEndpoint:Ljava/lang/String;

.field private final omInjector:Lccsancom/vungle/warren/omsdk/OMInjector;

.field private reportAdEndpoint:Ljava/lang/String;

.field private repository:Lccsancom/vungle/warren/persistence/Repository;

.field private requestAdEndpoint:Ljava/lang/String;

.field private retryAfterDataMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private riEndpoint:Ljava/lang/String;

.field private timeoutApi:Lccsancom/vungle/warren/network/VungleApi;

.field private timeoutProvider:Lccsancom/vungle/warren/utility/TimeoutProvider;

.field private uaString:Ljava/lang/String;

.field private userBody:Lccsancom/google/gson/JsonObject;

.field private willPlayAdEnabled:Z

.field private willPlayAdEndpoint:Ljava/lang/String;

.field private willPlayAdTimeout:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 99
    const-class v0, Lccsancom/vungle/warren/VungleApiClient;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lccsancom/vungle/warren/VungleApiClient;->TAG:Ljava/lang/String;

    .line 189
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 190
    sget-object v1, Lccsanandroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    const-string v2, "Amazon"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "VungleAmazon/"

    goto :goto_0

    :cond_0
    const-string v1, "VungleDroid/"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "6.10.2"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lccsancom/vungle/warren/VungleApiClient;->headerUa:Ljava/lang/String;

    .line 193
    const-string v0, "https://ads.api.vungle.com/"

    sput-object v0, Lccsancom/vungle/warren/VungleApiClient;->BASE_URL:Ljava/lang/String;

    .line 1300
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lccsancom/vungle/warren/VungleApiClient;->networkInterceptors:Ljava/util/Set;

    .line 1302
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lccsancom/vungle/warren/VungleApiClient;->logInterceptors:Ljava/util/Set;

    return-void
.end method

.method constructor <init>(Lccsanandroid/content/Context;Lccsancom/vungle/warren/persistence/CacheManager;Lccsancom/vungle/warren/persistence/Repository;Lccsancom/vungle/warren/omsdk/OMInjector;)V
    .locals 6
    .param p1, "context"    # Lccsanandroid/content/Context;
    .param p2, "cacheManager"    # Lccsancom/vungle/warren/persistence/CacheManager;
    .param p3, "repository"    # Lccsancom/vungle/warren/persistence/Repository;
    .param p4, "omInjector"    # Lccsancom/vungle/warren/omsdk/OMInjector;

    .line 225
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 202
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lccsancom/vungle/warren/VungleApiClient;->retryAfterDataMap:Ljava/util/Map;

    .line 214
    const-string v0, "http.agent"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lccsancom/vungle/warren/VungleApiClient;->uaString:Ljava/lang/String;

    .line 226
    iput-object p2, p0, Lccsancom/vungle/warren/VungleApiClient;->cacheManager:Lccsancom/vungle/warren/persistence/CacheManager;

    .line 227
    invoke-virtual {p1}, Lccsanandroid/content/Context;->getApplicationContext()Lccsanandroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lccsancom/vungle/warren/VungleApiClient;->context:Lccsanandroid/content/Context;

    .line 228
    iput-object p3, p0, Lccsancom/vungle/warren/VungleApiClient;->repository:Lccsancom/vungle/warren/persistence/Repository;

    .line 229
    iput-object p4, p0, Lccsancom/vungle/warren/VungleApiClient;->omInjector:Lccsancom/vungle/warren/omsdk/OMInjector;

    .line 232
    new-instance v0, Lccsancom/vungle/warren/VungleApiClient$1;

    invoke-direct {v0, p0}, Lccsancom/vungle/warren/VungleApiClient$1;-><init>(Lccsancom/vungle/warren/VungleApiClient;)V

    .line 281
    .local v0, "responseInterceptor":Lccsanokhttp3/Interceptor;
    new-instance v1, Lccsanokhttp3/OkHttpClient$Builder;

    invoke-direct {v1}, Lccsanokhttp3/OkHttpClient$Builder;-><init>()V

    .line 282
    invoke-virtual {v1, v0}, Lccsanokhttp3/OkHttpClient$Builder;->addInterceptor(Lccsanokhttp3/Interceptor;)Lccsanokhttp3/OkHttpClient$Builder;

    move-result-object v1

    .line 292
    .local v1, "builder":Lccsanokhttp3/OkHttpClient$Builder;
    invoke-virtual {v1}, Lccsanokhttp3/OkHttpClient$Builder;->build()Lccsanokhttp3/OkHttpClient;

    move-result-object v2

    iput-object v2, p0, Lccsancom/vungle/warren/VungleApiClient;->client:Lccsanokhttp3/OkHttpClient;

    .line 294
    new-instance v2, Lccsancom/vungle/warren/VungleApiClient$GzipRequestInterceptor;

    invoke-direct {v2}, Lccsancom/vungle/warren/VungleApiClient$GzipRequestInterceptor;-><init>()V

    invoke-virtual {v1, v2}, Lccsanokhttp3/OkHttpClient$Builder;->addInterceptor(Lccsanokhttp3/Interceptor;)Lccsanokhttp3/OkHttpClient$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lccsanokhttp3/OkHttpClient$Builder;->build()Lccsanokhttp3/OkHttpClient;

    move-result-object v2

    .line 296
    .local v2, "gzipClient":Lccsanokhttp3/OkHttpClient;
    new-instance v3, Lccsancom/vungle/warren/network/APIFactory;

    iget-object v4, p0, Lccsancom/vungle/warren/VungleApiClient;->client:Lccsanokhttp3/OkHttpClient;

    sget-object v5, Lccsancom/vungle/warren/VungleApiClient;->BASE_URL:Ljava/lang/String;

    invoke-direct {v3, v4, v5}, Lccsancom/vungle/warren/network/APIFactory;-><init>(Lccsanokhttp3/Call$Factory;Ljava/lang/String;)V

    invoke-virtual {v3}, Lccsancom/vungle/warren/network/APIFactory;->createAPI()Lccsancom/vungle/warren/network/VungleApi;

    move-result-object v3

    iput-object v3, p0, Lccsancom/vungle/warren/VungleApiClient;->api:Lccsancom/vungle/warren/network/VungleApi;

    .line 297
    new-instance v3, Lccsancom/vungle/warren/network/APIFactory;

    sget-object v4, Lccsancom/vungle/warren/VungleApiClient;->BASE_URL:Ljava/lang/String;

    invoke-direct {v3, v2, v4}, Lccsancom/vungle/warren/network/APIFactory;-><init>(Lccsanokhttp3/Call$Factory;Ljava/lang/String;)V

    invoke-virtual {v3}, Lccsancom/vungle/warren/network/APIFactory;->createAPI()Lccsancom/vungle/warren/network/VungleApi;

    move-result-object v3

    iput-object v3, p0, Lccsancom/vungle/warren/VungleApiClient;->gzipApi:Lccsancom/vungle/warren/network/VungleApi;

    .line 299
    invoke-static {p1}, Lccsancom/vungle/warren/ServiceLocator;->getInstance(Lccsanandroid/content/Context;)Lccsancom/vungle/warren/ServiceLocator;

    move-result-object v3

    .line 300
    .local v3, "serviceLocator":Lccsancom/vungle/warren/ServiceLocator;
    const-class v4, Lccsancom/vungle/warren/utility/TimeoutProvider;

    invoke-virtual {v3, v4}, Lccsancom/vungle/warren/ServiceLocator;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lccsancom/vungle/warren/utility/TimeoutProvider;

    iput-object v4, p0, Lccsancom/vungle/warren/VungleApiClient;->timeoutProvider:Lccsancom/vungle/warren/utility/TimeoutProvider;

    .line 301
    return-void
.end method

.method static synthetic access$000(Lccsancom/vungle/warren/VungleApiClient;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lccsancom/vungle/warren/VungleApiClient;

    .line 96
    iget-object v0, p0, Lccsancom/vungle/warren/VungleApiClient;->retryAfterDataMap:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .line 96
    sget-object v0, Lccsancom/vungle/warren/VungleApiClient;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lccsancom/vungle/warren/VungleApiClient;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lccsancom/vungle/warren/VungleApiClient;

    .line 96
    iget-object v0, p0, Lccsancom/vungle/warren/VungleApiClient;->uaString:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$202(Lccsancom/vungle/warren/VungleApiClient;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lccsancom/vungle/warren/VungleApiClient;
    .param p1, "x1"    # Ljava/lang/String;

    .line 96
    iput-object p1, p0, Lccsancom/vungle/warren/VungleApiClient;->uaString:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$300(Lccsancom/vungle/warren/VungleApiClient;)Lccsanandroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lccsancom/vungle/warren/VungleApiClient;

    .line 96
    iget-object v0, p0, Lccsancom/vungle/warren/VungleApiClient;->context:Lccsanandroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400(Lccsancom/vungle/warren/VungleApiClient;)Lccsancom/google/gson/JsonObject;
    .locals 1
    .param p0, "x0"    # Lccsancom/vungle/warren/VungleApiClient;

    .line 96
    iget-object v0, p0, Lccsancom/vungle/warren/VungleApiClient;->deviceBody:Lccsancom/google/gson/JsonObject;

    return-object v0
.end method

.method static synthetic access$500(Lccsancom/vungle/warren/VungleApiClient;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lccsancom/vungle/warren/VungleApiClient;
    .param p1, "x1"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lccsancom/vungle/warren/persistence/DatabaseHelper$DBException;
        }
    .end annotation

    .line 96
    invoke-direct {p0, p1}, Lccsancom/vungle/warren/VungleApiClient;->addUserAgentInCookie(Ljava/lang/String;)V

    return-void
.end method

.method private addUserAgentInCookie(Ljava/lang/String;)V
    .locals 2
    .param p1, "userAgent"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lccsancom/vungle/warren/persistence/DatabaseHelper$DBException;
        }
    .end annotation

    .line 1229
    new-instance v0, Lccsancom/vungle/warren/model/Cookie;

    const-string v1, "userAgent"

    invoke-direct {v0, v1}, Lccsancom/vungle/warren/model/Cookie;-><init>(Ljava/lang/String;)V

    .line 1230
    .local v0, "cookie":Lccsancom/vungle/warren/model/Cookie;
    invoke-virtual {v0, v1, p1}, Lccsancom/vungle/warren/model/Cookie;->putValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1232
    iget-object v1, p0, Lccsancom/vungle/warren/VungleApiClient;->repository:Lccsancom/vungle/warren/persistence/Repository;

    invoke-virtual {v1, v0}, Lccsancom/vungle/warren/persistence/Repository;->save(Ljava/lang/Object;)V

    .line 1233
    return-void
.end method

.method private getConnectionTypeDetail(I)Ljava/lang/String;
    .locals 1
    .param p1, "type"    # I

    .line 1090
    packed-switch p1, :pswitch_data_0

    .line 1116
    :pswitch_0
    const-string v0, "unknown"

    return-object v0

    .line 1098
    :pswitch_1
    const-string v0, "hrpd"

    return-object v0

    .line 1112
    :pswitch_2
    const-string v0, "LTE"

    return-object v0

    .line 1104
    :pswitch_3
    const-string v0, "cdma_evdo_b"

    return-object v0

    .line 1110
    :pswitch_4
    const-string v0, "hsupa"

    return-object v0

    .line 1108
    :pswitch_5
    const-string v0, "hsdpa"

    return-object v0

    .line 1092
    :pswitch_6
    const-string v0, "cdma_1xrtt"

    return-object v0

    .line 1102
    :pswitch_7
    const-string v0, "cdma_evdo_a"

    return-object v0

    .line 1100
    :pswitch_8
    const-string v0, "cdma_evdo_0"

    return-object v0

    .line 1094
    :pswitch_9
    const-string v0, "wcdma"

    return-object v0

    .line 1096
    :pswitch_a
    const-string v0, "edge"

    return-object v0

    .line 1106
    :pswitch_b
    const-string v0, "gprs"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_b
        :pswitch_a
        :pswitch_0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private getDeviceBody()Lccsancom/google/gson/JsonObject;
    .locals 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 834
    move-object/from16 v1, p0

    const-string v2, "ifa"

    const-string v3, "Amazon"

    new-instance v0, Lccsancom/google/gson/JsonObject;

    invoke-direct {v0}, Lccsancom/google/gson/JsonObject;-><init>()V

    move-object v4, v0

    .line 837
    .local v4, "android":Lccsancom/google/gson/JsonObject;
    const/4 v5, 0x0

    .line 838
    .local v5, "advertId":Ljava/lang/String;
    const/4 v6, 0x1

    .line 841
    .local v6, "limitAdTracking":Z
    const/4 v7, 0x0

    .line 842
    .local v7, "idInfo":Lccsancom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;
    const/4 v9, 0x1

    :try_start_0
    sget-object v0, Lccsanandroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    const-string v10, "advertising_id"

    if-eqz v0, :cond_1

    .line 844
    :try_start_1
    iget-object v0, v1, Lccsancom/vungle/warren/VungleApiClient;->context:Lccsanandroid/content/Context;

    invoke-virtual {v0}, Lccsanandroid/content/Context;->getContentResolver()Lccsanandroid/content/ContentResolver;

    move-result-object v0

    .line 846
    .local v0, "cr":Lccsanandroid/content/ContentResolver;
    const-string v11, "limit_ad_tracking"

    invoke-static {v0, v11}, Lccsanandroid/provider/Settings$Secure;->getInt(Lccsanandroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v11

    if-ne v11, v9, :cond_0

    const/4 v11, 0x1

    goto :goto_0

    :cond_0
    const/4 v11, 0x0

    :goto_0
    move v6, v11

    .line 848
    invoke-static {v0, v10}, Lccsanandroid/provider/Settings$Secure;->getString(Lccsanandroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10
    :try_end_1
    .catch Lccsanandroid/provider/Settings$SettingNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    move-object v5, v10

    .line 852
    .end local v0    # "cr":Lccsanandroid/content/ContentResolver;
    goto :goto_1

    .line 849
    :catch_0
    move-exception v0

    .line 851
    .local v0, "ex":Lccsanandroid/provider/Settings$SettingNotFoundException;
    :try_start_2
    sget-object v10, Lccsancom/vungle/warren/VungleApiClient;->TAG:Ljava/lang/String;

    const-string v11, "Error getting Amazon advertising info"

    invoke-static {v10, v11, v0}, Lccsanandroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 852
    nop

    .end local v0    # "ex":Lccsanandroid/provider/Settings$SettingNotFoundException;
    goto :goto_1

    .line 855
    :cond_1
    :try_start_3
    iget-object v0, v1, Lccsancom/vungle/warren/VungleApiClient;->context:Lccsanandroid/content/Context;

    invoke-static {v0}, Lccsancom/google/android/gms/ads/identifier/AdvertisingIdClient;->getAdvertisingIdInfo(Lccsanandroid/content/Context;)Lccsancom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;

    move-result-object v0

    move-object v7, v0

    .line 856
    if-eqz v7, :cond_2

    .line 857
    invoke-virtual {v7}, Lccsancom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;->getId()Ljava/lang/String;

    move-result-object v0

    move-object v5, v0

    .line 858
    invoke-virtual {v7}, Lccsancom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;->isLimitAdTrackingEnabled()Z

    move-result v0

    move v6, v0

    .line 859
    iget-object v0, v1, Lccsancom/vungle/warren/VungleApiClient;->deviceBody:Lccsancom/google/gson/JsonObject;

    invoke-virtual {v0, v2, v5}, Lccsancom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 868
    :cond_2
    goto :goto_1

    .line 864
    :catch_1
    move-exception v0

    .line 865
    .local v0, "ex":Ljava/lang/NoClassDefFoundError;
    :try_start_4
    sget-object v11, Lccsancom/vungle/warren/VungleApiClient;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Play services Not available: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/NoClassDefFoundError;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lccsanandroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 866
    iget-object v11, v1, Lccsancom/vungle/warren/VungleApiClient;->context:Lccsanandroid/content/Context;

    invoke-virtual {v11}, Lccsanandroid/content/Context;->getContentResolver()Lccsanandroid/content/ContentResolver;

    move-result-object v11

    .line 867
    .local v11, "cr":Lccsanandroid/content/ContentResolver;
    invoke-static {v11, v10}, Lccsanandroid/provider/Settings$Secure;->getString(Lccsanandroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    move-object v5, v10

    .line 873
    .end local v0    # "ex":Ljava/lang/NoClassDefFoundError;
    .end local v7    # "idInfo":Lccsancom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;
    .end local v11    # "cr":Lccsanandroid/content/ContentResolver;
    :goto_1
    goto :goto_2

    .line 871
    :catch_2
    move-exception v0

    .line 872
    .local v0, "ex":Ljava/lang/Exception;
    sget-object v7, Lccsancom/vungle/warren/VungleApiClient;->TAG:Ljava/lang/String;

    const-string v10, "Cannot load Advertising ID"

    invoke-static {v7, v10}, Lccsanandroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 875
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_2
    const-string v7, ""

    if-eqz v5, :cond_4

    .line 876
    sget-object v0, Lccsanandroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "amazon_advertising_id"

    goto :goto_3

    :cond_3
    const-string v0, "gaid"

    :goto_3
    invoke-virtual {v4, v0, v5}, Lccsancom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 877
    iget-object v0, v1, Lccsancom/vungle/warren/VungleApiClient;->deviceBody:Lccsancom/google/gson/JsonObject;

    invoke-virtual {v0, v2, v5}, Lccsancom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .line 880
    :cond_4
    iget-object v0, v1, Lccsancom/vungle/warren/VungleApiClient;->context:Lccsanandroid/content/Context;

    invoke-virtual {v0}, Lccsanandroid/content/Context;->getContentResolver()Lccsanandroid/content/ContentResolver;

    move-result-object v0

    const-string v10, "android_id"

    invoke-static {v0, v10}, Lccsanandroid/provider/Settings$Secure;->getString(Lccsanandroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 881
    .local v0, "androidID":Ljava/lang/String;
    iget-object v11, v1, Lccsancom/vungle/warren/VungleApiClient;->deviceBody:Lccsancom/google/gson/JsonObject;

    iget-boolean v12, v1, Lccsancom/vungle/warren/VungleApiClient;->defaultIdFallbackDisabled:Z

    if-eqz v12, :cond_5

    move-object v12, v7

    goto :goto_4

    .line 882
    :cond_5
    invoke-static {v0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_6

    move-object v12, v0

    goto :goto_4

    :cond_6
    move-object v12, v7

    .line 881
    :goto_4
    invoke-virtual {v11, v2, v12}, Lccsancom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 883
    invoke-static {v0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_7

    iget-boolean v2, v1, Lccsancom/vungle/warren/VungleApiClient;->defaultIdFallbackDisabled:Z

    if-nez v2, :cond_7

    .line 884
    invoke-virtual {v4, v10, v0}, Lccsancom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 890
    .end local v0    # "androidID":Ljava/lang/String;
    :cond_7
    :goto_5
    iget-object v0, v1, Lccsancom/vungle/warren/VungleApiClient;->deviceBody:Lccsancom/google/gson/JsonObject;

    if-eqz v6, :cond_8

    const/4 v2, 0x1

    goto :goto_6

    :cond_8
    const/4 v2, 0x0

    :goto_6
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v10, "lmt"

    invoke-virtual {v0, v10, v2}, Lccsancom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 892
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual/range {p0 .. p0}, Lccsancom/vungle/warren/VungleApiClient;->isGooglePlayServicesAvailable()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 893
    .local v2, "isGooglePlaySvcAvailable":Z
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v10, "is_google_play_services_available"

    invoke-virtual {v4, v10, v0}, Lccsancom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 896
    iget-object v0, v1, Lccsancom/vungle/warren/VungleApiClient;->context:Lccsanandroid/content/Context;

    const/4 v10, 0x0

    if-eqz v0, :cond_9

    .line 897
    new-instance v11, Lccsanandroid/content/IntentFilter;

    const-string v12, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v11, v12}, Lccsanandroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v10, v11}, Lccsanandroid/content/Context;->registerReceiver(Lccsanandroid/content/BroadcastReceiver;Lccsanandroid/content/IntentFilter;)Lccsanandroid/content/Intent;

    move-result-object v10

    goto :goto_7

    :cond_9
    nop

    .line 899
    .local v10, "batteryStatus":Lccsanandroid/content/Intent;
    :goto_7
    if-eqz v10, :cond_e

    .line 900
    const/4 v0, 0x0

    .line 901
    .local v0, "level":I
    const-string v11, "level"

    const/4 v12, -0x1

    invoke-virtual {v10, v11, v12}, Lccsanandroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 902
    const-string v11, "scale"

    invoke-virtual {v10, v11, v12}, Lccsanandroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v11

    .line 903
    .local v11, "scale":I
    if-lez v0, :cond_a

    if-lez v11, :cond_a

    .line 904
    int-to-float v13, v0

    int-to-float v14, v11

    div-float/2addr v13, v14

    invoke-static {v13}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v13

    const-string v14, "battery_level"

    invoke-virtual {v4, v14, v13}, Lccsancom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 906
    :cond_a
    const-string v13, "status"

    invoke-virtual {v10, v13, v12}, Lccsanandroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v13

    .line 908
    .local v13, "status":I
    if-ne v13, v12, :cond_b

    .line 909
    const-string v12, "UNKNOWN"

    .local v12, "batteryState":Ljava/lang/String;
    goto :goto_9

    .line 910
    .end local v12    # "batteryState":Ljava/lang/String;
    :cond_b
    const/4 v14, 0x2

    if-eq v13, v14, :cond_d

    const/4 v14, 0x5

    if-ne v13, v14, :cond_c

    goto :goto_8

    .line 925
    :cond_c
    const-string v12, "NOT_CHARGING"

    .restart local v12    # "batteryState":Ljava/lang/String;
    goto :goto_9

    .line 911
    .end local v12    # "batteryState":Ljava/lang/String;
    :cond_d
    :goto_8
    const-string v14, "plugged"

    invoke-virtual {v10, v14, v12}, Lccsanandroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v12

    packed-switch v12, :pswitch_data_0

    .line 922
    :pswitch_0
    const-string v12, "BATTERY_PLUGGED_OTHERS"

    .restart local v12    # "batteryState":Ljava/lang/String;
    goto :goto_9

    .line 919
    .end local v12    # "batteryState":Ljava/lang/String;
    :pswitch_1
    const-string v12, "BATTERY_PLUGGED_WIRELESS"

    .line 920
    .restart local v12    # "batteryState":Ljava/lang/String;
    goto :goto_9

    .line 913
    .end local v12    # "batteryState":Ljava/lang/String;
    :pswitch_2
    const-string v12, "BATTERY_PLUGGED_USB"

    .line 914
    .restart local v12    # "batteryState":Ljava/lang/String;
    goto :goto_9

    .line 916
    .end local v12    # "batteryState":Ljava/lang/String;
    :pswitch_3
    const-string v12, "BATTERY_PLUGGED_AC"

    .line 917
    .restart local v12    # "batteryState":Ljava/lang/String;
    nop

    .line 927
    .end local v0    # "level":I
    .end local v11    # "scale":I
    .end local v13    # "status":I
    :goto_9
    goto :goto_a

    .line 928
    .end local v12    # "batteryState":Ljava/lang/String;
    :cond_e
    const-string v12, "UNKNOWN"

    .line 931
    .restart local v12    # "batteryState":Ljava/lang/String;
    :goto_a
    const-string v0, "battery_state"

    invoke-virtual {v4, v0, v12}, Lccsancom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 934
    iget-object v0, v1, Lccsancom/vungle/warren/VungleApiClient;->context:Lccsanandroid/content/Context;

    const-string v11, "power"

    invoke-virtual {v0, v11}, Lccsanandroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Lccsanandroid/os/PowerManager;

    .line 935
    .local v11, "powerManager":Lccsanandroid/os/PowerManager;
    nop

    .line 937
    if-eqz v11, :cond_f

    invoke-virtual {v11}, Lccsanandroid/os/PowerManager;->isPowerSaveMode()Z

    move-result v0

    if-eqz v0, :cond_f

    const/4 v0, 0x1

    goto :goto_b

    :cond_f
    const/4 v0, 0x0

    :goto_b
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 935
    const-string v13, "battery_saver_enabled"

    invoke-virtual {v4, v13, v0}, Lccsancom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 941
    iget-object v0, v1, Lccsancom/vungle/warren/VungleApiClient;->context:Lccsanandroid/content/Context;

    const-string v13, "android.permission.ACCESS_NETWORK_STATE"

    invoke-static {v0, v13}, Lccsanandroidx/core/content/PermissionChecker;->checkCallingOrSelfPermission(Lccsanandroid/content/Context;Ljava/lang/String;)I

    move-result v0

    const/16 v13, 0x18

    if-nez v0, :cond_13

    .line 942
    const-string v0, "NONE"

    .line 943
    .local v0, "connectionType":Ljava/lang/String;
    const-string v14, "unknown"

    .line 945
    .local v14, "connectionTypeDetail":Ljava/lang/String;
    iget-object v15, v1, Lccsancom/vungle/warren/VungleApiClient;->context:Lccsanandroid/content/Context;

    const-string v8, "connectivity"

    invoke-virtual {v15, v8}, Lccsanandroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lccsanandroid/net/ConnectivityManager;

    .line 946
    .local v8, "cm":Lccsanandroid/net/ConnectivityManager;
    if-eqz v8, :cond_10

    .line 947
    invoke-virtual {v8}, Lccsanandroid/net/ConnectivityManager;->getActiveNetworkInfo()Lccsanandroid/net/NetworkInfo;

    move-result-object v15

    .line 948
    .local v15, "info":Lccsanandroid/net/NetworkInfo;
    if-eqz v15, :cond_10

    .line 949
    invoke-virtual {v15}, Lccsanandroid/net/NetworkInfo;->getType()I

    move-result v17

    sparse-switch v17, :sswitch_data_0

    .line 965
    const-string v0, "UNKNOWN"

    goto :goto_c

    .line 954
    :sswitch_0
    const-string v0, "ETHERNET"

    .line 955
    goto :goto_c

    .line 951
    :sswitch_1
    const-string v0, "BLUETOOTH"

    .line 952
    goto :goto_c

    .line 962
    :sswitch_2
    const-string v0, "WIFI"

    .line 963
    goto :goto_c

    .line 957
    :sswitch_3
    const-string v0, "MOBILE"

    .line 958
    invoke-virtual {v15}, Lccsanandroid/net/NetworkInfo;->getSubtype()I

    move-result v9

    invoke-direct {v1, v9}, Lccsancom/vungle/warren/VungleApiClient;->getConnectionTypeDetail(I)Ljava/lang/String;

    move-result-object v14

    .line 970
    .end local v15    # "info":Lccsanandroid/net/NetworkInfo;
    :cond_10
    :goto_c
    const-string v9, "connection_type"

    invoke-virtual {v4, v9, v0}, Lccsancom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 971
    const-string v9, "connection_type_detail"

    invoke-virtual {v4, v9, v14}, Lccsancom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 973
    sget v9, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    if-lt v9, v13, :cond_12

    .line 974
    invoke-virtual {v8}, Lccsanandroid/net/ConnectivityManager;->isActiveNetworkMetered()Z

    move-result v9

    const-string v15, "network_metered"

    const-string v13, "data_saver_status"

    if-eqz v9, :cond_11

    .line 976
    invoke-virtual {v8}, Lccsanandroid/net/ConnectivityManager;->getRestrictBackgroundStatus()I

    move-result v9

    packed-switch v9, :pswitch_data_1

    .line 993
    const-string v9, "UNKNOWN"

    .local v9, "dataSaverStatus":Ljava/lang/String;
    goto :goto_d

    .line 980
    .end local v9    # "dataSaverStatus":Ljava/lang/String;
    :pswitch_4
    const-string v9, "ENABLED"

    .line 981
    .restart local v9    # "dataSaverStatus":Ljava/lang/String;
    goto :goto_d

    .line 985
    .end local v9    # "dataSaverStatus":Ljava/lang/String;
    :pswitch_5
    const-string v9, "WHITELISTED"

    .line 986
    .restart local v9    # "dataSaverStatus":Ljava/lang/String;
    goto :goto_d

    .line 990
    .end local v9    # "dataSaverStatus":Ljava/lang/String;
    :pswitch_6
    const-string v9, "DISABLED"

    .line 991
    .restart local v9    # "dataSaverStatus":Ljava/lang/String;
    nop

    .line 996
    :goto_d
    invoke-virtual {v4, v13, v9}, Lccsancom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 997
    move-object/from16 v19, v0

    const/4 v13, 0x1

    .end local v0    # "connectionType":Ljava/lang/String;
    .local v19, "connectionType":Ljava/lang/String;
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v4, v15, v0}, Lccsancom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 998
    .end local v9    # "dataSaverStatus":Ljava/lang/String;
    const/4 v13, 0x0

    goto :goto_e

    .line 999
    .end local v19    # "connectionType":Ljava/lang/String;
    .restart local v0    # "connectionType":Ljava/lang/String;
    :cond_11
    move-object/from16 v19, v0

    .end local v0    # "connectionType":Ljava/lang/String;
    .restart local v19    # "connectionType":Ljava/lang/String;
    const-string v0, "NOT_APPLICABLE"

    invoke-virtual {v4, v13, v0}, Lccsancom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1000
    const/4 v13, 0x0

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v4, v15, v0}, Lccsancom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    goto :goto_e

    .line 973
    .end local v19    # "connectionType":Ljava/lang/String;
    .restart local v0    # "connectionType":Ljava/lang/String;
    :cond_12
    move-object/from16 v19, v0

    const/4 v13, 0x0

    .end local v0    # "connectionType":Ljava/lang/String;
    .restart local v19    # "connectionType":Ljava/lang/String;
    goto :goto_e

    .line 941
    .end local v8    # "cm":Lccsanandroid/net/ConnectivityManager;
    .end local v14    # "connectionTypeDetail":Ljava/lang/String;
    .end local v19    # "connectionType":Ljava/lang/String;
    :cond_13
    const/4 v13, 0x0

    .line 1006
    :goto_e
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v8, "locale"

    invoke-virtual {v4, v8, v0}, Lccsancom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1007
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    const-string v8, "language"

    invoke-virtual {v4, v8, v0}, Lccsancom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1008
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v0

    const-string v8, "time_zone"

    invoke-virtual {v4, v8, v0}, Lccsancom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1011
    iget-object v0, v1, Lccsancom/vungle/warren/VungleApiClient;->context:Lccsanandroid/content/Context;

    const-string v8, "audio"

    invoke-virtual {v0, v8}, Lccsanandroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Lccsanandroid/media/AudioManager;

    .line 1014
    .local v8, "audio":Lccsanandroid/media/AudioManager;
    if-eqz v8, :cond_15

    .line 1015
    const/4 v0, 0x3

    invoke-virtual {v8, v0}, Lccsanandroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v9

    .line 1016
    .local v9, "max":I
    invoke-virtual {v8, v0}, Lccsanandroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    .line 1017
    .local v0, "current":I
    int-to-float v14, v0

    int-to-float v15, v9

    div-float/2addr v14, v15

    .line 1018
    .local v14, "vol":F
    invoke-static {v14}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v15

    const-string v13, "volume_level"

    invoke-virtual {v4, v13, v15}, Lccsancom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 1019
    if-lez v0, :cond_14

    const/4 v13, 0x1

    goto :goto_f

    :cond_14
    const/4 v13, 0x0

    :goto_f
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    const-string v15, "sound_enabled"

    invoke-virtual {v4, v15, v13}, Lccsancom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 1023
    .end local v0    # "current":I
    .end local v9    # "max":I
    .end local v14    # "vol":F
    :cond_15
    iget-object v0, v1, Lccsancom/vungle/warren/VungleApiClient;->cacheManager:Lccsancom/vungle/warren/persistence/CacheManager;

    invoke-virtual {v0}, Lccsancom/vungle/warren/persistence/CacheManager;->getCache()Ljava/io/File;

    move-result-object v9

    .line 1024
    .local v9, "cacheDirectory":Ljava/io/File;
    invoke-virtual {v9}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v13

    .line 1026
    .local v13, "cachePath":Ljava/lang/String;
    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-virtual {v9}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 1027
    iget-object v0, v1, Lccsancom/vungle/warren/VungleApiClient;->cacheManager:Lccsancom/vungle/warren/persistence/CacheManager;

    invoke-virtual {v0}, Lccsancom/vungle/warren/persistence/CacheManager;->getBytesAvailable()J

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v14, "storage_bytes_available"

    invoke-virtual {v4, v14, v0}, Lccsancom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 1032
    :cond_16
    sget-object v0, Lccsanandroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 1033
    const-string v0, "amazon.hardware.fire_tv"

    .line 1034
    .local v0, "AMAZON_FEATURE_FIRE_TV":Ljava/lang/String;
    iget-object v14, v1, Lccsancom/vungle/warren/VungleApiClient;->context:Lccsanandroid/content/Context;

    invoke-virtual {v14}, Lccsanandroid/content/Context;->getApplicationContext()Lccsanandroid/content/Context;

    move-result-object v14

    invoke-virtual {v14}, Lccsanandroid/content/Context;->getPackageManager()Lccsanandroid/content/pm/PackageManager;

    move-result-object v14

    const-string v15, "amazon.hardware.fire_tv"

    invoke-virtual {v14, v15}, Lccsanandroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    .line 1035
    .local v0, "isTV":Z
    move v14, v0

    goto :goto_13

    .line 1036
    .end local v0    # "isTV":Z
    :cond_17
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v14, 0x17

    if-lt v0, v14, :cond_19

    .line 1039
    iget-object v0, v1, Lccsancom/vungle/warren/VungleApiClient;->context:Lccsanandroid/content/Context;

    const-string v14, "uimode"

    invoke-virtual {v0, v14}, Lccsanandroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsanandroid/app/UiModeManager;

    .line 1040
    .local v0, "uiModeManager":Lccsanandroid/app/UiModeManager;
    invoke-virtual {v0}, Lccsanandroid/app/UiModeManager;->getCurrentModeType()I

    move-result v14

    const/4 v15, 0x4

    if-ne v14, v15, :cond_18

    const/4 v14, 0x1

    goto :goto_10

    :cond_18
    const/4 v14, 0x0

    :goto_10
    move v0, v14

    .line 1041
    .local v0, "isTV":Z
    goto :goto_13

    .line 1042
    .end local v0    # "isTV":Z
    :cond_19
    const-string v0, "com.google.android.tv"

    .line 1043
    .local v0, "FEATURE_ANDROID_TV":Ljava/lang/String;
    const-string v14, "android.hardware.touchscreen"

    .line 1045
    .local v14, "FEATURE_HW_TOUCHSCREEN":Ljava/lang/String;
    iget-object v15, v1, Lccsancom/vungle/warren/VungleApiClient;->context:Lccsanandroid/content/Context;

    invoke-virtual {v15}, Lccsanandroid/content/Context;->getApplicationContext()Lccsanandroid/content/Context;

    move-result-object v15

    invoke-virtual {v15}, Lccsanandroid/content/Context;->getPackageManager()Lccsanandroid/content/pm/PackageManager;

    move-result-object v15

    move-object/from16 v19, v0

    .end local v0    # "FEATURE_ANDROID_TV":Ljava/lang/String;
    .local v19, "FEATURE_ANDROID_TV":Ljava/lang/String;
    const-string v0, "com.google.android.tv"

    invoke-virtual {v15, v0}, Lccsanandroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1b

    iget-object v0, v1, Lccsancom/vungle/warren/VungleApiClient;->context:Lccsanandroid/content/Context;

    .line 1046
    invoke-virtual {v0}, Lccsanandroid/content/Context;->getApplicationContext()Lccsanandroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Lccsanandroid/content/Context;->getPackageManager()Lccsanandroid/content/pm/PackageManager;

    move-result-object v0

    const-string v15, "android.hardware.touchscreen"

    invoke-virtual {v0, v15}, Lccsanandroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1a

    goto :goto_11

    :cond_1a
    const/4 v0, 0x0

    goto :goto_12

    :cond_1b
    :goto_11
    const/4 v0, 0x1

    :goto_12
    move v14, v0

    .line 1049
    .end local v19    # "FEATURE_ANDROID_TV":Ljava/lang/String;
    .local v14, "isTV":Z
    :goto_13
    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v15, "is_tv"

    invoke-virtual {v4, v15, v0}, Lccsancom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1050
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v15, "os_api_level"

    invoke-virtual {v4, v15, v0}, Lccsancom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 1051
    iget-object v0, v1, Lccsancom/vungle/warren/VungleApiClient;->context:Lccsanandroid/content/Context;

    invoke-virtual {v0}, Lccsanandroid/content/Context;->getApplicationInfo()Lccsanandroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Lccsanandroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v15, "app_target_sdk_version"

    invoke-virtual {v4, v15, v0}, Lccsancom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 1052
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v15, 0x18

    if-lt v0, v15, :cond_1c

    .line 1053
    iget-object v0, v1, Lccsancom/vungle/warren/VungleApiClient;->context:Lccsanandroid/content/Context;

    invoke-virtual {v0}, Lccsanandroid/content/Context;->getApplicationInfo()Lccsanandroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Lccsanandroid/content/pm/ApplicationInfo;->minSdkVersion:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v15, "app_min_sdk_version"

    invoke-virtual {v4, v15, v0}, Lccsancom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 1057
    :cond_1c
    const/4 v15, 0x0

    .line 1059
    .local v15, "canInstallNonMarket":Z
    :try_start_5
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I
    :try_end_5
    .catch Lccsanandroid/provider/Settings$SettingNotFoundException; {:try_start_5 .. :try_end_5} :catch_4

    move/from16 v18, v2

    .end local v2    # "isGooglePlaySvcAvailable":Z
    .local v18, "isGooglePlaySvcAvailable":Z
    const/16 v2, 0x1a

    if-lt v0, v2, :cond_1d

    .line 1060
    :try_start_6
    iget-object v0, v1, Lccsancom/vungle/warren/VungleApiClient;->context:Lccsanandroid/content/Context;

    const-string v2, "android.permission.REQUEST_INSTALL_PACKAGES"

    .line 1061
    invoke-virtual {v0, v2}, Lccsanandroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1f

    .line 1062
    iget-object v0, v1, Lccsancom/vungle/warren/VungleApiClient;->context:Lccsanandroid/content/Context;

    invoke-virtual {v0}, Lccsanandroid/content/Context;->getApplicationContext()Lccsanandroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Lccsanandroid/content/Context;->getPackageManager()Lccsanandroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0}, Lccsanandroid/content/pm/PackageManager;->canRequestPackageInstalls()Z

    move-result v0

    move v15, v0

    .end local v15    # "canInstallNonMarket":Z
    .local v0, "canInstallNonMarket":Z
    goto :goto_15

    .line 1065
    .end local v0    # "canInstallNonMarket":Z
    .restart local v15    # "canInstallNonMarket":Z
    :cond_1d
    iget-object v0, v1, Lccsancom/vungle/warren/VungleApiClient;->context:Lccsanandroid/content/Context;

    invoke-virtual {v0}, Lccsanandroid/content/Context;->getContentResolver()Lccsanandroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "install_non_market_apps"

    invoke-static {v0, v2}, Lccsanandroid/provider/Settings$Secure;->getInt(Lccsanandroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v0
    :try_end_6
    .catch Lccsanandroid/provider/Settings$SettingNotFoundException; {:try_start_6 .. :try_end_6} :catch_3

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1e

    const/16 v16, 0x1

    goto :goto_14

    :cond_1e
    const/16 v16, 0x0

    :goto_14
    move/from16 v0, v16

    move v15, v0

    .line 1069
    :cond_1f
    :goto_15
    move-object/from16 v16, v5

    goto :goto_17

    .line 1067
    :catch_3
    move-exception v0

    goto :goto_16

    .end local v18    # "isGooglePlaySvcAvailable":Z
    .restart local v2    # "isGooglePlaySvcAvailable":Z
    :catch_4
    move-exception v0

    move/from16 v18, v2

    .line 1068
    .end local v2    # "isGooglePlaySvcAvailable":Z
    .local v0, "e":Lccsanandroid/provider/Settings$SettingNotFoundException;
    .restart local v18    # "isGooglePlaySvcAvailable":Z
    :goto_16
    sget-object v2, Lccsancom/vungle/warren/VungleApiClient;->TAG:Ljava/lang/String;

    move-object/from16 v16, v5

    .end local v5    # "advertId":Ljava/lang/String;
    .local v16, "advertId":Ljava/lang/String;
    const-string v5, "isInstallNonMarketAppsEnabled Settings not found"

    invoke-static {v2, v5, v0}, Lccsanandroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1070
    .end local v0    # "e":Lccsanandroid/provider/Settings$SettingNotFoundException;
    :goto_17
    invoke-static {v15}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v2, "is_sideload_enabled"

    invoke-virtual {v4, v2, v0}, Lccsancom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1072
    invoke-static {}, Lccsanandroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v2, "mounted"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 1073
    .local v0, "isSDPresent":Z
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v5, "sd_card_available"

    invoke-virtual {v4, v5, v2}, Lccsancom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 1074
    sget-object v2, Lccsanandroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    const-string v5, "os_name"

    invoke-virtual {v4, v5, v2}, Lccsancom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1077
    const-string v2, "vduid"

    invoke-virtual {v4, v2, v7}, Lccsancom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1079
    iget-object v2, v1, Lccsancom/vungle/warren/VungleApiClient;->deviceBody:Lccsancom/google/gson/JsonObject;

    const-string v5, "ext"

    invoke-virtual {v2, v5}, Lccsancom/google/gson/JsonObject;->getAsJsonObject(Ljava/lang/String;)Lccsancom/google/gson/JsonObject;

    move-result-object v2

    const-string v5, "vungle"

    invoke-virtual {v2, v5}, Lccsancom/google/gson/JsonObject;->getAsJsonObject(Ljava/lang/String;)Lccsancom/google/gson/JsonObject;

    move-result-object v2

    sget-object v5, Lccsanandroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_20

    const-string v3, "amazon"

    goto :goto_18

    :cond_20
    const-string v3, "android"

    :goto_18
    invoke-virtual {v2, v3, v4}, Lccsancom/google/gson/JsonObject;->add(Ljava/lang/String;Lccsancom/google/gson/JsonElement;)V

    .line 1081
    iget-object v2, v1, Lccsancom/vungle/warren/VungleApiClient;->deviceBody:Lccsancom/google/gson/JsonObject;

    return-object v2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_3
        0x1 -> :sswitch_2
        0x6 -> :sswitch_2
        0x7 -> :sswitch_1
        0x9 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
    .end packed-switch
.end method

.method public static getHeaderUa()Ljava/lang/String;
    .locals 1

    .line 304
    sget-object v0, Lccsancom/vungle/warren/VungleApiClient;->headerUa:Ljava/lang/String;

    return-object v0
.end method

.method private getUserAgentFromCookie()Ljava/lang/String;
    .locals 4

    .line 1214
    iget-object v0, p0, Lccsancom/vungle/warren/VungleApiClient;->repository:Lccsancom/vungle/warren/persistence/Repository;

    const-class v1, Lccsancom/vungle/warren/model/Cookie;

    const-string v2, "userAgent"

    invoke-virtual {v0, v2, v1}, Lccsancom/vungle/warren/persistence/Repository;->load(Ljava/lang/String;Ljava/lang/Class;)Lccsancom/vungle/warren/persistence/FutureResult;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/vungle/warren/persistence/FutureResult;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsancom/vungle/warren/model/Cookie;

    .line 1215
    .local v0, "cookie":Lccsancom/vungle/warren/model/Cookie;
    const-string v1, "http.agent"

    if-nez v0, :cond_0

    .line 1216
    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .local v1, "tempUserAgent":Ljava/lang/String;
    goto :goto_0

    .line 1218
    .end local v1    # "tempUserAgent":Ljava/lang/String;
    :cond_0
    invoke-virtual {v0, v2}, Lccsancom/vungle/warren/model/Cookie;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1219
    .local v2, "tempUserAgent":Ljava/lang/String;
    invoke-static {v2}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1220
    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .end local v2    # "tempUserAgent":Ljava/lang/String;
    .restart local v1    # "tempUserAgent":Ljava/lang/String;
    goto :goto_0

    .line 1219
    .end local v1    # "tempUserAgent":Ljava/lang/String;
    .restart local v2    # "tempUserAgent":Ljava/lang/String;
    :cond_1
    move-object v1, v2

    .line 1224
    .end local v2    # "tempUserAgent":Ljava/lang/String;
    .restart local v1    # "tempUserAgent":Ljava/lang/String;
    :goto_0
    return-object v1
.end method

.method private getUserBody()Lccsancom/google/gson/JsonObject;
    .locals 12

    .line 1127
    new-instance v0, Lccsancom/google/gson/JsonObject;

    invoke-direct {v0}, Lccsancom/google/gson/JsonObject;-><init>()V

    .line 1133
    .local v0, "userBody":Lccsancom/google/gson/JsonObject;
    iget-object v1, p0, Lccsancom/vungle/warren/VungleApiClient;->repository:Lccsancom/vungle/warren/persistence/Repository;

    const-class v2, Lccsancom/vungle/warren/model/Cookie;

    const-string v3, "consentIsImportantToVungle"

    invoke-virtual {v1, v3, v2}, Lccsancom/vungle/warren/persistence/Repository;->load(Ljava/lang/String;Ljava/lang/Class;)Lccsancom/vungle/warren/persistence/FutureResult;

    move-result-object v1

    iget-object v2, p0, Lccsancom/vungle/warren/VungleApiClient;->timeoutProvider:Lccsancom/vungle/warren/utility/TimeoutProvider;

    .line 1134
    invoke-interface {v2}, Lccsancom/vungle/warren/utility/TimeoutProvider;->getTimeout()J

    move-result-wide v2

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v2, v3, v4}, Lccsancom/vungle/warren/persistence/FutureResult;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lccsancom/vungle/warren/model/Cookie;

    .line 1137
    .local v1, "consentCookie":Lccsancom/vungle/warren/model/Cookie;
    const-string v2, "consent_message_version"

    const-string v3, "consent_source"

    const-string v4, "consent_status"

    if-eqz v1, :cond_0

    .line 1138
    invoke-virtual {v1, v4}, Lccsancom/vungle/warren/model/Cookie;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1139
    .local v5, "status":Ljava/lang/String;
    invoke-virtual {v1, v3}, Lccsancom/vungle/warren/model/Cookie;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1140
    .local v6, "source":Ljava/lang/String;
    const-string v7, "timestamp"

    invoke-virtual {v1, v7}, Lccsancom/vungle/warren/model/Cookie;->getLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    .line 1141
    .local v7, "timestamp":J
    invoke-virtual {v1, v2}, Lccsancom/vungle/warren/model/Cookie;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .local v9, "messageVersion":Ljava/lang/String;
    goto :goto_0

    .line 1145
    .end local v5    # "status":Ljava/lang/String;
    .end local v6    # "source":Ljava/lang/String;
    .end local v7    # "timestamp":J
    .end local v9    # "messageVersion":Ljava/lang/String;
    :cond_0
    const-string v5, "unknown"

    .line 1146
    .restart local v5    # "status":Ljava/lang/String;
    const-string v6, "no_interaction"

    .line 1147
    .restart local v6    # "source":Ljava/lang/String;
    const-wide/16 v7, 0x0

    .line 1150
    .restart local v7    # "timestamp":J
    const-string v9, ""

    .line 1153
    .restart local v9    # "messageVersion":Ljava/lang/String;
    :goto_0
    new-instance v10, Lccsancom/google/gson/JsonObject;

    invoke-direct {v10}, Lccsancom/google/gson/JsonObject;-><init>()V

    .line 1161
    .local v10, "gdpr":Lccsancom/google/gson/JsonObject;
    invoke-virtual {v10, v4, v5}, Lccsancom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1169
    invoke-virtual {v10, v3, v6}, Lccsancom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1174
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const-string v4, "consent_timestamp"

    invoke-virtual {v10, v4, v3}, Lccsancom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 1176
    invoke-static {v9}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, ""

    goto :goto_1

    :cond_1
    move-object v3, v9

    :goto_1
    invoke-virtual {v10, v2, v3}, Lccsancom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1179
    const-string v2, "gdpr"

    invoke-virtual {v0, v2, v10}, Lccsancom/google/gson/JsonObject;->add(Ljava/lang/String;Lccsancom/google/gson/JsonElement;)V

    .line 1183
    iget-object v2, p0, Lccsancom/vungle/warren/VungleApiClient;->repository:Lccsancom/vungle/warren/persistence/Repository;

    const-class v3, Lccsancom/vungle/warren/model/Cookie;

    const-string v4, "ccpaIsImportantToVungle"

    invoke-virtual {v2, v4, v3}, Lccsancom/vungle/warren/persistence/Repository;->load(Ljava/lang/String;Ljava/lang/Class;)Lccsancom/vungle/warren/persistence/FutureResult;

    move-result-object v2

    invoke-virtual {v2}, Lccsancom/vungle/warren/persistence/FutureResult;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lccsancom/vungle/warren/model/Cookie;

    .line 1185
    .local v2, "ccpaCookie":Lccsancom/vungle/warren/model/Cookie;
    if-eqz v2, :cond_2

    .line 1186
    const-string v3, "ccpa_status"

    invoke-virtual {v2, v3}, Lccsancom/vungle/warren/model/Cookie;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .local v3, "ccpaStatus":Ljava/lang/String;
    goto :goto_2

    .line 1189
    .end local v3    # "ccpaStatus":Ljava/lang/String;
    :cond_2
    const-string v3, "opted_in"

    .line 1192
    .restart local v3    # "ccpaStatus":Ljava/lang/String;
    :goto_2
    new-instance v4, Lccsancom/google/gson/JsonObject;

    invoke-direct {v4}, Lccsancom/google/gson/JsonObject;-><init>()V

    .line 1199
    .local v4, "ccpa":Lccsancom/google/gson/JsonObject;
    const-string v11, "status"

    invoke-virtual {v4, v11, v3}, Lccsancom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1202
    const-string v11, "ccpa"

    invoke-virtual {v0, v11, v4}, Lccsancom/google/gson/JsonObject;->add(Ljava/lang/String;Lccsancom/google/gson/JsonElement;)V

    .line 1204
    return-object v0
.end method

.method private initUserAgentLazy()V
    .locals 3

    .line 437
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lccsancom/vungle/warren/VungleApiClient$2;

    invoke-direct {v1, p0}, Lccsancom/vungle/warren/VungleApiClient$2;-><init>(Lccsancom/vungle/warren/VungleApiClient;)V

    const-string v2, "vng_iual"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 449
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 450
    return-void
.end method

.method private setAppId(Ljava/lang/String;Lccsancom/google/gson/JsonObject;)V
    .locals 1
    .param p1, "appId"    # Ljava/lang/String;
    .param p2, "requestBody"    # Lccsancom/google/gson/JsonObject;

    .line 431
    const-string v0, "id"

    invoke-virtual {p2, v0, p1}, Lccsancom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 432
    return-void
.end method

.method public static setHeaderUa(Ljava/lang/String;)V
    .locals 0
    .param p0, "headerUa"    # Ljava/lang/String;

    .line 308
    sput-object p0, Lccsancom/vungle/warren/VungleApiClient;->headerUa:Ljava/lang/String;

    .line 309
    return-void
.end method


# virtual methods
.method addPlaySvcAvailabilityInCookie(Z)V
    .locals 3
    .param p1, "isPlaySvcAvailable"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lccsancom/vungle/warren/persistence/DatabaseHelper$DBException;
        }
    .end annotation

    .line 1367
    new-instance v0, Lccsancom/vungle/warren/model/Cookie;

    const-string v1, "isPlaySvcAvailable"

    invoke-direct {v0, v1}, Lccsancom/vungle/warren/model/Cookie;-><init>(Ljava/lang/String;)V

    .line 1368
    .local v0, "cookie":Lccsancom/vungle/warren/model/Cookie;
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lccsancom/vungle/warren/model/Cookie;->putValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1369
    iget-object v1, p0, Lccsancom/vungle/warren/VungleApiClient;->repository:Lccsancom/vungle/warren/persistence/Repository;

    invoke-virtual {v1, v0}, Lccsancom/vungle/warren/persistence/Repository;->save(Ljava/lang/Object;)V

    .line 1370
    return-void
.end method

.method public bustAnalytics(Ljava/util/Collection;)Lccsancom/vungle/warren/network/Call;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lccsancom/vungle/warren/model/CacheBust;",
            ">;)",
            "Lccsancom/vungle/warren/network/Call<",
            "Lccsancom/google/gson/JsonObject;",
            ">;"
        }
    .end annotation

    .line 775
    .local p1, "busts":Ljava/util/Collection;, "Ljava/util/Collection<Lccsancom/vungle/warren/model/CacheBust;>;"
    iget-object v0, p0, Lccsancom/vungle/warren/VungleApiClient;->bustAnalyticsEndpoint:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 779
    new-instance v0, Lccsancom/google/gson/JsonObject;

    invoke-direct {v0}, Lccsancom/google/gson/JsonObject;-><init>()V

    .line 780
    .local v0, "body":Lccsancom/google/gson/JsonObject;
    invoke-direct {p0}, Lccsancom/vungle/warren/VungleApiClient;->getDeviceBody()Lccsancom/google/gson/JsonObject;

    move-result-object v1

    const-string v2, "device"

    invoke-virtual {v0, v2, v1}, Lccsancom/google/gson/JsonObject;->add(Ljava/lang/String;Lccsancom/google/gson/JsonElement;)V

    .line 781
    iget-object v1, p0, Lccsancom/vungle/warren/VungleApiClient;->appBody:Lccsancom/google/gson/JsonObject;

    const-string v2, "app"

    invoke-virtual {v0, v2, v1}, Lccsancom/google/gson/JsonObject;->add(Ljava/lang/String;Lccsancom/google/gson/JsonElement;)V

    .line 784
    new-instance v1, Lccsancom/google/gson/JsonObject;

    invoke-direct {v1}, Lccsancom/google/gson/JsonObject;-><init>()V

    .line 785
    .local v1, "request":Lccsancom/google/gson/JsonObject;
    new-instance v2, Lccsancom/google/gson/JsonArray;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v3

    invoke-direct {v2, v3}, Lccsancom/google/gson/JsonArray;-><init>(I)V

    .line 786
    .local v2, "bustsArray":Lccsancom/google/gson/JsonArray;
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lccsancom/vungle/warren/model/CacheBust;

    .line 788
    .local v4, "bust":Lccsancom/vungle/warren/model/CacheBust;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    invoke-virtual {v4}, Lccsancom/vungle/warren/model/CacheBust;->getEventIds()[Ljava/lang/String;

    move-result-object v6

    array-length v6, v6

    if-ge v5, v6, :cond_1

    .line 789
    new-instance v6, Lccsancom/google/gson/JsonObject;

    invoke-direct {v6}, Lccsancom/google/gson/JsonObject;-><init>()V

    .line 790
    .local v6, "bustElement":Lccsancom/google/gson/JsonObject;
    nop

    .line 791
    invoke-virtual {v4}, Lccsancom/vungle/warren/model/CacheBust;->getIdType()I

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_0

    const-string v7, "campaign"

    goto :goto_2

    :cond_0
    const-string v7, "creative"

    .line 790
    :goto_2
    const-string v8, "target"

    invoke-virtual {v6, v8, v7}, Lccsancom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 792
    invoke-virtual {v4}, Lccsancom/vungle/warren/model/CacheBust;->getId()Ljava/lang/String;

    move-result-object v7

    const-string v8, "id"

    invoke-virtual {v6, v8, v7}, Lccsancom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 793
    invoke-virtual {v4}, Lccsancom/vungle/warren/model/CacheBust;->getEventIds()[Ljava/lang/String;

    move-result-object v7

    aget-object v7, v7, v5

    const-string v8, "event_id"

    invoke-virtual {v6, v8, v7}, Lccsancom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 794
    invoke-virtual {v2, v6}, Lccsancom/google/gson/JsonArray;->add(Lccsancom/google/gson/JsonElement;)V

    .line 788
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 796
    .end local v4    # "bust":Lccsancom/vungle/warren/model/CacheBust;
    .end local v5    # "i":I
    .end local v6    # "bustElement":Lccsancom/google/gson/JsonObject;
    :cond_1
    goto :goto_0

    .line 797
    :cond_2
    const-string v3, "cache_bust"

    invoke-virtual {v1, v3, v2}, Lccsancom/google/gson/JsonObject;->add(Ljava/lang/String;Lccsancom/google/gson/JsonElement;)V

    .line 799
    new-instance v3, Lccsancom/google/gson/JsonObject;

    invoke-direct {v3}, Lccsancom/google/gson/JsonObject;-><init>()V

    .line 801
    .local v3, "sessionReport":Lccsancom/google/gson/JsonObject;
    const-string v4, "sessionReport"

    invoke-virtual {v1, v4, v3}, Lccsancom/google/gson/JsonObject;->add(Ljava/lang/String;Lccsancom/google/gson/JsonElement;)V

    .line 803
    const-string v4, "request"

    invoke-virtual {v0, v4, v1}, Lccsancom/google/gson/JsonObject;->add(Ljava/lang/String;Lccsancom/google/gson/JsonElement;)V

    .line 805
    iget-object v4, p0, Lccsancom/vungle/warren/VungleApiClient;->gzipApi:Lccsancom/vungle/warren/network/VungleApi;

    invoke-static {}, Lccsancom/vungle/warren/VungleApiClient;->getHeaderUa()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lccsancom/vungle/warren/VungleApiClient;->bustAnalyticsEndpoint:Ljava/lang/String;

    invoke-interface {v4, v5, v6, v0}, Lccsancom/vungle/warren/network/VungleApi;->bustAnalytics(Ljava/lang/String;Ljava/lang/String;Lccsancom/google/gson/JsonObject;)Lccsancom/vungle/warren/network/Call;

    move-result-object v4

    return-object v4

    .line 776
    .end local v0    # "body":Lccsancom/google/gson/JsonObject;
    .end local v1    # "request":Lccsancom/google/gson/JsonObject;
    .end local v2    # "bustsArray":Lccsancom/google/gson/JsonArray;
    .end local v3    # "sessionReport":Lccsancom/google/gson/JsonObject;
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "API Client not configured yet! Must call /config first."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto :goto_4

    :goto_3
    throw v0

    :goto_4
    goto :goto_3
.end method

.method public cacheBust(J)Lccsancom/vungle/warren/network/Call;
    .locals 6
    .param p1, "lastCacheBustTime"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Lccsancom/vungle/warren/network/Call<",
            "Lccsancom/google/gson/JsonObject;",
            ">;"
        }
    .end annotation

    .line 751
    iget-object v0, p0, Lccsancom/vungle/warren/VungleApiClient;->cacheBustEndpoint:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 755
    new-instance v0, Lccsancom/google/gson/JsonObject;

    invoke-direct {v0}, Lccsancom/google/gson/JsonObject;-><init>()V

    .line 756
    .local v0, "body":Lccsancom/google/gson/JsonObject;
    invoke-direct {p0}, Lccsancom/vungle/warren/VungleApiClient;->getDeviceBody()Lccsancom/google/gson/JsonObject;

    move-result-object v1

    const-string v2, "device"

    invoke-virtual {v0, v2, v1}, Lccsancom/google/gson/JsonObject;->add(Ljava/lang/String;Lccsancom/google/gson/JsonElement;)V

    .line 757
    iget-object v1, p0, Lccsancom/vungle/warren/VungleApiClient;->appBody:Lccsancom/google/gson/JsonObject;

    const-string v2, "app"

    invoke-virtual {v0, v2, v1}, Lccsancom/google/gson/JsonObject;->add(Ljava/lang/String;Lccsancom/google/gson/JsonElement;)V

    .line 758
    invoke-direct {p0}, Lccsancom/vungle/warren/VungleApiClient;->getUserBody()Lccsancom/google/gson/JsonObject;

    move-result-object v1

    .line 759
    .local v1, "userBody":Lccsancom/google/gson/JsonObject;
    const-string v2, "user"

    invoke-virtual {v0, v2, v1}, Lccsancom/google/gson/JsonObject;->add(Ljava/lang/String;Lccsancom/google/gson/JsonElement;)V

    .line 762
    new-instance v2, Lccsancom/google/gson/JsonObject;

    invoke-direct {v2}, Lccsancom/google/gson/JsonObject;-><init>()V

    .line 763
    .local v2, "request":Lccsancom/google/gson/JsonObject;
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const-string v4, "last_cache_bust"

    invoke-virtual {v2, v4, v3}, Lccsancom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 765
    const-string v3, "request"

    invoke-virtual {v0, v3, v2}, Lccsancom/google/gson/JsonObject;->add(Ljava/lang/String;Lccsancom/google/gson/JsonElement;)V

    .line 767
    iget-object v3, p0, Lccsancom/vungle/warren/VungleApiClient;->gzipApi:Lccsancom/vungle/warren/network/VungleApi;

    invoke-static {}, Lccsancom/vungle/warren/VungleApiClient;->getHeaderUa()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lccsancom/vungle/warren/VungleApiClient;->cacheBustEndpoint:Ljava/lang/String;

    invoke-interface {v3, v4, v5, v0}, Lccsancom/vungle/warren/network/VungleApi;->cacheBust(Ljava/lang/String;Ljava/lang/String;Lccsancom/google/gson/JsonObject;)Lccsancom/vungle/warren/network/Call;

    move-result-object v3

    return-object v3

    .line 752
    .end local v0    # "body":Lccsancom/google/gson/JsonObject;
    .end local v1    # "userBody":Lccsancom/google/gson/JsonObject;
    .end local v2    # "request":Lccsancom/google/gson/JsonObject;
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "API Client not configured yet! Must call /config first."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method canCallWillPlayAd()Z
    .locals 1

    .line 631
    iget-boolean v0, p0, Lccsancom/vungle/warren/VungleApiClient;->willPlayAdEnabled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lccsancom/vungle/warren/VungleApiClient;->willPlayAdEndpoint:Ljava/lang/String;

    invoke-static {v0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public config()Lccsancom/vungle/warren/network/Response;
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lccsancom/vungle/warren/error/VungleException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 458
    move-object/from16 v0, p0

    new-instance v1, Lccsancom/google/gson/JsonObject;

    invoke-direct {v1}, Lccsancom/google/gson/JsonObject;-><init>()V

    .line 459
    .local v1, "body":Lccsancom/google/gson/JsonObject;
    invoke-direct/range {p0 .. p0}, Lccsancom/vungle/warren/VungleApiClient;->getDeviceBody()Lccsancom/google/gson/JsonObject;

    move-result-object v2

    const-string v3, "device"

    invoke-virtual {v1, v3, v2}, Lccsancom/google/gson/JsonObject;->add(Ljava/lang/String;Lccsancom/google/gson/JsonElement;)V

    .line 460
    iget-object v2, v0, Lccsancom/vungle/warren/VungleApiClient;->appBody:Lccsancom/google/gson/JsonObject;

    const-string v3, "app"

    invoke-virtual {v1, v3, v2}, Lccsancom/google/gson/JsonObject;->add(Ljava/lang/String;Lccsancom/google/gson/JsonElement;)V

    .line 461
    invoke-direct/range {p0 .. p0}, Lccsancom/vungle/warren/VungleApiClient;->getUserBody()Lccsancom/google/gson/JsonObject;

    move-result-object v2

    const-string v3, "user"

    invoke-virtual {v1, v3, v2}, Lccsancom/google/gson/JsonObject;->add(Ljava/lang/String;Lccsancom/google/gson/JsonElement;)V

    .line 463
    iget-object v2, v0, Lccsancom/vungle/warren/VungleApiClient;->api:Lccsancom/vungle/warren/network/VungleApi;

    invoke-static {}, Lccsancom/vungle/warren/VungleApiClient;->getHeaderUa()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Lccsancom/vungle/warren/network/VungleApi;->config(Ljava/lang/String;Lccsancom/google/gson/JsonObject;)Lccsancom/vungle/warren/network/Call;

    move-result-object v2

    invoke-interface {v2}, Lccsancom/vungle/warren/network/Call;->execute()Lccsancom/vungle/warren/network/Response;

    move-result-object v2

    .line 465
    .local v2, "response":Lccsancom/vungle/warren/network/Response;, "Lccsancom/vungle/warren/network/Response<Lccsancom/google/gson/JsonObject;>;"
    invoke-virtual {v2}, Lccsancom/vungle/warren/network/Response;->isSuccessful()Z

    move-result v3

    if-nez v3, :cond_0

    .line 468
    return-object v2

    .line 471
    :cond_0
    invoke-virtual {v2}, Lccsancom/vungle/warren/network/Response;->body()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lccsancom/google/gson/JsonObject;

    .line 472
    .local v3, "jsonObject":Lccsancom/google/gson/JsonObject;
    sget-object v4, Lccsancom/vungle/warren/VungleApiClient;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Config Response: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lccsanandroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 473
    const-string v5, "sleep"

    invoke-static {v3, v5}, Lccsancom/vungle/warren/model/JsonUtil;->hasNonNull(Lccsancom/google/gson/JsonElement;Ljava/lang/String;)Z

    move-result v5

    const/4 v6, 0x3

    const-string v7, "Error Initializing Vungle. Please try again. "

    if-eqz v5, :cond_2

    .line 474
    const-string v5, "info"

    invoke-static {v3, v5}, Lccsancom/vungle/warren/model/JsonUtil;->hasNonNull(Lccsancom/google/gson/JsonElement;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-virtual {v3, v5}, Lccsancom/google/gson/JsonObject;->get(Ljava/lang/String;)Lccsancom/google/gson/JsonElement;

    move-result-object v5

    invoke-virtual {v5}, Lccsancom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    :cond_1
    const-string v5, ""

    .line 475
    .local v5, "errorMessage":Ljava/lang/String;
    :goto_0
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Lccsanandroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 476
    new-instance v4, Lccsancom/vungle/warren/error/VungleException;

    invoke-direct {v4, v6}, Lccsancom/vungle/warren/error/VungleException;-><init>(I)V

    throw v4

    .line 480
    .end local v5    # "errorMessage":Ljava/lang/String;
    :cond_2
    const-string v5, "endpoints"

    invoke-static {v3, v5}, Lccsancom/vungle/warren/model/JsonUtil;->hasNonNull(Lccsancom/google/gson/JsonElement;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 486
    invoke-virtual {v3, v5}, Lccsancom/google/gson/JsonObject;->getAsJsonObject(Ljava/lang/String;)Lccsancom/google/gson/JsonObject;

    move-result-object v5

    .line 488
    .local v5, "endpoints":Lccsancom/google/gson/JsonObject;
    const-string v8, "new"

    invoke-virtual {v5, v8}, Lccsancom/google/gson/JsonObject;->get(Ljava/lang/String;)Lccsancom/google/gson/JsonElement;

    move-result-object v8

    invoke-virtual {v8}, Lccsancom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lccsanokhttp3/HttpUrl;->parse(Ljava/lang/String;)Lccsanokhttp3/HttpUrl;

    move-result-object v8

    .line 489
    .local v8, "newUrl":Lccsanokhttp3/HttpUrl;
    const-string v9, "ads"

    invoke-virtual {v5, v9}, Lccsancom/google/gson/JsonObject;->get(Ljava/lang/String;)Lccsancom/google/gson/JsonElement;

    move-result-object v9

    invoke-virtual {v9}, Lccsancom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lccsanokhttp3/HttpUrl;->parse(Ljava/lang/String;)Lccsanokhttp3/HttpUrl;

    move-result-object v9

    .line 490
    .local v9, "adsUrl":Lccsanokhttp3/HttpUrl;
    const-string v10, "will_play_ad"

    invoke-virtual {v5, v10}, Lccsancom/google/gson/JsonObject;->get(Ljava/lang/String;)Lccsancom/google/gson/JsonElement;

    move-result-object v11

    invoke-virtual {v11}, Lccsancom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lccsanokhttp3/HttpUrl;->parse(Ljava/lang/String;)Lccsanokhttp3/HttpUrl;

    move-result-object v11

    .line 491
    .local v11, "willPlayAdUrl":Lccsanokhttp3/HttpUrl;
    const-string v12, "report_ad"

    invoke-virtual {v5, v12}, Lccsancom/google/gson/JsonObject;->get(Ljava/lang/String;)Lccsancom/google/gson/JsonElement;

    move-result-object v12

    invoke-virtual {v12}, Lccsancom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lccsanokhttp3/HttpUrl;->parse(Ljava/lang/String;)Lccsanokhttp3/HttpUrl;

    move-result-object v12

    .line 492
    .local v12, "reportAdUrl":Lccsanokhttp3/HttpUrl;
    const-string v13, "ri"

    invoke-virtual {v5, v13}, Lccsancom/google/gson/JsonObject;->get(Ljava/lang/String;)Lccsancom/google/gson/JsonElement;

    move-result-object v13

    invoke-virtual {v13}, Lccsancom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lccsanokhttp3/HttpUrl;->parse(Ljava/lang/String;)Lccsanokhttp3/HttpUrl;

    move-result-object v13

    .line 493
    .local v13, "reportIncentivized":Lccsanokhttp3/HttpUrl;
    const-string v14, "log"

    invoke-virtual {v5, v14}, Lccsancom/google/gson/JsonObject;->get(Ljava/lang/String;)Lccsancom/google/gson/JsonElement;

    move-result-object v14

    invoke-virtual {v14}, Lccsancom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lccsanokhttp3/HttpUrl;->parse(Ljava/lang/String;)Lccsanokhttp3/HttpUrl;

    move-result-object v14

    .line 494
    .local v14, "logUrl":Lccsanokhttp3/HttpUrl;
    const-string v15, "cache_bust"

    invoke-virtual {v5, v15}, Lccsancom/google/gson/JsonObject;->get(Ljava/lang/String;)Lccsancom/google/gson/JsonElement;

    move-result-object v15

    invoke-virtual {v15}, Lccsancom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Lccsanokhttp3/HttpUrl;->parse(Ljava/lang/String;)Lccsanokhttp3/HttpUrl;

    move-result-object v15

    .line 495
    .local v15, "cacheBustUrl":Lccsanokhttp3/HttpUrl;
    const-string v6, "sdk_bi"

    invoke-virtual {v5, v6}, Lccsancom/google/gson/JsonObject;->get(Ljava/lang/String;)Lccsancom/google/gson/JsonElement;

    move-result-object v6

    invoke-virtual {v6}, Lccsancom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lccsanokhttp3/HttpUrl;->parse(Ljava/lang/String;)Lccsanokhttp3/HttpUrl;

    move-result-object v6

    .line 497
    .local v6, "bustAnalyticsUrl":Lccsanokhttp3/HttpUrl;
    if-eqz v8, :cond_5

    if-eqz v9, :cond_5

    if-eqz v11, :cond_5

    if-eqz v12, :cond_5

    if-eqz v13, :cond_5

    if-eqz v14, :cond_5

    if-eqz v15, :cond_5

    .line 503
    invoke-virtual {v8}, Lccsanokhttp3/HttpUrl;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v0, Lccsancom/vungle/warren/VungleApiClient;->newEndpoint:Ljava/lang/String;

    .line 504
    invoke-virtual {v9}, Lccsanokhttp3/HttpUrl;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v0, Lccsancom/vungle/warren/VungleApiClient;->requestAdEndpoint:Ljava/lang/String;

    .line 505
    invoke-virtual {v11}, Lccsanokhttp3/HttpUrl;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v0, Lccsancom/vungle/warren/VungleApiClient;->willPlayAdEndpoint:Ljava/lang/String;

    .line 506
    invoke-virtual {v12}, Lccsanokhttp3/HttpUrl;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v0, Lccsancom/vungle/warren/VungleApiClient;->reportAdEndpoint:Ljava/lang/String;

    .line 507
    invoke-virtual {v13}, Lccsanokhttp3/HttpUrl;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v0, Lccsancom/vungle/warren/VungleApiClient;->riEndpoint:Ljava/lang/String;

    .line 508
    invoke-virtual {v14}, Lccsanokhttp3/HttpUrl;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v0, Lccsancom/vungle/warren/VungleApiClient;->logEndpoint:Ljava/lang/String;

    .line 509
    invoke-virtual {v15}, Lccsanokhttp3/HttpUrl;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v0, Lccsancom/vungle/warren/VungleApiClient;->cacheBustEndpoint:Ljava/lang/String;

    .line 510
    invoke-virtual {v6}, Lccsanokhttp3/HttpUrl;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v0, Lccsancom/vungle/warren/VungleApiClient;->bustAnalyticsEndpoint:Ljava/lang/String;

    .line 513
    invoke-virtual {v3, v10}, Lccsancom/google/gson/JsonObject;->getAsJsonObject(Ljava/lang/String;)Lccsancom/google/gson/JsonObject;

    move-result-object v7

    .line 514
    .local v7, "willPlayAd":Lccsancom/google/gson/JsonObject;
    const-string v10, "request_timeout"

    invoke-virtual {v7, v10}, Lccsancom/google/gson/JsonObject;->get(Ljava/lang/String;)Lccsancom/google/gson/JsonElement;

    move-result-object v10

    invoke-virtual {v10}, Lccsancom/google/gson/JsonElement;->getAsInt()I

    move-result v10

    iput v10, v0, Lccsancom/vungle/warren/VungleApiClient;->willPlayAdTimeout:I

    .line 515
    const-string v10, "enabled"

    invoke-virtual {v7, v10}, Lccsancom/google/gson/JsonObject;->get(Ljava/lang/String;)Lccsancom/google/gson/JsonElement;

    move-result-object v10

    invoke-virtual {v10}, Lccsancom/google/gson/JsonElement;->getAsBoolean()Z

    move-result v10

    iput-boolean v10, v0, Lccsancom/vungle/warren/VungleApiClient;->willPlayAdEnabled:Z

    .line 518
    const-string v10, "viewability"

    invoke-virtual {v3, v10}, Lccsancom/google/gson/JsonObject;->getAsJsonObject(Ljava/lang/String;)Lccsancom/google/gson/JsonObject;

    move-result-object v10

    .line 519
    .local v10, "viewability":Lccsancom/google/gson/JsonObject;
    move-object/from16 v16, v1

    .end local v1    # "body":Lccsancom/google/gson/JsonObject;
    .local v16, "body":Lccsancom/google/gson/JsonObject;
    const/4 v1, 0x0

    move-object/from16 v17, v3

    .end local v3    # "jsonObject":Lccsancom/google/gson/JsonObject;
    .local v17, "jsonObject":Lccsancom/google/gson/JsonObject;
    const-string v3, "om"

    invoke-static {v10, v3, v1}, Lccsancom/vungle/warren/model/JsonUtil;->getAsBoolean(Lccsancom/google/gson/JsonElement;Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, v0, Lccsancom/vungle/warren/VungleApiClient;->enableOm:Z

    .line 521
    iget-boolean v1, v0, Lccsancom/vungle/warren/VungleApiClient;->willPlayAdEnabled:Z

    if-eqz v1, :cond_3

    .line 526
    const-string v1, "willPlayAd is enabled, generating a timeout client."

    invoke-static {v4, v1}, Lccsanandroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 527
    iget-object v1, v0, Lccsancom/vungle/warren/VungleApiClient;->client:Lccsanokhttp3/OkHttpClient;

    invoke-virtual {v1}, Lccsanokhttp3/OkHttpClient;->newBuilder()Lccsanokhttp3/OkHttpClient$Builder;

    move-result-object v1

    iget v3, v0, Lccsancom/vungle/warren/VungleApiClient;->willPlayAdTimeout:I

    int-to-long v3, v3

    move-object/from16 v18, v5

    .end local v5    # "endpoints":Lccsancom/google/gson/JsonObject;
    .local v18, "endpoints":Lccsancom/google/gson/JsonObject;
    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 528
    invoke-virtual {v1, v3, v4, v5}, Lccsanokhttp3/OkHttpClient$Builder;->readTimeout(JLjava/util/concurrent/TimeUnit;)Lccsanokhttp3/OkHttpClient$Builder;

    move-result-object v1

    .line 529
    invoke-virtual {v1}, Lccsanokhttp3/OkHttpClient$Builder;->build()Lccsanokhttp3/OkHttpClient;

    move-result-object v1

    .line 530
    .local v1, "timeoutClient":Lccsanokhttp3/OkHttpClient;
    new-instance v3, Lccsancom/vungle/warren/network/APIFactory;

    const-string v4, "https://api.vungle.com/"

    invoke-direct {v3, v1, v4}, Lccsancom/vungle/warren/network/APIFactory;-><init>(Lccsanokhttp3/Call$Factory;Ljava/lang/String;)V

    .line 532
    .local v3, "timeoutRetro":Lccsancom/vungle/warren/network/APIFactory;
    invoke-virtual {v3}, Lccsancom/vungle/warren/network/APIFactory;->createAPI()Lccsancom/vungle/warren/network/VungleApi;

    move-result-object v4

    iput-object v4, v0, Lccsancom/vungle/warren/VungleApiClient;->timeoutApi:Lccsancom/vungle/warren/network/VungleApi;

    goto :goto_1

    .line 521
    .end local v1    # "timeoutClient":Lccsanokhttp3/OkHttpClient;
    .end local v3    # "timeoutRetro":Lccsancom/vungle/warren/network/APIFactory;
    .end local v18    # "endpoints":Lccsancom/google/gson/JsonObject;
    .restart local v5    # "endpoints":Lccsancom/google/gson/JsonObject;
    :cond_3
    move-object/from16 v18, v5

    .line 535
    .end local v5    # "endpoints":Lccsancom/google/gson/JsonObject;
    .restart local v18    # "endpoints":Lccsancom/google/gson/JsonObject;
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lccsancom/vungle/warren/VungleApiClient;->getOmEnabled()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 536
    iget-object v1, v0, Lccsancom/vungle/warren/VungleApiClient;->omInjector:Lccsancom/vungle/warren/omsdk/OMInjector;

    invoke-virtual {v1}, Lccsancom/vungle/warren/omsdk/OMInjector;->init()V

    .line 538
    :cond_4
    return-object v2

    .line 497
    .end local v7    # "willPlayAd":Lccsancom/google/gson/JsonObject;
    .end local v10    # "viewability":Lccsancom/google/gson/JsonObject;
    .end local v16    # "body":Lccsancom/google/gson/JsonObject;
    .end local v17    # "jsonObject":Lccsancom/google/gson/JsonObject;
    .end local v18    # "endpoints":Lccsancom/google/gson/JsonObject;
    .local v1, "body":Lccsancom/google/gson/JsonObject;
    .local v3, "jsonObject":Lccsancom/google/gson/JsonObject;
    .restart local v5    # "endpoints":Lccsancom/google/gson/JsonObject;
    :cond_5
    move-object/from16 v16, v1

    move-object/from16 v17, v3

    move-object/from16 v18, v5

    .line 499
    .end local v1    # "body":Lccsancom/google/gson/JsonObject;
    .end local v3    # "jsonObject":Lccsancom/google/gson/JsonObject;
    .end local v5    # "endpoints":Lccsancom/google/gson/JsonObject;
    .restart local v16    # "body":Lccsancom/google/gson/JsonObject;
    .restart local v17    # "jsonObject":Lccsancom/google/gson/JsonObject;
    .restart local v18    # "endpoints":Lccsancom/google/gson/JsonObject;
    invoke-static {v4, v7}, Lccsanandroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 500
    new-instance v1, Lccsancom/vungle/warren/error/VungleException;

    const/4 v3, 0x3

    invoke-direct {v1, v3}, Lccsancom/vungle/warren/error/VungleException;-><init>(I)V

    throw v1

    .line 481
    .end local v6    # "bustAnalyticsUrl":Lccsanokhttp3/HttpUrl;
    .end local v8    # "newUrl":Lccsanokhttp3/HttpUrl;
    .end local v9    # "adsUrl":Lccsanokhttp3/HttpUrl;
    .end local v11    # "willPlayAdUrl":Lccsanokhttp3/HttpUrl;
    .end local v12    # "reportAdUrl":Lccsanokhttp3/HttpUrl;
    .end local v13    # "reportIncentivized":Lccsanokhttp3/HttpUrl;
    .end local v14    # "logUrl":Lccsanokhttp3/HttpUrl;
    .end local v15    # "cacheBustUrl":Lccsanokhttp3/HttpUrl;
    .end local v16    # "body":Lccsancom/google/gson/JsonObject;
    .end local v17    # "jsonObject":Lccsancom/google/gson/JsonObject;
    .end local v18    # "endpoints":Lccsancom/google/gson/JsonObject;
    .restart local v1    # "body":Lccsancom/google/gson/JsonObject;
    .restart local v3    # "jsonObject":Lccsancom/google/gson/JsonObject;
    :cond_6
    move-object/from16 v16, v1

    move-object/from16 v17, v3

    const/4 v3, 0x3

    .end local v1    # "body":Lccsancom/google/gson/JsonObject;
    .end local v3    # "jsonObject":Lccsancom/google/gson/JsonObject;
    .restart local v16    # "body":Lccsancom/google/gson/JsonObject;
    .restart local v17    # "jsonObject":Lccsancom/google/gson/JsonObject;
    invoke-static {v4, v7}, Lccsanandroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 482
    new-instance v1, Lccsancom/vungle/warren/error/VungleException;

    invoke-direct {v1, v3}, Lccsancom/vungle/warren/error/VungleException;-><init>(I)V

    throw v1
.end method

.method public getOmEnabled()Z
    .locals 1

    .line 1208
    iget-boolean v0, p0, Lccsancom/vungle/warren/VungleApiClient;->enableOm:Z

    return v0
.end method

.method getPlayServicesAvailabilityFromAPI()Ljava/lang/Boolean;
    .locals 5

    .line 1342
    const/4 v0, 0x0

    .line 1344
    .local v0, "result":Ljava/lang/Boolean;
    const/4 v1, 0x0

    :try_start_0
    invoke-static {}, Lccsancom/google/android/gms/common/GoogleApiAvailabilityLight;->getInstance()Lccsancom/google/android/gms/common/GoogleApiAvailabilityLight;

    move-result-object v2

    .line 1345
    .local v2, "googleApiAvailabilityLight":Lccsancom/google/android/gms/common/GoogleApiAvailabilityLight;
    if-eqz v2, :cond_1

    .line 1346
    iget-object v3, p0, Lccsancom/vungle/warren/VungleApiClient;->context:Lccsanandroid/content/Context;

    invoke-virtual {v2, v3}, Lccsancom/google/android/gms/common/GoogleApiAvailabilityLight;->isGooglePlayServicesAvailable(Lccsanandroid/content/Context;)I

    move-result v3

    if-nez v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    move-object v0, v3

    .line 1347
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-virtual {p0, v3}, Lccsancom/vungle/warren/VungleApiClient;->addPlaySvcAvailabilityInCookie(Z)V
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1361
    .end local v2    # "googleApiAvailabilityLight":Lccsancom/google/android/gms/common/GoogleApiAvailabilityLight;
    :cond_1
    :goto_1
    goto :goto_2

    .line 1359
    :catch_0
    move-exception v1

    .line 1360
    .local v1, "exception":Ljava/lang/Exception;
    sget-object v2, Lccsancom/vungle/warren/VungleApiClient;->TAG:Ljava/lang/String;

    const-string v3, "Unexpected exception from Play services lib."

    invoke-static {v2, v3}, Lccsanandroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 1349
    .end local v1    # "exception":Ljava/lang/Exception;
    :catch_1
    move-exception v2

    .line 1350
    .local v2, "error":Ljava/lang/NoClassDefFoundError;
    sget-object v3, Lccsancom/vungle/warren/VungleApiClient;->TAG:Ljava/lang/String;

    const-string v4, "Play services Not available"

    invoke-static {v3, v4}, Lccsanandroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1353
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 1355
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p0, v1}, Lccsancom/vungle/warren/VungleApiClient;->addPlaySvcAvailabilityInCookie(Z)V
    :try_end_1
    .catch Lccsancom/vungle/warren/persistence/DatabaseHelper$DBException; {:try_start_1 .. :try_end_1} :catch_2

    .line 1358
    goto :goto_1

    .line 1356
    :catch_2
    move-exception v1

    .line 1357
    .local v1, "e":Lccsancom/vungle/warren/persistence/DatabaseHelper$DBException;
    sget-object v3, Lccsancom/vungle/warren/VungleApiClient;->TAG:Ljava/lang/String;

    const-string v4, "Failure to write GPS availability to DB"

    invoke-static {v3, v4}, Lccsanandroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1362
    .end local v1    # "e":Lccsancom/vungle/warren/persistence/DatabaseHelper$DBException;
    .end local v2    # "error":Ljava/lang/NoClassDefFoundError;
    :goto_2
    return-object v0
.end method

.method getPlayServicesAvailabilityFromCookie()Ljava/lang/Boolean;
    .locals 6

    .line 1331
    const/4 v0, 0x0

    .line 1332
    .local v0, "playSvcAvailability":Ljava/lang/Boolean;
    iget-object v1, p0, Lccsancom/vungle/warren/VungleApiClient;->repository:Lccsancom/vungle/warren/persistence/Repository;

    const-class v2, Lccsancom/vungle/warren/model/Cookie;

    const-string v3, "isPlaySvcAvailable"

    invoke-virtual {v1, v3, v2}, Lccsancom/vungle/warren/persistence/Repository;->load(Ljava/lang/String;Ljava/lang/Class;)Lccsancom/vungle/warren/persistence/FutureResult;

    move-result-object v1

    iget-object v2, p0, Lccsancom/vungle/warren/VungleApiClient;->timeoutProvider:Lccsancom/vungle/warren/utility/TimeoutProvider;

    .line 1333
    invoke-interface {v2}, Lccsancom/vungle/warren/utility/TimeoutProvider;->getTimeout()J

    move-result-wide v4

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v4, v5, v2}, Lccsancom/vungle/warren/persistence/FutureResult;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lccsancom/vungle/warren/model/Cookie;

    .line 1334
    .local v1, "cookie":Lccsancom/vungle/warren/model/Cookie;
    if-eqz v1, :cond_0

    .line 1335
    invoke-virtual {v1, v3}, Lccsancom/vungle/warren/model/Cookie;->getBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    .line 1337
    :cond_0
    return-object v0
.end method

.method public getRetryAfterHeaderValue(Lccsancom/vungle/warren/network/Response;)J
    .locals 5
    .param p1, "response"    # Lccsancom/vungle/warren/network/Response;

    .line 1236
    invoke-virtual {p1}, Lccsancom/vungle/warren/network/Response;->headers()Lccsanokhttp3/Headers;

    move-result-object v0

    const-string v1, "Retry-After"

    invoke-virtual {v0, v1}, Lccsanokhttp3/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1238
    .local v0, "header":Ljava/lang/String;
    :try_start_0
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    const-wide/16 v3, 0x3e8

    mul-long v1, v1, v3

    return-wide v1

    .line 1239
    :catch_0
    move-exception v1

    .line 1240
    .local v1, "ex":Ljava/lang/NumberFormatException;
    const-wide/16 v2, 0x0

    return-wide v2
.end method

.method public init()V
    .locals 1

    .line 312
    iget-object v0, p0, Lccsancom/vungle/warren/VungleApiClient;->context:Lccsanandroid/content/Context;

    invoke-virtual {p0, v0}, Lccsancom/vungle/warren/VungleApiClient;->init(Lccsanandroid/content/Context;)V

    .line 313
    return-void
.end method

.method declared-synchronized init(Lccsanandroid/content/Context;)V
    .locals 11
    .param p1, "context"    # Lccsanandroid/content/Context;

    monitor-enter p0

    .line 375
    :try_start_0
    new-instance v0, Lccsancom/google/gson/JsonObject;

    invoke-direct {v0}, Lccsancom/google/gson/JsonObject;-><init>()V

    .line 376
    .local v0, "app":Lccsancom/google/gson/JsonObject;
    const-string v1, "bundle"

    invoke-virtual {p1}, Lccsanandroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lccsancom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 377
    const/4 v1, 0x0

    .line 379
    .local v1, "versionName":Ljava/lang/String;
    :try_start_1
    invoke-virtual {p1}, Lccsanandroid/content/Context;->getPackageManager()Lccsanandroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {p1}, Lccsanandroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lccsanandroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Lccsanandroid/content/pm/PackageInfo;

    move-result-object v2

    iget-object v2, v2, Lccsanandroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_1
    .catch Lccsanandroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v1, v2

    .line 382
    goto :goto_0

    .line 380
    .end local p0    # "this":Lccsancom/vungle/warren/VungleApiClient;
    :catch_0
    move-exception v2

    .line 383
    :goto_0
    :try_start_2
    const-string v2, "ver"

    if-eqz v1, :cond_0

    move-object v3, v1

    goto :goto_1

    :cond_0
    const-string v3, "1.0"

    :goto_1
    invoke-virtual {v0, v2, v3}, Lccsancom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 386
    new-instance v2, Lccsancom/google/gson/JsonObject;

    invoke-direct {v2}, Lccsancom/google/gson/JsonObject;-><init>()V

    .line 387
    .local v2, "device":Lccsancom/google/gson/JsonObject;
    const-string v3, "make"

    sget-object v4, Lccsanandroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lccsancom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 388
    const-string v3, "model"

    sget-object v4, Lccsanandroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lccsancom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 389
    const-string v3, "osv"

    sget-object v4, Lccsanandroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lccsancom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 390
    const-string v3, "carrier"

    const-string v4, "phone"

    invoke-virtual {p1, v4}, Lccsanandroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lccsanandroid/telephony/TelephonyManager;

    invoke-virtual {v4}, Lccsanandroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lccsancom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 391
    const-string v3, "os"

    const-string v4, "Amazon"

    sget-object v5, Lccsanandroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v4, "amazon"

    goto :goto_2

    :cond_1
    const-string v4, "android"

    :goto_2
    invoke-virtual {v2, v3, v4}, Lccsancom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 392
    new-instance v3, Lccsanandroid/util/DisplayMetrics;

    invoke-direct {v3}, Lccsanandroid/util/DisplayMetrics;-><init>()V

    .line 393
    .local v3, "dm":Lccsanandroid/util/DisplayMetrics;
    const-string v4, "window"

    invoke-virtual {p1, v4}, Lccsanandroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lccsanandroid/view/WindowManager;

    .line 394
    .local v4, "windowManager":Lccsanandroid/view/WindowManager;
    invoke-interface {v4}, Lccsanandroid/view/WindowManager;->getDefaultDisplay()Lccsanandroid/view/Display;

    move-result-object v5

    invoke-virtual {v5, v3}, Lccsanandroid/view/Display;->getMetrics(Lccsanandroid/util/DisplayMetrics;)V

    .line 395
    const-string v5, "w"

    iget v6, v3, Lccsanandroid/util/DisplayMetrics;->widthPixels:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Lccsancom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 396
    const-string v5, "h"

    iget v6, v3, Lccsanandroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Lccsancom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 399
    new-instance v5, Lccsancom/google/gson/JsonObject;

    invoke-direct {v5}, Lccsancom/google/gson/JsonObject;-><init>()V

    .line 400
    .local v5, "ext":Lccsancom/google/gson/JsonObject;
    new-instance v6, Lccsancom/google/gson/JsonObject;

    invoke-direct {v6}, Lccsancom/google/gson/JsonObject;-><init>()V

    .line 401
    .local v6, "vungle":Lccsancom/google/gson/JsonObject;
    const-string v7, "vungle"

    invoke-virtual {v5, v7, v6}, Lccsancom/google/gson/JsonObject;->add(Ljava/lang/String;Lccsancom/google/gson/JsonElement;)V

    .line 402
    const-string v7, "ext"

    invoke-virtual {v2, v7, v5}, Lccsancom/google/gson/JsonObject;->add(Ljava/lang/String;Lccsancom/google/gson/JsonElement;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 406
    :try_start_3
    invoke-direct {p0}, Lccsancom/vungle/warren/VungleApiClient;->getUserAgentFromCookie()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lccsancom/vungle/warren/VungleApiClient;->uaString:Ljava/lang/String;

    .line 409
    invoke-direct {p0}, Lccsancom/vungle/warren/VungleApiClient;->initUserAgentLazy()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 413
    goto :goto_3

    .line 411
    :catch_1
    move-exception v7

    .line 412
    .local v7, "ex":Ljava/lang/Exception;
    :try_start_4
    sget-object v8, Lccsancom/vungle/warren/VungleApiClient;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Cannot Get UserAgent. Setting Default Device UserAgent."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lccsanandroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 415
    .end local v7    # "ex":Ljava/lang/Exception;
    :goto_3
    const-string v7, "ua"

    iget-object v8, p0, Lccsancom/vungle/warren/VungleApiClient;->uaString:Ljava/lang/String;

    invoke-virtual {v2, v7, v8}, Lccsancom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 416
    iput-object v2, p0, Lccsancom/vungle/warren/VungleApiClient;->deviceBody:Lccsancom/google/gson/JsonObject;

    .line 419
    iput-object v0, p0, Lccsancom/vungle/warren/VungleApiClient;->appBody:Lccsancom/google/gson/JsonObject;

    .line 423
    invoke-virtual {p0}, Lccsancom/vungle/warren/VungleApiClient;->getPlayServicesAvailabilityFromAPI()Ljava/lang/Boolean;

    move-result-object v7

    iput-object v7, p0, Lccsancom/vungle/warren/VungleApiClient;->isGooglePlayServicesAvailable:Ljava/lang/Boolean;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 424
    monitor-exit p0

    return-void

    .line 374
    .end local v0    # "app":Lccsancom/google/gson/JsonObject;
    .end local v1    # "versionName":Ljava/lang/String;
    .end local v2    # "device":Lccsancom/google/gson/JsonObject;
    .end local v3    # "dm":Lccsanandroid/util/DisplayMetrics;
    .end local v4    # "windowManager":Lccsanandroid/view/WindowManager;
    .end local v5    # "ext":Lccsancom/google/gson/JsonObject;
    .end local v6    # "vungle":Lccsancom/google/gson/JsonObject;
    .end local p1    # "context":Lccsanandroid/content/Context;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public isGooglePlayServicesAvailable()Ljava/lang/Boolean;
    .locals 1

    .line 1320
    iget-object v0, p0, Lccsancom/vungle/warren/VungleApiClient;->isGooglePlayServicesAvailable:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 1321
    invoke-virtual {p0}, Lccsancom/vungle/warren/VungleApiClient;->getPlayServicesAvailabilityFromCookie()Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lccsancom/vungle/warren/VungleApiClient;->isGooglePlayServicesAvailable:Ljava/lang/Boolean;

    .line 1323
    :cond_0
    iget-object v0, p0, Lccsancom/vungle/warren/VungleApiClient;->isGooglePlayServicesAvailable:Ljava/lang/Boolean;

    if-nez v0, :cond_1

    .line 1324
    invoke-virtual {p0}, Lccsancom/vungle/warren/VungleApiClient;->getPlayServicesAvailabilityFromAPI()Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lccsancom/vungle/warren/VungleApiClient;->isGooglePlayServicesAvailable:Ljava/lang/Boolean;

    .line 1326
    :cond_1
    iget-object v0, p0, Lccsancom/vungle/warren/VungleApiClient;->isGooglePlayServicesAvailable:Ljava/lang/Boolean;

    return-object v0
.end method

.method overrideApi(Lccsancom/vungle/warren/network/VungleApi;)V
    .locals 0
    .param p1, "api"    # Lccsancom/vungle/warren/network/VungleApi;

    .line 1313
    iput-object p1, p0, Lccsancom/vungle/warren/VungleApiClient;->api:Lccsancom/vungle/warren/network/VungleApi;

    .line 1314
    return-void
.end method

.method public pingTPAT(Ljava/lang/String;)Z
    .locals 5
    .param p1, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lccsancom/vungle/warren/VungleApiClient$ClearTextTrafficException;,
            Ljava/net/MalformedURLException;
        }
    .end annotation

    .line 702
    invoke-static {p1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "Invalid URL : "

    if-nez v0, :cond_4

    invoke-static {p1}, Lccsanokhttp3/HttpUrl;->parse(Ljava/lang/String;)Lccsanokhttp3/HttpUrl;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 716
    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_1

    .line 719
    .local v0, "host":Ljava/lang/String;
    nop

    .line 721
    sget v1, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x18

    if-lt v1, v2, :cond_0

    .line 722
    invoke-static {}, Lccsanandroid/security/NetworkSecurityPolicy;->getInstance()Lccsanandroid/security/NetworkSecurityPolicy;

    move-result-object v1

    invoke-virtual {v1, v0}, Lccsanandroid/security/NetworkSecurityPolicy;->isCleartextTrafficPermitted(Ljava/lang/String;)Z

    move-result v1

    .local v1, "clearTextTrafficPermitted":Z
    goto :goto_0

    .line 723
    .end local v1    # "clearTextTrafficPermitted":Z
    :cond_0
    sget v1, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-lt v1, v2, :cond_1

    .line 724
    invoke-static {}, Lccsanandroid/security/NetworkSecurityPolicy;->getInstance()Lccsanandroid/security/NetworkSecurityPolicy;

    move-result-object v1

    invoke-virtual {v1}, Lccsanandroid/security/NetworkSecurityPolicy;->isCleartextTrafficPermitted()Z

    move-result v1

    .restart local v1    # "clearTextTrafficPermitted":Z
    goto :goto_0

    .line 726
    .end local v1    # "clearTextTrafficPermitted":Z
    :cond_1
    const/4 v1, 0x1

    .line 729
    .restart local v1    # "clearTextTrafficPermitted":Z
    :goto_0
    if-nez v1, :cond_3

    invoke-static {p1}, Lccsanandroid/webkit/URLUtil;->isHttpUrl(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_1

    .line 730
    :cond_2
    new-instance v2, Lccsancom/vungle/warren/VungleApiClient$ClearTextTrafficException;

    const-string v3, "Clear Text Traffic is blocked"

    invoke-direct {v2, v3}, Lccsancom/vungle/warren/VungleApiClient$ClearTextTrafficException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 734
    :cond_3
    :goto_1
    :try_start_1
    iget-object v2, p0, Lccsancom/vungle/warren/VungleApiClient;->api:Lccsancom/vungle/warren/network/VungleApi;

    iget-object v3, p0, Lccsancom/vungle/warren/VungleApiClient;->uaString:Ljava/lang/String;

    invoke-interface {v2, v3, p1}, Lccsancom/vungle/warren/network/VungleApi;->pingTPAT(Ljava/lang/String;Ljava/lang/String;)Lccsancom/vungle/warren/network/Call;

    move-result-object v2

    invoke-interface {v2}, Lccsancom/vungle/warren/network/Call;->execute()Lccsancom/vungle/warren/network/Response;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 738
    nop

    .line 739
    .end local v0    # "host":Ljava/lang/String;
    .end local v1    # "clearTextTrafficPermitted":Z
    nop

    .line 742
    const/4 v0, 0x1

    return v0

    .line 735
    .restart local v0    # "host":Ljava/lang/String;
    .restart local v1    # "clearTextTrafficPermitted":Z
    :catch_0
    move-exception v2

    .line 736
    .local v2, "e":Ljava/io/IOException;
    sget-object v3, Lccsancom/vungle/warren/VungleApiClient;->TAG:Ljava/lang/String;

    const-string v4, "Error on pinging TPAT"

    invoke-static {v3, v4}, Lccsanandroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 737
    const/4 v3, 0x0

    return v3

    .line 717
    .end local v0    # "host":Ljava/lang/String;
    .end local v1    # "clearTextTrafficPermitted":Z
    .end local v2    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 718
    .local v0, "e":Ljava/net/MalformedURLException;
    new-instance v2, Ljava/net/MalformedURLException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/net/MalformedURLException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 740
    .end local v0    # "e":Ljava/net/MalformedURLException;
    :cond_4
    new-instance v0, Ljava/net/MalformedURLException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/MalformedURLException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public reportAd(Lccsancom/google/gson/JsonObject;)Lccsancom/vungle/warren/network/Call;
    .locals 4
    .param p1, "request"    # Lccsancom/google/gson/JsonObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/google/gson/JsonObject;",
            ")",
            "Lccsancom/vungle/warren/network/Call<",
            "Lccsancom/google/gson/JsonObject;",
            ">;"
        }
    .end annotation

    .line 642
    iget-object v0, p0, Lccsancom/vungle/warren/VungleApiClient;->reportAdEndpoint:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 645
    new-instance v0, Lccsancom/google/gson/JsonObject;

    invoke-direct {v0}, Lccsancom/google/gson/JsonObject;-><init>()V

    .line 646
    .local v0, "body":Lccsancom/google/gson/JsonObject;
    invoke-direct {p0}, Lccsancom/vungle/warren/VungleApiClient;->getDeviceBody()Lccsancom/google/gson/JsonObject;

    move-result-object v1

    const-string v2, "device"

    invoke-virtual {v0, v2, v1}, Lccsancom/google/gson/JsonObject;->add(Ljava/lang/String;Lccsancom/google/gson/JsonElement;)V

    .line 647
    iget-object v1, p0, Lccsancom/vungle/warren/VungleApiClient;->appBody:Lccsancom/google/gson/JsonObject;

    const-string v2, "app"

    invoke-virtual {v0, v2, v1}, Lccsancom/google/gson/JsonObject;->add(Ljava/lang/String;Lccsancom/google/gson/JsonElement;)V

    .line 648
    const-string v1, "request"

    invoke-virtual {v0, v1, p1}, Lccsancom/google/gson/JsonObject;->add(Ljava/lang/String;Lccsancom/google/gson/JsonElement;)V

    .line 649
    invoke-direct {p0}, Lccsancom/vungle/warren/VungleApiClient;->getUserBody()Lccsancom/google/gson/JsonObject;

    move-result-object v1

    const-string v2, "user"

    invoke-virtual {v0, v2, v1}, Lccsancom/google/gson/JsonObject;->add(Ljava/lang/String;Lccsancom/google/gson/JsonElement;)V

    .line 651
    iget-object v1, p0, Lccsancom/vungle/warren/VungleApiClient;->gzipApi:Lccsancom/vungle/warren/network/VungleApi;

    invoke-static {}, Lccsancom/vungle/warren/VungleApiClient;->getHeaderUa()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lccsancom/vungle/warren/VungleApiClient;->reportAdEndpoint:Ljava/lang/String;

    invoke-interface {v1, v2, v3, v0}, Lccsancom/vungle/warren/network/VungleApi;->reportAd(Ljava/lang/String;Ljava/lang/String;Lccsancom/google/gson/JsonObject;)Lccsancom/vungle/warren/network/Call;

    move-result-object v1

    return-object v1

    .line 643
    .end local v0    # "body":Lccsancom/google/gson/JsonObject;
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "API Client not configured yet! Must call /config first."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public reportNew()Lccsancom/vungle/warren/network/Call;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lccsancom/vungle/warren/network/Call<",
            "Lccsancom/google/gson/JsonObject;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 549
    iget-object v0, p0, Lccsancom/vungle/warren/VungleApiClient;->newEndpoint:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 552
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 553
    .local v0, "query":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v1, p0, Lccsancom/vungle/warren/VungleApiClient;->appBody:Lccsancom/google/gson/JsonObject;

    const-string v2, "id"

    invoke-virtual {v1, v2}, Lccsancom/google/gson/JsonObject;->get(Ljava/lang/String;)Lccsancom/google/gson/JsonElement;

    move-result-object v1

    .line 554
    .local v1, "idElement":Lccsancom/google/gson/JsonElement;
    iget-object v2, p0, Lccsancom/vungle/warren/VungleApiClient;->deviceBody:Lccsancom/google/gson/JsonObject;

    const-string v3, "ifa"

    invoke-virtual {v2, v3}, Lccsancom/google/gson/JsonObject;->get(Ljava/lang/String;)Lccsancom/google/gson/JsonElement;

    move-result-object v2

    .line 555
    .local v2, "ifaElement":Lccsancom/google/gson/JsonElement;
    const-string v4, ""

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lccsancom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    :cond_0
    move-object v5, v4

    :goto_0
    const-string v6, "app_id"

    invoke-virtual {v0, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 556
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lccsancom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v4

    :cond_1
    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 557
    iget-object v3, p0, Lccsancom/vungle/warren/VungleApiClient;->api:Lccsancom/vungle/warren/network/VungleApi;

    invoke-static {}, Lccsancom/vungle/warren/VungleApiClient;->getHeaderUa()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lccsancom/vungle/warren/VungleApiClient;->newEndpoint:Ljava/lang/String;

    invoke-interface {v3, v4, v5, v0}, Lccsancom/vungle/warren/network/VungleApi;->reportNew(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Lccsancom/vungle/warren/network/Call;

    move-result-object v3

    return-object v3

    .line 550
    .end local v0    # "query":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v1    # "idElement":Lccsancom/google/gson/JsonElement;
    .end local v2    # "ifaElement":Lccsancom/google/gson/JsonElement;
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "API Client not configured yet! Must call /config first."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public requestAd(Ljava/lang/String;Ljava/lang/String;ZLccsancom/google/gson/JsonObject;)Lccsancom/vungle/warren/network/Call;
    .locals 7
    .param p1, "placement"    # Ljava/lang/String;
    .param p2, "adSize"    # Ljava/lang/String;
    .param p3, "isHeaderBiddingEnable"    # Z
    .param p4, "vision"    # Lccsancom/google/gson/JsonObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Lccsancom/google/gson/JsonObject;",
            ")",
            "Lccsancom/vungle/warren/network/Call<",
            "Lccsancom/google/gson/JsonObject;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 571
    iget-object v0, p0, Lccsancom/vungle/warren/VungleApiClient;->requestAdEndpoint:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 575
    new-instance v0, Lccsancom/google/gson/JsonObject;

    invoke-direct {v0}, Lccsancom/google/gson/JsonObject;-><init>()V

    .line 576
    .local v0, "body":Lccsancom/google/gson/JsonObject;
    invoke-direct {p0}, Lccsancom/vungle/warren/VungleApiClient;->getDeviceBody()Lccsancom/google/gson/JsonObject;

    move-result-object v1

    const-string v2, "device"

    invoke-virtual {v0, v2, v1}, Lccsancom/google/gson/JsonObject;->add(Ljava/lang/String;Lccsancom/google/gson/JsonElement;)V

    .line 577
    iget-object v1, p0, Lccsancom/vungle/warren/VungleApiClient;->appBody:Lccsancom/google/gson/JsonObject;

    const-string v2, "app"

    invoke-virtual {v0, v2, v1}, Lccsancom/google/gson/JsonObject;->add(Ljava/lang/String;Lccsancom/google/gson/JsonElement;)V

    .line 578
    invoke-direct {p0}, Lccsancom/vungle/warren/VungleApiClient;->getUserBody()Lccsancom/google/gson/JsonObject;

    move-result-object v1

    .line 579
    .local v1, "userBody":Lccsancom/google/gson/JsonObject;
    if-eqz p4, :cond_0

    .line 580
    const-string v2, "vision"

    invoke-virtual {v1, v2, p4}, Lccsancom/google/gson/JsonObject;->add(Ljava/lang/String;Lccsancom/google/gson/JsonElement;)V

    .line 582
    :cond_0
    const-string v2, "user"

    invoke-virtual {v0, v2, v1}, Lccsancom/google/gson/JsonObject;->add(Ljava/lang/String;Lccsancom/google/gson/JsonElement;)V

    .line 585
    new-instance v2, Lccsancom/google/gson/JsonObject;

    invoke-direct {v2}, Lccsancom/google/gson/JsonObject;-><init>()V

    .line 586
    .local v2, "request":Lccsancom/google/gson/JsonObject;
    new-instance v3, Lccsancom/google/gson/JsonArray;

    invoke-direct {v3}, Lccsancom/google/gson/JsonArray;-><init>()V

    .line 587
    .local v3, "placementsArray":Lccsancom/google/gson/JsonArray;
    invoke-virtual {v3, p1}, Lccsancom/google/gson/JsonArray;->add(Ljava/lang/String;)V

    .line 588
    const-string v4, "placements"

    invoke-virtual {v2, v4, v3}, Lccsancom/google/gson/JsonObject;->add(Ljava/lang/String;Lccsancom/google/gson/JsonElement;)V

    .line 589
    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    const-string v5, "header_bidding"

    invoke-virtual {v2, v5, v4}, Lccsancom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 591
    invoke-static {p2}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 592
    const-string v4, "ad_size"

    invoke-virtual {v2, v4, p2}, Lccsancom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 595
    :cond_1
    const-string v4, "request"

    invoke-virtual {v0, v4, v2}, Lccsancom/google/gson/JsonObject;->add(Ljava/lang/String;Lccsancom/google/gson/JsonElement;)V

    .line 598
    iget-object v4, p0, Lccsancom/vungle/warren/VungleApiClient;->gzipApi:Lccsancom/vungle/warren/network/VungleApi;

    invoke-static {}, Lccsancom/vungle/warren/VungleApiClient;->getHeaderUa()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lccsancom/vungle/warren/VungleApiClient;->requestAdEndpoint:Ljava/lang/String;

    invoke-interface {v4, v5, v6, v0}, Lccsancom/vungle/warren/network/VungleApi;->ads(Ljava/lang/String;Ljava/lang/String;Lccsancom/google/gson/JsonObject;)Lccsancom/vungle/warren/network/Call;

    move-result-object v4

    return-object v4

    .line 572
    .end local v0    # "body":Lccsancom/google/gson/JsonObject;
    .end local v1    # "userBody":Lccsancom/google/gson/JsonObject;
    .end local v2    # "request":Lccsancom/google/gson/JsonObject;
    .end local v3    # "placementsArray":Lccsancom/google/gson/JsonArray;
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "API Client not configured yet! Must call /config first."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public ri(Lccsancom/google/gson/JsonObject;)Lccsancom/vungle/warren/network/Call;
    .locals 4
    .param p1, "request"    # Lccsancom/google/gson/JsonObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/google/gson/JsonObject;",
            ")",
            "Lccsancom/vungle/warren/network/Call<",
            "Lccsancom/google/gson/JsonObject;",
            ">;"
        }
    .end annotation

    .line 684
    iget-object v0, p0, Lccsancom/vungle/warren/VungleApiClient;->riEndpoint:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 687
    new-instance v0, Lccsancom/google/gson/JsonObject;

    invoke-direct {v0}, Lccsancom/google/gson/JsonObject;-><init>()V

    .line 688
    .local v0, "body":Lccsancom/google/gson/JsonObject;
    invoke-direct {p0}, Lccsancom/vungle/warren/VungleApiClient;->getDeviceBody()Lccsancom/google/gson/JsonObject;

    move-result-object v1

    const-string v2, "device"

    invoke-virtual {v0, v2, v1}, Lccsancom/google/gson/JsonObject;->add(Ljava/lang/String;Lccsancom/google/gson/JsonElement;)V

    .line 689
    iget-object v1, p0, Lccsancom/vungle/warren/VungleApiClient;->appBody:Lccsancom/google/gson/JsonObject;

    const-string v2, "app"

    invoke-virtual {v0, v2, v1}, Lccsancom/google/gson/JsonObject;->add(Ljava/lang/String;Lccsancom/google/gson/JsonElement;)V

    .line 690
    const-string v1, "request"

    invoke-virtual {v0, v1, p1}, Lccsancom/google/gson/JsonObject;->add(Ljava/lang/String;Lccsancom/google/gson/JsonElement;)V

    .line 692
    iget-object v1, p0, Lccsancom/vungle/warren/VungleApiClient;->api:Lccsancom/vungle/warren/network/VungleApi;

    invoke-static {}, Lccsancom/vungle/warren/VungleApiClient;->getHeaderUa()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lccsancom/vungle/warren/VungleApiClient;->riEndpoint:Ljava/lang/String;

    invoke-interface {v1, v2, v3, v0}, Lccsancom/vungle/warren/network/VungleApi;->ri(Ljava/lang/String;Ljava/lang/String;Lccsancom/google/gson/JsonObject;)Lccsancom/vungle/warren/network/Call;

    move-result-object v1

    return-object v1

    .line 685
    .end local v0    # "body":Lccsancom/google/gson/JsonObject;
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "API Client not configured yet! Must call /config first."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public sendLog(Lccsancom/google/gson/JsonObject;)Lccsancom/vungle/warren/network/Call;
    .locals 3
    .param p1, "request"    # Lccsancom/google/gson/JsonObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/google/gson/JsonObject;",
            ")",
            "Lccsancom/vungle/warren/network/Call<",
            "Lccsancom/google/gson/JsonObject;",
            ">;"
        }
    .end annotation

    .line 662
    iget-object v0, p0, Lccsancom/vungle/warren/VungleApiClient;->logEndpoint:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 666
    iget-object v0, p0, Lccsancom/vungle/warren/VungleApiClient;->gzipApi:Lccsancom/vungle/warren/network/VungleApi;

    invoke-static {}, Lccsancom/vungle/warren/VungleApiClient;->getHeaderUa()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lccsancom/vungle/warren/VungleApiClient;->logEndpoint:Ljava/lang/String;

    invoke-interface {v0, v1, v2, p1}, Lccsancom/vungle/warren/network/VungleApi;->sendLog(Ljava/lang/String;Ljava/lang/String;Lccsancom/google/gson/JsonObject;)Lccsancom/vungle/warren/network/Call;

    move-result-object v0

    return-object v0

    .line 663
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "API Client not configured yet! Must call /config first."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method setAppId(Ljava/lang/String;)V
    .locals 1
    .param p1, "appId"    # Ljava/lang/String;

    .line 427
    iget-object v0, p0, Lccsancom/vungle/warren/VungleApiClient;->appBody:Lccsancom/google/gson/JsonObject;

    invoke-direct {p0, p1, v0}, Lccsancom/vungle/warren/VungleApiClient;->setAppId(Ljava/lang/String;Lccsancom/google/gson/JsonObject;)V

    .line 428
    return-void
.end method

.method public setDefaultIdFallbackDisabled(Z)V
    .locals 0
    .param p1, "disabled"    # Z

    .line 363
    iput-boolean p1, p0, Lccsancom/vungle/warren/VungleApiClient;->defaultIdFallbackDisabled:Z

    .line 364
    return-void
.end method

.method willPlayAd(Ljava/lang/String;ZLjava/lang/String;)Lccsancom/vungle/warren/network/Call;
    .locals 6
    .param p1, "placementID"    # Ljava/lang/String;
    .param p2, "autoCached"    # Z
    .param p3, "adToken"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z",
            "Ljava/lang/String;",
            ")",
            "Lccsancom/vungle/warren/network/Call<",
            "Lccsancom/google/gson/JsonObject;",
            ">;"
        }
    .end annotation

    .line 611
    new-instance v0, Lccsancom/google/gson/JsonObject;

    invoke-direct {v0}, Lccsancom/google/gson/JsonObject;-><init>()V

    .line 612
    .local v0, "body":Lccsancom/google/gson/JsonObject;
    invoke-direct {p0}, Lccsancom/vungle/warren/VungleApiClient;->getDeviceBody()Lccsancom/google/gson/JsonObject;

    move-result-object v1

    const-string v2, "device"

    invoke-virtual {v0, v2, v1}, Lccsancom/google/gson/JsonObject;->add(Ljava/lang/String;Lccsancom/google/gson/JsonElement;)V

    .line 613
    iget-object v1, p0, Lccsancom/vungle/warren/VungleApiClient;->appBody:Lccsancom/google/gson/JsonObject;

    const-string v2, "app"

    invoke-virtual {v0, v2, v1}, Lccsancom/google/gson/JsonObject;->add(Ljava/lang/String;Lccsancom/google/gson/JsonElement;)V

    .line 614
    invoke-direct {p0}, Lccsancom/vungle/warren/VungleApiClient;->getUserBody()Lccsancom/google/gson/JsonObject;

    move-result-object v1

    const-string v2, "user"

    invoke-virtual {v0, v2, v1}, Lccsancom/google/gson/JsonObject;->add(Ljava/lang/String;Lccsancom/google/gson/JsonElement;)V

    .line 617
    new-instance v1, Lccsancom/google/gson/JsonObject;

    invoke-direct {v1}, Lccsancom/google/gson/JsonObject;-><init>()V

    .line 618
    .local v1, "request":Lccsancom/google/gson/JsonObject;
    new-instance v2, Lccsancom/google/gson/JsonObject;

    invoke-direct {v2}, Lccsancom/google/gson/JsonObject;-><init>()V

    .line 619
    .local v2, "placement":Lccsancom/google/gson/JsonObject;
    const-string v3, "reference_id"

    invoke-virtual {v2, v3, p1}, Lccsancom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 620
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const-string v4, "is_auto_cached"

    invoke-virtual {v2, v4, v3}, Lccsancom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 622
    const-string v3, "placement"

    invoke-virtual {v1, v3, v2}, Lccsancom/google/gson/JsonObject;->add(Ljava/lang/String;Lccsancom/google/gson/JsonElement;)V

    .line 623
    const-string v3, "ad_token"

    invoke-virtual {v1, v3, p3}, Lccsancom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 625
    const-string v3, "request"

    invoke-virtual {v0, v3, v1}, Lccsancom/google/gson/JsonObject;->add(Ljava/lang/String;Lccsancom/google/gson/JsonElement;)V

    .line 627
    iget-object v3, p0, Lccsancom/vungle/warren/VungleApiClient;->timeoutApi:Lccsancom/vungle/warren/network/VungleApi;

    invoke-static {}, Lccsancom/vungle/warren/VungleApiClient;->getHeaderUa()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lccsancom/vungle/warren/VungleApiClient;->willPlayAdEndpoint:Ljava/lang/String;

    invoke-interface {v3, v4, v5, v0}, Lccsancom/vungle/warren/network/VungleApi;->willPlayAd(Ljava/lang/String;Ljava/lang/String;Lccsancom/google/gson/JsonObject;)Lccsancom/vungle/warren/network/Call;

    move-result-object v3

    return-object v3
.end method
