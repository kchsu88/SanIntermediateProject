.class final Lccsancom/google/gson/internal/bind/CollectionTypeAdapterFactory$Adapter;
.super Lccsancom/google/gson/TypeAdapter;
.source "CollectionTypeAdapterFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/google/gson/internal/bind/CollectionTypeAdapterFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Adapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lccsancom/google/gson/TypeAdapter<",
        "Ljava/util/Collection<",
        "TE;>;>;"
    }
.end annotation


# instance fields
.field private final constructor:Lccsancom/google/gson/internal/ObjectConstructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lccsancom/google/gson/internal/ObjectConstructor<",
            "+",
            "Ljava/util/Collection<",
            "TE;>;>;"
        }
    .end annotation
.end field

.field private final elementTypeAdapter:Lccsancom/google/gson/TypeAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lccsancom/google/gson/TypeAdapter<",
            "TE;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lccsancom/google/gson/Gson;Ljava/lang/reflect/Type;Lccsancom/google/gson/TypeAdapter;Lccsancom/google/gson/internal/ObjectConstructor;)V
    .locals 1
    .param p1, "context"    # Lccsancom/google/gson/Gson;
    .param p2, "elementType"    # Ljava/lang/reflect/Type;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/google/gson/Gson;",
            "Ljava/lang/reflect/Type;",
            "Lccsancom/google/gson/TypeAdapter<",
            "TE;>;",
            "Lccsancom/google/gson/internal/ObjectConstructor<",
            "+",
            "Ljava/util/Collection<",
            "TE;>;>;)V"
        }
    .end annotation

    .line 67
    .local p0, "this":Lccsancom/google/gson/internal/bind/CollectionTypeAdapterFactory$Adapter;, "Lccsancom/google/gson/internal/bind/CollectionTypeAdapterFactory$Adapter<TE;>;"
    .local p3, "elementTypeAdapter":Lccsancom/google/gson/TypeAdapter;, "Lccsancom/google/gson/TypeAdapter<TE;>;"
    .local p4, "constructor":Lccsancom/google/gson/internal/ObjectConstructor;, "Lccsancom/google/gson/internal/ObjectConstructor<+Ljava/util/Collection<TE;>;>;"
    invoke-direct {p0}, Lccsancom/google/gson/TypeAdapter;-><init>()V

    .line 68
    new-instance v0, Lccsancom/google/gson/internal/bind/TypeAdapterRuntimeTypeWrapper;

    invoke-direct {v0, p1, p3, p2}, Lccsancom/google/gson/internal/bind/TypeAdapterRuntimeTypeWrapper;-><init>(Lccsancom/google/gson/Gson;Lccsancom/google/gson/TypeAdapter;Ljava/lang/reflect/Type;)V

    iput-object v0, p0, Lccsancom/google/gson/internal/bind/CollectionTypeAdapterFactory$Adapter;->elementTypeAdapter:Lccsancom/google/gson/TypeAdapter;

    .line 70
    iput-object p4, p0, Lccsancom/google/gson/internal/bind/CollectionTypeAdapterFactory$Adapter;->constructor:Lccsancom/google/gson/internal/ObjectConstructor;

    .line 71
    return-void
.end method


# virtual methods
.method public bridge synthetic read(Lccsancom/google/gson/stream/JsonReader;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 61
    .local p0, "this":Lccsancom/google/gson/internal/bind/CollectionTypeAdapterFactory$Adapter;, "Lccsancom/google/gson/internal/bind/CollectionTypeAdapterFactory$Adapter<TE;>;"
    invoke-virtual {p0, p1}, Lccsancom/google/gson/internal/bind/CollectionTypeAdapterFactory$Adapter;->read(Lccsancom/google/gson/stream/JsonReader;)Ljava/util/Collection;

    move-result-object p1

    return-object p1
.end method

.method public read(Lccsancom/google/gson/stream/JsonReader;)Ljava/util/Collection;
    .locals 2
    .param p1, "in"    # Lccsancom/google/gson/stream/JsonReader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/google/gson/stream/JsonReader;",
            ")",
            "Ljava/util/Collection<",
            "TE;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 74
    .local p0, "this":Lccsancom/google/gson/internal/bind/CollectionTypeAdapterFactory$Adapter;, "Lccsancom/google/gson/internal/bind/CollectionTypeAdapterFactory$Adapter<TE;>;"
    invoke-virtual {p1}, Lccsancom/google/gson/stream/JsonReader;->peek()Lccsancom/google/gson/stream/JsonToken;

    move-result-object v0

    sget-object v1, Lccsancom/google/gson/stream/JsonToken;->NULL:Lccsancom/google/gson/stream/JsonToken;

    if-ne v0, v1, :cond_0

    .line 75
    invoke-virtual {p1}, Lccsancom/google/gson/stream/JsonReader;->nextNull()V

    .line 76
    const/4 v0, 0x0

    return-object v0

    .line 79
    :cond_0
    iget-object v0, p0, Lccsancom/google/gson/internal/bind/CollectionTypeAdapterFactory$Adapter;->constructor:Lccsancom/google/gson/internal/ObjectConstructor;

    invoke-interface {v0}, Lccsancom/google/gson/internal/ObjectConstructor;->construct()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    .line 80
    .local v0, "collection":Ljava/util/Collection;, "Ljava/util/Collection<TE;>;"
    invoke-virtual {p1}, Lccsancom/google/gson/stream/JsonReader;->beginArray()V

    .line 81
    :goto_0
    invoke-virtual {p1}, Lccsancom/google/gson/stream/JsonReader;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 82
    iget-object v1, p0, Lccsancom/google/gson/internal/bind/CollectionTypeAdapterFactory$Adapter;->elementTypeAdapter:Lccsancom/google/gson/TypeAdapter;

    invoke-virtual {v1, p1}, Lccsancom/google/gson/TypeAdapter;->read(Lccsancom/google/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object v1

    .line 83
    .local v1, "instance":Ljava/lang/Object;, "TE;"
    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 84
    .end local v1    # "instance":Ljava/lang/Object;, "TE;"
    goto :goto_0

    .line 85
    :cond_1
    invoke-virtual {p1}, Lccsancom/google/gson/stream/JsonReader;->endArray()V

    .line 86
    return-object v0
.end method

.method public bridge synthetic write(Lccsancom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 61
    .local p0, "this":Lccsancom/google/gson/internal/bind/CollectionTypeAdapterFactory$Adapter;, "Lccsancom/google/gson/internal/bind/CollectionTypeAdapterFactory$Adapter<TE;>;"
    check-cast p2, Ljava/util/Collection;

    invoke-virtual {p0, p1, p2}, Lccsancom/google/gson/internal/bind/CollectionTypeAdapterFactory$Adapter;->write(Lccsancom/google/gson/stream/JsonWriter;Ljava/util/Collection;)V

    return-void
.end method

.method public write(Lccsancom/google/gson/stream/JsonWriter;Ljava/util/Collection;)V
    .locals 3
    .param p1, "out"    # Lccsancom/google/gson/stream/JsonWriter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/google/gson/stream/JsonWriter;",
            "Ljava/util/Collection<",
            "TE;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 90
    .local p0, "this":Lccsancom/google/gson/internal/bind/CollectionTypeAdapterFactory$Adapter;, "Lccsancom/google/gson/internal/bind/CollectionTypeAdapterFactory$Adapter<TE;>;"
    .local p2, "collection":Ljava/util/Collection;, "Ljava/util/Collection<TE;>;"
    if-nez p2, :cond_0

    .line 91
    invoke-virtual {p1}, Lccsancom/google/gson/stream/JsonWriter;->nullValue()Lccsancom/google/gson/stream/JsonWriter;

    .line 92
    return-void

    .line 95
    :cond_0
    invoke-virtual {p1}, Lccsancom/google/gson/stream/JsonWriter;->beginArray()Lccsancom/google/gson/stream/JsonWriter;

    .line 96
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 97
    .local v1, "element":Ljava/lang/Object;, "TE;"
    iget-object v2, p0, Lccsancom/google/gson/internal/bind/CollectionTypeAdapterFactory$Adapter;->elementTypeAdapter:Lccsancom/google/gson/TypeAdapter;

    invoke-virtual {v2, p1, v1}, Lccsancom/google/gson/TypeAdapter;->write(Lccsancom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V

    .line 98
    .end local v1    # "element":Ljava/lang/Object;, "TE;"
    goto :goto_0

    .line 99
    :cond_1
    invoke-virtual {p1}, Lccsancom/google/gson/stream/JsonWriter;->endArray()Lccsancom/google/gson/stream/JsonWriter;

    .line 100
    return-void
.end method
