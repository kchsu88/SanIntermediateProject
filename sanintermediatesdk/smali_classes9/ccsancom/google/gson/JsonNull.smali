.class public final Lccsancom/google/gson/JsonNull;
.super Lccsancom/google/gson/JsonElement;
.source "JsonNull.java"


# static fields
.field public static final INSTANCE:Lccsancom/google/gson/JsonNull;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 32
    new-instance v0, Lccsancom/google/gson/JsonNull;

    invoke-direct {v0}, Lccsancom/google/gson/JsonNull;-><init>()V

    sput-object v0, Lccsancom/google/gson/JsonNull;->INSTANCE:Lccsancom/google/gson/JsonNull;

    return-void
.end method

.method public constructor <init>()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 39
    invoke-direct {p0}, Lccsancom/google/gson/JsonElement;-><init>()V

    .line 41
    return-void
.end method


# virtual methods
.method public bridge synthetic deepCopy()Lccsancom/google/gson/JsonElement;
    .locals 1

    .line 26
    invoke-virtual {p0}, Lccsancom/google/gson/JsonNull;->deepCopy()Lccsancom/google/gson/JsonNull;

    move-result-object v0

    return-object v0
.end method

.method public deepCopy()Lccsancom/google/gson/JsonNull;
    .locals 1

    .line 49
    sget-object v0, Lccsancom/google/gson/JsonNull;->INSTANCE:Lccsancom/google/gson/JsonNull;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "other"    # Ljava/lang/Object;

    .line 65
    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lccsancom/google/gson/JsonNull;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public hashCode()I
    .locals 1

    .line 57
    const-class v0, Lccsancom/google/gson/JsonNull;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method
