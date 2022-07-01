.class public Lccsancom/vungle/warren/model/CacheBust;
.super Ljava/lang/Object;
.source "CacheBust.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsancom/vungle/warren/model/CacheBust$EventType;
    }
.end annotation


# static fields
.field public static final EVENT_TYPE_CAMPAIGN:I = 0x1

.field public static final EVENT_TYPE_CREATIVE:I = 0x2

.field private static final TAG:Ljava/lang/String;


# instance fields
.field eventIds:[Ljava/lang/String;

.field id:Ljava/lang/String;
    .annotation runtime Lccsancom/google/gson/annotations/SerializedName;
        value = "id"
    .end annotation
.end field

.field idType:I

.field timeWindowEnd:J
    .annotation runtime Lccsancom/google/gson/annotations/SerializedName;
        value = "timestamp_bust_end"
    .end annotation
.end field

.field timestampProcessed:J
    .annotation runtime Lccsancom/google/gson/annotations/SerializedName;
        value = "timestamp_processed"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 24
    const-class v0, Lccsancom/vungle/warren/model/CacheBust;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lccsancom/vungle/warren/model/CacheBust;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fromJson(Lccsancom/google/gson/JsonObject;)Lccsancom/vungle/warren/model/CacheBust;
    .locals 2
    .param p0, "jsonObject"    # Lccsancom/google/gson/JsonObject;

    .line 122
    new-instance v0, Lccsancom/google/gson/GsonBuilder;

    invoke-direct {v0}, Lccsancom/google/gson/GsonBuilder;-><init>()V

    invoke-virtual {v0}, Lccsancom/google/gson/GsonBuilder;->create()Lccsancom/google/gson/Gson;

    move-result-object v0

    const-class v1, Lccsancom/vungle/warren/model/CacheBust;

    invoke-virtual {v0, p0, v1}, Lccsancom/google/gson/Gson;->fromJson(Lccsancom/google/gson/JsonElement;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsancom/vungle/warren/model/CacheBust;

    return-object v0
.end method


# virtual methods
.method public calculateId()Ljava/lang/String;
    .locals 3

    .line 78
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lccsancom/vungle/warren/model/CacheBust;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lccsancom/vungle/warren/model/CacheBust;->timeWindowEnd:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 8
    .param p1, "o"    # Ljava/lang/Object;

    .line 127
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 128
    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 129
    :cond_1
    move-object v2, p1

    check-cast v2, Lccsancom/vungle/warren/model/CacheBust;

    .line 130
    .local v2, "cacheBust":Lccsancom/vungle/warren/model/CacheBust;
    iget v3, p0, Lccsancom/vungle/warren/model/CacheBust;->idType:I

    iget v4, v2, Lccsancom/vungle/warren/model/CacheBust;->idType:I

    if-ne v3, v4, :cond_2

    iget-wide v3, p0, Lccsancom/vungle/warren/model/CacheBust;->timestampProcessed:J

    iget-wide v5, v2, Lccsancom/vungle/warren/model/CacheBust;->timestampProcessed:J

    cmp-long v7, v3, v5

    if-nez v7, :cond_2

    iget-object v3, p0, Lccsancom/vungle/warren/model/CacheBust;->id:Ljava/lang/String;

    iget-object v4, v2, Lccsancom/vungle/warren/model/CacheBust;->id:Ljava/lang/String;

    .line 132
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-wide v3, p0, Lccsancom/vungle/warren/model/CacheBust;->timeWindowEnd:J

    iget-wide v5, v2, Lccsancom/vungle/warren/model/CacheBust;->timeWindowEnd:J

    cmp-long v7, v3, v5

    if-nez v7, :cond_2

    iget-object v3, p0, Lccsancom/vungle/warren/model/CacheBust;->eventIds:[Ljava/lang/String;

    iget-object v4, v2, Lccsancom/vungle/warren/model/CacheBust;->eventIds:[Ljava/lang/String;

    .line 134
    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .line 130
    :goto_0
    return v0

    .line 128
    .end local v2    # "cacheBust":Lccsancom/vungle/warren/model/CacheBust;
    :cond_3
    :goto_1
    return v1
.end method

.method public getEventIds()[Ljava/lang/String;
    .locals 1

    .line 106
    iget-object v0, p0, Lccsancom/vungle/warren/model/CacheBust;->eventIds:[Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 82
    iget-object v0, p0, Lccsancom/vungle/warren/model/CacheBust;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getIdType()I
    .locals 1

    .line 98
    iget v0, p0, Lccsancom/vungle/warren/model/CacheBust;->idType:I

    return v0
.end method

.method public getTimeWindowEnd()J
    .locals 2

    .line 90
    iget-wide v0, p0, Lccsancom/vungle/warren/model/CacheBust;->timeWindowEnd:J

    return-wide v0
.end method

.method public getTimestampProcessed()J
    .locals 2

    .line 114
    iget-wide v0, p0, Lccsancom/vungle/warren/model/CacheBust;->timestampProcessed:J

    return-wide v0
.end method

.method public hashCode()I
    .locals 3

    .line 140
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lccsancom/vungle/warren/model/CacheBust;->id:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-wide v1, p0, Lccsancom/vungle/warren/model/CacheBust;->timeWindowEnd:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget v1, p0, Lccsancom/vungle/warren/model/CacheBust;->idType:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-wide v1, p0, Lccsancom/vungle/warren/model/CacheBust;->timestampProcessed:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    .line 141
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lccsancom/vungle/warren/model/CacheBust;->eventIds:[Ljava/lang/String;

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v1, v2

    .line 142
    .end local v0    # "result":I
    .local v1, "result":I
    return v1
.end method

.method public setEventIds([Ljava/lang/String;)V
    .locals 0
    .param p1, "eventIds"    # [Ljava/lang/String;

    .line 110
    iput-object p1, p0, Lccsancom/vungle/warren/model/CacheBust;->eventIds:[Ljava/lang/String;

    .line 111
    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;

    .line 86
    iput-object p1, p0, Lccsancom/vungle/warren/model/CacheBust;->id:Ljava/lang/String;

    .line 87
    return-void
.end method

.method public setIdType(I)V
    .locals 0
    .param p1, "idType"    # I

    .line 102
    iput p1, p0, Lccsancom/vungle/warren/model/CacheBust;->idType:I

    .line 103
    return-void
.end method

.method public setTimeWindowEnd(J)V
    .locals 0
    .param p1, "timeWindowEnd"    # J

    .line 94
    iput-wide p1, p0, Lccsancom/vungle/warren/model/CacheBust;->timeWindowEnd:J

    .line 95
    return-void
.end method

.method public setTimestampProcessed(J)V
    .locals 0
    .param p1, "timestampProcessed"    # J

    .line 118
    iput-wide p1, p0, Lccsancom/vungle/warren/model/CacheBust;->timestampProcessed:J

    .line 119
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 147
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CacheBust{id=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lccsancom/vungle/warren/model/CacheBust;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", timeWindowEnd="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lccsancom/vungle/warren/model/CacheBust;->timeWindowEnd:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", idType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lccsancom/vungle/warren/model/CacheBust;->idType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", eventIds="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lccsancom/vungle/warren/model/CacheBust;->eventIds:[Ljava/lang/String;

    .line 151
    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", timestampProcessed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lccsancom/vungle/warren/model/CacheBust;->timestampProcessed:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 147
    return-object v0
.end method
