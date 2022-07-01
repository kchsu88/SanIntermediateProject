.class public final Lccsancom/google/gson/internal/bind/TreeTypeAdapter;
.super Lccsancom/google/gson/TypeAdapter;
.source "TreeTypeAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsancom/google/gson/internal/bind/TreeTypeAdapter$GsonContextImpl;,
        Lccsancom/google/gson/internal/bind/TreeTypeAdapter$SingleTypeFactory;
    }
.end annotation

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
.field private final context:Lccsancom/google/gson/internal/bind/TreeTypeAdapter$GsonContextImpl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lccsancom/google/gson/internal/bind/TreeTypeAdapter<",
            "TT;>.GsonContextImpl;"
        }
    .end annotation
.end field

.field private delegate:Lccsancom/google/gson/TypeAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lccsancom/google/gson/TypeAdapter<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final deserializer:Lccsancom/google/gson/JsonDeserializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lccsancom/google/gson/JsonDeserializer<",
            "TT;>;"
        }
    .end annotation
.end field

.field final gson:Lccsancom/google/gson/Gson;

.field private final serializer:Lccsancom/google/gson/JsonSerializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lccsancom/google/gson/JsonSerializer<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final skipPast:Lccsancom/google/gson/TypeAdapterFactory;

.field private final typeToken:Lccsancom/google/gson/reflect/TypeToken;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lccsancom/google/gson/reflect/TypeToken<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lccsancom/google/gson/JsonSerializer;Lccsancom/google/gson/JsonDeserializer;Lccsancom/google/gson/Gson;Lccsancom/google/gson/reflect/TypeToken;Lccsancom/google/gson/TypeAdapterFactory;)V
    .locals 2
    .param p3, "gson"    # Lccsancom/google/gson/Gson;
    .param p5, "skipPast"    # Lccsancom/google/gson/TypeAdapterFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/google/gson/JsonSerializer<",
            "TT;>;",
            "Lccsancom/google/gson/JsonDeserializer<",
            "TT;>;",
            "Lccsancom/google/gson/Gson;",
            "Lccsancom/google/gson/reflect/TypeToken<",
            "TT;>;",
            "Lccsancom/google/gson/TypeAdapterFactory;",
            ")V"
        }
    .end annotation

    .line 53
    .local p0, "this":Lccsancom/google/gson/internal/bind/TreeTypeAdapter;, "Lccsancom/google/gson/internal/bind/TreeTypeAdapter<TT;>;"
    .local p1, "serializer":Lccsancom/google/gson/JsonSerializer;, "Lccsancom/google/gson/JsonSerializer<TT;>;"
    .local p2, "deserializer":Lccsancom/google/gson/JsonDeserializer;, "Lccsancom/google/gson/JsonDeserializer<TT;>;"
    .local p4, "typeToken":Lccsancom/google/gson/reflect/TypeToken;, "Lccsancom/google/gson/reflect/TypeToken<TT;>;"
    invoke-direct {p0}, Lccsancom/google/gson/TypeAdapter;-><init>()V

    .line 47
    new-instance v0, Lccsancom/google/gson/internal/bind/TreeTypeAdapter$GsonContextImpl;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lccsancom/google/gson/internal/bind/TreeTypeAdapter$GsonContextImpl;-><init>(Lccsancom/google/gson/internal/bind/TreeTypeAdapter;Lccsancom/google/gson/internal/bind/TreeTypeAdapter$1;)V

    iput-object v0, p0, Lccsancom/google/gson/internal/bind/TreeTypeAdapter;->context:Lccsancom/google/gson/internal/bind/TreeTypeAdapter$GsonContextImpl;

    .line 54
    iput-object p1, p0, Lccsancom/google/gson/internal/bind/TreeTypeAdapter;->serializer:Lccsancom/google/gson/JsonSerializer;

    .line 55
    iput-object p2, p0, Lccsancom/google/gson/internal/bind/TreeTypeAdapter;->deserializer:Lccsancom/google/gson/JsonDeserializer;

    .line 56
    iput-object p3, p0, Lccsancom/google/gson/internal/bind/TreeTypeAdapter;->gson:Lccsancom/google/gson/Gson;

    .line 57
    iput-object p4, p0, Lccsancom/google/gson/internal/bind/TreeTypeAdapter;->typeToken:Lccsancom/google/gson/reflect/TypeToken;

    .line 58
    iput-object p5, p0, Lccsancom/google/gson/internal/bind/TreeTypeAdapter;->skipPast:Lccsancom/google/gson/TypeAdapterFactory;

    .line 59
    return-void
.end method

.method private delegate()Lccsancom/google/gson/TypeAdapter;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lccsancom/google/gson/TypeAdapter<",
            "TT;>;"
        }
    .end annotation

    .line 86
    .local p0, "this":Lccsancom/google/gson/internal/bind/TreeTypeAdapter;, "Lccsancom/google/gson/internal/bind/TreeTypeAdapter<TT;>;"
    iget-object v0, p0, Lccsancom/google/gson/internal/bind/TreeTypeAdapter;->delegate:Lccsancom/google/gson/TypeAdapter;

    .line 87
    .local v0, "d":Lccsancom/google/gson/TypeAdapter;, "Lccsancom/google/gson/TypeAdapter<TT;>;"
    if-eqz v0, :cond_0

    .line 88
    move-object v1, v0

    goto :goto_0

    .line 89
    :cond_0
    iget-object v1, p0, Lccsancom/google/gson/internal/bind/TreeTypeAdapter;->gson:Lccsancom/google/gson/Gson;

    iget-object v2, p0, Lccsancom/google/gson/internal/bind/TreeTypeAdapter;->skipPast:Lccsancom/google/gson/TypeAdapterFactory;

    iget-object v3, p0, Lccsancom/google/gson/internal/bind/TreeTypeAdapter;->typeToken:Lccsancom/google/gson/reflect/TypeToken;

    invoke-virtual {v1, v2, v3}, Lccsancom/google/gson/Gson;->getDelegateAdapter(Lccsancom/google/gson/TypeAdapterFactory;Lccsancom/google/gson/reflect/TypeToken;)Lccsancom/google/gson/TypeAdapter;

    move-result-object v1

    iput-object v1, p0, Lccsancom/google/gson/internal/bind/TreeTypeAdapter;->delegate:Lccsancom/google/gson/TypeAdapter;

    .line 87
    :goto_0
    return-object v1
.end method

.method public static newFactory(Lccsancom/google/gson/reflect/TypeToken;Ljava/lang/Object;)Lccsancom/google/gson/TypeAdapterFactory;
    .locals 3
    .param p1, "typeAdapter"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/google/gson/reflect/TypeToken<",
            "*>;",
            "Ljava/lang/Object;",
            ")",
            "Lccsancom/google/gson/TypeAdapterFactory;"
        }
    .end annotation

    .line 96
    .local p0, "exactType":Lccsancom/google/gson/reflect/TypeToken;, "Lccsancom/google/gson/reflect/TypeToken<*>;"
    new-instance v0, Lccsancom/google/gson/internal/bind/TreeTypeAdapter$SingleTypeFactory;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, p1, p0, v1, v2}, Lccsancom/google/gson/internal/bind/TreeTypeAdapter$SingleTypeFactory;-><init>(Ljava/lang/Object;Lccsancom/google/gson/reflect/TypeToken;ZLjava/lang/Class;)V

    return-object v0
.end method

.method public static newFactoryWithMatchRawType(Lccsancom/google/gson/reflect/TypeToken;Ljava/lang/Object;)Lccsancom/google/gson/TypeAdapterFactory;
    .locals 3
    .param p1, "typeAdapter"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/google/gson/reflect/TypeToken<",
            "*>;",
            "Ljava/lang/Object;",
            ")",
            "Lccsancom/google/gson/TypeAdapterFactory;"
        }
    .end annotation

    .line 106
    .local p0, "exactType":Lccsancom/google/gson/reflect/TypeToken;, "Lccsancom/google/gson/reflect/TypeToken<*>;"
    invoke-virtual {p0}, Lccsancom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-virtual {p0}, Lccsancom/google/gson/reflect/TypeToken;->getRawType()Ljava/lang/Class;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 107
    .local v0, "matchRawType":Z
    :goto_0
    new-instance v1, Lccsancom/google/gson/internal/bind/TreeTypeAdapter$SingleTypeFactory;

    const/4 v2, 0x0

    invoke-direct {v1, p1, p0, v0, v2}, Lccsancom/google/gson/internal/bind/TreeTypeAdapter$SingleTypeFactory;-><init>(Ljava/lang/Object;Lccsancom/google/gson/reflect/TypeToken;ZLjava/lang/Class;)V

    return-object v1
.end method

.method public static newTypeHierarchyFactory(Ljava/lang/Class;Ljava/lang/Object;)Lccsancom/google/gson/TypeAdapterFactory;
    .locals 3
    .param p1, "typeAdapter"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Object;",
            ")",
            "Lccsancom/google/gson/TypeAdapterFactory;"
        }
    .end annotation

    .line 116
    .local p0, "hierarchyType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v0, Lccsancom/google/gson/internal/bind/TreeTypeAdapter$SingleTypeFactory;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, p1, v1, v2, p0}, Lccsancom/google/gson/internal/bind/TreeTypeAdapter$SingleTypeFactory;-><init>(Ljava/lang/Object;Lccsancom/google/gson/reflect/TypeToken;ZLjava/lang/Class;)V

    return-object v0
.end method


# virtual methods
.method public read(Lccsancom/google/gson/stream/JsonReader;)Ljava/lang/Object;
    .locals 4
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

    .line 62
    .local p0, "this":Lccsancom/google/gson/internal/bind/TreeTypeAdapter;, "Lccsancom/google/gson/internal/bind/TreeTypeAdapter<TT;>;"
    iget-object v0, p0, Lccsancom/google/gson/internal/bind/TreeTypeAdapter;->deserializer:Lccsancom/google/gson/JsonDeserializer;

    if-nez v0, :cond_0

    .line 63
    invoke-direct {p0}, Lccsancom/google/gson/internal/bind/TreeTypeAdapter;->delegate()Lccsancom/google/gson/TypeAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lccsancom/google/gson/TypeAdapter;->read(Lccsancom/google/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 65
    :cond_0
    invoke-static {p1}, Lccsancom/google/gson/internal/Streams;->parse(Lccsancom/google/gson/stream/JsonReader;)Lccsancom/google/gson/JsonElement;

    move-result-object v0

    .line 66
    .local v0, "value":Lccsancom/google/gson/JsonElement;
    invoke-virtual {v0}, Lccsancom/google/gson/JsonElement;->isJsonNull()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 67
    const/4 v1, 0x0

    return-object v1

    .line 69
    :cond_1
    iget-object v1, p0, Lccsancom/google/gson/internal/bind/TreeTypeAdapter;->deserializer:Lccsancom/google/gson/JsonDeserializer;

    iget-object v2, p0, Lccsancom/google/gson/internal/bind/TreeTypeAdapter;->typeToken:Lccsancom/google/gson/reflect/TypeToken;

    invoke-virtual {v2}, Lccsancom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v2

    iget-object v3, p0, Lccsancom/google/gson/internal/bind/TreeTypeAdapter;->context:Lccsancom/google/gson/internal/bind/TreeTypeAdapter$GsonContextImpl;

    invoke-interface {v1, v0, v2, v3}, Lccsancom/google/gson/JsonDeserializer;->deserialize(Lccsancom/google/gson/JsonElement;Ljava/lang/reflect/Type;Lccsancom/google/gson/JsonDeserializationContext;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public write(Lccsancom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V
    .locals 3
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

    .line 73
    .local p0, "this":Lccsancom/google/gson/internal/bind/TreeTypeAdapter;, "Lccsancom/google/gson/internal/bind/TreeTypeAdapter<TT;>;"
    .local p2, "value":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lccsancom/google/gson/internal/bind/TreeTypeAdapter;->serializer:Lccsancom/google/gson/JsonSerializer;

    if-nez v0, :cond_0

    .line 74
    invoke-direct {p0}, Lccsancom/google/gson/internal/bind/TreeTypeAdapter;->delegate()Lccsancom/google/gson/TypeAdapter;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lccsancom/google/gson/TypeAdapter;->write(Lccsancom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V

    .line 75
    return-void

    .line 77
    :cond_0
    if-nez p2, :cond_1

    .line 78
    invoke-virtual {p1}, Lccsancom/google/gson/stream/JsonWriter;->nullValue()Lccsancom/google/gson/stream/JsonWriter;

    .line 79
    return-void

    .line 81
    :cond_1
    iget-object v1, p0, Lccsancom/google/gson/internal/bind/TreeTypeAdapter;->typeToken:Lccsancom/google/gson/reflect/TypeToken;

    invoke-virtual {v1}, Lccsancom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v1

    iget-object v2, p0, Lccsancom/google/gson/internal/bind/TreeTypeAdapter;->context:Lccsancom/google/gson/internal/bind/TreeTypeAdapter$GsonContextImpl;

    invoke-interface {v0, p2, v1, v2}, Lccsancom/google/gson/JsonSerializer;->serialize(Ljava/lang/Object;Ljava/lang/reflect/Type;Lccsancom/google/gson/JsonSerializationContext;)Lccsancom/google/gson/JsonElement;

    move-result-object v0

    .line 82
    .local v0, "tree":Lccsancom/google/gson/JsonElement;
    invoke-static {v0, p1}, Lccsancom/google/gson/internal/Streams;->write(Lccsancom/google/gson/JsonElement;Lccsancom/google/gson/stream/JsonWriter;)V

    .line 83
    return-void
.end method
