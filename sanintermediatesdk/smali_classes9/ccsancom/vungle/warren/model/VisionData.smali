.class public Lccsancom/vungle/warren/model/VisionData;
.super Ljava/lang/Object;
.source "VisionData.java"


# instance fields
.field public advertiser:Ljava/lang/String;

.field public campaign:Ljava/lang/String;

.field public creative:Ljava/lang/String;

.field public timestamp:J


# direct methods
.method public constructor <init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "timestamp"    # J
    .param p3, "creative"    # Ljava/lang/String;
    .param p4, "campaign"    # Ljava/lang/String;
    .param p5, "advertiser"    # Ljava/lang/String;

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-wide p1, p0, Lccsancom/vungle/warren/model/VisionData;->timestamp:J

    .line 15
    iput-object p3, p0, Lccsancom/vungle/warren/model/VisionData;->creative:Ljava/lang/String;

    .line 16
    iput-object p4, p0, Lccsancom/vungle/warren/model/VisionData;->campaign:Ljava/lang/String;

    .line 17
    iput-object p5, p0, Lccsancom/vungle/warren/model/VisionData;->advertiser:Ljava/lang/String;

    .line 18
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 8
    .param p1, "o"    # Ljava/lang/Object;

    .line 22
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 23
    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_9

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_3

    .line 25
    :cond_1
    move-object v2, p1

    check-cast v2, Lccsancom/vungle/warren/model/VisionData;

    .line 27
    .local v2, "data":Lccsancom/vungle/warren/model/VisionData;
    iget-wide v3, p0, Lccsancom/vungle/warren/model/VisionData;->timestamp:J

    iget-wide v5, v2, Lccsancom/vungle/warren/model/VisionData;->timestamp:J

    cmp-long v7, v3, v5

    if-eqz v7, :cond_2

    return v1

    .line 28
    :cond_2
    iget-object v3, p0, Lccsancom/vungle/warren/model/VisionData;->creative:Ljava/lang/String;

    if-eqz v3, :cond_3

    iget-object v4, v2, Lccsancom/vungle/warren/model/VisionData;->creative:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    goto :goto_0

    :cond_3
    iget-object v3, v2, Lccsancom/vungle/warren/model/VisionData;->creative:Ljava/lang/String;

    if-eqz v3, :cond_4

    .line 29
    :goto_0
    return v1

    .line 30
    :cond_4
    iget-object v3, p0, Lccsancom/vungle/warren/model/VisionData;->campaign:Ljava/lang/String;

    if-eqz v3, :cond_5

    iget-object v4, v2, Lccsancom/vungle/warren/model/VisionData;->campaign:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    goto :goto_1

    :cond_5
    iget-object v3, v2, Lccsancom/vungle/warren/model/VisionData;->campaign:Ljava/lang/String;

    if-eqz v3, :cond_6

    .line 31
    :goto_1
    return v1

    .line 32
    :cond_6
    iget-object v3, p0, Lccsancom/vungle/warren/model/VisionData;->advertiser:Ljava/lang/String;

    if-eqz v3, :cond_7

    iget-object v0, v2, Lccsancom/vungle/warren/model/VisionData;->advertiser:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_2

    :cond_7
    iget-object v3, v2, Lccsancom/vungle/warren/model/VisionData;->advertiser:Ljava/lang/String;

    if-nez v3, :cond_8

    goto :goto_2

    :cond_8
    const/4 v0, 0x0

    :goto_2
    return v0

    .line 23
    .end local v2    # "data":Lccsancom/vungle/warren/model/VisionData;
    :cond_9
    :goto_3
    return v1
.end method

.method public hashCode()I
    .locals 4

    .line 37
    iget-wide v0, p0, Lccsancom/vungle/warren/model/VisionData;->timestamp:J

    const/16 v2, 0x20

    ushr-long v2, v0, v2

    xor-long/2addr v0, v2

    long-to-int v1, v0

    .line 38
    .local v1, "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Lccsancom/vungle/warren/model/VisionData;->creative:Ljava/lang/String;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    add-int/2addr v0, v2

    .line 39
    .end local v1    # "result":I
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lccsancom/vungle/warren/model/VisionData;->campaign:Ljava/lang/String;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    add-int/2addr v1, v2

    .line 40
    .end local v0    # "result":I
    .restart local v1    # "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Lccsancom/vungle/warren/model/VisionData;->advertiser:Ljava/lang/String;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v3

    :cond_2
    add-int/2addr v0, v3

    .line 41
    .end local v1    # "result":I
    .restart local v0    # "result":I
    return v0
.end method
