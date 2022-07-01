.class public Lccsancom/vungle/warren/model/JsonUtil;
.super Ljava/lang/Object;
.source "JsonUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAsBoolean(Lccsancom/google/gson/JsonElement;Ljava/lang/String;Z)Z
    .locals 2
    .param p0, "jsonElement"    # Lccsancom/google/gson/JsonElement;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Z

    .line 19
    invoke-static {p0, p1}, Lccsancom/vungle/warren/model/JsonUtil;->hasNonNull(Lccsancom/google/gson/JsonElement;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 20
    invoke-virtual {p0}, Lccsancom/google/gson/JsonElement;->getAsJsonObject()Lccsancom/google/gson/JsonObject;

    move-result-object v0

    .line 21
    .local v0, "object":Lccsancom/google/gson/JsonObject;
    invoke-virtual {v0, p1}, Lccsancom/google/gson/JsonObject;->get(Ljava/lang/String;)Lccsancom/google/gson/JsonElement;

    move-result-object v1

    invoke-virtual {v1}, Lccsancom/google/gson/JsonElement;->getAsBoolean()Z

    move-result v1

    return v1

    .line 23
    .end local v0    # "object":Lccsancom/google/gson/JsonObject;
    :cond_0
    return p2
.end method

.method public static getAsInt(Lccsancom/google/gson/JsonElement;Ljava/lang/String;I)I
    .locals 2
    .param p0, "jsonElement"    # Lccsancom/google/gson/JsonElement;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # I

    .line 37
    invoke-static {p0, p1}, Lccsancom/vungle/warren/model/JsonUtil;->hasNonNull(Lccsancom/google/gson/JsonElement;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 38
    invoke-virtual {p0}, Lccsancom/google/gson/JsonElement;->getAsJsonObject()Lccsancom/google/gson/JsonObject;

    move-result-object v0

    .line 39
    .local v0, "object":Lccsancom/google/gson/JsonObject;
    invoke-virtual {v0, p1}, Lccsancom/google/gson/JsonObject;->get(Ljava/lang/String;)Lccsancom/google/gson/JsonElement;

    move-result-object v1

    invoke-virtual {v1}, Lccsancom/google/gson/JsonElement;->getAsInt()I

    move-result v1

    return v1

    .line 41
    .end local v0    # "object":Lccsancom/google/gson/JsonObject;
    :cond_0
    return p2
.end method

.method public static getAsObject(Lccsancom/google/gson/JsonElement;Ljava/lang/String;)Lccsancom/google/gson/JsonObject;
    .locals 2
    .param p0, "jsonElement"    # Lccsancom/google/gson/JsonElement;
    .param p1, "key"    # Ljava/lang/String;

    .line 47
    invoke-static {p0, p1}, Lccsancom/vungle/warren/model/JsonUtil;->hasNonNull(Lccsancom/google/gson/JsonElement;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 48
    invoke-virtual {p0}, Lccsancom/google/gson/JsonElement;->getAsJsonObject()Lccsancom/google/gson/JsonObject;

    move-result-object v0

    .line 49
    .local v0, "object":Lccsancom/google/gson/JsonObject;
    invoke-virtual {v0, p1}, Lccsancom/google/gson/JsonObject;->get(Ljava/lang/String;)Lccsancom/google/gson/JsonElement;

    move-result-object v1

    invoke-virtual {v1}, Lccsancom/google/gson/JsonElement;->getAsJsonObject()Lccsancom/google/gson/JsonObject;

    move-result-object v1

    return-object v1

    .line 51
    .end local v0    # "object":Lccsancom/google/gson/JsonObject;
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getAsString(Lccsancom/google/gson/JsonElement;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "jsonElement"    # Lccsancom/google/gson/JsonElement;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Ljava/lang/String;

    .line 28
    invoke-static {p0, p1}, Lccsancom/vungle/warren/model/JsonUtil;->hasNonNull(Lccsancom/google/gson/JsonElement;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 29
    invoke-virtual {p0}, Lccsancom/google/gson/JsonElement;->getAsJsonObject()Lccsancom/google/gson/JsonObject;

    move-result-object v0

    .line 30
    .local v0, "object":Lccsancom/google/gson/JsonObject;
    invoke-virtual {v0, p1}, Lccsancom/google/gson/JsonObject;->get(Ljava/lang/String;)Lccsancom/google/gson/JsonElement;

    move-result-object v1

    invoke-virtual {v1}, Lccsancom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 32
    .end local v0    # "object":Lccsancom/google/gson/JsonObject;
    :cond_0
    return-object p2
.end method

.method public static hasNonNull(Lccsancom/google/gson/JsonElement;Ljava/lang/String;)Z
    .locals 3
    .param p0, "jsonElement"    # Lccsancom/google/gson/JsonElement;
    .param p1, "key"    # Ljava/lang/String;

    .line 11
    const/4 v0, 0x0

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Lccsancom/google/gson/JsonElement;->isJsonNull()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p0}, Lccsancom/google/gson/JsonElement;->isJsonObject()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 14
    :cond_0
    invoke-virtual {p0}, Lccsancom/google/gson/JsonElement;->getAsJsonObject()Lccsancom/google/gson/JsonObject;

    move-result-object v1

    .line 15
    .local v1, "object":Lccsancom/google/gson/JsonObject;
    invoke-virtual {v1, p1}, Lccsancom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1, p1}, Lccsancom/google/gson/JsonObject;->get(Ljava/lang/String;)Lccsancom/google/gson/JsonElement;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v1, p1}, Lccsancom/google/gson/JsonObject;->get(Ljava/lang/String;)Lccsancom/google/gson/JsonElement;

    move-result-object v2

    invoke-virtual {v2}, Lccsancom/google/gson/JsonElement;->isJsonNull()Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0

    .line 12
    .end local v1    # "object":Lccsancom/google/gson/JsonObject;
    :cond_2
    :goto_0
    return v0
.end method
