.class public Lccsancom/vungle/warren/CleverCacheSettings;
.super Ljava/lang/Object;
.source "CleverCacheSettings.java"


# static fields
.field static final DEFAULT_ENABLED:Z = true

.field static final DEFAULT_TIMESTAMP:J = -0x1L

.field static final KEY_CLEVER_CACHE:Ljava/lang/String; = "clever_cache"

.field static final KEY_ENABLED:Ljava/lang/String; = "enabled"

.field static final KEY_TIMESTAMP:Ljava/lang/String; = "clear_shared_cache_timestamp"


# instance fields
.field private final enabled:Z
    .annotation runtime Lccsancom/google/gson/annotations/SerializedName;
        value = "enabled"
    .end annotation
.end field

.field private final timestamp:J
    .annotation runtime Lccsancom/google/gson/annotations/SerializedName;
        value = "clear_shared_cache_timestamp"
    .end annotation
.end field


# direct methods
.method private constructor <init>(ZJ)V
    .locals 0
    .param p1, "enabled"    # Z
    .param p2, "timestamp"    # J

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-boolean p1, p0, Lccsancom/vungle/warren/CleverCacheSettings;->enabled:Z

    .line 30
    iput-wide p2, p0, Lccsancom/vungle/warren/CleverCacheSettings;->timestamp:J

    .line 31
    return-void
.end method

.method static deserializeFromString(Ljava/lang/String;)Lccsancom/vungle/warren/CleverCacheSettings;
    .locals 3
    .param p0, "input"    # Ljava/lang/String;

    .line 68
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 69
    return-object v0

    .line 74
    :cond_0
    :try_start_0
    new-instance v1, Lccsancom/google/gson/GsonBuilder;

    invoke-direct {v1}, Lccsancom/google/gson/GsonBuilder;-><init>()V

    invoke-virtual {v1}, Lccsancom/google/gson/GsonBuilder;->create()Lccsancom/google/gson/Gson;

    move-result-object v1

    const-class v2, Lccsancom/google/gson/JsonObject;

    invoke-virtual {v1, p0, v2}, Lccsancom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lccsancom/google/gson/JsonObject;
    :try_end_0
    .catch Lccsancom/google/gson/JsonSyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 77
    .local v0, "jsonObject":Lccsancom/google/gson/JsonObject;
    nop

    .line 79
    invoke-static {v0}, Lccsancom/vungle/warren/CleverCacheSettings;->fromJson(Lccsancom/google/gson/JsonObject;)Lccsancom/vungle/warren/CleverCacheSettings;

    move-result-object v1

    return-object v1

    .line 75
    .end local v0    # "jsonObject":Lccsancom/google/gson/JsonObject;
    :catch_0
    move-exception v1

    .line 76
    .local v1, "ex":Lccsancom/google/gson/JsonSyntaxException;
    return-object v0
.end method

.method public static fromJson(Lccsancom/google/gson/JsonObject;)Lccsancom/vungle/warren/CleverCacheSettings;
    .locals 7
    .param p0, "jsonObject"    # Lccsancom/google/gson/JsonObject;

    .line 41
    const-string v0, "clear_shared_cache_timestamp"

    const-string v1, "clever_cache"

    invoke-static {p0, v1}, Lccsancom/vungle/warren/model/JsonUtil;->hasNonNull(Lccsancom/google/gson/JsonElement;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 42
    const/4 v0, 0x0

    return-object v0

    .line 44
    :cond_0
    const-wide/16 v2, -0x1

    .line 45
    .local v2, "timestamp":J
    const/4 v4, 0x1

    .line 47
    .local v4, "enabled":Z
    invoke-virtual {p0, v1}, Lccsancom/google/gson/JsonObject;->getAsJsonObject(Ljava/lang/String;)Lccsancom/google/gson/JsonObject;

    move-result-object v1

    .line 49
    .local v1, "ccSettings":Lccsancom/google/gson/JsonObject;
    :try_start_0
    invoke-virtual {v1, v0}, Lccsancom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 50
    invoke-virtual {v1, v0}, Lccsancom/google/gson/JsonObject;->get(Ljava/lang/String;)Lccsancom/google/gson/JsonElement;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/google/gson/JsonElement;->getAsLong()J

    move-result-wide v5
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-wide v2, v5

    .line 54
    :cond_1
    goto :goto_0

    .line 52
    :catch_0
    move-exception v0

    .line 56
    :goto_0
    const-string v0, "enabled"

    invoke-virtual {v1, v0}, Lccsancom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 57
    invoke-virtual {v1, v0}, Lccsancom/google/gson/JsonObject;->get(Ljava/lang/String;)Lccsancom/google/gson/JsonElement;

    move-result-object v0

    .line 58
    .local v0, "element":Lccsancom/google/gson/JsonElement;
    invoke-virtual {v0}, Lccsancom/google/gson/JsonElement;->isJsonPrimitive()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {v0}, Lccsancom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "false"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 59
    const/4 v4, 0x0

    .line 63
    .end local v0    # "element":Lccsancom/google/gson/JsonElement;
    :cond_2
    new-instance v0, Lccsancom/vungle/warren/CleverCacheSettings;

    invoke-direct {v0, v4, v2, v3}, Lccsancom/vungle/warren/CleverCacheSettings;-><init>(ZJ)V

    return-object v0
.end method

.method static getDefault()Lccsancom/vungle/warren/CleverCacheSettings;
    .locals 4

    .line 83
    new-instance v0, Lccsancom/vungle/warren/CleverCacheSettings;

    const/4 v1, 0x1

    const-wide/16 v2, -0x1

    invoke-direct {v0, v1, v2, v3}, Lccsancom/vungle/warren/CleverCacheSettings;-><init>(ZJ)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 8
    .param p1, "o"    # Ljava/lang/Object;

    .line 96
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 97
    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 99
    :cond_1
    move-object v2, p1

    check-cast v2, Lccsancom/vungle/warren/CleverCacheSettings;

    .line 101
    .local v2, "settings":Lccsancom/vungle/warren/CleverCacheSettings;
    iget-boolean v3, p0, Lccsancom/vungle/warren/CleverCacheSettings;->enabled:Z

    iget-boolean v4, v2, Lccsancom/vungle/warren/CleverCacheSettings;->enabled:Z

    if-eq v3, v4, :cond_2

    return v1

    .line 102
    :cond_2
    iget-wide v3, p0, Lccsancom/vungle/warren/CleverCacheSettings;->timestamp:J

    iget-wide v5, v2, Lccsancom/vungle/warren/CleverCacheSettings;->timestamp:J

    cmp-long v7, v3, v5

    if-nez v7, :cond_3

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 97
    .end local v2    # "settings":Lccsancom/vungle/warren/CleverCacheSettings;
    :cond_4
    :goto_1
    return v1
.end method

.method public getTimestamp()J
    .locals 2

    .line 91
    iget-wide v0, p0, Lccsancom/vungle/warren/CleverCacheSettings;->timestamp:J

    return-wide v0
.end method

.method public hashCode()I
    .locals 6

    .line 107
    iget-boolean v0, p0, Lccsancom/vungle/warren/CleverCacheSettings;->enabled:Z

    .line 108
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-wide v2, p0, Lccsancom/vungle/warren/CleverCacheSettings;->timestamp:J

    const/16 v4, 0x20

    ushr-long v4, v2, v4

    xor-long/2addr v2, v4

    long-to-int v3, v2

    add-int/2addr v1, v3

    .line 109
    .end local v0    # "result":I
    .local v1, "result":I
    return v1
.end method

.method public isEnabled()Z
    .locals 1

    .line 87
    iget-boolean v0, p0, Lccsancom/vungle/warren/CleverCacheSettings;->enabled:Z

    return v0
.end method

.method public serializeToString()Ljava/lang/String;
    .locals 3

    .line 34
    new-instance v0, Lccsancom/google/gson/JsonObject;

    invoke-direct {v0}, Lccsancom/google/gson/JsonObject;-><init>()V

    .line 35
    .local v0, "jsonObject":Lccsancom/google/gson/JsonObject;
    new-instance v1, Lccsancom/google/gson/GsonBuilder;

    invoke-direct {v1}, Lccsancom/google/gson/GsonBuilder;-><init>()V

    invoke-virtual {v1}, Lccsancom/google/gson/GsonBuilder;->create()Lccsancom/google/gson/Gson;

    move-result-object v1

    invoke-virtual {v1, p0}, Lccsancom/google/gson/Gson;->toJsonTree(Ljava/lang/Object;)Lccsancom/google/gson/JsonElement;

    move-result-object v1

    const-string v2, "clever_cache"

    invoke-virtual {v0, v2, v1}, Lccsancom/google/gson/JsonObject;->add(Ljava/lang/String;Lccsancom/google/gson/JsonElement;)V

    .line 36
    invoke-virtual {v0}, Lccsancom/google/gson/JsonObject;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
