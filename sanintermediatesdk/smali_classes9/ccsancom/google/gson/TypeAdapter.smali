.class public abstract Lccsancom/google/gson/TypeAdapter;
.super Ljava/lang/Object;
.source "TypeAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 119
    .local p0, "this":Lccsancom/google/gson/TypeAdapter;, "Lccsancom/google/gson/TypeAdapter<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final fromJson(Ljava/io/Reader;)Ljava/lang/Object;
    .locals 2
    .param p1, "in"    # Ljava/io/Reader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/Reader;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 259
    .local p0, "this":Lccsancom/google/gson/TypeAdapter;, "Lccsancom/google/gson/TypeAdapter<TT;>;"
    new-instance v0, Lccsancom/google/gson/stream/JsonReader;

    invoke-direct {v0, p1}, Lccsancom/google/gson/stream/JsonReader;-><init>(Ljava/io/Reader;)V

    .line 260
    .local v0, "reader":Lccsancom/google/gson/stream/JsonReader;
    invoke-virtual {p0, v0}, Lccsancom/google/gson/TypeAdapter;->read(Lccsancom/google/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public final fromJson(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1, "json"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 273
    .local p0, "this":Lccsancom/google/gson/TypeAdapter;, "Lccsancom/google/gson/TypeAdapter<TT;>;"
    new-instance v0, Ljava/io/StringReader;

    invoke-direct {v0, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lccsancom/google/gson/TypeAdapter;->fromJson(Ljava/io/Reader;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final fromJsonTree(Lccsancom/google/gson/JsonElement;)Ljava/lang/Object;
    .locals 2
    .param p1, "jsonTree"    # Lccsancom/google/gson/JsonElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/google/gson/JsonElement;",
            ")TT;"
        }
    .end annotation

    .line 284
    .local p0, "this":Lccsancom/google/gson/TypeAdapter;, "Lccsancom/google/gson/TypeAdapter<TT;>;"
    :try_start_0
    new-instance v0, Lccsancom/google/gson/internal/bind/JsonTreeReader;

    invoke-direct {v0, p1}, Lccsancom/google/gson/internal/bind/JsonTreeReader;-><init>(Lccsancom/google/gson/JsonElement;)V

    .line 285
    .local v0, "jsonReader":Lccsancom/google/gson/stream/JsonReader;
    invoke-virtual {p0, v0}, Lccsancom/google/gson/TypeAdapter;->read(Lccsancom/google/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 286
    .end local v0    # "jsonReader":Lccsancom/google/gson/stream/JsonReader;
    :catch_0
    move-exception v0

    .line 287
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Lccsancom/google/gson/JsonIOException;

    invoke-direct {v1, v0}, Lccsancom/google/gson/JsonIOException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public final nullSafe()Lccsancom/google/gson/TypeAdapter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lccsancom/google/gson/TypeAdapter<",
            "TT;>;"
        }
    .end annotation

    .line 186
    .local p0, "this":Lccsancom/google/gson/TypeAdapter;, "Lccsancom/google/gson/TypeAdapter<TT;>;"
    new-instance v0, Lccsancom/google/gson/TypeAdapter$1;

    invoke-direct {v0, p0}, Lccsancom/google/gson/TypeAdapter$1;-><init>(Lccsancom/google/gson/TypeAdapter;)V

    return-object v0
.end method

.method public abstract read(Lccsancom/google/gson/stream/JsonReader;)Ljava/lang/Object;
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
.end method

.method public final toJson(Ljava/lang/Object;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 215
    .local p0, "this":Lccsancom/google/gson/TypeAdapter;, "Lccsancom/google/gson/TypeAdapter<TT;>;"
    .local p1, "value":Ljava/lang/Object;, "TT;"
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 217
    .local v0, "stringWriter":Ljava/io/StringWriter;
    :try_start_0
    invoke-virtual {p0, v0, p1}, Lccsancom/google/gson/TypeAdapter;->toJson(Ljava/io/Writer;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 220
    nop

    .line 221
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 218
    :catch_0
    move-exception v1

    .line 219
    .local v1, "e":Ljava/io/IOException;
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2
.end method

.method public final toJson(Ljava/io/Writer;Ljava/lang/Object;)V
    .locals 1
    .param p1, "out"    # Ljava/io/Writer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/Writer;",
            "TT;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 141
    .local p0, "this":Lccsancom/google/gson/TypeAdapter;, "Lccsancom/google/gson/TypeAdapter<TT;>;"
    .local p2, "value":Ljava/lang/Object;, "TT;"
    new-instance v0, Lccsancom/google/gson/stream/JsonWriter;

    invoke-direct {v0, p1}, Lccsancom/google/gson/stream/JsonWriter;-><init>(Ljava/io/Writer;)V

    .line 142
    .local v0, "writer":Lccsancom/google/gson/stream/JsonWriter;
    invoke-virtual {p0, v0, p2}, Lccsancom/google/gson/TypeAdapter;->write(Lccsancom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V

    .line 143
    return-void
.end method

.method public final toJsonTree(Ljava/lang/Object;)Lccsancom/google/gson/JsonElement;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lccsancom/google/gson/JsonElement;"
        }
    .end annotation

    .line 233
    .local p0, "this":Lccsancom/google/gson/TypeAdapter;, "Lccsancom/google/gson/TypeAdapter<TT;>;"
    .local p1, "value":Ljava/lang/Object;, "TT;"
    :try_start_0
    new-instance v0, Lccsancom/google/gson/internal/bind/JsonTreeWriter;

    invoke-direct {v0}, Lccsancom/google/gson/internal/bind/JsonTreeWriter;-><init>()V

    .line 234
    .local v0, "jsonWriter":Lccsancom/google/gson/internal/bind/JsonTreeWriter;
    invoke-virtual {p0, v0, p1}, Lccsancom/google/gson/TypeAdapter;->write(Lccsancom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V

    .line 235
    invoke-virtual {v0}, Lccsancom/google/gson/internal/bind/JsonTreeWriter;->get()Lccsancom/google/gson/JsonElement;

    move-result-object v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 236
    .end local v0    # "jsonWriter":Lccsancom/google/gson/internal/bind/JsonTreeWriter;
    :catch_0
    move-exception v0

    .line 237
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Lccsancom/google/gson/JsonIOException;

    invoke-direct {v1, v0}, Lccsancom/google/gson/JsonIOException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public abstract write(Lccsancom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V
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
.end method
