.class public Lccsancom/vungle/warren/model/AdvertisementDBAdapter;
.super Ljava/lang/Object;
.source "AdvertisementDBAdapter.java"

# interfaces
.implements Lccsancom/vungle/warren/persistence/DBAdapter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsancom/vungle/warren/model/AdvertisementDBAdapter$AdvertisementColumns;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lccsancom/vungle/warren/persistence/DBAdapter<",
        "Lccsancom/vungle/warren/model/Advertisement;",
        ">;"
    }
.end annotation


# static fields
.field static final CHECKPOINT_LIST_TYPE:Ljava/lang/reflect/Type;

.field public static final CREATE_ADVERTISEMENT_TABLE_QUERY:Ljava/lang/String; = "CREATE TABLE IF NOT EXISTS advertisement(_id INTEGER PRIMARY KEY AUTOINCREMENT,  item_id TEXT UNIQUE, ad_config TEXT,ad_type INT, expire_time NUMERIC, delay NUMERIC, show_close_delay INT, show_close_incentivized INT, countdown INT, video_height INT, video_width INT, cta_overlay_enabled SHORT, cta_click_area NUMERIC, retry_count INT, requires_non_market_install SHORT, app_id TEXT, campaign TEXT, video_url TEXT, md5 TEXT, postroll_bundle_url TEXT, cta_destination_url TEXT, cta_url TEXT, ad_token TEXT, video_identifier TEXT, template_url TEXT, TEMPLATE_ID TEXT, TEMPLATE_TYPE TEXT, ad_market_id TEXT,bid_token TEXT,  checkpoints TEXT, template_settings TEXT, mraid_files TEXT, cacheable_assets TEXT, state INT, placement_id TEXT, tt_download NUMERIC,asset_download_timestamp NUMERIC,asset_download_duration NUMERIC,ad_request_start_time NUMERIC,column_enable_om_sdk SHORT,column_om_sdk_extra_vast TEXT,column_request_timestamp NUMERIC, dynamic_events_and_urls TEXT, column_assets_fully_downloaded SHORT)"

.field static final DYNAMIC_EVENTS_AND_URLS_TYPE:Ljava/lang/reflect/Type;


# instance fields
.field private cacheableMapType:Ljava/lang/reflect/Type;

.field private gson:Lccsancom/google/gson/Gson;

.field private stringArrayType:Ljava/lang/reflect/Type;

.field private stringMapType:Ljava/lang/reflect/Type;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 31
    new-instance v0, Lccsancom/vungle/warren/model/AdvertisementDBAdapter$3;

    invoke-direct {v0}, Lccsancom/vungle/warren/model/AdvertisementDBAdapter$3;-><init>()V

    .line 32
    invoke-virtual {v0}, Lccsancom/vungle/warren/model/AdvertisementDBAdapter$3;->getType()Ljava/lang/reflect/Type;

    move-result-object v0

    sput-object v0, Lccsancom/vungle/warren/model/AdvertisementDBAdapter;->CHECKPOINT_LIST_TYPE:Ljava/lang/reflect/Type;

    .line 33
    new-instance v0, Lccsancom/vungle/warren/model/AdvertisementDBAdapter$4;

    invoke-direct {v0}, Lccsancom/vungle/warren/model/AdvertisementDBAdapter$4;-><init>()V

    .line 34
    invoke-virtual {v0}, Lccsancom/vungle/warren/model/AdvertisementDBAdapter$4;->getType()Ljava/lang/reflect/Type;

    move-result-object v0

    sput-object v0, Lccsancom/vungle/warren/model/AdvertisementDBAdapter;->DYNAMIC_EVENTS_AND_URLS_TYPE:Ljava/lang/reflect/Type;

    .line 33
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Lccsancom/google/gson/GsonBuilder;

    invoke-direct {v0}, Lccsancom/google/gson/GsonBuilder;-><init>()V

    invoke-virtual {v0}, Lccsancom/google/gson/GsonBuilder;->create()Lccsancom/google/gson/Gson;

    move-result-object v0

    iput-object v0, p0, Lccsancom/vungle/warren/model/AdvertisementDBAdapter;->gson:Lccsancom/google/gson/Gson;

    .line 27
    new-instance v0, Lccsancom/vungle/warren/model/AdvertisementDBAdapter$1;

    invoke-direct {v0, p0}, Lccsancom/vungle/warren/model/AdvertisementDBAdapter$1;-><init>(Lccsancom/vungle/warren/model/AdvertisementDBAdapter;)V

    .line 28
    invoke-virtual {v0}, Lccsancom/vungle/warren/model/AdvertisementDBAdapter$1;->getType()Ljava/lang/reflect/Type;

    move-result-object v0

    iput-object v0, p0, Lccsancom/vungle/warren/model/AdvertisementDBAdapter;->stringArrayType:Ljava/lang/reflect/Type;

    .line 29
    new-instance v0, Lccsancom/vungle/warren/model/AdvertisementDBAdapter$2;

    invoke-direct {v0, p0}, Lccsancom/vungle/warren/model/AdvertisementDBAdapter$2;-><init>(Lccsancom/vungle/warren/model/AdvertisementDBAdapter;)V

    .line 30
    invoke-virtual {v0}, Lccsancom/vungle/warren/model/AdvertisementDBAdapter$2;->getType()Ljava/lang/reflect/Type;

    move-result-object v0

    iput-object v0, p0, Lccsancom/vungle/warren/model/AdvertisementDBAdapter;->stringMapType:Ljava/lang/reflect/Type;

    .line 35
    new-instance v0, Lccsancom/vungle/warren/model/AdvertisementDBAdapter$5;

    invoke-direct {v0, p0}, Lccsancom/vungle/warren/model/AdvertisementDBAdapter$5;-><init>(Lccsancom/vungle/warren/model/AdvertisementDBAdapter;)V

    .line 36
    invoke-virtual {v0}, Lccsancom/vungle/warren/model/AdvertisementDBAdapter$5;->getType()Ljava/lang/reflect/Type;

    move-result-object v0

    iput-object v0, p0, Lccsancom/vungle/warren/model/AdvertisementDBAdapter;->cacheableMapType:Ljava/lang/reflect/Type;

    .line 35
    return-void
.end method


# virtual methods
.method public fromContentValues(Lccsanandroid/content/ContentValues;)Lccsancom/vungle/warren/model/Advertisement;
    .locals 4
    .param p1, "values"    # Lccsanandroid/content/ContentValues;

    .line 94
    new-instance v0, Lccsancom/vungle/warren/model/Advertisement;

    invoke-direct {v0}, Lccsancom/vungle/warren/model/Advertisement;-><init>()V

    .line 96
    .local v0, "item":Lccsancom/vungle/warren/model/Advertisement;
    const-string v1, "item_id"

    invoke-virtual {p1, v1}, Lccsanandroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lccsancom/vungle/warren/model/Advertisement;->identifier:Ljava/lang/String;

    .line 97
    const-string v1, "ad_type"

    invoke-virtual {p1, v1}, Lccsanandroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, v0, Lccsancom/vungle/warren/model/Advertisement;->adType:I

    .line 98
    const-string v1, "expire_time"

    invoke-virtual {p1, v1}, Lccsanandroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    iput-wide v1, v0, Lccsancom/vungle/warren/model/Advertisement;->expireTime:J

    .line 99
    const-string v1, "delay"

    invoke-virtual {p1, v1}, Lccsanandroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, v0, Lccsancom/vungle/warren/model/Advertisement;->delay:I

    .line 100
    const-string v1, "show_close_delay"

    invoke-virtual {p1, v1}, Lccsanandroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, v0, Lccsancom/vungle/warren/model/Advertisement;->showCloseDelay:I

    .line 101
    const-string v1, "show_close_incentivized"

    invoke-virtual {p1, v1}, Lccsanandroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, v0, Lccsancom/vungle/warren/model/Advertisement;->showCloseIncentivized:I

    .line 102
    const-string v1, "countdown"

    invoke-virtual {p1, v1}, Lccsanandroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, v0, Lccsancom/vungle/warren/model/Advertisement;->countdown:I

    .line 103
    const-string v1, "video_width"

    invoke-virtual {p1, v1}, Lccsanandroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, v0, Lccsancom/vungle/warren/model/Advertisement;->videoWidth:I

    .line 104
    const-string v1, "video_height"

    invoke-virtual {p1, v1}, Lccsanandroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, v0, Lccsancom/vungle/warren/model/Advertisement;->videoHeight:I

    .line 105
    const-string v1, "retry_count"

    invoke-virtual {p1, v1}, Lccsanandroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, v0, Lccsancom/vungle/warren/model/Advertisement;->retryCount:I

    .line 106
    const-string v1, "requires_non_market_install"

    invoke-static {p1, v1}, Lccsancom/vungle/warren/persistence/ContentValuesUtil;->getBoolean(Lccsanandroid/content/ContentValues;Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, v0, Lccsancom/vungle/warren/model/Advertisement;->requiresNonMarketInstall:Z

    .line 107
    const-string v1, "app_id"

    invoke-virtual {p1, v1}, Lccsanandroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lccsancom/vungle/warren/model/Advertisement;->appID:Ljava/lang/String;

    .line 108
    const-string v1, "campaign"

    invoke-virtual {p1, v1}, Lccsanandroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lccsancom/vungle/warren/model/Advertisement;->campaign:Ljava/lang/String;

    .line 109
    const-string v1, "video_url"

    invoke-virtual {p1, v1}, Lccsanandroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lccsancom/vungle/warren/model/Advertisement;->videoUrl:Ljava/lang/String;

    .line 110
    const-string v1, "md5"

    invoke-virtual {p1, v1}, Lccsanandroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lccsancom/vungle/warren/model/Advertisement;->md5:Ljava/lang/String;

    .line 111
    const-string v1, "postroll_bundle_url"

    invoke-virtual {p1, v1}, Lccsanandroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lccsancom/vungle/warren/model/Advertisement;->postrollBundleUrl:Ljava/lang/String;

    .line 112
    const-string v1, "cta_destination_url"

    invoke-virtual {p1, v1}, Lccsanandroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lccsancom/vungle/warren/model/Advertisement;->ctaDestinationUrl:Ljava/lang/String;

    .line 113
    const-string v1, "cta_url"

    invoke-virtual {p1, v1}, Lccsanandroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lccsancom/vungle/warren/model/Advertisement;->ctaUrl:Ljava/lang/String;

    .line 114
    const-string v1, "ad_token"

    invoke-virtual {p1, v1}, Lccsanandroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lccsancom/vungle/warren/model/Advertisement;->adToken:Ljava/lang/String;

    .line 115
    const-string v1, "video_identifier"

    invoke-virtual {p1, v1}, Lccsanandroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lccsancom/vungle/warren/model/Advertisement;->videoIdentifier:Ljava/lang/String;

    .line 116
    const-string v1, "template_url"

    invoke-virtual {p1, v1}, Lccsanandroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lccsancom/vungle/warren/model/Advertisement;->templateUrl:Ljava/lang/String;

    .line 117
    const-string v1, "TEMPLATE_ID"

    invoke-virtual {p1, v1}, Lccsanandroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lccsancom/vungle/warren/model/Advertisement;->templateId:Ljava/lang/String;

    .line 118
    const-string v1, "TEMPLATE_TYPE"

    invoke-virtual {p1, v1}, Lccsanandroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lccsancom/vungle/warren/model/Advertisement;->templateType:Ljava/lang/String;

    .line 119
    const-string v1, "ad_market_id"

    invoke-virtual {p1, v1}, Lccsanandroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lccsancom/vungle/warren/model/Advertisement;->adMarketId:Ljava/lang/String;

    .line 120
    const-string v1, "bid_token"

    invoke-virtual {p1, v1}, Lccsanandroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lccsancom/vungle/warren/model/Advertisement;->bidToken:Ljava/lang/String;

    .line 121
    const-string v1, "state"

    invoke-virtual {p1, v1}, Lccsanandroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, v0, Lccsancom/vungle/warren/model/Advertisement;->state:I

    .line 122
    const-string v1, "placement_id"

    invoke-virtual {p1, v1}, Lccsanandroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lccsancom/vungle/warren/model/Advertisement;->placementId:Ljava/lang/String;

    .line 123
    const-string v1, "cta_overlay_enabled"

    invoke-static {p1, v1}, Lccsancom/vungle/warren/persistence/ContentValuesUtil;->getBoolean(Lccsanandroid/content/ContentValues;Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, v0, Lccsancom/vungle/warren/model/Advertisement;->ctaOverlayEnabled:Z

    .line 124
    const-string v1, "cta_click_area"

    invoke-static {p1, v1}, Lccsancom/vungle/warren/persistence/ContentValuesUtil;->getBoolean(Lccsanandroid/content/ContentValues;Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, v0, Lccsancom/vungle/warren/model/Advertisement;->ctaClickArea:Z

    .line 125
    iget-object v1, p0, Lccsancom/vungle/warren/model/AdvertisementDBAdapter;->gson:Lccsancom/google/gson/Gson;

    const-string v2, "ad_config"

    invoke-virtual {p1, v2}, Lccsanandroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-class v3, Lccsancom/vungle/warren/AdConfig;

    invoke-virtual {v1, v2, v3}, Lccsancom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lccsancom/vungle/warren/AdConfig;

    iput-object v1, v0, Lccsancom/vungle/warren/model/Advertisement;->adConfig:Lccsancom/vungle/warren/AdConfig;

    .line 127
    iget-object v1, p0, Lccsancom/vungle/warren/model/AdvertisementDBAdapter;->gson:Lccsancom/google/gson/Gson;

    const-string v2, "checkpoints"

    invoke-virtual {p1, v2}, Lccsanandroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lccsancom/vungle/warren/model/AdvertisementDBAdapter;->CHECKPOINT_LIST_TYPE:Ljava/lang/reflect/Type;

    invoke-virtual {v1, v2, v3}, Lccsancom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    iput-object v1, v0, Lccsancom/vungle/warren/model/Advertisement;->checkpoints:Ljava/util/List;

    .line 128
    iget-object v1, p0, Lccsancom/vungle/warren/model/AdvertisementDBAdapter;->gson:Lccsancom/google/gson/Gson;

    .line 129
    const-string v2, "dynamic_events_and_urls"

    invoke-virtual {p1, v2}, Lccsanandroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lccsancom/vungle/warren/model/AdvertisementDBAdapter;->DYNAMIC_EVENTS_AND_URLS_TYPE:Ljava/lang/reflect/Type;

    .line 128
    invoke-virtual {v1, v2, v3}, Lccsancom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    iput-object v1, v0, Lccsancom/vungle/warren/model/Advertisement;->dynamicEventsAndUrls:Ljava/util/Map;

    .line 132
    iget-object v1, p0, Lccsancom/vungle/warren/model/AdvertisementDBAdapter;->gson:Lccsancom/google/gson/Gson;

    const-string v2, "template_settings"

    invoke-virtual {p1, v2}, Lccsanandroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lccsancom/vungle/warren/model/AdvertisementDBAdapter;->stringMapType:Ljava/lang/reflect/Type;

    invoke-virtual {v1, v2, v3}, Lccsancom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    iput-object v1, v0, Lccsancom/vungle/warren/model/Advertisement;->templateSettings:Ljava/util/Map;

    .line 133
    iget-object v1, p0, Lccsancom/vungle/warren/model/AdvertisementDBAdapter;->gson:Lccsancom/google/gson/Gson;

    const-string v2, "mraid_files"

    invoke-virtual {p1, v2}, Lccsanandroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lccsancom/vungle/warren/model/AdvertisementDBAdapter;->stringMapType:Ljava/lang/reflect/Type;

    invoke-virtual {v1, v2, v3}, Lccsancom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    iput-object v1, v0, Lccsancom/vungle/warren/model/Advertisement;->mraidFiles:Ljava/util/Map;

    .line 134
    iget-object v1, p0, Lccsancom/vungle/warren/model/AdvertisementDBAdapter;->gson:Lccsancom/google/gson/Gson;

    const-string v2, "cacheable_assets"

    invoke-virtual {p1, v2}, Lccsanandroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lccsancom/vungle/warren/model/AdvertisementDBAdapter;->cacheableMapType:Ljava/lang/reflect/Type;

    invoke-virtual {v1, v2, v3}, Lccsancom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    iput-object v1, v0, Lccsancom/vungle/warren/model/Advertisement;->cacheableAssets:Ljava/util/Map;

    .line 135
    const-string v1, "tt_download"

    invoke-virtual {p1, v1}, Lccsanandroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    iput-wide v1, v0, Lccsancom/vungle/warren/model/Advertisement;->ttDownload:J

    .line 136
    const-string v1, "asset_download_timestamp"

    invoke-virtual {p1, v1}, Lccsanandroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    iput-wide v1, v0, Lccsancom/vungle/warren/model/Advertisement;->assetDownloadStartTime:J

    .line 137
    const-string v1, "asset_download_duration"

    invoke-virtual {p1, v1}, Lccsanandroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    iput-wide v1, v0, Lccsancom/vungle/warren/model/Advertisement;->assetDownloadDuration:J

    .line 138
    const-string v1, "ad_request_start_time"

    invoke-virtual {p1, v1}, Lccsanandroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    iput-wide v1, v0, Lccsancom/vungle/warren/model/Advertisement;->adRequestStartTime:J

    .line 139
    const-string v1, "column_enable_om_sdk"

    invoke-static {p1, v1}, Lccsancom/vungle/warren/persistence/ContentValuesUtil;->getBoolean(Lccsanandroid/content/ContentValues;Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, v0, Lccsancom/vungle/warren/model/Advertisement;->enableOm:Z

    .line 140
    const-string v1, "column_om_sdk_extra_vast"

    invoke-virtual {p1, v1}, Lccsanandroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lccsancom/vungle/warren/model/Advertisement;->omExtraVast:Ljava/lang/String;

    .line 141
    const-string v1, "column_request_timestamp"

    invoke-virtual {p1, v1}, Lccsanandroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    iput-wide v1, v0, Lccsancom/vungle/warren/model/Advertisement;->serverRequestTimestamp:J

    .line 142
    const-string v1, "column_assets_fully_downloaded"

    invoke-static {p1, v1}, Lccsancom/vungle/warren/persistence/ContentValuesUtil;->getBoolean(Lccsanandroid/content/ContentValues;Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, v0, Lccsancom/vungle/warren/model/Advertisement;->assetsFullyDownloaded:Z

    .line 143
    return-object v0
.end method

.method public bridge synthetic fromContentValues(Lccsanandroid/content/ContentValues;)Ljava/lang/Object;
    .locals 0

    .line 24
    invoke-virtual {p0, p1}, Lccsancom/vungle/warren/model/AdvertisementDBAdapter;->fromContentValues(Lccsanandroid/content/ContentValues;)Lccsancom/vungle/warren/model/Advertisement;

    move-result-object p1

    return-object p1
.end method

.method public tableName()Ljava/lang/String;
    .locals 1

    .line 148
    const-string v0, "advertisement"

    return-object v0
.end method

.method public toContentValues(Lccsancom/vungle/warren/model/Advertisement;)Lccsanandroid/content/ContentValues;
    .locals 4
    .param p1, "item"    # Lccsancom/vungle/warren/model/Advertisement;

    .line 40
    new-instance v0, Lccsanandroid/content/ContentValues;

    invoke-direct {v0}, Lccsanandroid/content/ContentValues;-><init>()V

    .line 42
    .local v0, "contentValues":Lccsanandroid/content/ContentValues;
    iget-object v1, p1, Lccsancom/vungle/warren/model/Advertisement;->identifier:Ljava/lang/String;

    const-string v2, "item_id"

    invoke-virtual {v0, v2, v1}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    invoke-virtual {p1}, Lccsancom/vungle/warren/model/Advertisement;->getAdType()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "ad_type"

    invoke-virtual {v0, v2, v1}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 44
    iget-wide v1, p1, Lccsancom/vungle/warren/model/Advertisement;->expireTime:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "expire_time"

    invoke-virtual {v0, v2, v1}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 45
    iget v1, p1, Lccsancom/vungle/warren/model/Advertisement;->delay:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "delay"

    invoke-virtual {v0, v2, v1}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 46
    iget v1, p1, Lccsancom/vungle/warren/model/Advertisement;->showCloseDelay:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "show_close_delay"

    invoke-virtual {v0, v2, v1}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 47
    iget v1, p1, Lccsancom/vungle/warren/model/Advertisement;->showCloseIncentivized:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "show_close_incentivized"

    invoke-virtual {v0, v2, v1}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 48
    iget v1, p1, Lccsancom/vungle/warren/model/Advertisement;->countdown:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "countdown"

    invoke-virtual {v0, v2, v1}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 49
    iget v1, p1, Lccsancom/vungle/warren/model/Advertisement;->videoWidth:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "video_width"

    invoke-virtual {v0, v2, v1}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 50
    iget v1, p1, Lccsancom/vungle/warren/model/Advertisement;->videoHeight:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "video_height"

    invoke-virtual {v0, v2, v1}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 51
    iget-boolean v1, p1, Lccsancom/vungle/warren/model/Advertisement;->ctaOverlayEnabled:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "cta_overlay_enabled"

    invoke-virtual {v0, v2, v1}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 52
    iget-boolean v1, p1, Lccsancom/vungle/warren/model/Advertisement;->ctaClickArea:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "cta_click_area"

    invoke-virtual {v0, v2, v1}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 53
    iget v1, p1, Lccsancom/vungle/warren/model/Advertisement;->retryCount:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "retry_count"

    invoke-virtual {v0, v2, v1}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 54
    iget-boolean v1, p1, Lccsancom/vungle/warren/model/Advertisement;->requiresNonMarketInstall:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "requires_non_market_install"

    invoke-virtual {v0, v2, v1}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 55
    iget-object v1, p1, Lccsancom/vungle/warren/model/Advertisement;->appID:Ljava/lang/String;

    const-string v2, "app_id"

    invoke-virtual {v0, v2, v1}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    iget-object v1, p1, Lccsancom/vungle/warren/model/Advertisement;->campaign:Ljava/lang/String;

    const-string v2, "campaign"

    invoke-virtual {v0, v2, v1}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    iget-object v1, p1, Lccsancom/vungle/warren/model/Advertisement;->videoUrl:Ljava/lang/String;

    const-string v2, "video_url"

    invoke-virtual {v0, v2, v1}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    iget-object v1, p1, Lccsancom/vungle/warren/model/Advertisement;->md5:Ljava/lang/String;

    const-string v2, "md5"

    invoke-virtual {v0, v2, v1}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    iget-object v1, p1, Lccsancom/vungle/warren/model/Advertisement;->postrollBundleUrl:Ljava/lang/String;

    const-string v2, "postroll_bundle_url"

    invoke-virtual {v0, v2, v1}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    iget-object v1, p1, Lccsancom/vungle/warren/model/Advertisement;->ctaDestinationUrl:Ljava/lang/String;

    const-string v2, "cta_destination_url"

    invoke-virtual {v0, v2, v1}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    iget-object v1, p1, Lccsancom/vungle/warren/model/Advertisement;->ctaUrl:Ljava/lang/String;

    const-string v2, "cta_url"

    invoke-virtual {v0, v2, v1}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    iget-object v1, p1, Lccsancom/vungle/warren/model/Advertisement;->adToken:Ljava/lang/String;

    const-string v2, "ad_token"

    invoke-virtual {v0, v2, v1}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    iget-object v1, p1, Lccsancom/vungle/warren/model/Advertisement;->videoIdentifier:Ljava/lang/String;

    const-string v2, "video_identifier"

    invoke-virtual {v0, v2, v1}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    iget-object v1, p1, Lccsancom/vungle/warren/model/Advertisement;->templateUrl:Ljava/lang/String;

    const-string v2, "template_url"

    invoke-virtual {v0, v2, v1}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    iget-object v1, p1, Lccsancom/vungle/warren/model/Advertisement;->templateId:Ljava/lang/String;

    const-string v2, "TEMPLATE_ID"

    invoke-virtual {v0, v2, v1}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    iget-object v1, p1, Lccsancom/vungle/warren/model/Advertisement;->templateType:Ljava/lang/String;

    const-string v2, "TEMPLATE_TYPE"

    invoke-virtual {v0, v2, v1}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    iget-object v1, p1, Lccsancom/vungle/warren/model/Advertisement;->adMarketId:Ljava/lang/String;

    const-string v2, "ad_market_id"

    invoke-virtual {v0, v2, v1}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    iget-object v1, p1, Lccsancom/vungle/warren/model/Advertisement;->bidToken:Ljava/lang/String;

    const-string v2, "bid_token"

    invoke-virtual {v0, v2, v1}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    iget v1, p1, Lccsancom/vungle/warren/model/Advertisement;->state:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "state"

    invoke-virtual {v0, v2, v1}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 70
    iget-object v1, p1, Lccsancom/vungle/warren/model/Advertisement;->placementId:Ljava/lang/String;

    const-string v2, "placement_id"

    invoke-virtual {v0, v2, v1}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    iget-object v1, p0, Lccsancom/vungle/warren/model/AdvertisementDBAdapter;->gson:Lccsancom/google/gson/Gson;

    iget-object v2, p1, Lccsancom/vungle/warren/model/Advertisement;->adConfig:Lccsancom/vungle/warren/AdConfig;

    invoke-virtual {v1, v2}, Lccsancom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "ad_config"

    invoke-virtual {v0, v2, v1}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    iget-object v1, p0, Lccsancom/vungle/warren/model/AdvertisementDBAdapter;->gson:Lccsancom/google/gson/Gson;

    iget-object v2, p1, Lccsancom/vungle/warren/model/Advertisement;->checkpoints:Ljava/util/List;

    sget-object v3, Lccsancom/vungle/warren/model/AdvertisementDBAdapter;->CHECKPOINT_LIST_TYPE:Ljava/lang/reflect/Type;

    invoke-virtual {v1, v2, v3}, Lccsancom/google/gson/Gson;->toJson(Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "checkpoints"

    invoke-virtual {v0, v2, v1}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    iget-object v1, p0, Lccsancom/vungle/warren/model/AdvertisementDBAdapter;->gson:Lccsancom/google/gson/Gson;

    iget-object v2, p1, Lccsancom/vungle/warren/model/Advertisement;->dynamicEventsAndUrls:Ljava/util/Map;

    sget-object v3, Lccsancom/vungle/warren/model/AdvertisementDBAdapter;->DYNAMIC_EVENTS_AND_URLS_TYPE:Ljava/lang/reflect/Type;

    .line 75
    invoke-virtual {v1, v2, v3}, Lccsancom/google/gson/Gson;->toJson(Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/lang/String;

    move-result-object v1

    .line 74
    const-string v2, "dynamic_events_and_urls"

    invoke-virtual {v0, v2, v1}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    iget-object v1, p0, Lccsancom/vungle/warren/model/AdvertisementDBAdapter;->gson:Lccsancom/google/gson/Gson;

    iget-object v2, p1, Lccsancom/vungle/warren/model/Advertisement;->templateSettings:Ljava/util/Map;

    iget-object v3, p0, Lccsancom/vungle/warren/model/AdvertisementDBAdapter;->stringMapType:Ljava/lang/reflect/Type;

    invoke-virtual {v1, v2, v3}, Lccsancom/google/gson/Gson;->toJson(Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "template_settings"

    invoke-virtual {v0, v2, v1}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    iget-object v1, p0, Lccsancom/vungle/warren/model/AdvertisementDBAdapter;->gson:Lccsancom/google/gson/Gson;

    iget-object v2, p1, Lccsancom/vungle/warren/model/Advertisement;->mraidFiles:Ljava/util/Map;

    iget-object v3, p0, Lccsancom/vungle/warren/model/AdvertisementDBAdapter;->stringMapType:Ljava/lang/reflect/Type;

    invoke-virtual {v1, v2, v3}, Lccsancom/google/gson/Gson;->toJson(Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "mraid_files"

    invoke-virtual {v0, v2, v1}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    iget-object v1, p0, Lccsancom/vungle/warren/model/AdvertisementDBAdapter;->gson:Lccsancom/google/gson/Gson;

    iget-object v2, p1, Lccsancom/vungle/warren/model/Advertisement;->cacheableAssets:Ljava/util/Map;

    iget-object v3, p0, Lccsancom/vungle/warren/model/AdvertisementDBAdapter;->cacheableMapType:Ljava/lang/reflect/Type;

    invoke-virtual {v1, v2, v3}, Lccsancom/google/gson/Gson;->toJson(Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "cacheable_assets"

    invoke-virtual {v0, v2, v1}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    iget-wide v1, p1, Lccsancom/vungle/warren/model/Advertisement;->ttDownload:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "tt_download"

    invoke-virtual {v0, v2, v1}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 81
    iget-wide v1, p1, Lccsancom/vungle/warren/model/Advertisement;->assetDownloadStartTime:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "asset_download_timestamp"

    invoke-virtual {v0, v2, v1}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 82
    iget-wide v1, p1, Lccsancom/vungle/warren/model/Advertisement;->assetDownloadDuration:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "asset_download_duration"

    invoke-virtual {v0, v2, v1}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 83
    iget-wide v1, p1, Lccsancom/vungle/warren/model/Advertisement;->adRequestStartTime:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "ad_request_start_time"

    invoke-virtual {v0, v2, v1}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 84
    iget-boolean v1, p1, Lccsancom/vungle/warren/model/Advertisement;->enableOm:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "column_enable_om_sdk"

    invoke-virtual {v0, v2, v1}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 85
    iget-object v1, p1, Lccsancom/vungle/warren/model/Advertisement;->omExtraVast:Ljava/lang/String;

    const-string v2, "column_om_sdk_extra_vast"

    invoke-virtual {v0, v2, v1}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    iget-wide v1, p1, Lccsancom/vungle/warren/model/Advertisement;->serverRequestTimestamp:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "column_request_timestamp"

    invoke-virtual {v0, v2, v1}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 87
    iget-boolean v1, p1, Lccsancom/vungle/warren/model/Advertisement;->assetsFullyDownloaded:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "column_assets_fully_downloaded"

    invoke-virtual {v0, v2, v1}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 88
    return-object v0
.end method

.method public bridge synthetic toContentValues(Ljava/lang/Object;)Lccsanandroid/content/ContentValues;
    .locals 0

    .line 24
    check-cast p1, Lccsancom/vungle/warren/model/Advertisement;

    invoke-virtual {p0, p1}, Lccsancom/vungle/warren/model/AdvertisementDBAdapter;->toContentValues(Lccsancom/vungle/warren/model/Advertisement;)Lccsanandroid/content/ContentValues;

    move-result-object p1

    return-object p1
.end method
