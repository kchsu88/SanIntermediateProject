.class final enum Lccsancom/google/gson/LongSerializationPolicy$1;
.super Lccsancom/google/gson/LongSerializationPolicy;
.source "LongSerializationPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/google/gson/LongSerializationPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4010
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1

    .line 34
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lccsancom/google/gson/LongSerializationPolicy;-><init>(Ljava/lang/String;ILccsancom/google/gson/LongSerializationPolicy$1;)V

    return-void
.end method


# virtual methods
.method public serialize(Ljava/lang/Long;)Lccsancom/google/gson/JsonElement;
    .locals 1
    .param p1, "value"    # Ljava/lang/Long;

    .line 36
    new-instance v0, Lccsancom/google/gson/JsonPrimitive;

    invoke-direct {v0, p1}, Lccsancom/google/gson/JsonPrimitive;-><init>(Ljava/lang/Number;)V

    return-object v0
.end method
