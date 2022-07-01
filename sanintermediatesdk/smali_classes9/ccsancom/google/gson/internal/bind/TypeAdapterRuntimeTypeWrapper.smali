.class final Lccsancom/google/gson/internal/bind/TypeAdapterRuntimeTypeWrapper;
.super Lccsancom/google/gson/TypeAdapter;
.source "TypeAdapterRuntimeTypeWrapper.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lccsancom/google/gson/TypeAdapter<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final context:Lccsancom/google/gson/Gson;

.field private final delegate:Lccsancom/google/gson/TypeAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lccsancom/google/gson/TypeAdapter<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final type:Ljava/lang/reflect/Type;


# direct methods
.method constructor <init>(Lccsancom/google/gson/Gson;Lccsancom/google/gson/TypeAdapter;Ljava/lang/reflect/Type;)V
    .locals 0
    .param p1, "context"    # Lccsancom/google/gson/Gson;
    .param p3, "type"    # Ljava/lang/reflect/Type;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/google/gson/Gson;",
            "Lccsancom/google/gson/TypeAdapter<",
            "TT;>;",
            "Ljava/lang/reflect/Type;",
            ")V"
        }
    .end annotation

    .line 33
    .local p0, "this":Lccsancom/google/gson/internal/bind/TypeAdapterRuntimeTypeWrapper;, "Lccsancom/google/gson/internal/bind/TypeAdapterRuntimeTypeWrapper<TT;>;"
    .local p2, "delegate":Lccsancom/google/gson/TypeAdapter;, "Lccsancom/google/gson/TypeAdapter<TT;>;"
    invoke-direct {p0}, Lccsancom/google/gson/TypeAdapter;-><init>()V

    .line 34
    iput-object p1, p0, Lccsancom/google/gson/internal/bind/TypeAdapterRuntimeTypeWrapper;->context:Lccsancom/google/gson/Gson;

    .line 35
    iput-object p2, p0, Lccsancom/google/gson/internal/bind/TypeAdapterRuntimeTypeWrapper;->delegate:Lccsancom/google/gson/TypeAdapter;

    .line 36
    iput-object p3, p0, Lccsancom/google/gson/internal/bind/TypeAdapterRuntimeTypeWrapper;->type:Ljava/lang/reflect/Type;

    .line 37
    return-void
.end method

.method private getRuntimeTypeIfMoreSpecific(Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/reflect/Type;
    .locals 1
    .param p1, "type"    # Ljava/lang/reflect/Type;
    .param p2, "value"    # Ljava/lang/Object;

    .line 76
    .local p0, "this":Lccsancom/google/gson/internal/bind/TypeAdapterRuntimeTypeWrapper;, "Lccsancom/google/gson/internal/bind/TypeAdapterRuntimeTypeWrapper<TT;>;"
    if-eqz p2, :cond_1

    const-class v0, Ljava/lang/Object;

    if-eq p1, v0, :cond_0

    instance-of v0, p1, Ljava/lang/reflect/TypeVariable;

    if-nez v0, :cond_0

    instance-of v0, p1, Ljava/lang/Class;

    if-eqz v0, :cond_1

    .line 78
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    .line 80
    :cond_1
    return-object p1
.end method


# virtual methods
.method public read(Lccsancom/google/gson/stream/JsonReader;)Ljava/lang/Object;
    .locals 1
    .param p1, "in"    # Lccsancom/google/gson/stream/JsonReader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/google/gson/stream/JsonReader;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 41
    .local p0, "this":Lccsancom/google/gson/internal/bind/TypeAdapterRuntimeTypeWrapper;, "Lccsancom/google/gson/internal/bind/TypeAdapterRuntimeTypeWrapper<TT;>;"
    iget-object v0, p0, Lccsancom/google/gson/internal/bind/TypeAdapterRuntimeTypeWrapper;->delegate:Lccsancom/google/gson/TypeAdapter;

    invoke-virtual {v0, p1}, Lccsancom/google/gson/TypeAdapter;->read(Lccsancom/google/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public write(Lccsancom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V
    .locals 4
    .param p1, "out"    # Lccsancom/google/gson/stream/JsonWriter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/google/gson/stream/JsonWriter;",
            "TT;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 53
    .local p0, "this":Lccsancom/google/gson/internal/bind/TypeAdapterRuntimeTypeWrapper;, "Lccsancom/google/gson/internal/bind/TypeAdapterRuntimeTypeWrapper<TT;>;"
    .local p2, "value":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lccsancom/google/gson/internal/bind/TypeAdapterRuntimeTypeWrapper;->delegate:Lccsancom/google/gson/TypeAdapter;

    .line 54
    .local v0, "chosen":Lccsancom/google/gson/TypeAdapter;
    iget-object v1, p0, Lccsancom/google/gson/internal/bind/TypeAdapterRuntimeTypeWrapper;->type:Ljava/lang/reflect/Type;

    invoke-direct {p0, v1, p2}, Lccsancom/google/gson/internal/bind/TypeAdapterRuntimeTypeWrapper;->getRuntimeTypeIfMoreSpecific(Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/reflect/Type;

    move-result-object v1

    .line 55
    .local v1, "runtimeType":Ljava/lang/reflect/Type;
    iget-object v2, p0, Lccsancom/google/gson/internal/bind/TypeAdapterRuntimeTypeWrapper;->type:Ljava/lang/reflect/Type;

    if-eq v1, v2, :cond_2

    .line 56
    iget-object v2, p0, Lccsancom/google/gson/internal/bind/TypeAdapterRuntimeTypeWrapper;->context:Lccsancom/google/gson/Gson;

    invoke-static {v1}, Lccsancom/google/gson/reflect/TypeToken;->get(Ljava/lang/reflect/Type;)Lccsancom/google/gson/reflect/TypeToken;

    move-result-object v3

    invoke-virtual {v2, v3}, Lccsancom/google/gson/Gson;->getAdapter(Lccsancom/google/gson/reflect/TypeToken;)Lccsancom/google/gson/TypeAdapter;

    move-result-object v2

    .line 57
    .local v2, "runtimeTypeAdapter":Lccsancom/google/gson/TypeAdapter;
    instance-of v3, v2, Lccsancom/google/gson/internal/bind/ReflectiveTypeAdapterFactory$Adapter;

    if-nez v3, :cond_0

    .line 59
    move-object v0, v2

    goto :goto_0

    .line 60
    :cond_0
    iget-object v3, p0, Lccsancom/google/gson/internal/bind/TypeAdapterRuntimeTypeWrapper;->delegate:Lccsancom/google/gson/TypeAdapter;

    instance-of v3, v3, Lccsancom/google/gson/internal/bind/ReflectiveTypeAdapterFactory$Adapter;

    if-nez v3, :cond_1

    .line 63
    iget-object v0, p0, Lccsancom/google/gson/internal/bind/TypeAdapterRuntimeTypeWrapper;->delegate:Lccsancom/google/gson/TypeAdapter;

    goto :goto_0

    .line 66
    :cond_1
    move-object v0, v2

    .line 69
    .end local v2    # "runtimeTypeAdapter":Lccsancom/google/gson/TypeAdapter;
    :cond_2
    :goto_0
    invoke-virtual {v0, p1, p2}, Lccsancom/google/gson/TypeAdapter;->write(Lccsancom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V

    .line 70
    return-void
.end method
