.class public Lccsancom/vungle/warren/model/Placement;
.super Ljava/lang/Object;
.source "Placement.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsancom/vungle/warren/model/Placement$PlacementAdType;
    }
.end annotation


# static fields
.field public static final INVALID_INTEGER_VALUE:I = -0x80000000

.field private static final TAG:Ljava/lang/String; = "Placement"

.field public static final TYPE_DEFAULT:I = 0x0

.field public static final TYPE_DEPRECTAED_TEMPLATE:I = 0x2

.field public static final TYPE_VUNGLE_BANNER:I = 0x1

.field public static final TYPE_VUNGLE_MREC:I = 0x3


# instance fields
.field adRefreshDuration:I

.field protected adSize:Lccsancom/vungle/warren/AdConfig$AdSize;

.field autoCachePriority:I

.field autoCached:Z

.field headerBidding:Z

.field identifier:Ljava/lang/String;

.field incentivized:Z

.field isValid:Z

.field maxHbCache:I

.field placementAdType:I

.field protected recommendedAdSize:Lccsancom/vungle/warren/AdConfig$AdSize;

.field wakeupTime:J


# direct methods
.method constructor <init>()V
    .locals 1

    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    const/4 v0, 0x0

    iput v0, p0, Lccsancom/vungle/warren/model/Placement;->placementAdType:I

    .line 91
    sget-object v0, Lccsancom/vungle/warren/AdConfig$AdSize;->VUNGLE_DEFAULT:Lccsancom/vungle/warren/AdConfig$AdSize;

    iput-object v0, p0, Lccsancom/vungle/warren/model/Placement;->recommendedAdSize:Lccsancom/vungle/warren/AdConfig$AdSize;

    .line 120
    return-void
.end method

.method public constructor <init>(Lccsancom/google/gson/JsonObject;)V
    .locals 8
    .param p1, "jsonObject"    # Lccsancom/google/gson/JsonObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 138
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    const/4 v0, 0x0

    iput v0, p0, Lccsancom/vungle/warren/model/Placement;->placementAdType:I

    .line 91
    sget-object v1, Lccsancom/vungle/warren/AdConfig$AdSize;->VUNGLE_DEFAULT:Lccsancom/vungle/warren/AdConfig$AdSize;

    iput-object v1, p0, Lccsancom/vungle/warren/model/Placement;->recommendedAdSize:Lccsancom/vungle/warren/AdConfig$AdSize;

    .line 139
    const-string v1, "reference_id"

    invoke-virtual {p1, v1}, Lccsancom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 140
    invoke-virtual {p1, v1}, Lccsancom/google/gson/JsonObject;->get(Ljava/lang/String;)Lccsancom/google/gson/JsonElement;

    move-result-object v1

    invoke-virtual {v1}, Lccsancom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lccsancom/vungle/warren/model/Placement;->identifier:Ljava/lang/String;

    .line 148
    const-string v1, "is_auto_cached"

    invoke-virtual {p1, v1}, Lccsancom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    invoke-virtual {p1, v1}, Lccsancom/google/gson/JsonObject;->get(Ljava/lang/String;)Lccsancom/google/gson/JsonElement;

    move-result-object v1

    invoke-virtual {v1}, Lccsancom/google/gson/JsonElement;->getAsBoolean()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p0, Lccsancom/vungle/warren/model/Placement;->autoCached:Z

    .line 150
    const-string v1, "cache_priority"

    invoke-virtual {p1, v1}, Lccsancom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v2

    const v4, 0x7fffffff

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Lccsancom/vungle/warren/model/Placement;->autoCached:Z

    if-eqz v2, :cond_2

    .line 152
    :try_start_0
    invoke-virtual {p1, v1}, Lccsancom/google/gson/JsonObject;->get(Ljava/lang/String;)Lccsancom/google/gson/JsonElement;

    move-result-object v1

    invoke-virtual {v1}, Lccsancom/google/gson/JsonElement;->getAsInt()I

    move-result v1

    iput v1, p0, Lccsancom/vungle/warren/model/Placement;->autoCachePriority:I

    .line 153
    if-ge v1, v3, :cond_1

    .line 154
    iput v4, p0, Lccsancom/vungle/warren/model/Placement;->autoCachePriority:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 156
    :catch_0
    move-exception v1

    .line 157
    .local v1, "e":Ljava/lang/Exception;
    iput v4, p0, Lccsancom/vungle/warren/model/Placement;->autoCachePriority:I

    .line 158
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_1
    goto :goto_2

    .line 160
    :cond_2
    iput v4, p0, Lccsancom/vungle/warren/model/Placement;->autoCachePriority:I

    .line 164
    :goto_2
    const-string v1, "is_incentivized"

    invoke-virtual {p1, v1}, Lccsancom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p1, v1}, Lccsancom/google/gson/JsonObject;->get(Ljava/lang/String;)Lccsancom/google/gson/JsonElement;

    move-result-object v1

    invoke-virtual {v1}, Lccsancom/google/gson/JsonElement;->getAsBoolean()Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x1

    goto :goto_3

    :cond_3
    const/4 v1, 0x0

    :goto_3
    iput-boolean v1, p0, Lccsancom/vungle/warren/model/Placement;->incentivized:Z

    .line 166
    const-string v1, "ad_refresh_duration"

    invoke-virtual {p1, v1}, Lccsancom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {p1, v1}, Lccsancom/google/gson/JsonObject;->get(Ljava/lang/String;)Lccsancom/google/gson/JsonElement;

    move-result-object v1

    invoke-virtual {v1}, Lccsancom/google/gson/JsonElement;->getAsInt()I

    move-result v1

    goto :goto_4

    :cond_4
    const/4 v1, 0x0

    :goto_4
    iput v1, p0, Lccsancom/vungle/warren/model/Placement;->adRefreshDuration:I

    .line 169
    const-string v1, "header_bidding"

    invoke-virtual {p1, v1}, Lccsancom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {p1, v1}, Lccsancom/google/gson/JsonObject;->get(Ljava/lang/String;)Lccsancom/google/gson/JsonElement;

    move-result-object v1

    invoke-virtual {v1}, Lccsancom/google/gson/JsonElement;->getAsBoolean()Z

    move-result v1

    if-eqz v1, :cond_5

    const/4 v1, 0x1

    goto :goto_5

    :cond_5
    const/4 v1, 0x0

    :goto_5
    iput-boolean v1, p0, Lccsancom/vungle/warren/model/Placement;->headerBidding:Z

    .line 171
    const-string v1, "max_hb_cache"

    invoke-static {p1, v1}, Lccsancom/vungle/warren/model/JsonUtil;->hasNonNull(Lccsancom/google/gson/JsonElement;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 173
    const/high16 v2, -0x80000000

    :try_start_1
    invoke-virtual {p1, v1}, Lccsancom/google/gson/JsonObject;->get(Ljava/lang/String;)Lccsancom/google/gson/JsonElement;

    move-result-object v1

    invoke-virtual {v1}, Lccsancom/google/gson/JsonElement;->getAsInt()I

    move-result v1

    iput v1, p0, Lccsancom/vungle/warren/model/Placement;->maxHbCache:I

    .line 174
    if-lez v1, :cond_6

    goto :goto_6

    :cond_6
    const/high16 v1, -0x80000000

    :goto_6
    iput v1, p0, Lccsancom/vungle/warren/model/Placement;->maxHbCache:I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    .line 179
    goto :goto_7

    .line 175
    :catch_1
    move-exception v1

    .line 176
    .local v1, "e":Ljava/lang/NumberFormatException;
    new-array v4, v3, [Ljava/lang/Object;

    .line 177
    invoke-virtual {v1}, Ljava/lang/NumberFormatException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v0

    const-string v5, "Can\'t read int value from JSON: %s"

    invoke-static {v5, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 176
    const-string v5, "Placement"

    invoke-static {v3, v5, v5, v4}, Lccsancom/vungle/warren/VungleLogger;->error(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    iput v2, p0, Lccsancom/vungle/warren/model/Placement;->maxHbCache:I

    .line 186
    .end local v1    # "e":Ljava/lang/NumberFormatException;
    :cond_7
    :goto_7
    const-string v1, "supported_template_types"

    invoke-static {p1, v1}, Lccsancom/vungle/warren/model/JsonUtil;->hasNonNull(Lccsancom/google/gson/JsonElement;Ljava/lang/String;)Z

    move-result v2

    const/4 v4, 0x2

    const-string v5, "banner"

    if-eqz v2, :cond_c

    .line 187
    invoke-virtual {p1, v1}, Lccsancom/google/gson/JsonObject;->getAsJsonArray(Ljava/lang/String;)Lccsancom/google/gson/JsonArray;

    move-result-object v1

    .line 188
    .local v1, "supportedTemplatesTypesArray":Lccsancom/google/gson/JsonArray;
    invoke-virtual {v1}, Lccsancom/google/gson/JsonArray;->iterator()Ljava/util/Iterator;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lccsancom/google/gson/JsonElement;

    .line 189
    .local v2, "jsonElement":Lccsancom/google/gson/JsonElement;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SupportedTemplatesTypes : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lccsancom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "PlacementModel"

    invoke-static {v7, v6}, Lccsanandroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    invoke-virtual {v2}, Lccsancom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 191
    iput v3, p0, Lccsancom/vungle/warren/model/Placement;->placementAdType:I

    .line 192
    goto :goto_9

    .line 193
    :cond_8
    invoke-virtual {v2}, Lccsancom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "flexfeed"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_b

    .line 194
    invoke-virtual {v2}, Lccsancom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "flexview"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    goto :goto_8

    .line 197
    :cond_9
    invoke-virtual {v2}, Lccsancom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "mrec"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 198
    const/4 v6, 0x3

    iput v6, p0, Lccsancom/vungle/warren/model/Placement;->placementAdType:I

    .line 199
    goto :goto_9

    .line 201
    :cond_a
    iput v0, p0, Lccsancom/vungle/warren/model/Placement;->placementAdType:I

    .line 202
    goto :goto_9

    .line 195
    :cond_b
    :goto_8
    iput v4, p0, Lccsancom/vungle/warren/model/Placement;->placementAdType:I

    .line 206
    .end local v1    # "supportedTemplatesTypesArray":Lccsancom/google/gson/JsonArray;
    .end local v2    # "jsonElement":Lccsancom/google/gson/JsonElement;
    :cond_c
    :goto_9
    const-string v1, "ad_size"

    invoke-static {p1, v1}, Lccsancom/vungle/warren/model/JsonUtil;->hasNonNull(Lccsancom/google/gson/JsonElement;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_e

    iget v2, p0, Lccsancom/vungle/warren/model/Placement;->placementAdType:I

    if-ne v2, v3, :cond_e

    .line 208
    invoke-virtual {p0}, Lccsancom/vungle/warren/model/Placement;->isMultipleHBPEnabled()Z

    move-result v2

    if-eqz v2, :cond_e

    .line 209
    invoke-virtual {p1, v1}, Lccsancom/google/gson/JsonObject;->get(Ljava/lang/String;)Lccsancom/google/gson/JsonElement;

    move-result-object v1

    invoke-virtual {v1}, Lccsancom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v1

    .line 210
    .local v1, "property":Ljava/lang/String;
    const/4 v2, -0x1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v6

    sparse-switch v6, :sswitch_data_0

    :cond_d
    goto :goto_a

    :sswitch_0
    const-string v0, "banner_short"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    const/4 v0, 0x1

    goto :goto_b

    :sswitch_1
    const-string v0, "banner_leaderboard"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    const/4 v0, 0x2

    goto :goto_b

    :sswitch_2
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    goto :goto_b

    :goto_a
    const/4 v0, -0x1

    :goto_b
    packed-switch v0, :pswitch_data_0

    .line 221
    sget-object v0, Lccsancom/vungle/warren/AdConfig$AdSize;->VUNGLE_DEFAULT:Lccsancom/vungle/warren/AdConfig$AdSize;

    iput-object v0, p0, Lccsancom/vungle/warren/model/Placement;->recommendedAdSize:Lccsancom/vungle/warren/AdConfig$AdSize;

    goto :goto_c

    .line 218
    :pswitch_0
    sget-object v0, Lccsancom/vungle/warren/AdConfig$AdSize;->BANNER_LEADERBOARD:Lccsancom/vungle/warren/AdConfig$AdSize;

    iput-object v0, p0, Lccsancom/vungle/warren/model/Placement;->recommendedAdSize:Lccsancom/vungle/warren/AdConfig$AdSize;

    .line 219
    goto :goto_c

    .line 215
    :pswitch_1
    sget-object v0, Lccsancom/vungle/warren/AdConfig$AdSize;->BANNER_SHORT:Lccsancom/vungle/warren/AdConfig$AdSize;

    iput-object v0, p0, Lccsancom/vungle/warren/model/Placement;->recommendedAdSize:Lccsancom/vungle/warren/AdConfig$AdSize;

    .line 216
    goto :goto_c

    .line 212
    :pswitch_2
    sget-object v0, Lccsancom/vungle/warren/AdConfig$AdSize;->BANNER:Lccsancom/vungle/warren/AdConfig$AdSize;

    iput-object v0, p0, Lccsancom/vungle/warren/model/Placement;->recommendedAdSize:Lccsancom/vungle/warren/AdConfig$AdSize;

    .line 224
    .end local v1    # "property":Ljava/lang/String;
    :cond_e
    :goto_c
    return-void

    .line 144
    :cond_f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Missing placement reference ID, cannot use placement!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_e

    :goto_d
    throw v0

    :goto_e
    goto :goto_d

    :sswitch_data_0
    .sparse-switch
        -0x533a80d4 -> :sswitch_2
        0x213fe2ea -> :sswitch_1
        0x3c9e55a9 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "identifier"    # Ljava/lang/String;

    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    const/4 v0, 0x0

    iput v0, p0, Lccsancom/vungle/warren/model/Placement;->placementAdType:I

    .line 91
    sget-object v1, Lccsancom/vungle/warren/AdConfig$AdSize;->VUNGLE_DEFAULT:Lccsancom/vungle/warren/AdConfig$AdSize;

    iput-object v1, p0, Lccsancom/vungle/warren/model/Placement;->recommendedAdSize:Lccsancom/vungle/warren/AdConfig$AdSize;

    .line 112
    iput-object p1, p0, Lccsancom/vungle/warren/model/Placement;->identifier:Ljava/lang/String;

    .line 113
    iput-boolean v0, p0, Lccsancom/vungle/warren/model/Placement;->autoCached:Z

    .line 114
    iput-boolean v0, p0, Lccsancom/vungle/warren/model/Placement;->incentivized:Z

    .line 115
    iput-boolean v0, p0, Lccsancom/vungle/warren/model/Placement;->headerBidding:Z

    .line 116
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 286
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 287
    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_9

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 289
    :cond_1
    move-object v2, p1

    check-cast v2, Lccsancom/vungle/warren/model/Placement;

    .line 291
    .local v2, "placement":Lccsancom/vungle/warren/model/Placement;
    iget-object v3, p0, Lccsancom/vungle/warren/model/Placement;->identifier:Ljava/lang/String;

    if-eqz v3, :cond_2

    iget-object v4, v2, Lccsancom/vungle/warren/model/Placement;->identifier:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    goto :goto_0

    :cond_2
    iget-object v3, v2, Lccsancom/vungle/warren/model/Placement;->identifier:Ljava/lang/String;

    if-eqz v3, :cond_3

    .line 292
    :goto_0
    return v1

    .line 294
    :cond_3
    iget v3, p0, Lccsancom/vungle/warren/model/Placement;->placementAdType:I

    iget v4, v2, Lccsancom/vungle/warren/model/Placement;->placementAdType:I

    if-eq v3, v4, :cond_4

    return v1

    .line 295
    :cond_4
    iget-boolean v3, p0, Lccsancom/vungle/warren/model/Placement;->autoCached:Z

    iget-boolean v4, v2, Lccsancom/vungle/warren/model/Placement;->autoCached:Z

    if-eq v3, v4, :cond_5

    return v1

    .line 296
    :cond_5
    iget-boolean v3, p0, Lccsancom/vungle/warren/model/Placement;->incentivized:Z

    iget-boolean v4, v2, Lccsancom/vungle/warren/model/Placement;->incentivized:Z

    if-eq v3, v4, :cond_6

    return v1

    .line 297
    :cond_6
    iget-boolean v3, p0, Lccsancom/vungle/warren/model/Placement;->headerBidding:Z

    iget-boolean v4, v2, Lccsancom/vungle/warren/model/Placement;->headerBidding:Z

    if-eq v3, v4, :cond_7

    return v1

    .line 298
    :cond_7
    iget-boolean v3, p0, Lccsancom/vungle/warren/model/Placement;->isValid:Z

    iget-boolean v4, v2, Lccsancom/vungle/warren/model/Placement;->isValid:Z

    if-eq v3, v4, :cond_8

    return v1

    .line 300
    :cond_8
    return v0

    .line 287
    .end local v2    # "placement":Lccsancom/vungle/warren/model/Placement;
    :cond_9
    :goto_1
    return v1
.end method

.method public getAdRefreshDuration()I
    .locals 1

    .line 274
    iget v0, p0, Lccsancom/vungle/warren/model/Placement;->adRefreshDuration:I

    if-gtz v0, :cond_0

    .line 275
    const/4 v0, 0x0

    return v0

    .line 277
    :cond_0
    return v0
.end method

.method public getAdSize()Lccsancom/vungle/warren/AdConfig$AdSize;
    .locals 1

    .line 262
    iget-object v0, p0, Lccsancom/vungle/warren/model/Placement;->adSize:Lccsancom/vungle/warren/AdConfig$AdSize;

    if-nez v0, :cond_0

    sget-object v0, Lccsancom/vungle/warren/AdConfig$AdSize;->VUNGLE_DEFAULT:Lccsancom/vungle/warren/AdConfig$AdSize;

    :cond_0
    return-object v0
.end method

.method public getAutoCachePriority()I
    .locals 1

    .line 281
    iget v0, p0, Lccsancom/vungle/warren/model/Placement;->autoCachePriority:I

    return v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 249
    iget-object v0, p0, Lccsancom/vungle/warren/model/Placement;->identifier:Ljava/lang/String;

    return-object v0
.end method

.method public getMaxHbCache()I
    .locals 1

    .line 331
    iget v0, p0, Lccsancom/vungle/warren/model/Placement;->maxHbCache:I

    return v0
.end method

.method public getPlacementAdType()I
    .locals 1

    .line 258
    iget v0, p0, Lccsancom/vungle/warren/model/Placement;->placementAdType:I

    return v0
.end method

.method public getRecommendedAdSize()Lccsancom/vungle/warren/AdConfig$AdSize;
    .locals 1

    .line 266
    iget-object v0, p0, Lccsancom/vungle/warren/model/Placement;->recommendedAdSize:Lccsancom/vungle/warren/AdConfig$AdSize;

    return-object v0
.end method

.method public getWakeupTime()J
    .locals 2

    .line 240
    iget-wide v0, p0, Lccsancom/vungle/warren/model/Placement;->wakeupTime:J

    return-wide v0
.end method

.method public hashCode()I
    .locals 3

    .line 305
    iget-object v0, p0, Lccsancom/vungle/warren/model/Placement;->identifier:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 306
    .local v0, "result":I
    :goto_0
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lccsancom/vungle/warren/model/Placement;->placementAdType:I

    add-int/2addr v1, v2

    .line 307
    .end local v0    # "result":I
    .local v1, "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget-boolean v2, p0, Lccsancom/vungle/warren/model/Placement;->autoCached:Z

    add-int/2addr v0, v2

    .line 308
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-boolean v2, p0, Lccsancom/vungle/warren/model/Placement;->incentivized:Z

    add-int/2addr v1, v2

    .line 309
    .end local v0    # "result":I
    .restart local v1    # "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget-boolean v2, p0, Lccsancom/vungle/warren/model/Placement;->headerBidding:Z

    add-int/2addr v0, v2

    .line 310
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-boolean v2, p0, Lccsancom/vungle/warren/model/Placement;->isValid:Z

    add-int/2addr v1, v2

    .line 311
    .end local v0    # "result":I
    .restart local v1    # "result":I
    return v1
.end method

.method public isAutoCached()Z
    .locals 1

    .line 315
    iget-object v0, p0, Lccsancom/vungle/warren/model/Placement;->adSize:Lccsancom/vungle/warren/AdConfig$AdSize;

    invoke-static {v0}, Lccsancom/vungle/warren/AdConfig$AdSize;->isNonMrecBannerAdSize(Lccsancom/vungle/warren/AdConfig$AdSize;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 316
    const/4 v0, 0x1

    return v0

    .line 318
    :cond_0
    iget-boolean v0, p0, Lccsancom/vungle/warren/model/Placement;->autoCached:Z

    return v0
.end method

.method public isHeaderBidding()Z
    .locals 1

    .line 327
    iget-boolean v0, p0, Lccsancom/vungle/warren/model/Placement;->headerBidding:Z

    return v0
.end method

.method public isIncentivized()Z
    .locals 1

    .line 323
    iget-boolean v0, p0, Lccsancom/vungle/warren/model/Placement;->incentivized:Z

    return v0
.end method

.method public isMultipleHBPEnabled()Z
    .locals 1

    .line 359
    iget-boolean v0, p0, Lccsancom/vungle/warren/model/Placement;->headerBidding:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lccsancom/vungle/warren/model/Placement;->maxHbCache:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isSingleHBPEnabled()Z
    .locals 2

    .line 363
    iget-boolean v0, p0, Lccsancom/vungle/warren/model/Placement;->headerBidding:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget v0, p0, Lccsancom/vungle/warren/model/Placement;->maxHbCache:I

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isValid()Z
    .locals 1

    .line 335
    iget-boolean v0, p0, Lccsancom/vungle/warren/model/Placement;->isValid:Z

    return v0
.end method

.method public setAdSize(Lccsancom/vungle/warren/AdConfig$AdSize;)V
    .locals 0
    .param p1, "adSize"    # Lccsancom/vungle/warren/AdConfig$AdSize;

    .line 270
    iput-object p1, p0, Lccsancom/vungle/warren/model/Placement;->adSize:Lccsancom/vungle/warren/AdConfig$AdSize;

    .line 271
    return-void
.end method

.method public setValid(Z)V
    .locals 0
    .param p1, "valid"    # Z

    .line 253
    iput-boolean p1, p0, Lccsancom/vungle/warren/model/Placement;->isValid:Z

    .line 254
    return-void
.end method

.method public setWakeupTime(J)V
    .locals 0
    .param p1, "wakeupTime"    # J

    .line 244
    iput-wide p1, p0, Lccsancom/vungle/warren/model/Placement;->wakeupTime:J

    .line 245
    return-void
.end method

.method public snooze(J)V
    .locals 4
    .param p1, "sleepTime"    # J

    .line 233
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    mul-long v2, v2, p1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lccsancom/vungle/warren/model/Placement;->wakeupTime:J

    .line 234
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 341
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Placement{identifier=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lccsancom/vungle/warren/model/Placement;->identifier:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", autoCached="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lccsancom/vungle/warren/model/Placement;->autoCached:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", incentivized="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lccsancom/vungle/warren/model/Placement;->incentivized:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", wakeupTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lccsancom/vungle/warren/model/Placement;->wakeupTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", adRefreshDuration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lccsancom/vungle/warren/model/Placement;->adRefreshDuration:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", autoCachePriority="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lccsancom/vungle/warren/model/Placement;->autoCachePriority:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", headerBidding="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lccsancom/vungle/warren/model/Placement;->headerBidding:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isValid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lccsancom/vungle/warren/model/Placement;->isValid:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", placementAdType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lccsancom/vungle/warren/model/Placement;->placementAdType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", adSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lccsancom/vungle/warren/model/Placement;->adSize:Lccsancom/vungle/warren/AdConfig$AdSize;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", maxHbCache="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lccsancom/vungle/warren/model/Placement;->maxHbCache:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lccsancom/vungle/warren/model/Placement;->adSize:Lccsancom/vungle/warren/AdConfig$AdSize;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", recommendedAdSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lccsancom/vungle/warren/model/Placement;->recommendedAdSize:Lccsancom/vungle/warren/AdConfig$AdSize;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
