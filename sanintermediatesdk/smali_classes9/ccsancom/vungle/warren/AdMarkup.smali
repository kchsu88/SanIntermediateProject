.class public final Lccsancom/vungle/warren/AdMarkup;
.super Ljava/lang/Object;
.source "AdMarkup.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private final eventId:Ljava/lang/String;

.field private final impression:[Ljava/lang/String;

.field private final version:I


# direct methods
.method private constructor <init>(Ljava/lang/String;[Ljava/lang/String;I)V
    .locals 0
    .param p1, "eventId"    # Ljava/lang/String;
    .param p2, "impression"    # [Ljava/lang/String;
    .param p3, "version"    # I

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lccsancom/vungle/warren/AdMarkup;->eventId:Ljava/lang/String;

    .line 23
    iput-object p2, p0, Lccsancom/vungle/warren/AdMarkup;->impression:[Ljava/lang/String;

    .line 24
    iput p3, p0, Lccsancom/vungle/warren/AdMarkup;->version:I

    .line 25
    return-void
.end method

.method public static fromString(Ljava/lang/String;)Lccsancom/vungle/warren/AdMarkup;
    .locals 7
    .param p0, "string"    # Ljava/lang/String;

    .line 67
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 68
    return-object v0

    .line 72
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

    .line 75
    .local v1, "jsonObject":Lccsancom/google/gson/JsonObject;
    nop

    .line 76
    if-nez v1, :cond_1

    .line 77
    return-object v0

    .line 80
    :cond_1
    const/4 v2, 0x0

    .line 81
    .local v2, "impression":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v3, "impression"

    invoke-static {v1, v3}, Lccsancom/vungle/warren/model/JsonUtil;->hasNonNull(Lccsancom/google/gson/JsonElement;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 82
    invoke-virtual {v1, v3}, Lccsancom/google/gson/JsonObject;->getAsJsonArray(Ljava/lang/String;)Lccsancom/google/gson/JsonArray;

    move-result-object v3

    .line 83
    .local v3, "jsonArray":Lccsancom/google/gson/JsonArray;
    invoke-virtual {v3}, Lccsancom/google/gson/JsonArray;->isJsonArray()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 84
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move-object v2, v4

    .line 85
    invoke-virtual {v3}, Lccsancom/google/gson/JsonArray;->getAsJsonArray()Lccsancom/google/gson/JsonArray;

    move-result-object v4

    invoke-virtual {v4}, Lccsancom/google/gson/JsonArray;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lccsancom/google/gson/JsonElement;

    .line 86
    .local v5, "element":Lccsancom/google/gson/JsonElement;
    invoke-virtual {v5}, Lccsancom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 87
    .end local v5    # "element":Lccsancom/google/gson/JsonElement;
    goto :goto_0

    .line 90
    .end local v3    # "jsonArray":Lccsancom/google/gson/JsonArray;
    :cond_2
    new-instance v3, Lccsancom/vungle/warren/AdMarkup;

    .line 91
    const-string v4, "event_id"

    invoke-static {v1, v4, v0}, Lccsancom/vungle/warren/model/JsonUtil;->getAsString(Lccsancom/google/gson/JsonElement;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 92
    const/4 v5, 0x0

    if-eqz v2, :cond_3

    new-array v0, v5, [Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 93
    :cond_3
    const-string v6, "version"

    invoke-static {v1, v6, v5}, Lccsancom/vungle/warren/model/JsonUtil;->getAsInt(Lccsancom/google/gson/JsonElement;Ljava/lang/String;I)I

    move-result v5

    invoke-direct {v3, v4, v0, v5}, Lccsancom/vungle/warren/AdMarkup;-><init>(Ljava/lang/String;[Ljava/lang/String;I)V

    .line 90
    return-object v3

    .line 73
    .end local v1    # "jsonObject":Lccsancom/google/gson/JsonObject;
    .end local v2    # "impression":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :catch_0
    move-exception v1

    .line 74
    .local v1, "ignored":Lccsancom/google/gson/JsonSyntaxException;
    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    .line 52
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 53
    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 55
    :cond_1
    move-object v2, p1

    check-cast v2, Lccsancom/vungle/warren/AdMarkup;

    .line 57
    .local v2, "adMarkup":Lccsancom/vungle/warren/AdMarkup;
    iget-object v3, p0, Lccsancom/vungle/warren/AdMarkup;->eventId:Ljava/lang/String;

    if-eqz v3, :cond_2

    iget-object v0, v2, Lccsancom/vungle/warren/AdMarkup;->eventId:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    :cond_2
    iget-object v3, v2, Lccsancom/vungle/warren/AdMarkup;->eventId:Ljava/lang/String;

    if-nez v3, :cond_3

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 53
    .end local v2    # "adMarkup":Lccsancom/vungle/warren/AdMarkup;
    :cond_4
    :goto_1
    return v1
.end method

.method public getEventId()Ljava/lang/String;
    .locals 1

    .line 29
    iget-object v0, p0, Lccsancom/vungle/warren/AdMarkup;->eventId:Ljava/lang/String;

    return-object v0
.end method

.method public getImpression()[Ljava/lang/String;
    .locals 1

    .line 34
    iget-object v0, p0, Lccsancom/vungle/warren/AdMarkup;->impression:[Ljava/lang/String;

    return-object v0
.end method

.method public getVersion()I
    .locals 1

    .line 38
    iget v0, p0, Lccsancom/vungle/warren/AdMarkup;->version:I

    return v0
.end method

.method public hashCode()I
    .locals 1

    .line 62
    iget-object v0, p0, Lccsancom/vungle/warren/AdMarkup;->eventId:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 43
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AdMarkup{eventId=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lccsancom/vungle/warren/AdMarkup;->eventId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", impression="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lccsancom/vungle/warren/AdMarkup;->impression:[Ljava/lang/String;

    .line 45
    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", version="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lccsancom/vungle/warren/AdMarkup;->version:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 43
    return-object v0
.end method
