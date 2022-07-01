.class public final Lccsancom/google/gson/internal/Streams;
.super Ljava/lang/Object;
.source "Streams.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsancom/google/gson/internal/Streams$AppendableWriter;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public static parse(Lccsancom/google/gson/stream/JsonReader;)Lccsancom/google/gson/JsonElement;
    .locals 3
    .param p0, "reader"    # Lccsancom/google/gson/stream/JsonReader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lccsancom/google/gson/JsonParseException;
        }
    .end annotation

    .line 44
    const/4 v0, 0x1

    .line 46
    .local v0, "isEmpty":Z
    :try_start_0
    invoke-virtual {p0}, Lccsancom/google/gson/stream/JsonReader;->peek()Lccsancom/google/gson/stream/JsonToken;

    .line 47
    const/4 v0, 0x0

    .line 48
    sget-object v1, Lccsancom/google/gson/internal/bind/TypeAdapters;->JSON_ELEMENT:Lccsancom/google/gson/TypeAdapter;

    invoke-virtual {v1, p0}, Lccsancom/google/gson/TypeAdapter;->read(Lccsancom/google/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lccsancom/google/gson/JsonElement;
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lccsancom/google/gson/stream/MalformedJsonException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 63
    :catch_0
    move-exception v1

    .line 64
    .local v1, "e":Ljava/lang/NumberFormatException;
    new-instance v2, Lccsancom/google/gson/JsonSyntaxException;

    invoke-direct {v2, v1}, Lccsancom/google/gson/JsonSyntaxException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 61
    .end local v1    # "e":Ljava/lang/NumberFormatException;
    :catch_1
    move-exception v1

    .line 62
    .local v1, "e":Ljava/io/IOException;
    new-instance v2, Lccsancom/google/gson/JsonIOException;

    invoke-direct {v2, v1}, Lccsancom/google/gson/JsonIOException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 59
    .end local v1    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v1

    .line 60
    .local v1, "e":Lccsancom/google/gson/stream/MalformedJsonException;
    new-instance v2, Lccsancom/google/gson/JsonSyntaxException;

    invoke-direct {v2, v1}, Lccsancom/google/gson/JsonSyntaxException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 49
    .end local v1    # "e":Lccsancom/google/gson/stream/MalformedJsonException;
    :catch_3
    move-exception v1

    .line 54
    .local v1, "e":Ljava/io/EOFException;
    if-eqz v0, :cond_0

    .line 55
    sget-object v2, Lccsancom/google/gson/JsonNull;->INSTANCE:Lccsancom/google/gson/JsonNull;

    return-object v2

    .line 58
    :cond_0
    new-instance v2, Lccsancom/google/gson/JsonSyntaxException;

    invoke-direct {v2, v1}, Lccsancom/google/gson/JsonSyntaxException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public static write(Lccsancom/google/gson/JsonElement;Lccsancom/google/gson/stream/JsonWriter;)V
    .locals 1
    .param p0, "element"    # Lccsancom/google/gson/JsonElement;
    .param p1, "writer"    # Lccsancom/google/gson/stream/JsonWriter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 72
    sget-object v0, Lccsancom/google/gson/internal/bind/TypeAdapters;->JSON_ELEMENT:Lccsancom/google/gson/TypeAdapter;

    invoke-virtual {v0, p1, p0}, Lccsancom/google/gson/TypeAdapter;->write(Lccsancom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V

    .line 73
    return-void
.end method

.method public static writerForAppendable(Ljava/lang/Appendable;)Ljava/io/Writer;
    .locals 1
    .param p0, "appendable"    # Ljava/lang/Appendable;

    .line 76
    instance-of v0, p0, Ljava/io/Writer;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Ljava/io/Writer;

    goto :goto_0

    :cond_0
    new-instance v0, Lccsancom/google/gson/internal/Streams$AppendableWriter;

    invoke-direct {v0, p0}, Lccsancom/google/gson/internal/Streams$AppendableWriter;-><init>(Ljava/lang/Appendable;)V

    :goto_0
    return-object v0
.end method
