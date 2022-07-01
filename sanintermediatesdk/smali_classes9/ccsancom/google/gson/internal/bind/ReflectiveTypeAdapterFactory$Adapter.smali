.class public final Lccsancom/google/gson/internal/bind/ReflectiveTypeAdapterFactory$Adapter;
.super Lccsancom/google/gson/TypeAdapter;
.source "ReflectiveTypeAdapterFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/google/gson/internal/bind/ReflectiveTypeAdapterFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Adapter"
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
.field private final boundFields:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lccsancom/google/gson/internal/bind/ReflectiveTypeAdapterFactory$BoundField;",
            ">;"
        }
    .end annotation
.end field

.field private final constructor:Lccsancom/google/gson/internal/ObjectConstructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lccsancom/google/gson/internal/ObjectConstructor<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lccsancom/google/gson/internal/ObjectConstructor;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/google/gson/internal/ObjectConstructor<",
            "TT;>;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lccsancom/google/gson/internal/bind/ReflectiveTypeAdapterFactory$BoundField;",
            ">;)V"
        }
    .end annotation

    .line 201
    .local p0, "this":Lccsancom/google/gson/internal/bind/ReflectiveTypeAdapterFactory$Adapter;, "Lccsancom/google/gson/internal/bind/ReflectiveTypeAdapterFactory$Adapter<TT;>;"
    .local p1, "constructor":Lccsancom/google/gson/internal/ObjectConstructor;, "Lccsancom/google/gson/internal/ObjectConstructor<TT;>;"
    .local p2, "boundFields":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lccsancom/google/gson/internal/bind/ReflectiveTypeAdapterFactory$BoundField;>;"
    invoke-direct {p0}, Lccsancom/google/gson/TypeAdapter;-><init>()V

    .line 202
    iput-object p1, p0, Lccsancom/google/gson/internal/bind/ReflectiveTypeAdapterFactory$Adapter;->constructor:Lccsancom/google/gson/internal/ObjectConstructor;

    .line 203
    iput-object p2, p0, Lccsancom/google/gson/internal/bind/ReflectiveTypeAdapterFactory$Adapter;->boundFields:Ljava/util/Map;

    .line 204
    return-void
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

    .line 207
    .local p0, "this":Lccsancom/google/gson/internal/bind/ReflectiveTypeAdapterFactory$Adapter;, "Lccsancom/google/gson/internal/bind/ReflectiveTypeAdapterFactory$Adapter<TT;>;"
    invoke-virtual {p1}, Lccsancom/google/gson/stream/JsonReader;->peek()Lccsancom/google/gson/stream/JsonToken;

    move-result-object v0

    sget-object v1, Lccsancom/google/gson/stream/JsonToken;->NULL:Lccsancom/google/gson/stream/JsonToken;

    if-ne v0, v1, :cond_0

    .line 208
    invoke-virtual {p1}, Lccsancom/google/gson/stream/JsonReader;->nextNull()V

    .line 209
    const/4 v0, 0x0

    return-object v0

    .line 212
    :cond_0
    iget-object v0, p0, Lccsancom/google/gson/internal/bind/ReflectiveTypeAdapterFactory$Adapter;->constructor:Lccsancom/google/gson/internal/ObjectConstructor;

    invoke-interface {v0}, Lccsancom/google/gson/internal/ObjectConstructor;->construct()Ljava/lang/Object;

    move-result-object v0

    .line 215
    .local v0, "instance":Ljava/lang/Object;, "TT;"
    :try_start_0
    invoke-virtual {p1}, Lccsancom/google/gson/stream/JsonReader;->beginObject()V

    .line 216
    :goto_0
    invoke-virtual {p1}, Lccsancom/google/gson/stream/JsonReader;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 217
    invoke-virtual {p1}, Lccsancom/google/gson/stream/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v1

    .line 218
    .local v1, "name":Ljava/lang/String;
    iget-object v2, p0, Lccsancom/google/gson/internal/bind/ReflectiveTypeAdapterFactory$Adapter;->boundFields:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lccsancom/google/gson/internal/bind/ReflectiveTypeAdapterFactory$BoundField;

    .line 219
    .local v2, "field":Lccsancom/google/gson/internal/bind/ReflectiveTypeAdapterFactory$BoundField;
    if-eqz v2, :cond_2

    iget-boolean v3, v2, Lccsancom/google/gson/internal/bind/ReflectiveTypeAdapterFactory$BoundField;->deserialized:Z

    if-nez v3, :cond_1

    goto :goto_1

    .line 222
    :cond_1
    invoke-virtual {v2, p1, v0}, Lccsancom/google/gson/internal/bind/ReflectiveTypeAdapterFactory$BoundField;->read(Lccsancom/google/gson/stream/JsonReader;Ljava/lang/Object;)V

    goto :goto_2

    .line 220
    :cond_2
    :goto_1
    invoke-virtual {p1}, Lccsancom/google/gson/stream/JsonReader;->skipValue()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 224
    .end local v1    # "name":Ljava/lang/String;
    .end local v2    # "field":Lccsancom/google/gson/internal/bind/ReflectiveTypeAdapterFactory$BoundField;
    :goto_2
    goto :goto_0

    .line 229
    :cond_3
    nop

    .line 230
    invoke-virtual {p1}, Lccsancom/google/gson/stream/JsonReader;->endObject()V

    .line 231
    return-object v0

    .line 227
    :catch_0
    move-exception v1

    .line 228
    .local v1, "e":Ljava/lang/IllegalAccessException;
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2

    .line 225
    .end local v1    # "e":Ljava/lang/IllegalAccessException;
    :catch_1
    move-exception v1

    .line 226
    .local v1, "e":Ljava/lang/IllegalStateException;
    new-instance v2, Lccsancom/google/gson/JsonSyntaxException;

    invoke-direct {v2, v1}, Lccsancom/google/gson/JsonSyntaxException;-><init>(Ljava/lang/Throwable;)V

    goto :goto_4

    :goto_3
    throw v2

    :goto_4
    goto :goto_3
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

    .line 235
    .local p0, "this":Lccsancom/google/gson/internal/bind/ReflectiveTypeAdapterFactory$Adapter;, "Lccsancom/google/gson/internal/bind/ReflectiveTypeAdapterFactory$Adapter<TT;>;"
    .local p2, "value":Ljava/lang/Object;, "TT;"
    if-nez p2, :cond_0

    .line 236
    invoke-virtual {p1}, Lccsancom/google/gson/stream/JsonWriter;->nullValue()Lccsancom/google/gson/stream/JsonWriter;

    .line 237
    return-void

    .line 240
    :cond_0
    invoke-virtual {p1}, Lccsancom/google/gson/stream/JsonWriter;->beginObject()Lccsancom/google/gson/stream/JsonWriter;

    .line 242
    :try_start_0
    iget-object v0, p0, Lccsancom/google/gson/internal/bind/ReflectiveTypeAdapterFactory$Adapter;->boundFields:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lccsancom/google/gson/internal/bind/ReflectiveTypeAdapterFactory$BoundField;

    .line 243
    .local v1, "boundField":Lccsancom/google/gson/internal/bind/ReflectiveTypeAdapterFactory$BoundField;
    invoke-virtual {v1, p2}, Lccsancom/google/gson/internal/bind/ReflectiveTypeAdapterFactory$BoundField;->writeField(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 244
    iget-object v2, v1, Lccsancom/google/gson/internal/bind/ReflectiveTypeAdapterFactory$BoundField;->name:Ljava/lang/String;

    invoke-virtual {p1, v2}, Lccsancom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lccsancom/google/gson/stream/JsonWriter;

    .line 245
    invoke-virtual {v1, p1, p2}, Lccsancom/google/gson/internal/bind/ReflectiveTypeAdapterFactory$BoundField;->write(Lccsancom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 247
    .end local v1    # "boundField":Lccsancom/google/gson/internal/bind/ReflectiveTypeAdapterFactory$BoundField;
    :cond_1
    goto :goto_0

    .line 250
    :cond_2
    nop

    .line 251
    invoke-virtual {p1}, Lccsancom/google/gson/stream/JsonWriter;->endObject()Lccsancom/google/gson/stream/JsonWriter;

    .line 252
    return-void

    .line 248
    :catch_0
    move-exception v0

    .line 249
    .local v0, "e":Ljava/lang/IllegalAccessException;
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    goto :goto_2

    :goto_1
    throw v1

    :goto_2
    goto :goto_1
.end method
