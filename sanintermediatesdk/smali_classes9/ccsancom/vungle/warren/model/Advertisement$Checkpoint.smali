.class public Lccsancom/vungle/warren/model/Advertisement$Checkpoint;
.super Ljava/lang/Object;
.source "Advertisement.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/vungle/warren/model/Advertisement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Checkpoint"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lccsancom/vungle/warren/model/Advertisement$Checkpoint;",
        ">;"
    }
.end annotation


# instance fields
.field private percentage:B
    .annotation runtime Lccsancom/google/gson/annotations/SerializedName;
        value = "percentage"
    .end annotation
.end field

.field private urls:[Ljava/lang/String;
    .annotation runtime Lccsancom/google/gson/annotations/SerializedName;
        value = "urls"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lccsancom/google/gson/JsonArray;B)V
    .locals 3
    .param p1, "urlsArray"    # Lccsancom/google/gson/JsonArray;
    .param p2, "percentage"    # B

    .line 1138
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1139
    invoke-virtual {p1}, Lccsancom/google/gson/JsonArray;->size()I

    move-result v0

    if-eqz v0, :cond_1

    .line 1141
    invoke-virtual {p1}, Lccsancom/google/gson/JsonArray;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lccsancom/vungle/warren/model/Advertisement$Checkpoint;->urls:[Ljava/lang/String;

    .line 1142
    const/4 v0, 0x0

    .local v0, "x":I
    :goto_0
    invoke-virtual {p1}, Lccsancom/google/gson/JsonArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 1143
    iget-object v1, p0, Lccsancom/vungle/warren/model/Advertisement$Checkpoint;->urls:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Lccsancom/google/gson/JsonArray;->get(I)Lccsancom/google/gson/JsonElement;

    move-result-object v2

    invoke-virtual {v2}, Lccsancom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    .line 1142
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1146
    .end local v0    # "x":I
    :cond_0
    iput-byte p2, p0, Lccsancom/vungle/warren/model/Advertisement$Checkpoint;->percentage:B

    .line 1147
    return-void

    .line 1139
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Empty URLS!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method

.method public constructor <init>(Lccsancom/google/gson/JsonObject;)V
    .locals 4
    .param p1, "json"    # Lccsancom/google/gson/JsonObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 1116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1117
    const-string v0, "checkpoint"

    invoke-static {p1, v0}, Lccsancom/vungle/warren/model/JsonUtil;->hasNonNull(Lccsancom/google/gson/JsonElement;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1118
    invoke-virtual {p1, v0}, Lccsancom/google/gson/JsonObject;->get(Ljava/lang/String;)Lccsancom/google/gson/JsonElement;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/google/gson/JsonElement;->getAsFloat()F

    move-result v0

    const/high16 v1, 0x42c80000    # 100.0f

    mul-float v0, v0, v1

    float-to-int v0, v0

    int-to-byte v0, v0

    iput-byte v0, p0, Lccsancom/vungle/warren/model/Advertisement$Checkpoint;->percentage:B

    .line 1123
    const-string v0, "urls"

    invoke-static {p1, v0}, Lccsancom/vungle/warren/model/JsonUtil;->hasNonNull(Lccsancom/google/gson/JsonElement;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1124
    invoke-virtual {p1, v0}, Lccsancom/google/gson/JsonObject;->getAsJsonArray(Ljava/lang/String;)Lccsancom/google/gson/JsonArray;

    move-result-object v0

    .line 1125
    .local v0, "urlsArray":Lccsancom/google/gson/JsonArray;
    invoke-virtual {v0}, Lccsancom/google/gson/JsonArray;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    iput-object v1, p0, Lccsancom/vungle/warren/model/Advertisement$Checkpoint;->urls:[Ljava/lang/String;

    .line 1126
    const/4 v1, 0x0

    .local v1, "x":I
    :goto_0
    invoke-virtual {v0}, Lccsancom/google/gson/JsonArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 1127
    invoke-virtual {v0, v1}, Lccsancom/google/gson/JsonArray;->get(I)Lccsancom/google/gson/JsonElement;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v0, v1}, Lccsancom/google/gson/JsonArray;->get(I)Lccsancom/google/gson/JsonElement;

    move-result-object v2

    invoke-virtual {v2}, Lccsancom/google/gson/JsonElement;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "null"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    .line 1130
    :cond_0
    iget-object v2, p0, Lccsancom/vungle/warren/model/Advertisement$Checkpoint;->urls:[Ljava/lang/String;

    invoke-virtual {v0, v1}, Lccsancom/google/gson/JsonArray;->get(I)Lccsancom/google/gson/JsonElement;

    move-result-object v3

    invoke-virtual {v3}, Lccsancom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    goto :goto_2

    .line 1128
    :cond_1
    :goto_1
    iget-object v2, p0, Lccsancom/vungle/warren/model/Advertisement$Checkpoint;->urls:[Ljava/lang/String;

    const-string v3, ""

    aput-object v3, v2, v1

    .line 1126
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1133
    .end local v0    # "urlsArray":Lccsancom/google/gson/JsonArray;
    .end local v1    # "x":I
    :cond_2
    nop

    .line 1136
    return-void

    .line 1134
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Checkpoint missing reporting URL!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1120
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Checkpoint missing percentage!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_4

    :goto_3
    throw v0

    :goto_4
    goto :goto_3
.end method


# virtual methods
.method public compareTo(Lccsancom/vungle/warren/model/Advertisement$Checkpoint;)I
    .locals 2
    .param p1, "o"    # Lccsancom/vungle/warren/model/Advertisement$Checkpoint;

    .line 1159
    iget-byte v0, p0, Lccsancom/vungle/warren/model/Advertisement$Checkpoint;->percentage:B

    int-to-float v0, v0

    iget-byte v1, p1, Lccsancom/vungle/warren/model/Advertisement$Checkpoint;->percentage:B

    int-to-float v1, v1

    invoke-static {v0, v1}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 1109
    check-cast p1, Lccsancom/vungle/warren/model/Advertisement$Checkpoint;

    invoke-virtual {p0, p1}, Lccsancom/vungle/warren/model/Advertisement$Checkpoint;->compareTo(Lccsancom/vungle/warren/model/Advertisement$Checkpoint;)I

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "obj"    # Ljava/lang/Object;

    .line 1164
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 1165
    :cond_0
    instance-of v1, p1, Lccsancom/vungle/warren/model/Advertisement$Checkpoint;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 1167
    :cond_1
    move-object v1, p1

    check-cast v1, Lccsancom/vungle/warren/model/Advertisement$Checkpoint;

    .line 1169
    .local v1, "wrap":Lccsancom/vungle/warren/model/Advertisement$Checkpoint;
    iget-byte v3, v1, Lccsancom/vungle/warren/model/Advertisement$Checkpoint;->percentage:B

    iget-byte v4, p0, Lccsancom/vungle/warren/model/Advertisement$Checkpoint;->percentage:B

    if-eq v3, v4, :cond_2

    return v2

    .line 1170
    :cond_2
    iget-object v3, v1, Lccsancom/vungle/warren/model/Advertisement$Checkpoint;->urls:[Ljava/lang/String;

    array-length v3, v3

    iget-object v4, p0, Lccsancom/vungle/warren/model/Advertisement$Checkpoint;->urls:[Ljava/lang/String;

    array-length v4, v4

    if-eq v3, v4, :cond_3

    return v2

    .line 1172
    :cond_3
    const/4 v3, 0x0

    .local v3, "x":I
    :goto_0
    iget-object v4, p0, Lccsancom/vungle/warren/model/Advertisement$Checkpoint;->urls:[Ljava/lang/String;

    array-length v5, v4

    if-ge v3, v5, :cond_5

    .line 1173
    iget-object v5, v1, Lccsancom/vungle/warren/model/Advertisement$Checkpoint;->urls:[Ljava/lang/String;

    aget-object v5, v5, v3

    aget-object v4, v4, v3

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    return v2

    .line 1172
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1176
    .end local v3    # "x":I
    :cond_5
    return v0
.end method

.method public getPercentage()B
    .locals 1

    .line 1154
    iget-byte v0, p0, Lccsancom/vungle/warren/model/Advertisement$Checkpoint;->percentage:B

    return v0
.end method

.method public getUrls()[Ljava/lang/String;
    .locals 1

    .line 1150
    iget-object v0, p0, Lccsancom/vungle/warren/model/Advertisement$Checkpoint;->urls:[Ljava/lang/String;

    invoke-virtual {v0}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .line 1181
    iget-byte v0, p0, Lccsancom/vungle/warren/model/Advertisement$Checkpoint;->percentage:B

    .line 1182
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lccsancom/vungle/warren/model/Advertisement$Checkpoint;->urls:[Ljava/lang/String;

    array-length v3, v2

    add-int/2addr v1, v3

    .line 1183
    .end local v0    # "result":I
    .local v1, "result":I
    mul-int/lit8 v0, v1, 0x1f

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    .line 1184
    .end local v1    # "result":I
    .restart local v0    # "result":I
    return v0
.end method
