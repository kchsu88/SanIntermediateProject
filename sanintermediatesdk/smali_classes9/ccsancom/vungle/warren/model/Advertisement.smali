.class public Lccsancom/vungle/warren/model/Advertisement;
.super Ljava/lang/Object;
.source "Advertisement.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsancom/vungle/warren/model/Advertisement$Checkpoint;,
        Lccsancom/vungle/warren/model/Advertisement$State;,
        Lccsancom/vungle/warren/model/Advertisement$CacheKey;,
        Lccsancom/vungle/warren/model/Advertisement$Orientation;,
        Lccsancom/vungle/warren/model/Advertisement$AdType;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lccsancom/vungle/warren/model/Advertisement;",
        ">;"
    }
.end annotation


# static fields
.field public static final DONE:I = 0x3

.field private static final EMPTY_STRING_ARRAY:[Ljava/lang/String;

.field public static final ERROR:I = 0x4

.field private static final FILE_SCHEME:Ljava/lang/String; = "file://"

.field static final INCENTIVIZED_BODY_TEXT:Ljava/lang/String; = "INCENTIVIZED_BODY_TEXT"

.field static final INCENTIVIZED_CLOSE_TEXT:Ljava/lang/String; = "INCENTIVIZED_CLOSE_TEXT"

.field static final INCENTIVIZED_CONTINUE_TEXT:Ljava/lang/String; = "INCENTIVIZED_CONTINUE_TEXT"

.field static final INCENTIVIZED_TITLE_TEXT:Ljava/lang/String; = "INCENTIVIZED_TITLE_TEXT"

.field public static final INVALID:I = 0x5

.field public static final KEY_POSTROLL:Ljava/lang/String; = "postroll"

.field public static final KEY_TEMPLATE:Ljava/lang/String; = "template"

.field public static final KEY_VIDEO:Ljava/lang/String; = "video"

.field public static final LANDSCAPE:I = 0x1

.field private static final MRAID_ARGS:Ljava/lang/String; = "mraid_args"

.field public static final NEW:I = 0x0

.field public static final PORTRAIT:I = 0x0

.field public static final READY:I = 0x1

.field static final START_MUTED:Ljava/lang/String; = "START_MUTED"

.field private static final STATIC_TPAT_EVENTS:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "Advertisement"

.field public static final TYPE_VUNGLE_LOCAL:I = 0x0

.field public static final TYPE_VUNGLE_MRAID:I = 0x1

.field private static final UNKNOWN:Ljava/lang/String; = "unknown"

.field public static final VIEWING:I = 0x2


# instance fields
.field adConfig:Lccsancom/vungle/warren/AdConfig;

.field adMarketId:Ljava/lang/String;

.field public adRequestStartTime:J

.field adToken:Ljava/lang/String;

.field adType:I

.field appID:Ljava/lang/String;

.field public assetDownloadDuration:J

.field public assetDownloadStartTime:J

.field public assetsFullyDownloaded:Z

.field bidToken:Ljava/lang/String;

.field cacheableAssets:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lccsanandroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field campaign:Ljava/lang/String;

.field checkpoints:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lccsancom/vungle/warren/model/Advertisement$Checkpoint;",
            ">;"
        }
    .end annotation
.end field

.field countdown:I

.field ctaClickArea:Z

.field ctaDestinationUrl:Ljava/lang/String;

.field ctaOverlayEnabled:Z

.field ctaUrl:Ljava/lang/String;

.field delay:I

.field dynamicEventsAndUrls:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field enableOm:Z

.field expireTime:J

.field private gson:Lccsancom/google/gson/Gson;

.field identifier:Ljava/lang/String;

.field incentivizedTextSettings:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field md5:Ljava/lang/String;

.field mraidFiles:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field omExtraVast:Ljava/lang/String;

.field placementId:Ljava/lang/String;

.field postrollBundleUrl:Ljava/lang/String;

.field requiresNonMarketInstall:Z

.field retryCount:I

.field serverRequestTimestamp:J

.field showCloseDelay:I

.field showCloseIncentivized:I

.field state:I

.field templateId:Ljava/lang/String;

.field templateSettings:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field templateType:Ljava/lang/String;

.field templateUrl:Ljava/lang/String;

.field ttDownload:J

.field videoHeight:I

.field videoIdentifier:Ljava/lang/String;

.field videoUrl:Ljava/lang/String;

.field videoWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 56
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "play_percentage"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    const-string v3, "checkpoint.0"

    aput-object v3, v0, v1

    const/4 v1, 0x2

    const-string v3, "checkpoint.25"

    aput-object v3, v0, v1

    const/4 v1, 0x3

    const-string v3, "checkpoint.50"

    aput-object v3, v0, v1

    const/4 v1, 0x4

    const-string v3, "checkpoint.75"

    aput-object v3, v0, v1

    const/4 v1, 0x5

    const-string v3, "checkpoint.100"

    aput-object v3, v0, v1

    .line 57
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lccsancom/vungle/warren/model/Advertisement;->STATIC_TPAT_EVENTS:Ljava/util/Collection;

    .line 67
    new-array v0, v2, [Ljava/lang/String;

    sput-object v0, Lccsancom/vungle/warren/model/Advertisement;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .line 328
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    new-instance v0, Lccsancom/google/gson/Gson;

    invoke-direct {v0}, Lccsancom/google/gson/Gson;-><init>()V

    iput-object v0, p0, Lccsancom/vungle/warren/model/Advertisement;->gson:Lccsancom/google/gson/Gson;

    .line 156
    new-instance v0, Lccsancom/google/gson/internal/LinkedTreeMap;

    invoke-direct {v0}, Lccsancom/google/gson/internal/LinkedTreeMap;-><init>()V

    iput-object v0, p0, Lccsancom/vungle/warren/model/Advertisement;->dynamicEventsAndUrls:Ljava/util/Map;

    .line 215
    const/4 v0, 0x1

    iput-boolean v0, p0, Lccsancom/vungle/warren/model/Advertisement;->ctaClickArea:Z

    .line 253
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lccsancom/vungle/warren/model/Advertisement;->mraidFiles:Ljava/util/Map;

    .line 255
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lccsancom/vungle/warren/model/Advertisement;->cacheableAssets:Ljava/util/Map;

    .line 256
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lccsancom/vungle/warren/model/Advertisement;->incentivizedTextSettings:Ljava/util/Map;

    .line 294
    const/4 v0, 0x0

    iput v0, p0, Lccsancom/vungle/warren/model/Advertisement;->state:I

    .line 326
    iput-boolean v0, p0, Lccsancom/vungle/warren/model/Advertisement;->assetsFullyDownloaded:Z

    .line 329
    return-void
.end method

.method public constructor <init>(Lccsancom/google/gson/JsonObject;)V
    .locals 16
    .param p1, "json"    # Lccsancom/google/gson/JsonObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 392
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 68
    new-instance v2, Lccsancom/google/gson/Gson;

    invoke-direct {v2}, Lccsancom/google/gson/Gson;-><init>()V

    iput-object v2, v0, Lccsancom/vungle/warren/model/Advertisement;->gson:Lccsancom/google/gson/Gson;

    .line 156
    new-instance v2, Lccsancom/google/gson/internal/LinkedTreeMap;

    invoke-direct {v2}, Lccsancom/google/gson/internal/LinkedTreeMap;-><init>()V

    iput-object v2, v0, Lccsancom/vungle/warren/model/Advertisement;->dynamicEventsAndUrls:Ljava/util/Map;

    .line 215
    const/4 v2, 0x1

    iput-boolean v2, v0, Lccsancom/vungle/warren/model/Advertisement;->ctaClickArea:Z

    .line 253
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, v0, Lccsancom/vungle/warren/model/Advertisement;->mraidFiles:Ljava/util/Map;

    .line 255
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, v0, Lccsancom/vungle/warren/model/Advertisement;->cacheableAssets:Ljava/util/Map;

    .line 256
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, v0, Lccsancom/vungle/warren/model/Advertisement;->incentivizedTextSettings:Ljava/util/Map;

    .line 294
    const/4 v3, 0x0

    iput v3, v0, Lccsancom/vungle/warren/model/Advertisement;->state:I

    .line 326
    iput-boolean v3, v0, Lccsancom/vungle/warren/model/Advertisement;->assetsFullyDownloaded:Z

    .line 393
    const-string v4, "ad_markup"

    invoke-static {v1, v4}, Lccsancom/vungle/warren/model/JsonUtil;->hasNonNull(Lccsancom/google/gson/JsonElement;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_33

    .line 395
    invoke-virtual {v1, v4}, Lccsancom/google/gson/JsonObject;->getAsJsonObject(Ljava/lang/String;)Lccsancom/google/gson/JsonObject;

    move-result-object v4

    .line 397
    .local v4, "adMarkup":Lccsancom/google/gson/JsonObject;
    const-string v5, ""

    .line 400
    .local v5, "tempVideoUrl":Ljava/lang/String;
    const-string v6, "adType"

    invoke-static {v4, v6}, Lccsancom/vungle/warren/model/JsonUtil;->hasNonNull(Lccsancom/google/gson/JsonElement;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_32

    .line 401
    invoke-virtual {v4, v6}, Lccsancom/google/gson/JsonObject;->get(Ljava/lang/String;)Lccsancom/google/gson/JsonElement;

    move-result-object v6

    invoke-virtual {v6}, Lccsancom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v6

    .line 402
    .local v6, "adTypeRaw":Ljava/lang/String;
    const/4 v7, -0x1

    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v8

    sparse-switch v8, :sswitch_data_0

    :cond_0
    goto :goto_0

    :sswitch_0
    const-string v8, "vungle_mraid"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    const/4 v7, 0x1

    goto :goto_0

    :sswitch_1
    const-string v8, "vungle_local"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    const/4 v7, 0x0

    :goto_0
    const-string v9, "url"

    const-string v10, ""

    packed-switch v7, :pswitch_data_0

    .line 484
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unknown Ad Type "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "! Please add this ad type"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 421
    :pswitch_0
    iput v2, v0, Lccsancom/vungle/warren/model/Advertisement;->adType:I

    .line 422
    iput-object v10, v0, Lccsancom/vungle/warren/model/Advertisement;->postrollBundleUrl:Ljava/lang/String;

    .line 425
    const-string v7, "templateSettings"

    invoke-static {v4, v7}, Lccsancom/vungle/warren/model/JsonUtil;->hasNonNull(Lccsancom/google/gson/JsonElement;Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_c

    .line 426
    new-instance v11, Ljava/util/HashMap;

    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    iput-object v11, v0, Lccsancom/vungle/warren/model/Advertisement;->templateSettings:Ljava/util/Map;

    .line 427
    invoke-virtual {v4, v7}, Lccsancom/google/gson/JsonObject;->getAsJsonObject(Ljava/lang/String;)Lccsancom/google/gson/JsonObject;

    move-result-object v7

    .line 428
    .local v7, "templateJson":Lccsancom/google/gson/JsonObject;
    const-string v11, "normal_replacements"

    invoke-static {v7, v11}, Lccsancom/vungle/warren/model/JsonUtil;->hasNonNull(Lccsancom/google/gson/JsonElement;Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_4

    .line 429
    invoke-virtual {v7, v11}, Lccsancom/google/gson/JsonObject;->getAsJsonObject(Ljava/lang/String;)Lccsancom/google/gson/JsonObject;

    move-result-object v11

    .line 430
    .local v11, "normalReplacements":Lccsancom/google/gson/JsonObject;
    invoke-virtual {v11}, Lccsancom/google/gson/JsonObject;->entrySet()Ljava/util/Set;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_1
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_4

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/Map$Entry;

    .line 431
    .local v13, "element":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lccsancom/google/gson/JsonElement;>;"
    invoke-interface {v13}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/CharSequence;

    invoke-static {v14}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_1

    .line 432
    goto :goto_1

    .line 434
    :cond_1
    invoke-interface {v13}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v14

    if-eqz v14, :cond_3

    invoke-interface {v13}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lccsancom/google/gson/JsonElement;

    invoke-virtual {v14}, Lccsancom/google/gson/JsonElement;->isJsonNull()Z

    move-result v14

    if-eqz v14, :cond_2

    goto :goto_2

    :cond_2
    invoke-interface {v13}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lccsancom/google/gson/JsonElement;

    invoke-virtual {v14}, Lccsancom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v14

    goto :goto_3

    :cond_3
    :goto_2
    const/4 v14, 0x0

    .line 435
    .local v14, "value":Ljava/lang/String;
    :goto_3
    iget-object v15, v0, Lccsancom/vungle/warren/model/Advertisement;->templateSettings:Ljava/util/Map;

    invoke-interface {v13}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    invoke-interface {v15, v8, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 436
    .end local v13    # "element":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lccsancom/google/gson/JsonElement;>;"
    .end local v14    # "value":Ljava/lang/String;
    goto :goto_1

    .line 439
    .end local v11    # "normalReplacements":Lccsancom/google/gson/JsonObject;
    :cond_4
    const-string v8, "cacheable_replacements"

    invoke-static {v7, v8}, Lccsancom/vungle/warren/model/JsonUtil;->hasNonNull(Lccsancom/google/gson/JsonElement;Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_8

    .line 440
    invoke-virtual {v7, v8}, Lccsancom/google/gson/JsonObject;->getAsJsonObject(Ljava/lang/String;)Lccsancom/google/gson/JsonObject;

    move-result-object v8

    .line 441
    .local v8, "cacheable":Lccsancom/google/gson/JsonObject;
    invoke-virtual {v8}, Lccsancom/google/gson/JsonObject;->entrySet()Ljava/util/Set;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_4
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_8

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/Map$Entry;

    .line 442
    .local v12, "element":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lccsancom/google/gson/JsonElement;>;"
    invoke-interface {v12}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/CharSequence;

    invoke-static {v13}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_5

    .line 443
    goto :goto_4

    .line 445
    :cond_5
    invoke-interface {v12}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v13

    if-nez v13, :cond_6

    .line 446
    goto :goto_4

    .line 448
    :cond_6
    invoke-interface {v12}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lccsancom/google/gson/JsonElement;

    invoke-static {v13, v9}, Lccsancom/vungle/warren/model/JsonUtil;->hasNonNull(Lccsancom/google/gson/JsonElement;Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_7

    .line 449
    invoke-interface {v12}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lccsancom/google/gson/JsonElement;

    const-string v14, "extension"

    invoke-static {v13, v14}, Lccsancom/vungle/warren/model/JsonUtil;->hasNonNull(Lccsancom/google/gson/JsonElement;Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_7

    .line 450
    invoke-interface {v12}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lccsancom/google/gson/JsonElement;

    invoke-virtual {v13}, Lccsancom/google/gson/JsonElement;->getAsJsonObject()Lccsancom/google/gson/JsonObject;

    move-result-object v13

    invoke-virtual {v13, v9}, Lccsancom/google/gson/JsonObject;->get(Ljava/lang/String;)Lccsancom/google/gson/JsonElement;

    move-result-object v13

    invoke-virtual {v13}, Lccsancom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v13

    .line 451
    .local v13, "url":Ljava/lang/String;
    invoke-interface {v12}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lccsancom/google/gson/JsonElement;

    invoke-virtual {v15}, Lccsancom/google/gson/JsonElement;->getAsJsonObject()Lccsancom/google/gson/JsonObject;

    move-result-object v15

    invoke-virtual {v15, v14}, Lccsancom/google/gson/JsonObject;->get(Ljava/lang/String;)Lccsancom/google/gson/JsonElement;

    move-result-object v14

    invoke-virtual {v14}, Lccsancom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v14

    .line 452
    .local v14, "ext":Ljava/lang/String;
    iget-object v15, v0, Lccsancom/vungle/warren/model/Advertisement;->cacheableAssets:Ljava/util/Map;

    invoke-interface {v12}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    new-instance v3, Lccsanandroid/util/Pair;

    invoke-direct {v3, v13, v14}, Lccsanandroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v15, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 455
    invoke-interface {v12}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "MAIN_VIDEO"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 456
    move-object v5, v13

    .line 459
    .end local v12    # "element":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lccsancom/google/gson/JsonElement;>;"
    .end local v13    # "url":Ljava/lang/String;
    .end local v14    # "ext":Ljava/lang/String;
    :cond_7
    const/4 v2, 0x1

    const/4 v3, 0x0

    goto :goto_4

    .line 461
    .end local v7    # "templateJson":Lccsancom/google/gson/JsonObject;
    .end local v8    # "cacheable":Lccsancom/google/gson/JsonObject;
    :cond_8
    nop

    .line 465
    const-string v2, "templateId"

    invoke-static {v4, v2}, Lccsancom/vungle/warren/model/JsonUtil;->hasNonNull(Lccsancom/google/gson/JsonElement;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 466
    invoke-virtual {v4, v2}, Lccsancom/google/gson/JsonObject;->get(Ljava/lang/String;)Lccsancom/google/gson/JsonElement;

    move-result-object v2

    invoke-virtual {v2}, Lccsancom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lccsancom/vungle/warren/model/Advertisement;->templateId:Ljava/lang/String;

    .line 471
    const-string v2, "template_type"

    invoke-static {v4, v2}, Lccsancom/vungle/warren/model/JsonUtil;->hasNonNull(Lccsancom/google/gson/JsonElement;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 472
    invoke-virtual {v4, v2}, Lccsancom/google/gson/JsonObject;->get(Ljava/lang/String;)Lccsancom/google/gson/JsonElement;

    move-result-object v2

    invoke-virtual {v2}, Lccsancom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lccsancom/vungle/warren/model/Advertisement;->templateType:Ljava/lang/String;

    .line 477
    const-string v2, "templateURL"

    invoke-static {v4, v2}, Lccsancom/vungle/warren/model/JsonUtil;->hasNonNull(Lccsancom/google/gson/JsonElement;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 478
    invoke-virtual {v4, v2}, Lccsancom/google/gson/JsonObject;->get(Ljava/lang/String;)Lccsancom/google/gson/JsonElement;

    move-result-object v2

    invoke-virtual {v2}, Lccsancom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lccsancom/vungle/warren/model/Advertisement;->templateUrl:Ljava/lang/String;

    goto :goto_6

    .line 480
    :cond_9
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Template URL missing!"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 474
    :cond_a
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Template Type missing!"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 468
    :cond_b
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Missing templateID!"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 462
    :cond_c
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Missing template adConfig!"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 404
    :pswitch_1
    const/4 v2, 0x0

    iput v2, v0, Lccsancom/vungle/warren/model/Advertisement;->adType:I

    .line 406
    const-string v2, "postBundle"

    invoke-static {v4, v2}, Lccsancom/vungle/warren/model/JsonUtil;->hasNonNull(Lccsancom/google/gson/JsonElement;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 407
    invoke-virtual {v4, v2}, Lccsancom/google/gson/JsonObject;->get(Ljava/lang/String;)Lccsancom/google/gson/JsonElement;

    move-result-object v2

    invoke-virtual {v2}, Lccsancom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v2

    goto :goto_5

    :cond_d
    move-object v2, v10

    :goto_5
    iput-object v2, v0, Lccsancom/vungle/warren/model/Advertisement;->postrollBundleUrl:Ljava/lang/String;

    .line 410
    invoke-static {v4, v9}, Lccsancom/vungle/warren/model/JsonUtil;->hasNonNull(Lccsancom/google/gson/JsonElement;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 411
    invoke-virtual {v4, v9}, Lccsancom/google/gson/JsonObject;->get(Ljava/lang/String;)Lccsancom/google/gson/JsonElement;

    move-result-object v2

    invoke-virtual {v2}, Lccsancom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v5

    .line 415
    :cond_e
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, v0, Lccsancom/vungle/warren/model/Advertisement;->templateSettings:Ljava/util/Map;

    .line 416
    iput-object v10, v0, Lccsancom/vungle/warren/model/Advertisement;->templateUrl:Ljava/lang/String;

    .line 417
    iput-object v10, v0, Lccsancom/vungle/warren/model/Advertisement;->templateId:Ljava/lang/String;

    .line 418
    iput-object v10, v0, Lccsancom/vungle/warren/model/Advertisement;->templateType:Ljava/lang/String;

    .line 419
    nop

    .line 486
    .end local v6    # "adTypeRaw":Ljava/lang/String;
    :goto_6
    nop

    .line 491
    invoke-static {v5}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_f

    .line 492
    iput-object v5, v0, Lccsancom/vungle/warren/model/Advertisement;->videoUrl:Ljava/lang/String;

    goto :goto_7

    .line 495
    :cond_f
    iput-object v10, v0, Lccsancom/vungle/warren/model/Advertisement;->videoUrl:Ljava/lang/String;

    .line 499
    :goto_7
    const-string v2, "id"

    invoke-static {v4, v2}, Lccsancom/vungle/warren/model/JsonUtil;->hasNonNull(Lccsancom/google/gson/JsonElement;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_31

    .line 500
    invoke-virtual {v4, v2}, Lccsancom/google/gson/JsonObject;->get(Ljava/lang/String;)Lccsancom/google/gson/JsonElement;

    move-result-object v2

    invoke-virtual {v2}, Lccsancom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lccsancom/vungle/warren/model/Advertisement;->identifier:Ljava/lang/String;

    .line 508
    const-string v2, "campaign"

    invoke-static {v4, v2}, Lccsancom/vungle/warren/model/JsonUtil;->hasNonNull(Lccsancom/google/gson/JsonElement;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_30

    .line 509
    invoke-virtual {v4, v2}, Lccsancom/google/gson/JsonObject;->get(Ljava/lang/String;)Lccsancom/google/gson/JsonElement;

    move-result-object v2

    invoke-virtual {v2}, Lccsancom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lccsancom/vungle/warren/model/Advertisement;->campaign:Ljava/lang/String;

    .line 516
    const-string v2, "app_id"

    invoke-static {v4, v2}, Lccsancom/vungle/warren/model/JsonUtil;->hasNonNull(Lccsancom/google/gson/JsonElement;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2f

    .line 517
    invoke-virtual {v4, v2}, Lccsancom/google/gson/JsonObject;->get(Ljava/lang/String;)Lccsancom/google/gson/JsonElement;

    move-result-object v2

    invoke-virtual {v2}, Lccsancom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lccsancom/vungle/warren/model/Advertisement;->appID:Ljava/lang/String;

    .line 524
    const-string v2, "expiry"

    invoke-static {v4, v2}, Lccsancom/vungle/warren/model/JsonUtil;->hasNonNull(Lccsancom/google/gson/JsonElement;Ljava/lang/String;)Z

    move-result v3

    const-wide/16 v6, 0x3e8

    if-eqz v3, :cond_11

    invoke-virtual {v4, v2}, Lccsancom/google/gson/JsonObject;->get(Ljava/lang/String;)Lccsancom/google/gson/JsonElement;

    move-result-object v3

    invoke-virtual {v3}, Lccsancom/google/gson/JsonElement;->isJsonNull()Z

    move-result v3

    if-nez v3, :cond_11

    .line 525
    invoke-virtual {v4, v2}, Lccsancom/google/gson/JsonObject;->get(Ljava/lang/String;)Lccsancom/google/gson/JsonElement;

    move-result-object v2

    invoke-virtual {v2}, Lccsancom/google/gson/JsonElement;->getAsLong()J

    move-result-wide v2

    .line 526
    .local v2, "expire":J
    const-wide/16 v8, 0x0

    cmp-long v11, v2, v8

    if-lez v11, :cond_10

    .line 527
    iput-wide v2, v0, Lccsancom/vungle/warren/model/Advertisement;->expireTime:J

    goto :goto_8

    .line 529
    :cond_10
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    div-long/2addr v8, v6

    iput-wide v8, v0, Lccsancom/vungle/warren/model/Advertisement;->expireTime:J

    .line 531
    .end local v2    # "expire":J
    :goto_8
    goto :goto_9

    .line 535
    :cond_11
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    div-long/2addr v2, v6

    iput-wide v2, v0, Lccsancom/vungle/warren/model/Advertisement;->expireTime:J

    .line 539
    :goto_9
    const-string v2, "tpat"

    invoke-static {v4, v2}, Lccsancom/vungle/warren/model/JsonUtil;->hasNonNull(Lccsancom/google/gson/JsonElement;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1b

    .line 540
    invoke-virtual {v4, v2}, Lccsancom/google/gson/JsonObject;->getAsJsonObject(Ljava/lang/String;)Lccsancom/google/gson/JsonObject;

    move-result-object v2

    .line 543
    .local v2, "tpat":Lccsancom/google/gson/JsonObject;
    new-instance v3, Ljava/util/ArrayList;

    const/4 v6, 0x5

    invoke-direct {v3, v6}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v3, v0, Lccsancom/vungle/warren/model/Advertisement;->checkpoints:Ljava/util/List;

    .line 544
    iget v3, v0, Lccsancom/vungle/warren/model/Advertisement;->adType:I

    packed-switch v3, :pswitch_data_1

    .line 575
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v6, "Unknown Ad Type!"

    invoke-direct {v3, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 562
    :pswitch_2
    const/4 v3, 0x0

    .line 563
    .local v3, "checkpoint":Ljava/lang/String;
    const/4 v6, 0x0

    .local v6, "x":I
    :goto_a
    const/4 v7, 0x5

    if-ge v6, v7, :cond_13

    .line 564
    mul-int/lit8 v7, v6, 0x19

    .line 565
    .local v7, "percent":I
    sget-object v8, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v9, 0x1

    new-array v11, v9, [Ljava/lang/Object;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/4 v12, 0x0

    aput-object v9, v11, v12

    const-string v9, "checkpoint.%d"

    invoke-static {v8, v9, v11}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 566
    const/4 v8, 0x0

    .line 567
    .local v8, "cpoint":Lccsancom/vungle/warren/model/Advertisement$Checkpoint;
    invoke-static {v2, v3}, Lccsancom/vungle/warren/model/JsonUtil;->hasNonNull(Lccsancom/google/gson/JsonElement;Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_12

    .line 568
    new-instance v9, Lccsancom/vungle/warren/model/Advertisement$Checkpoint;

    invoke-virtual {v2, v3}, Lccsancom/google/gson/JsonObject;->getAsJsonArray(Ljava/lang/String;)Lccsancom/google/gson/JsonArray;

    move-result-object v11

    int-to-byte v12, v7

    invoke-direct {v9, v11, v12}, Lccsancom/vungle/warren/model/Advertisement$Checkpoint;-><init>(Lccsancom/google/gson/JsonArray;B)V

    move-object v8, v9

    .line 571
    :cond_12
    iget-object v9, v0, Lccsancom/vungle/warren/model/Advertisement;->checkpoints:Ljava/util/List;

    invoke-interface {v9, v6, v8}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 563
    .end local v7    # "percent":I
    .end local v8    # "cpoint":Lccsancom/vungle/warren/model/Advertisement$Checkpoint;
    add-int/lit8 v6, v6, 0x1

    goto :goto_a

    .line 573
    .end local v6    # "x":I
    :cond_13
    goto :goto_d

    .line 546
    .end local v3    # "checkpoint":Ljava/lang/String;
    :pswitch_3
    const-string v3, "play_percentage"

    invoke-static {v2, v3}, Lccsancom/vungle/warren/model/JsonUtil;->hasNonNull(Lccsancom/google/gson/JsonElement;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_16

    .line 547
    const-string v3, "play_percentage"

    invoke-virtual {v2, v3}, Lccsancom/google/gson/JsonObject;->getAsJsonArray(Ljava/lang/String;)Lccsancom/google/gson/JsonArray;

    move-result-object v3

    .line 551
    .local v3, "checkpointData":Lccsancom/google/gson/JsonArray;
    const/4 v6, 0x0

    .restart local v6    # "x":I
    :goto_b
    invoke-virtual {v3}, Lccsancom/google/gson/JsonArray;->size()I

    move-result v7

    if-ge v6, v7, :cond_15

    .line 552
    invoke-virtual {v3, v6}, Lccsancom/google/gson/JsonArray;->get(I)Lccsancom/google/gson/JsonElement;

    move-result-object v7

    if-nez v7, :cond_14

    .line 553
    goto :goto_c

    .line 555
    :cond_14
    iget-object v7, v0, Lccsancom/vungle/warren/model/Advertisement;->checkpoints:Ljava/util/List;

    new-instance v8, Lccsancom/vungle/warren/model/Advertisement$Checkpoint;

    invoke-virtual {v3, v6}, Lccsancom/google/gson/JsonArray;->get(I)Lccsancom/google/gson/JsonElement;

    move-result-object v9

    invoke-virtual {v9}, Lccsancom/google/gson/JsonElement;->getAsJsonObject()Lccsancom/google/gson/JsonObject;

    move-result-object v9

    invoke-direct {v8, v9}, Lccsancom/vungle/warren/model/Advertisement$Checkpoint;-><init>(Lccsancom/google/gson/JsonObject;)V

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 551
    :goto_c
    add-int/lit8 v6, v6, 0x1

    goto :goto_b

    .line 557
    .end local v6    # "x":I
    :cond_15
    iget-object v6, v0, Lccsancom/vungle/warren/model/Advertisement;->checkpoints:Ljava/util/List;

    invoke-static {v6}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 578
    .end local v3    # "checkpointData":Lccsancom/google/gson/JsonArray;
    :cond_16
    :goto_d
    new-instance v3, Ljava/util/TreeSet;

    invoke-virtual {v2}, Lccsancom/google/gson/JsonObject;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-direct {v3, v6}, Ljava/util/TreeSet;-><init>(Ljava/util/Collection;)V

    .line 579
    .local v3, "tpatEntries":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    const-string v6, "moat"

    invoke-interface {v3, v6}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    .line 580
    sget-object v6, Lccsancom/vungle/warren/model/Advertisement;->STATIC_TPAT_EVENTS:Ljava/util/Collection;

    invoke-interface {v3, v6}, Ljava/util/Collection;->removeAll(Ljava/util/Collection;)Z

    .line 581
    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_1a

    .line 584
    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_e
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1a

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 585
    .local v7, "tpatEntryKey":Ljava/lang/String;
    invoke-virtual {v2, v7}, Lccsancom/google/gson/JsonObject;->get(Ljava/lang/String;)Lccsancom/google/gson/JsonElement;

    move-result-object v8

    invoke-virtual {v8}, Lccsancom/google/gson/JsonElement;->getAsJsonArray()Lccsancom/google/gson/JsonArray;

    move-result-object v8

    .line 586
    .local v8, "urls":Lccsancom/google/gson/JsonArray;
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 587
    .local v9, "actionUrls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v11, 0x0

    .local v11, "x":I
    :goto_f
    invoke-virtual {v8}, Lccsancom/google/gson/JsonArray;->size()I

    move-result v12

    if-ge v11, v12, :cond_19

    .line 588
    invoke-virtual {v8, v11}, Lccsancom/google/gson/JsonArray;->get(I)Lccsancom/google/gson/JsonElement;

    move-result-object v12

    if-eqz v12, :cond_18

    invoke-virtual {v8, v11}, Lccsancom/google/gson/JsonArray;->get(I)Lccsancom/google/gson/JsonElement;

    move-result-object v12

    invoke-virtual {v12}, Lccsancom/google/gson/JsonElement;->toString()Ljava/lang/String;

    move-result-object v12

    const-string v13, "null"

    invoke-virtual {v13, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_17

    goto :goto_10

    .line 591
    :cond_17
    invoke-virtual {v8, v11}, Lccsancom/google/gson/JsonArray;->get(I)Lccsancom/google/gson/JsonElement;

    move-result-object v12

    invoke-virtual {v12}, Lccsancom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v11, v12}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_11

    .line 589
    :cond_18
    :goto_10
    invoke-virtual {v9, v11, v10}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 587
    :goto_11
    add-int/lit8 v11, v11, 0x1

    goto :goto_f

    .line 594
    .end local v11    # "x":I
    :cond_19
    iget-object v11, v0, Lccsancom/vungle/warren/model/Advertisement;->dynamicEventsAndUrls:Ljava/util/Map;

    invoke-interface {v11, v7, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 595
    .end local v7    # "tpatEntryKey":Ljava/lang/String;
    goto :goto_e

    .line 597
    .end local v2    # "tpat":Lccsancom/google/gson/JsonObject;
    .end local v3    # "tpatEntries":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    .end local v8    # "urls":Lccsancom/google/gson/JsonArray;
    .end local v9    # "actionUrls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_1a
    goto :goto_12

    .line 598
    :cond_1b
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v0, Lccsancom/vungle/warren/model/Advertisement;->checkpoints:Ljava/util/List;

    .line 602
    :goto_12
    const-string v2, "delay"

    invoke-static {v4, v2}, Lccsancom/vungle/warren/model/JsonUtil;->hasNonNull(Lccsancom/google/gson/JsonElement;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 603
    const-string v2, "delay"

    invoke-virtual {v4, v2}, Lccsancom/google/gson/JsonObject;->get(Ljava/lang/String;)Lccsancom/google/gson/JsonElement;

    move-result-object v2

    invoke-virtual {v2}, Lccsancom/google/gson/JsonElement;->getAsInt()I

    move-result v2

    iput v2, v0, Lccsancom/vungle/warren/model/Advertisement;->delay:I

    goto :goto_13

    .line 605
    :cond_1c
    const/4 v2, 0x0

    iput v2, v0, Lccsancom/vungle/warren/model/Advertisement;->delay:I

    .line 609
    :goto_13
    const-string v2, "showClose"

    invoke-static {v4, v2}, Lccsancom/vungle/warren/model/JsonUtil;->hasNonNull(Lccsancom/google/gson/JsonElement;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 610
    const-string v2, "showClose"

    invoke-virtual {v4, v2}, Lccsancom/google/gson/JsonObject;->get(Ljava/lang/String;)Lccsancom/google/gson/JsonElement;

    move-result-object v2

    invoke-virtual {v2}, Lccsancom/google/gson/JsonElement;->getAsInt()I

    move-result v2

    iput v2, v0, Lccsancom/vungle/warren/model/Advertisement;->showCloseDelay:I

    goto :goto_14

    .line 612
    :cond_1d
    const/4 v2, 0x0

    iput v2, v0, Lccsancom/vungle/warren/model/Advertisement;->showCloseDelay:I

    .line 614
    :goto_14
    const-string v2, "showCloseIncentivized"

    invoke-static {v4, v2}, Lccsancom/vungle/warren/model/JsonUtil;->hasNonNull(Lccsancom/google/gson/JsonElement;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 615
    const-string v2, "showCloseIncentivized"

    invoke-virtual {v4, v2}, Lccsancom/google/gson/JsonObject;->get(Ljava/lang/String;)Lccsancom/google/gson/JsonElement;

    move-result-object v2

    invoke-virtual {v2}, Lccsancom/google/gson/JsonElement;->getAsInt()I

    move-result v2

    iput v2, v0, Lccsancom/vungle/warren/model/Advertisement;->showCloseIncentivized:I

    goto :goto_15

    .line 617
    :cond_1e
    const/4 v2, 0x0

    iput v2, v0, Lccsancom/vungle/warren/model/Advertisement;->showCloseIncentivized:I

    .line 621
    :goto_15
    const-string v2, "countdown"

    invoke-static {v4, v2}, Lccsancom/vungle/warren/model/JsonUtil;->hasNonNull(Lccsancom/google/gson/JsonElement;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 622
    const-string v2, "countdown"

    invoke-virtual {v4, v2}, Lccsancom/google/gson/JsonObject;->get(Ljava/lang/String;)Lccsancom/google/gson/JsonElement;

    move-result-object v2

    invoke-virtual {v2}, Lccsancom/google/gson/JsonElement;->getAsInt()I

    move-result v2

    iput v2, v0, Lccsancom/vungle/warren/model/Advertisement;->countdown:I

    goto :goto_16

    .line 624
    :cond_1f
    const/4 v2, 0x0

    iput v2, v0, Lccsancom/vungle/warren/model/Advertisement;->countdown:I

    .line 628
    :goto_16
    const-string v2, "videoWidth"

    invoke-static {v4, v2}, Lccsancom/vungle/warren/model/JsonUtil;->hasNonNull(Lccsancom/google/gson/JsonElement;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2e

    .line 629
    const-string v2, "videoWidth"

    invoke-virtual {v4, v2}, Lccsancom/google/gson/JsonObject;->get(Ljava/lang/String;)Lccsancom/google/gson/JsonElement;

    move-result-object v2

    invoke-virtual {v2}, Lccsancom/google/gson/JsonElement;->getAsInt()I

    move-result v2

    iput v2, v0, Lccsancom/vungle/warren/model/Advertisement;->videoWidth:I

    .line 633
    const-string v2, "videoHeight"

    invoke-static {v4, v2}, Lccsancom/vungle/warren/model/JsonUtil;->hasNonNull(Lccsancom/google/gson/JsonElement;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2d

    .line 634
    const-string v2, "videoHeight"

    invoke-virtual {v4, v2}, Lccsancom/google/gson/JsonObject;->get(Ljava/lang/String;)Lccsancom/google/gson/JsonElement;

    move-result-object v2

    invoke-virtual {v2}, Lccsancom/google/gson/JsonElement;->getAsInt()I

    move-result v2

    iput v2, v0, Lccsancom/vungle/warren/model/Advertisement;->videoHeight:I

    .line 640
    const-string v2, "md5"

    invoke-static {v4, v2}, Lccsancom/vungle/warren/model/JsonUtil;->hasNonNull(Lccsancom/google/gson/JsonElement;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_20

    .line 641
    const-string v2, "md5"

    invoke-virtual {v4, v2}, Lccsancom/google/gson/JsonObject;->get(Ljava/lang/String;)Lccsancom/google/gson/JsonElement;

    move-result-object v2

    invoke-virtual {v2}, Lccsancom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lccsancom/vungle/warren/model/Advertisement;->md5:Ljava/lang/String;

    goto :goto_17

    .line 643
    :cond_20
    iput-object v10, v0, Lccsancom/vungle/warren/model/Advertisement;->md5:Ljava/lang/String;

    .line 647
    :goto_17
    const-string v2, "cta_overlay"

    invoke-static {v4, v2}, Lccsancom/vungle/warren/model/JsonUtil;->hasNonNull(Lccsancom/google/gson/JsonElement;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_23

    .line 648
    const-string v2, "cta_overlay"

    invoke-virtual {v4, v2}, Lccsancom/google/gson/JsonObject;->getAsJsonObject(Ljava/lang/String;)Lccsancom/google/gson/JsonObject;

    move-result-object v2

    .line 649
    .local v2, "cta":Lccsancom/google/gson/JsonObject;
    const-string v3, "enabled"

    invoke-static {v2, v3}, Lccsancom/vungle/warren/model/JsonUtil;->hasNonNull(Lccsancom/google/gson/JsonElement;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_21

    .line 650
    const-string v3, "enabled"

    invoke-virtual {v2, v3}, Lccsancom/google/gson/JsonObject;->get(Ljava/lang/String;)Lccsancom/google/gson/JsonElement;

    move-result-object v3

    invoke-virtual {v3}, Lccsancom/google/gson/JsonElement;->getAsBoolean()Z

    move-result v3

    iput-boolean v3, v0, Lccsancom/vungle/warren/model/Advertisement;->ctaOverlayEnabled:Z

    goto :goto_18

    .line 652
    :cond_21
    const/4 v3, 0x0

    iput-boolean v3, v0, Lccsancom/vungle/warren/model/Advertisement;->ctaOverlayEnabled:Z

    .line 654
    :goto_18
    const-string v3, "click_area"

    invoke-static {v2, v3}, Lccsancom/vungle/warren/model/JsonUtil;->hasNonNull(Lccsancom/google/gson/JsonElement;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_22

    invoke-virtual {v2, v3}, Lccsancom/google/gson/JsonObject;->get(Ljava/lang/String;)Lccsancom/google/gson/JsonElement;

    move-result-object v6

    invoke-virtual {v6}, Lccsancom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_22

    invoke-virtual {v2, v3}, Lccsancom/google/gson/JsonObject;->get(Ljava/lang/String;)Lccsancom/google/gson/JsonElement;

    move-result-object v3

    invoke-virtual {v3}, Lccsancom/google/gson/JsonElement;->getAsDouble()D

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmpl-double v3, v6, v8

    if-nez v3, :cond_22

    .line 655
    const/4 v3, 0x0

    iput-boolean v3, v0, Lccsancom/vungle/warren/model/Advertisement;->ctaClickArea:Z

    goto :goto_19

    .line 654
    :cond_22
    const/4 v3, 0x0

    .line 657
    .end local v2    # "cta":Lccsancom/google/gson/JsonObject;
    :goto_19
    goto :goto_1a

    .line 660
    :cond_23
    const/4 v3, 0x0

    iput-boolean v3, v0, Lccsancom/vungle/warren/model/Advertisement;->ctaOverlayEnabled:Z

    .line 664
    :goto_1a
    const-string v2, "callToActionDest"

    invoke-static {v4, v2}, Lccsancom/vungle/warren/model/JsonUtil;->hasNonNull(Lccsancom/google/gson/JsonElement;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_24

    .line 665
    const-string v2, "callToActionDest"

    invoke-virtual {v4, v2}, Lccsancom/google/gson/JsonObject;->get(Ljava/lang/String;)Lccsancom/google/gson/JsonElement;

    move-result-object v2

    invoke-virtual {v2}, Lccsancom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1b

    :cond_24
    move-object v2, v10

    :goto_1b
    iput-object v2, v0, Lccsancom/vungle/warren/model/Advertisement;->ctaDestinationUrl:Ljava/lang/String;

    .line 668
    const-string v2, "callToActionUrl"

    invoke-static {v4, v2}, Lccsancom/vungle/warren/model/JsonUtil;->hasNonNull(Lccsancom/google/gson/JsonElement;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_25

    .line 669
    const-string v2, "callToActionUrl"

    invoke-virtual {v4, v2}, Lccsancom/google/gson/JsonObject;->get(Ljava/lang/String;)Lccsancom/google/gson/JsonElement;

    move-result-object v2

    invoke-virtual {v2}, Lccsancom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1c

    :cond_25
    move-object v2, v10

    :goto_1c
    iput-object v2, v0, Lccsancom/vungle/warren/model/Advertisement;->ctaUrl:Ljava/lang/String;

    .line 672
    const-string v2, "retryCount"

    invoke-static {v4, v2}, Lccsancom/vungle/warren/model/JsonUtil;->hasNonNull(Lccsancom/google/gson/JsonElement;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_26

    .line 673
    const-string v2, "retryCount"

    invoke-virtual {v4, v2}, Lccsancom/google/gson/JsonObject;->get(Ljava/lang/String;)Lccsancom/google/gson/JsonElement;

    move-result-object v2

    invoke-virtual {v2}, Lccsancom/google/gson/JsonElement;->getAsInt()I

    move-result v2

    iput v2, v0, Lccsancom/vungle/warren/model/Advertisement;->retryCount:I

    goto :goto_1d

    .line 675
    :cond_26
    const/4 v2, 0x1

    iput v2, v0, Lccsancom/vungle/warren/model/Advertisement;->retryCount:I

    .line 679
    :goto_1d
    const-string v2, "ad_token"

    invoke-static {v4, v2}, Lccsancom/vungle/warren/model/JsonUtil;->hasNonNull(Lccsancom/google/gson/JsonElement;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2c

    .line 680
    const-string v2, "ad_token"

    invoke-virtual {v4, v2}, Lccsancom/google/gson/JsonObject;->get(Ljava/lang/String;)Lccsancom/google/gson/JsonElement;

    move-result-object v2

    invoke-virtual {v2}, Lccsancom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lccsancom/vungle/warren/model/Advertisement;->adToken:Ljava/lang/String;

    .line 686
    const-string v2, "video_object_id"

    invoke-static {v4, v2}, Lccsancom/vungle/warren/model/JsonUtil;->hasNonNull(Lccsancom/google/gson/JsonElement;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_27

    .line 687
    const-string v2, "video_object_id"

    invoke-virtual {v4, v2}, Lccsancom/google/gson/JsonObject;->get(Ljava/lang/String;)Lccsancom/google/gson/JsonElement;

    move-result-object v2

    invoke-virtual {v2}, Lccsancom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lccsancom/vungle/warren/model/Advertisement;->videoIdentifier:Ljava/lang/String;

    goto :goto_1e

    .line 689
    :cond_27
    iput-object v10, v0, Lccsancom/vungle/warren/model/Advertisement;->videoIdentifier:Ljava/lang/String;

    .line 693
    :goto_1e
    const-string v2, "requires_sideloading"

    invoke-static {v4, v2}, Lccsancom/vungle/warren/model/JsonUtil;->hasNonNull(Lccsancom/google/gson/JsonElement;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_28

    .line 694
    const-string v2, "requires_sideloading"

    invoke-virtual {v4, v2}, Lccsancom/google/gson/JsonObject;->get(Ljava/lang/String;)Lccsancom/google/gson/JsonElement;

    move-result-object v2

    invoke-virtual {v2}, Lccsancom/google/gson/JsonElement;->getAsBoolean()Z

    move-result v2

    iput-boolean v2, v0, Lccsancom/vungle/warren/model/Advertisement;->requiresNonMarketInstall:Z

    goto :goto_1f

    .line 696
    :cond_28
    const/4 v2, 0x0

    iput-boolean v2, v0, Lccsancom/vungle/warren/model/Advertisement;->requiresNonMarketInstall:Z

    .line 699
    :goto_1f
    const-string v2, "ad_market_id"

    invoke-static {v4, v2}, Lccsancom/vungle/warren/model/JsonUtil;->hasNonNull(Lccsancom/google/gson/JsonElement;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_29

    .line 700
    const-string v2, "ad_market_id"

    invoke-virtual {v4, v2}, Lccsancom/google/gson/JsonObject;->get(Ljava/lang/String;)Lccsancom/google/gson/JsonElement;

    move-result-object v2

    invoke-virtual {v2}, Lccsancom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lccsancom/vungle/warren/model/Advertisement;->adMarketId:Ljava/lang/String;

    goto :goto_20

    .line 702
    :cond_29
    iput-object v10, v0, Lccsancom/vungle/warren/model/Advertisement;->adMarketId:Ljava/lang/String;

    .line 705
    :goto_20
    const-string v2, "bid_token"

    invoke-static {v4, v2}, Lccsancom/vungle/warren/model/JsonUtil;->hasNonNull(Lccsancom/google/gson/JsonElement;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2a

    .line 706
    const-string v2, "bid_token"

    invoke-virtual {v4, v2}, Lccsancom/google/gson/JsonObject;->get(Ljava/lang/String;)Lccsancom/google/gson/JsonElement;

    move-result-object v2

    invoke-virtual {v2}, Lccsancom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lccsancom/vungle/warren/model/Advertisement;->bidToken:Ljava/lang/String;

    goto :goto_21

    .line 708
    :cond_2a
    iput-object v10, v0, Lccsancom/vungle/warren/model/Advertisement;->bidToken:Ljava/lang/String;

    .line 711
    :goto_21
    const-string v2, "timestamp"

    invoke-static {v4, v2}, Lccsancom/vungle/warren/model/JsonUtil;->hasNonNull(Lccsancom/google/gson/JsonElement;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2b

    .line 712
    const-string v2, "timestamp"

    invoke-virtual {v4, v2}, Lccsancom/google/gson/JsonObject;->get(Ljava/lang/String;)Lccsancom/google/gson/JsonElement;

    move-result-object v2

    invoke-virtual {v2}, Lccsancom/google/gson/JsonElement;->getAsLong()J

    move-result-wide v2

    iput-wide v2, v0, Lccsancom/vungle/warren/model/Advertisement;->serverRequestTimestamp:J

    goto :goto_22

    .line 714
    :cond_2b
    const-wide/16 v2, 0x1

    iput-wide v2, v0, Lccsancom/vungle/warren/model/Advertisement;->serverRequestTimestamp:J

    .line 718
    :goto_22
    const-string v2, "viewability"

    invoke-static {v4, v2}, Lccsancom/vungle/warren/model/JsonUtil;->getAsObject(Lccsancom/google/gson/JsonElement;Ljava/lang/String;)Lccsancom/google/gson/JsonObject;

    move-result-object v2

    .line 719
    .local v2, "viewability":Lccsancom/google/gson/JsonObject;
    const-string v3, "om"

    invoke-static {v2, v3}, Lccsancom/vungle/warren/model/JsonUtil;->getAsObject(Lccsancom/google/gson/JsonElement;Ljava/lang/String;)Lccsancom/google/gson/JsonObject;

    move-result-object v3

    .line 720
    .local v3, "om":Lccsancom/google/gson/JsonObject;
    const-string v6, "is_enabled"

    const/4 v7, 0x0

    invoke-static {v3, v6, v7}, Lccsancom/vungle/warren/model/JsonUtil;->getAsBoolean(Lccsancom/google/gson/JsonElement;Ljava/lang/String;Z)Z

    move-result v6

    iput-boolean v6, v0, Lccsancom/vungle/warren/model/Advertisement;->enableOm:Z

    .line 721
    const-string v6, "extra_vast"

    const/4 v7, 0x0

    invoke-static {v3, v6, v7}, Lccsancom/vungle/warren/model/JsonUtil;->getAsString(Lccsancom/google/gson/JsonElement;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v0, Lccsancom/vungle/warren/model/Advertisement;->omExtraVast:Ljava/lang/String;

    .line 726
    new-instance v6, Lccsancom/vungle/warren/AdConfig;

    invoke-direct {v6}, Lccsancom/vungle/warren/AdConfig;-><init>()V

    iput-object v6, v0, Lccsancom/vungle/warren/model/Advertisement;->adConfig:Lccsancom/vungle/warren/AdConfig;

    .line 727
    return-void

    .line 682
    .end local v2    # "viewability":Lccsancom/google/gson/JsonObject;
    .end local v3    # "om":Lccsancom/google/gson/JsonObject;
    :cond_2c
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "AdToken missing!"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 636
    :cond_2d
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Missing video height!"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 631
    :cond_2e
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Missing video width!"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 520
    :cond_2f
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Missing app Id, cannot process advertisement!"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 512
    :cond_30
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Missing campaign information, cannot process advertisement!"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 504
    :cond_31
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Missing identifier, cannot process advertisement!"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 487
    :cond_32
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Advertisement did not contain an adType!"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 394
    .end local v4    # "adMarkup":Lccsancom/google/gson/JsonObject;
    .end local v5    # "tempVideoUrl":Ljava/lang/String;
    :cond_33
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "JSON does not contain ad markup!"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_24

    :goto_23
    throw v2

    :goto_24
    goto :goto_23

    :sswitch_data_0
    .sparse-switch
        -0x6e6a3e23 -> :sswitch_1
        -0x6e5ad017 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method private isValidUrl(Ljava/lang/String;)Z
    .locals 1
    .param p1, "httpUrl"    # Ljava/lang/String;

    .line 1040
    invoke-static {p1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Lccsanokhttp3/HttpUrl;->parse(Ljava/lang/String;)Lccsanokhttp3/HttpUrl;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public compareTo(Lccsancom/vungle/warren/model/Advertisement;)I
    .locals 2
    .param p1, "o"    # Lccsancom/vungle/warren/model/Advertisement;

    .line 72
    const/4 v0, 0x1

    if-nez p1, :cond_0

    .line 73
    return v0

    .line 75
    :cond_0
    iget-object v1, p1, Lccsancom/vungle/warren/model/Advertisement;->identifier:Ljava/lang/String;

    if-nez v1, :cond_2

    .line 76
    iget-object v1, p0, Lccsancom/vungle/warren/model/Advertisement;->identifier:Ljava/lang/String;

    if-nez v1, :cond_1

    .line 77
    const/4 v0, 0x0

    return v0

    .line 79
    :cond_1
    return v0

    .line 81
    :cond_2
    iget-object v0, p0, Lccsancom/vungle/warren/model/Advertisement;->identifier:Ljava/lang/String;

    if-nez v0, :cond_3

    .line 82
    const/4 v0, -0x1

    return v0

    .line 85
    :cond_3
    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 44
    check-cast p1, Lccsancom/vungle/warren/model/Advertisement;

    invoke-virtual {p0, p1}, Lccsancom/vungle/warren/model/Advertisement;->compareTo(Lccsancom/vungle/warren/model/Advertisement;)I

    move-result p1

    return p1
.end method

.method public configure(Lccsancom/vungle/warren/AdConfig;)V
    .locals 1
    .param p1, "settings"    # Lccsancom/vungle/warren/AdConfig;

    .line 745
    if-nez p1, :cond_0

    .line 746
    new-instance v0, Lccsancom/vungle/warren/AdConfig;

    invoke-direct {v0}, Lccsancom/vungle/warren/AdConfig;-><init>()V

    iput-object v0, p0, Lccsancom/vungle/warren/model/Advertisement;->adConfig:Lccsancom/vungle/warren/AdConfig;

    goto :goto_0

    .line 748
    :cond_0
    iput-object p1, p0, Lccsancom/vungle/warren/model/Advertisement;->adConfig:Lccsancom/vungle/warren/AdConfig;

    .line 750
    :goto_0
    return-void
.end method

.method public createMRAIDArgs()Lccsancom/google/gson/JsonObject;
    .locals 7

    .line 948
    iget-object v0, p0, Lccsancom/vungle/warren/model/Advertisement;->templateSettings:Ljava/util/Map;

    if-eqz v0, :cond_6

    .line 952
    new-instance v0, Ljava/util/HashMap;

    iget-object v1, p0, Lccsancom/vungle/warren/model/Advertisement;->templateSettings:Ljava/util/Map;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 954
    .local v0, "resultMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v1, p0, Lccsancom/vungle/warren/model/Advertisement;->cacheableAssets:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 955
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lccsanandroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lccsanandroid/util/Pair;

    iget-object v4, v4, Lccsanandroid/util/Pair;->first:Ljava/lang/Object;

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 956
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lccsanandroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    goto :goto_0

    .line 958
    :cond_0
    iget-object v1, p0, Lccsancom/vungle/warren/model/Advertisement;->mraidFiles:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 959
    iget-object v1, p0, Lccsancom/vungle/warren/model/Advertisement;->mraidFiles:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 962
    :cond_1
    iget-object v1, p0, Lccsancom/vungle/warren/model/Advertisement;->incentivizedTextSettings:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 963
    iget-object v1, p0, Lccsancom/vungle/warren/model/Advertisement;->incentivizedTextSettings:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 966
    :cond_2
    const-string v1, "START_MUTED"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "true"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    const/4 v4, 0x1

    if-nez v2, :cond_4

    .line 967
    invoke-virtual {p0}, Lccsancom/vungle/warren/model/Advertisement;->getAdConfig()Lccsancom/vungle/warren/AdConfig;

    move-result-object v2

    invoke-virtual {v2}, Lccsancom/vungle/warren/AdConfig;->getSettings()I

    move-result v2

    and-int/2addr v2, v4

    if-eqz v2, :cond_3

    goto :goto_1

    :cond_3
    const-string v3, "false"

    :goto_1
    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 970
    :cond_4
    new-instance v1, Lccsancom/google/gson/JsonObject;

    invoke-direct {v1}, Lccsancom/google/gson/JsonObject;-><init>()V

    .line 971
    .local v1, "ret":Lccsancom/google/gson/JsonObject;
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 972
    .local v3, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v1, v5, v6}, Lccsancom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 973
    .end local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    goto :goto_2

    .line 975
    :cond_5
    invoke-virtual {v1}, Lccsancom/google/gson/JsonObject;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Advertisement"

    const-string v5, "mraid_args"

    invoke-static {v4, v3, v5, v2}, Lccsancom/vungle/warren/VungleLogger;->verbose(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 976
    return-object v1

    .line 949
    .end local v0    # "resultMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v1    # "ret":Lccsancom/google/gson/JsonObject;
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Advertisement does not have MRAID Arguments!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_4

    :goto_3
    throw v0

    :goto_4
    goto :goto_3
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 8
    .param p1, "obj"    # Ljava/lang/Object;

    .line 767
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 768
    :cond_0
    instance-of v1, p1, Lccsancom/vungle/warren/model/Advertisement;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 770
    :cond_1
    move-object v1, p1

    check-cast v1, Lccsancom/vungle/warren/model/Advertisement;

    .line 772
    .local v1, "wrap":Lccsancom/vungle/warren/model/Advertisement;
    iget v3, v1, Lccsancom/vungle/warren/model/Advertisement;->adType:I

    iget v4, p0, Lccsancom/vungle/warren/model/Advertisement;->adType:I

    if-eq v3, v4, :cond_2

    return v2

    .line 773
    :cond_2
    iget v3, v1, Lccsancom/vungle/warren/model/Advertisement;->delay:I

    iget v4, p0, Lccsancom/vungle/warren/model/Advertisement;->delay:I

    if-eq v3, v4, :cond_3

    return v2

    .line 774
    :cond_3
    iget v3, v1, Lccsancom/vungle/warren/model/Advertisement;->showCloseDelay:I

    iget v4, p0, Lccsancom/vungle/warren/model/Advertisement;->showCloseDelay:I

    if-eq v3, v4, :cond_4

    return v2

    .line 775
    :cond_4
    iget v3, v1, Lccsancom/vungle/warren/model/Advertisement;->showCloseIncentivized:I

    iget v4, p0, Lccsancom/vungle/warren/model/Advertisement;->showCloseIncentivized:I

    if-eq v3, v4, :cond_5

    return v2

    .line 776
    :cond_5
    iget v3, v1, Lccsancom/vungle/warren/model/Advertisement;->countdown:I

    iget v4, p0, Lccsancom/vungle/warren/model/Advertisement;->countdown:I

    if-eq v3, v4, :cond_6

    return v2

    .line 777
    :cond_6
    iget v3, v1, Lccsancom/vungle/warren/model/Advertisement;->videoWidth:I

    iget v4, p0, Lccsancom/vungle/warren/model/Advertisement;->videoWidth:I

    if-eq v3, v4, :cond_7

    return v2

    .line 778
    :cond_7
    iget v3, v1, Lccsancom/vungle/warren/model/Advertisement;->videoHeight:I

    iget v4, p0, Lccsancom/vungle/warren/model/Advertisement;->videoHeight:I

    if-eq v3, v4, :cond_8

    return v2

    .line 779
    :cond_8
    iget-boolean v3, v1, Lccsancom/vungle/warren/model/Advertisement;->ctaOverlayEnabled:Z

    iget-boolean v4, p0, Lccsancom/vungle/warren/model/Advertisement;->ctaOverlayEnabled:Z

    if-eq v3, v4, :cond_9

    return v2

    .line 780
    :cond_9
    iget-boolean v3, v1, Lccsancom/vungle/warren/model/Advertisement;->ctaClickArea:Z

    iget-boolean v4, p0, Lccsancom/vungle/warren/model/Advertisement;->ctaClickArea:Z

    if-eq v3, v4, :cond_a

    return v2

    .line 781
    :cond_a
    iget v3, v1, Lccsancom/vungle/warren/model/Advertisement;->retryCount:I

    iget v4, p0, Lccsancom/vungle/warren/model/Advertisement;->retryCount:I

    if-eq v3, v4, :cond_b

    return v2

    .line 782
    :cond_b
    iget-boolean v3, v1, Lccsancom/vungle/warren/model/Advertisement;->enableOm:Z

    iget-boolean v4, p0, Lccsancom/vungle/warren/model/Advertisement;->enableOm:Z

    if-eq v3, v4, :cond_c

    return v2

    .line 783
    :cond_c
    iget-boolean v3, v1, Lccsancom/vungle/warren/model/Advertisement;->requiresNonMarketInstall:Z

    iget-boolean v4, p0, Lccsancom/vungle/warren/model/Advertisement;->requiresNonMarketInstall:Z

    if-eq v3, v4, :cond_d

    return v2

    .line 784
    :cond_d
    iget v3, v1, Lccsancom/vungle/warren/model/Advertisement;->state:I

    iget v4, p0, Lccsancom/vungle/warren/model/Advertisement;->state:I

    if-eq v3, v4, :cond_e

    return v2

    .line 786
    :cond_e
    iget-object v3, v1, Lccsancom/vungle/warren/model/Advertisement;->identifier:Ljava/lang/String;

    if-eqz v3, :cond_22

    iget-object v4, p0, Lccsancom/vungle/warren/model/Advertisement;->identifier:Ljava/lang/String;

    if-nez v4, :cond_f

    goto/16 :goto_2

    .line 787
    :cond_f
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_10

    return v2

    .line 788
    :cond_10
    iget-object v3, v1, Lccsancom/vungle/warren/model/Advertisement;->campaign:Ljava/lang/String;

    iget-object v4, p0, Lccsancom/vungle/warren/model/Advertisement;->campaign:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_11

    return v2

    .line 789
    :cond_11
    iget-object v3, v1, Lccsancom/vungle/warren/model/Advertisement;->videoUrl:Ljava/lang/String;

    iget-object v4, p0, Lccsancom/vungle/warren/model/Advertisement;->videoUrl:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_12

    return v2

    .line 790
    :cond_12
    iget-object v3, v1, Lccsancom/vungle/warren/model/Advertisement;->md5:Ljava/lang/String;

    iget-object v4, p0, Lccsancom/vungle/warren/model/Advertisement;->md5:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_13

    return v2

    .line 791
    :cond_13
    iget-object v3, v1, Lccsancom/vungle/warren/model/Advertisement;->postrollBundleUrl:Ljava/lang/String;

    iget-object v4, p0, Lccsancom/vungle/warren/model/Advertisement;->postrollBundleUrl:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_14

    return v2

    .line 792
    :cond_14
    iget-object v3, v1, Lccsancom/vungle/warren/model/Advertisement;->ctaDestinationUrl:Ljava/lang/String;

    iget-object v4, p0, Lccsancom/vungle/warren/model/Advertisement;->ctaDestinationUrl:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_15

    return v2

    .line 793
    :cond_15
    iget-object v3, v1, Lccsancom/vungle/warren/model/Advertisement;->ctaUrl:Ljava/lang/String;

    iget-object v4, p0, Lccsancom/vungle/warren/model/Advertisement;->ctaUrl:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_16

    return v2

    .line 794
    :cond_16
    iget-object v3, v1, Lccsancom/vungle/warren/model/Advertisement;->adToken:Ljava/lang/String;

    iget-object v4, p0, Lccsancom/vungle/warren/model/Advertisement;->adToken:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_17

    return v2

    .line 795
    :cond_17
    iget-object v3, v1, Lccsancom/vungle/warren/model/Advertisement;->videoIdentifier:Ljava/lang/String;

    iget-object v4, p0, Lccsancom/vungle/warren/model/Advertisement;->videoIdentifier:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_18

    return v2

    .line 796
    :cond_18
    iget-object v3, v1, Lccsancom/vungle/warren/model/Advertisement;->omExtraVast:Ljava/lang/String;

    if-eqz v3, :cond_19

    iget-object v4, p0, Lccsancom/vungle/warren/model/Advertisement;->omExtraVast:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1a

    goto :goto_0

    :cond_19
    iget-object v3, p0, Lccsancom/vungle/warren/model/Advertisement;->omExtraVast:Ljava/lang/String;

    if-eqz v3, :cond_1a

    .line 797
    :goto_0
    return v2

    .line 798
    :cond_1a
    iget-object v3, v1, Lccsancom/vungle/warren/model/Advertisement;->adMarketId:Ljava/lang/String;

    iget-object v4, p0, Lccsancom/vungle/warren/model/Advertisement;->adMarketId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1b

    return v2

    .line 799
    :cond_1b
    iget-object v3, v1, Lccsancom/vungle/warren/model/Advertisement;->bidToken:Ljava/lang/String;

    iget-object v4, p0, Lccsancom/vungle/warren/model/Advertisement;->bidToken:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1c

    return v2

    .line 801
    :cond_1c
    iget-object v3, v1, Lccsancom/vungle/warren/model/Advertisement;->checkpoints:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    iget-object v4, p0, Lccsancom/vungle/warren/model/Advertisement;->checkpoints:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-eq v3, v4, :cond_1d

    return v2

    .line 802
    :cond_1d
    const/4 v3, 0x0

    .local v3, "x":I
    :goto_1
    iget-object v4, p0, Lccsancom/vungle/warren/model/Advertisement;->checkpoints:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_1f

    .line 803
    iget-object v4, v1, Lccsancom/vungle/warren/model/Advertisement;->checkpoints:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lccsancom/vungle/warren/model/Advertisement$Checkpoint;

    iget-object v5, p0, Lccsancom/vungle/warren/model/Advertisement;->checkpoints:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Lccsancom/vungle/warren/model/Advertisement$Checkpoint;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1e

    return v2

    .line 802
    :cond_1e
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 806
    .end local v3    # "x":I
    :cond_1f
    iget-object v3, p0, Lccsancom/vungle/warren/model/Advertisement;->dynamicEventsAndUrls:Ljava/util/Map;

    iget-object v4, v1, Lccsancom/vungle/warren/model/Advertisement;->dynamicEventsAndUrls:Ljava/util/Map;

    invoke-interface {v3, v4}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_20

    .line 807
    return v2

    .line 810
    :cond_20
    iget-wide v3, v1, Lccsancom/vungle/warren/model/Advertisement;->serverRequestTimestamp:J

    iget-wide v5, p0, Lccsancom/vungle/warren/model/Advertisement;->serverRequestTimestamp:J

    cmp-long v7, v3, v5

    if-eqz v7, :cond_21

    return v2

    .line 812
    :cond_21
    return v0

    .line 786
    :cond_22
    :goto_2
    return v2
.end method

.method public getAdConfig()Lccsancom/vungle/warren/AdConfig;
    .locals 1

    .line 753
    iget-object v0, p0, Lccsancom/vungle/warren/model/Advertisement;->adConfig:Lccsancom/vungle/warren/AdConfig;

    return-object v0
.end method

.method public getAdMarketId()Ljava/lang/String;
    .locals 1

    .line 1098
    iget-object v0, p0, Lccsancom/vungle/warren/model/Advertisement;->adMarketId:Ljava/lang/String;

    return-object v0
.end method

.method public getAdToken()Ljava/lang/String;
    .locals 1

    .line 891
    iget-object v0, p0, Lccsancom/vungle/warren/model/Advertisement;->adToken:Ljava/lang/String;

    return-object v0
.end method

.method public getAdType()I
    .locals 1

    .line 731
    iget v0, p0, Lccsancom/vungle/warren/model/Advertisement;->adType:I

    return v0
.end method

.method public getAdvertiserAppId()Ljava/lang/String;
    .locals 6

    .line 1238
    const-string v0, "app_id"

    invoke-virtual {p0}, Lccsancom/vungle/warren/model/Advertisement;->getAppID()Ljava/lang/String;

    move-result-object v1

    .line 1239
    .local v1, "advertiserAppId":Ljava/lang/String;
    invoke-virtual {p0}, Lccsancom/vungle/warren/model/Advertisement;->getAppID()Ljava/lang/String;

    move-result-object v2

    .line 1240
    .local v2, "rawAppIdJson":Ljava/lang/String;
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x3

    if-le v3, v4, :cond_1

    .line 1242
    :try_start_0
    new-instance v3, Lccsanorg/json/JSONObject;

    invoke-virtual {v2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lccsanorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1243
    .local v3, "appIdJson":Lccsanorg/json/JSONObject;
    invoke-virtual {v3, v0}, Lccsanorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_0

    :goto_0
    goto :goto_1

    :cond_0
    invoke-virtual {v3, v0, v5}, Lccsanorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5
    :try_end_0
    .catch Lccsanorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :goto_1
    move-object v1, v5

    .line 1246
    .end local v3    # "appIdJson":Lccsanorg/json/JSONObject;
    goto :goto_2

    .line 1244
    :catch_0
    move-exception v0

    .line 1245
    .local v0, "e":Lccsanorg/json/JSONException;
    const-string v3, "Advertisement"

    const-string v4, "JsonException : "

    invoke-static {v3, v4, v0}, Lccsanandroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1248
    .end local v0    # "e":Lccsanorg/json/JSONException;
    :cond_1
    :goto_2
    invoke-static {v1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "unknown"

    goto :goto_3

    :cond_2
    move-object v0, v1

    :goto_3
    return-object v0
.end method

.method public getAppID()Ljava/lang/String;
    .locals 1

    .line 895
    iget-object v0, p0, Lccsancom/vungle/warren/model/Advertisement;->appID:Ljava/lang/String;

    return-object v0
.end method

.method public getAssetDownloadDuration()J
    .locals 2

    .line 357
    iget-wide v0, p0, Lccsancom/vungle/warren/model/Advertisement;->assetDownloadDuration:J

    return-wide v0
.end method

.method public getBidToken()Ljava/lang/String;
    .locals 1

    .line 1102
    iget-object v0, p0, Lccsancom/vungle/warren/model/Advertisement;->bidToken:Ljava/lang/String;

    return-object v0
.end method

.method public getCTAURL(Z)Ljava/lang/String;
    .locals 3
    .param p1, "tpat"    # Z

    .line 989
    iget v0, p0, Lccsancom/vungle/warren/model/Advertisement;->adType:I

    packed-switch v0, :pswitch_data_0

    .line 995
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown AdType "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lccsancom/vungle/warren/model/Advertisement;->adType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 993
    :pswitch_0
    iget-object v0, p0, Lccsancom/vungle/warren/model/Advertisement;->ctaUrl:Ljava/lang/String;

    return-object v0

    .line 991
    :pswitch_1
    if-eqz p1, :cond_0

    iget-object v0, p0, Lccsancom/vungle/warren/model/Advertisement;->ctaUrl:Ljava/lang/String;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lccsancom/vungle/warren/model/Advertisement;->ctaDestinationUrl:Ljava/lang/String;

    :goto_0
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getCampaign()Ljava/lang/String;
    .locals 1

    .line 903
    iget-object v0, p0, Lccsancom/vungle/warren/model/Advertisement;->campaign:Ljava/lang/String;

    return-object v0
.end method

.method public getCampaignId()Ljava/lang/String;
    .locals 5

    .line 1252
    const/4 v0, 0x0

    .line 1253
    .local v0, "campaignId":Ljava/lang/String;
    invoke-virtual {p0}, Lccsancom/vungle/warren/model/Advertisement;->getCampaign()Ljava/lang/String;

    move-result-object v1

    .line 1254
    .local v1, "campaign":Ljava/lang/String;
    invoke-static {v1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1255
    const-string v2, "\\|"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 1256
    .local v2, "campaignArr":[Ljava/lang/String;
    array-length v3, v2

    const/4 v4, 0x1

    if-lt v3, v4, :cond_0

    .line 1257
    const/4 v3, 0x0

    aget-object v0, v2, v3

    .line 1260
    .end local v2    # "campaignArr":[Ljava/lang/String;
    :cond_0
    invoke-static {v0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "unknown"

    goto :goto_0

    :cond_1
    move-object v2, v0

    :goto_0
    return-object v2
.end method

.method public getCheckpoints()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lccsancom/vungle/warren/model/Advertisement$Checkpoint;",
            ">;"
        }
    .end annotation

    .line 735
    iget-object v0, p0, Lccsancom/vungle/warren/model/Advertisement;->checkpoints:Ljava/util/List;

    return-object v0
.end method

.method public getCreativeId()Ljava/lang/String;
    .locals 5

    .line 1264
    const/4 v0, 0x0

    .line 1265
    .local v0, "creativeId":Ljava/lang/String;
    invoke-virtual {p0}, Lccsancom/vungle/warren/model/Advertisement;->getCampaign()Ljava/lang/String;

    move-result-object v1

    .line 1266
    .local v1, "campaign":Ljava/lang/String;
    invoke-static {v1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1267
    const-string v2, "\\|"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 1268
    .local v2, "campaignArr":[Ljava/lang/String;
    array-length v3, v2

    const/4 v4, 0x2

    if-lt v3, v4, :cond_0

    .line 1269
    const/4 v3, 0x1

    aget-object v0, v2, v3

    .line 1272
    .end local v2    # "campaignArr":[Ljava/lang/String;
    :cond_0
    invoke-static {v0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "unknown"

    goto :goto_0

    :cond_1
    move-object v2, v0

    :goto_0
    return-object v2
.end method

.method public getCtaClickArea()Z
    .locals 1

    .line 372
    iget-boolean v0, p0, Lccsancom/vungle/warren/model/Advertisement;->ctaClickArea:Z

    return v0
.end method

.method public getDownloadableUrls()Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1009
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1010
    .local v0, "ret":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    iget v1, p0, Lccsancom/vungle/warren/model/Advertisement;->adType:I

    packed-switch v1, :pswitch_data_0

    .line 1033
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Advertisement created without adType!"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1019
    :pswitch_0
    iget-object v1, p0, Lccsancom/vungle/warren/model/Advertisement;->templateUrl:Ljava/lang/String;

    const-string v2, "template"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1023
    iget-object v1, p0, Lccsancom/vungle/warren/model/Advertisement;->cacheableAssets:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 1024
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lccsanandroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lccsanandroid/util/Pair;

    iget-object v3, v3, Lccsanandroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    .line 1026
    .local v3, "httpUrl":Ljava/lang/String;
    invoke-direct {p0, v3}, Lccsancom/vungle/warren/model/Advertisement;->isValidUrl(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1027
    const/4 v4, 0x0

    invoke-static {v3, v4, v4}, Lccsanandroid/webkit/URLUtil;->guessFileName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1028
    .local v4, "fileName":Ljava/lang/String;
    invoke-virtual {v0, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1030
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lccsanandroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    .end local v3    # "httpUrl":Ljava/lang/String;
    .end local v4    # "fileName":Ljava/lang/String;
    :cond_0
    goto :goto_0

    .line 1031
    :cond_1
    goto :goto_1

    .line 1012
    :pswitch_1
    iget-object v1, p0, Lccsancom/vungle/warren/model/Advertisement;->videoUrl:Ljava/lang/String;

    const-string v2, "video"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1014
    iget-object v1, p0, Lccsancom/vungle/warren/model/Advertisement;->postrollBundleUrl:Ljava/lang/String;

    invoke-static {v1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1015
    iget-object v1, p0, Lccsancom/vungle/warren/model/Advertisement;->postrollBundleUrl:Ljava/lang/String;

    const-string v2, "postroll"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1036
    :cond_2
    :goto_1
    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getExpireTime()J
    .locals 4

    .line 944
    iget-wide v0, p0, Lccsancom/vungle/warren/model/Advertisement;->expireTime:J

    const-wide/16 v2, 0x3e8

    mul-long v0, v0, v2

    return-wide v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 884
    iget-object v0, p0, Lccsancom/vungle/warren/model/Advertisement;->identifier:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 885
    const-string v0, ""

    return-object v0

    .line 887
    :cond_0
    return-object v0
.end method

.method public getOmEnabled()Z
    .locals 1

    .line 929
    iget-boolean v0, p0, Lccsancom/vungle/warren/model/Advertisement;->enableOm:Z

    return v0
.end method

.method public getOmExtraVast()Ljava/lang/String;
    .locals 1

    .line 934
    iget-object v0, p0, Lccsancom/vungle/warren/model/Advertisement;->omExtraVast:Ljava/lang/String;

    return-object v0
.end method

.method public getOrientation()I
    .locals 2

    .line 758
    iget v0, p0, Lccsancom/vungle/warren/model/Advertisement;->videoWidth:I

    iget v1, p0, Lccsancom/vungle/warren/model/Advertisement;->videoHeight:I

    if-le v0, v1, :cond_0

    .line 759
    const/4 v0, 0x1

    return v0

    .line 761
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getPlacementId()Ljava/lang/String;
    .locals 1

    .line 336
    iget-object v0, p0, Lccsancom/vungle/warren/model/Advertisement;->placementId:Ljava/lang/String;

    return-object v0
.end method

.method public getServerRequestTimestamp()J
    .locals 2

    .line 376
    iget-wide v0, p0, Lccsancom/vungle/warren/model/Advertisement;->serverRequestTimestamp:J

    return-wide v0
.end method

.method public getShowCloseDelay(Z)I
    .locals 1
    .param p1, "incentivized"    # Z

    .line 922
    if-eqz p1, :cond_0

    .line 923
    iget v0, p0, Lccsancom/vungle/warren/model/Advertisement;->showCloseIncentivized:I

    mul-int/lit16 v0, v0, 0x3e8

    return v0

    .line 925
    :cond_0
    iget v0, p0, Lccsancom/vungle/warren/model/Advertisement;->showCloseDelay:I

    mul-int/lit16 v0, v0, 0x3e8

    return v0
.end method

.method public getState()I
    .locals 1

    .line 1094
    iget v0, p0, Lccsancom/vungle/warren/model/Advertisement;->state:I

    return v0
.end method

.method getTemplateId()Ljava/lang/String;
    .locals 1

    .line 907
    iget-object v0, p0, Lccsancom/vungle/warren/model/Advertisement;->templateId:Ljava/lang/String;

    return-object v0
.end method

.method public getTemplateType()Ljava/lang/String;
    .locals 1

    .line 911
    iget-object v0, p0, Lccsancom/vungle/warren/model/Advertisement;->templateType:Ljava/lang/String;

    return-object v0
.end method

.method public getTpatUrls(Ljava/lang/String;)[Ljava/lang/String;
    .locals 6
    .param p1, "event"    # Ljava/lang/String;

    .line 849
    const-class v0, Lccsancom/vungle/warren/model/Advertisement;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown TPAT Event "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 850
    .local v1, "unknownTpatEvent":Ljava/lang/String;
    iget-object v2, p0, Lccsancom/vungle/warren/model/Advertisement;->dynamicEventsAndUrls:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 851
    .local v2, "urls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget v3, p0, Lccsancom/vungle/warren/model/Advertisement;->adType:I

    const-string v4, "#getTpatUrls"

    packed-switch v3, :pswitch_data_0

    .line 878
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v3, "Unknown Advertisement Type!"

    invoke-direct {v0, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 861
    :pswitch_0
    const-string v3, "checkpoint"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 862
    sget-object v0, Lccsancom/vungle/warren/model/Advertisement;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    .line 863
    .local v0, "ret":[Ljava/lang/String;
    const-string v3, "\\."

    invoke-virtual {p1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    aget-object v3, v3, v4

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 864
    .local v3, "percent":I
    iget-object v4, p0, Lccsancom/vungle/warren/model/Advertisement;->checkpoints:Ljava/util/List;

    div-int/lit8 v5, v3, 0x19

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lccsancom/vungle/warren/model/Advertisement$Checkpoint;

    .line 865
    .local v4, "cpoint":Lccsancom/vungle/warren/model/Advertisement$Checkpoint;
    if-eqz v4, :cond_0

    .line 866
    invoke-virtual {v4}, Lccsancom/vungle/warren/model/Advertisement$Checkpoint;->getUrls()[Ljava/lang/String;

    move-result-object v0

    .line 868
    :cond_0
    return-object v0

    .line 870
    .end local v0    # "ret":[Ljava/lang/String;
    .end local v3    # "percent":I
    .end local v4    # "cpoint":Lccsancom/vungle/warren/model/Advertisement$Checkpoint;
    :cond_1
    if-nez v2, :cond_2

    .line 871
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Lccsancom/vungle/warren/VungleLogger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 873
    sget-object v0, Lccsancom/vungle/warren/model/Advertisement;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    return-object v0

    .line 875
    :cond_2
    sget-object v0, Lccsancom/vungle/warren/model/Advertisement;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0

    .line 853
    :pswitch_1
    if-nez v2, :cond_3

    .line 854
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Lccsancom/vungle/warren/VungleLogger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 856
    sget-object v0, Lccsancom/vungle/warren/model/Advertisement;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    return-object v0

    .line 858
    :cond_3
    sget-object v0, Lccsancom/vungle/warren/model/Advertisement;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getTtDownload()J
    .locals 2

    .line 332
    iget-wide v0, p0, Lccsancom/vungle/warren/model/Advertisement;->ttDownload:J

    return-wide v0
.end method

.method getUrl()Ljava/lang/String;
    .locals 1

    .line 899
    iget-object v0, p0, Lccsancom/vungle/warren/model/Advertisement;->videoUrl:Ljava/lang/String;

    return-object v0
.end method

.method public hasPostroll()Z
    .locals 1

    .line 1005
    iget-object v0, p0, Lccsancom/vungle/warren/model/Advertisement;->postrollBundleUrl:Ljava/lang/String;

    invoke-static {v0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public hashCode()I
    .locals 5

    .line 817
    iget v0, p0, Lccsancom/vungle/warren/model/Advertisement;->adType:I

    .line 818
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lccsancom/vungle/warren/model/Advertisement;->identifier:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    .line 819
    .end local v0    # "result":I
    .local v1, "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Lccsancom/vungle/warren/model/Advertisement;->checkpoints:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    .line 820
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lccsancom/vungle/warren/model/Advertisement;->dynamicEventsAndUrls:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    .line 821
    .end local v0    # "result":I
    .restart local v1    # "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget v2, p0, Lccsancom/vungle/warren/model/Advertisement;->delay:I

    add-int/2addr v0, v2

    .line 822
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lccsancom/vungle/warren/model/Advertisement;->campaign:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    .line 823
    .end local v0    # "result":I
    .restart local v1    # "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget v2, p0, Lccsancom/vungle/warren/model/Advertisement;->showCloseDelay:I

    add-int/2addr v0, v2

    .line 824
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lccsancom/vungle/warren/model/Advertisement;->showCloseIncentivized:I

    add-int/2addr v1, v2

    .line 825
    .end local v0    # "result":I
    .restart local v1    # "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget v2, p0, Lccsancom/vungle/warren/model/Advertisement;->countdown:I

    add-int/2addr v0, v2

    .line 826
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lccsancom/vungle/warren/model/Advertisement;->videoUrl:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    .line 827
    .end local v0    # "result":I
    .restart local v1    # "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget v2, p0, Lccsancom/vungle/warren/model/Advertisement;->videoWidth:I

    add-int/2addr v0, v2

    .line 828
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lccsancom/vungle/warren/model/Advertisement;->videoHeight:I

    add-int/2addr v1, v2

    .line 829
    .end local v0    # "result":I
    .restart local v1    # "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Lccsancom/vungle/warren/model/Advertisement;->md5:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    .line 830
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lccsancom/vungle/warren/model/Advertisement;->postrollBundleUrl:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    .line 831
    .end local v0    # "result":I
    .restart local v1    # "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget-boolean v2, p0, Lccsancom/vungle/warren/model/Advertisement;->ctaOverlayEnabled:Z

    add-int/2addr v0, v2

    .line 832
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-boolean v2, p0, Lccsancom/vungle/warren/model/Advertisement;->ctaClickArea:Z

    add-int/2addr v1, v2

    .line 833
    .end local v0    # "result":I
    .restart local v1    # "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Lccsancom/vungle/warren/model/Advertisement;->ctaDestinationUrl:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    .line 834
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lccsancom/vungle/warren/model/Advertisement;->ctaUrl:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    .line 835
    .end local v0    # "result":I
    .restart local v1    # "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget v2, p0, Lccsancom/vungle/warren/model/Advertisement;->retryCount:I

    add-int/2addr v0, v2

    .line 836
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lccsancom/vungle/warren/model/Advertisement;->adToken:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    .line 837
    .end local v0    # "result":I
    .restart local v1    # "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Lccsancom/vungle/warren/model/Advertisement;->videoIdentifier:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    .line 838
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-boolean v2, p0, Lccsancom/vungle/warren/model/Advertisement;->enableOm:Z

    add-int/2addr v1, v2

    .line 839
    .end local v0    # "result":I
    .restart local v1    # "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Lccsancom/vungle/warren/model/Advertisement;->omExtraVast:Ljava/lang/String;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    add-int/2addr v0, v2

    .line 840
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-boolean v2, p0, Lccsancom/vungle/warren/model/Advertisement;->requiresNonMarketInstall:Z

    add-int/2addr v1, v2

    .line 841
    .end local v0    # "result":I
    .restart local v1    # "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Lccsancom/vungle/warren/model/Advertisement;->adMarketId:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    .line 842
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lccsancom/vungle/warren/model/Advertisement;->bidToken:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    .line 843
    .end local v0    # "result":I
    .restart local v1    # "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget v2, p0, Lccsancom/vungle/warren/model/Advertisement;->state:I

    add-int/2addr v0, v2

    .line 844
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v0, 0x1f

    int-to-long v1, v1

    iget-wide v3, p0, Lccsancom/vungle/warren/model/Advertisement;->serverRequestTimestamp:J

    add-long/2addr v1, v3

    long-to-int v0, v1

    .line 845
    return v0
.end method

.method public isCtaOverlayEnabled()Z
    .locals 1

    .line 364
    iget-boolean v0, p0, Lccsancom/vungle/warren/model/Advertisement;->ctaOverlayEnabled:Z

    return v0
.end method

.method public isRequiresNonMarketInstall()Z
    .locals 1

    .line 383
    iget-boolean v0, p0, Lccsancom/vungle/warren/model/Advertisement;->requiresNonMarketInstall:Z

    return v0
.end method

.method public setAdRequestStartTime(J)V
    .locals 0
    .param p1, "timeStamp"    # J

    .line 353
    iput-wide p1, p0, Lccsancom/vungle/warren/model/Advertisement;->adRequestStartTime:J

    .line 354
    return-void
.end method

.method public setAssetDownloadStartTime(J)V
    .locals 0
    .param p1, "timeStamp"    # J

    .line 344
    iput-wide p1, p0, Lccsancom/vungle/warren/model/Advertisement;->assetDownloadStartTime:J

    .line 345
    return-void
.end method

.method public setFinishedDownloadingTime(J)V
    .locals 2
    .param p1, "timeStamp"    # J

    .line 348
    iget-wide v0, p0, Lccsancom/vungle/warren/model/Advertisement;->assetDownloadStartTime:J

    sub-long v0, p1, v0

    iput-wide v0, p0, Lccsancom/vungle/warren/model/Advertisement;->assetDownloadDuration:J

    .line 349
    iget-wide v0, p0, Lccsancom/vungle/warren/model/Advertisement;->adRequestStartTime:J

    sub-long v0, p1, v0

    iput-wide v0, p0, Lccsancom/vungle/warren/model/Advertisement;->ttDownload:J

    .line 350
    return-void
.end method

.method public setIncentivizedText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "body"    # Ljava/lang/String;
    .param p3, "keepWatching"    # Ljava/lang/String;
    .param p4, "close"    # Ljava/lang/String;

    .line 1074
    invoke-static {p1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1075
    iget-object v0, p0, Lccsancom/vungle/warren/model/Advertisement;->incentivizedTextSettings:Ljava/util/Map;

    const-string v1, "INCENTIVIZED_TITLE_TEXT"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1077
    :cond_0
    invoke-static {p2}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1078
    iget-object v0, p0, Lccsancom/vungle/warren/model/Advertisement;->incentivizedTextSettings:Ljava/util/Map;

    const-string v1, "INCENTIVIZED_BODY_TEXT"

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1080
    :cond_1
    invoke-static {p3}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1081
    iget-object v0, p0, Lccsancom/vungle/warren/model/Advertisement;->incentivizedTextSettings:Ljava/util/Map;

    const-string v1, "INCENTIVIZED_CONTINUE_TEXT"

    invoke-interface {v0, v1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1083
    :cond_2
    invoke-static {p4}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 1084
    iget-object v0, p0, Lccsancom/vungle/warren/model/Advertisement;->incentivizedTextSettings:Ljava/util/Map;

    const-string v1, "INCENTIVIZED_CLOSE_TEXT"

    invoke-interface {v0, v1, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1086
    :cond_3
    return-void
.end method

.method public setMraidAssetDir(Ljava/io/File;)V
    .locals 9
    .param p1, "dir"    # Ljava/io/File;

    .line 1052
    iget-object v0, p0, Lccsancom/vungle/warren/model/Advertisement;->cacheableAssets:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 1053
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lccsanandroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lccsanandroid/util/Pair;

    iget-object v2, v2, Lccsanandroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    .line 1055
    .local v2, "httpUrl":Ljava/lang/String;
    invoke-direct {p0, v2}, Lccsancom/vungle/warren/model/Advertisement;->isValidUrl(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1056
    const/4 v3, 0x0

    invoke-static {v2, v3, v3}, Lccsanandroid/webkit/URLUtil;->guessFileName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1058
    .local v3, "fileName":Ljava/lang/String;
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1061
    .local v4, "file":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1062
    iget-object v5, p0, Lccsancom/vungle/warren/model/Advertisement;->mraidFiles:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "file://"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1065
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lccsanandroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    .end local v2    # "httpUrl":Ljava/lang/String;
    .end local v3    # "fileName":Ljava/lang/String;
    .end local v4    # "file":Ljava/io/File;
    :cond_0
    goto :goto_0

    .line 1067
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lccsancom/vungle/warren/model/Advertisement;->assetsFullyDownloaded:Z

    .line 1068
    return-void
.end method

.method public setPlacementId(Ljava/lang/String;)V
    .locals 0
    .param p1, "placementId"    # Ljava/lang/String;

    .line 340
    iput-object p1, p0, Lccsancom/vungle/warren/model/Advertisement;->placementId:Ljava/lang/String;

    .line 341
    return-void
.end method

.method public setState(I)V
    .locals 0
    .param p1, "state"    # I

    .line 1089
    iput p1, p0, Lccsancom/vungle/warren/model/Advertisement;->state:I

    .line 1090
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 1191
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Advertisement{adType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lccsancom/vungle/warren/model/Advertisement;->adType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", identifier=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lccsancom/vungle/warren/model/Advertisement;->identifier:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", appID=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lccsancom/vungle/warren/model/Advertisement;->appID:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", expireTime="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lccsancom/vungle/warren/model/Advertisement;->expireTime:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", checkpoints="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lccsancom/vungle/warren/model/Advertisement;->gson:Lccsancom/google/gson/Gson;

    iget-object v3, p0, Lccsancom/vungle/warren/model/Advertisement;->checkpoints:Ljava/util/List;

    sget-object v4, Lccsancom/vungle/warren/model/AdvertisementDBAdapter;->CHECKPOINT_LIST_TYPE:Ljava/lang/reflect/Type;

    .line 1196
    invoke-virtual {v2, v3, v4}, Lccsancom/google/gson/Gson;->toJson(Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", dynamicEventsAndUrls="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lccsancom/vungle/warren/model/Advertisement;->gson:Lccsancom/google/gson/Gson;

    iget-object v3, p0, Lccsancom/vungle/warren/model/Advertisement;->dynamicEventsAndUrls:Ljava/util/Map;

    sget-object v4, Lccsancom/vungle/warren/model/AdvertisementDBAdapter;->DYNAMIC_EVENTS_AND_URLS_TYPE:Ljava/lang/reflect/Type;

    .line 1198
    invoke-virtual {v2, v3, v4}, Lccsancom/google/gson/Gson;->toJson(Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", delay="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lccsancom/vungle/warren/model/Advertisement;->delay:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", campaign=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lccsancom/vungle/warren/model/Advertisement;->campaign:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", showCloseDelay="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lccsancom/vungle/warren/model/Advertisement;->showCloseDelay:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", showCloseIncentivized="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lccsancom/vungle/warren/model/Advertisement;->showCloseIncentivized:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", countdown="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lccsancom/vungle/warren/model/Advertisement;->countdown:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", videoUrl=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lccsancom/vungle/warren/model/Advertisement;->videoUrl:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", videoWidth="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lccsancom/vungle/warren/model/Advertisement;->videoWidth:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", videoHeight="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lccsancom/vungle/warren/model/Advertisement;->videoHeight:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", md5=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lccsancom/vungle/warren/model/Advertisement;->md5:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", postrollBundleUrl=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lccsancom/vungle/warren/model/Advertisement;->postrollBundleUrl:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", ctaOverlayEnabled="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lccsancom/vungle/warren/model/Advertisement;->ctaOverlayEnabled:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", ctaClickArea="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lccsancom/vungle/warren/model/Advertisement;->ctaClickArea:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", ctaDestinationUrl=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lccsancom/vungle/warren/model/Advertisement;->ctaDestinationUrl:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", ctaUrl=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lccsancom/vungle/warren/model/Advertisement;->ctaUrl:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", adConfig="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lccsancom/vungle/warren/model/Advertisement;->adConfig:Lccsancom/vungle/warren/AdConfig;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", retryCount="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lccsancom/vungle/warren/model/Advertisement;->retryCount:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", adToken=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lccsancom/vungle/warren/model/Advertisement;->adToken:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", videoIdentifier=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lccsancom/vungle/warren/model/Advertisement;->videoIdentifier:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", templateUrl=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lccsancom/vungle/warren/model/Advertisement;->templateUrl:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", templateSettings="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lccsancom/vungle/warren/model/Advertisement;->templateSettings:Ljava/util/Map;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", mraidFiles="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lccsancom/vungle/warren/model/Advertisement;->mraidFiles:Ljava/util/Map;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", cacheableAssets="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lccsancom/vungle/warren/model/Advertisement;->cacheableAssets:Ljava/util/Map;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", templateId=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lccsancom/vungle/warren/model/Advertisement;->templateId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", templateType=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lccsancom/vungle/warren/model/Advertisement;->templateType:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", enableOm="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lccsancom/vungle/warren/model/Advertisement;->enableOm:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", oMSDKExtraVast=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lccsancom/vungle/warren/model/Advertisement;->omExtraVast:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", requiresNonMarketInstall="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lccsancom/vungle/warren/model/Advertisement;->requiresNonMarketInstall:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", adMarketId=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lccsancom/vungle/warren/model/Advertisement;->adMarketId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", bidToken=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lccsancom/vungle/warren/model/Advertisement;->bidToken:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", state="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lccsancom/vungle/warren/model/Advertisement;->state:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", assetDownloadStartTime=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lccsancom/vungle/warren/model/Advertisement;->assetDownloadStartTime:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", assetDownloadDuration=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lccsancom/vungle/warren/model/Advertisement;->assetDownloadDuration:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", adRequestStartTime=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lccsancom/vungle/warren/model/Advertisement;->adRequestStartTime:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", requestTimestamp=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lccsancom/vungle/warren/model/Advertisement;->serverRequestTimestamp:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1191
    return-object v0
.end method
