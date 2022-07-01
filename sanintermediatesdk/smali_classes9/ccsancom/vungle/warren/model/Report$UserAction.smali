.class public Lccsancom/vungle/warren/model/Report$UserAction;
.super Ljava/lang/Object;
.source "Report.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/vungle/warren/model/Report;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UserAction"
.end annotation


# instance fields
.field private action:Ljava/lang/String;
    .annotation runtime Lccsancom/google/gson/annotations/SerializedName;
        value = "action"
    .end annotation
.end field

.field private timestamp:J
    .annotation runtime Lccsancom/google/gson/annotations/SerializedName;
        value = "timestamp"
    .end annotation
.end field

.field private value:Ljava/lang/String;
    .annotation runtime Lccsancom/google/gson/annotations/SerializedName;
        value = "value"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 0
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "timestamp"    # J

    .line 479
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 480
    iput-object p1, p0, Lccsancom/vungle/warren/model/Report$UserAction;->action:Ljava/lang/String;

    .line 481
    iput-object p2, p0, Lccsancom/vungle/warren/model/Report$UserAction;->value:Ljava/lang/String;

    .line 482
    iput-wide p3, p0, Lccsancom/vungle/warren/model/Report$UserAction;->timestamp:J

    .line 483
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 8
    .param p1, "obj"    # Ljava/lang/Object;

    .line 487
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 488
    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_5

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_0

    .line 490
    :cond_1
    move-object v2, p1

    check-cast v2, Lccsancom/vungle/warren/model/Report$UserAction;

    .line 492
    .local v2, "wrap":Lccsancom/vungle/warren/model/Report$UserAction;
    iget-object v3, v2, Lccsancom/vungle/warren/model/Report$UserAction;->action:Ljava/lang/String;

    iget-object v4, p0, Lccsancom/vungle/warren/model/Report$UserAction;->action:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    return v1

    .line 493
    :cond_2
    iget-object v3, v2, Lccsancom/vungle/warren/model/Report$UserAction;->value:Ljava/lang/String;

    iget-object v4, p0, Lccsancom/vungle/warren/model/Report$UserAction;->value:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    return v1

    .line 494
    :cond_3
    iget-wide v3, v2, Lccsancom/vungle/warren/model/Report$UserAction;->timestamp:J

    iget-wide v5, p0, Lccsancom/vungle/warren/model/Report$UserAction;->timestamp:J

    cmp-long v7, v3, v5

    if-eqz v7, :cond_4

    return v1

    .line 496
    :cond_4
    return v0

    .line 488
    .end local v2    # "wrap":Lccsancom/vungle/warren/model/Report$UserAction;
    :cond_5
    :goto_0
    return v1
.end method

.method public hashCode()I
    .locals 6

    .line 501
    iget-object v0, p0, Lccsancom/vungle/warren/model/Report$UserAction;->action:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 502
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lccsancom/vungle/warren/model/Report$UserAction;->value:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    .line 503
    .end local v0    # "result":I
    .local v1, "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget-wide v2, p0, Lccsancom/vungle/warren/model/Report$UserAction;->timestamp:J

    const/16 v4, 0x20

    ushr-long v4, v2, v4

    xor-long/2addr v2, v4

    long-to-int v3, v2

    add-int/2addr v0, v3

    .line 504
    .end local v1    # "result":I
    .restart local v0    # "result":I
    return v0
.end method

.method public toJson()Lccsancom/google/gson/JsonObject;
    .locals 3

    .line 508
    new-instance v0, Lccsancom/google/gson/JsonObject;

    invoke-direct {v0}, Lccsancom/google/gson/JsonObject;-><init>()V

    .line 509
    .local v0, "ret":Lccsancom/google/gson/JsonObject;
    iget-object v1, p0, Lccsancom/vungle/warren/model/Report$UserAction;->action:Ljava/lang/String;

    const-string v2, "action"

    invoke-virtual {v0, v2, v1}, Lccsancom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 512
    iget-object v1, p0, Lccsancom/vungle/warren/model/Report$UserAction;->value:Ljava/lang/String;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 513
    iget-object v1, p0, Lccsancom/vungle/warren/model/Report$UserAction;->value:Ljava/lang/String;

    const-string v2, "value"

    invoke-virtual {v0, v2, v1}, Lccsancom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 516
    :cond_0
    iget-wide v1, p0, Lccsancom/vungle/warren/model/Report$UserAction;->timestamp:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "timestamp_millis"

    invoke-virtual {v0, v2, v1}, Lccsancom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 518
    return-object v0
.end method
