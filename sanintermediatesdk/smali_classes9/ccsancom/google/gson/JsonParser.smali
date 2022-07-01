.class public final Lccsancom/google/gson/JsonParser;
.super Ljava/lang/Object;
.source "JsonParser.java"


# direct methods
.method public constructor <init>()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static parseReader(Lccsancom/google/gson/stream/JsonReader;)Lccsancom/google/gson/JsonElement;
    .locals 6
    .param p0, "reader"    # Lccsancom/google/gson/stream/JsonReader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lccsancom/google/gson/JsonIOException;,
            Lccsancom/google/gson/JsonSyntaxException;
        }
    .end annotation

    .line 82
    const-string v0, " to Json"

    const-string v1, "Failed parsing JSON source: "

    invoke-virtual {p0}, Lccsancom/google/gson/stream/JsonReader;->isLenient()Z

    move-result v2

    .line 83
    .local v2, "lenient":Z
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lccsancom/google/gson/stream/JsonReader;->setLenient(Z)V

    .line 85
    :try_start_0
    invoke-static {p0}, Lccsancom/google/gson/internal/Streams;->parse(Lccsancom/google/gson/stream/JsonReader;)Lccsancom/google/gson/JsonElement;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/StackOverflowError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 91
    invoke-virtual {p0, v2}, Lccsancom/google/gson/stream/JsonReader;->setLenient(Z)V

    .line 85
    return-object v0

    .line 91
    :catchall_0
    move-exception v0

    goto :goto_0

    .line 88
    :catch_0
    move-exception v3

    .line 89
    .local v3, "e":Ljava/lang/OutOfMemoryError;
    :try_start_1
    new-instance v4, Lccsancom/google/gson/JsonParseException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0, v3}, Lccsancom/google/gson/JsonParseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v2    # "lenient":Z
    .end local p0    # "reader":Lccsancom/google/gson/stream/JsonReader;
    throw v4

    .line 86
    .end local v3    # "e":Ljava/lang/OutOfMemoryError;
    .restart local v2    # "lenient":Z
    .restart local p0    # "reader":Lccsancom/google/gson/stream/JsonReader;
    :catch_1
    move-exception v3

    .line 87
    .local v3, "e":Ljava/lang/StackOverflowError;
    new-instance v4, Lccsancom/google/gson/JsonParseException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0, v3}, Lccsancom/google/gson/JsonParseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v2    # "lenient":Z
    .end local p0    # "reader":Lccsancom/google/gson/stream/JsonReader;
    throw v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 91
    .end local v3    # "e":Ljava/lang/StackOverflowError;
    .restart local v2    # "lenient":Z
    .restart local p0    # "reader":Lccsancom/google/gson/stream/JsonReader;
    :goto_0
    invoke-virtual {p0, v2}, Lccsancom/google/gson/stream/JsonReader;->setLenient(Z)V

    .line 92
    throw v0
.end method

.method public static parseReader(Ljava/io/Reader;)Lccsancom/google/gson/JsonElement;
    .locals 4
    .param p0, "reader"    # Ljava/io/Reader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lccsancom/google/gson/JsonIOException;,
            Lccsancom/google/gson/JsonSyntaxException;
        }
    .end annotation

    .line 59
    :try_start_0
    new-instance v0, Lccsancom/google/gson/stream/JsonReader;

    invoke-direct {v0, p0}, Lccsancom/google/gson/stream/JsonReader;-><init>(Ljava/io/Reader;)V

    .line 60
    .local v0, "jsonReader":Lccsancom/google/gson/stream/JsonReader;
    invoke-static {v0}, Lccsancom/google/gson/JsonParser;->parseReader(Lccsancom/google/gson/stream/JsonReader;)Lccsancom/google/gson/JsonElement;

    move-result-object v1

    .line 61
    .local v1, "element":Lccsancom/google/gson/JsonElement;
    invoke-virtual {v1}, Lccsancom/google/gson/JsonElement;->isJsonNull()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v0}, Lccsancom/google/gson/stream/JsonReader;->peek()Lccsancom/google/gson/stream/JsonToken;

    move-result-object v2

    sget-object v3, Lccsancom/google/gson/stream/JsonToken;->END_DOCUMENT:Lccsancom/google/gson/stream/JsonToken;

    if-ne v2, v3, :cond_0

    goto :goto_0

    .line 62
    :cond_0
    new-instance v2, Lccsancom/google/gson/JsonSyntaxException;

    const-string v3, "Did not consume the entire document."

    invoke-direct {v2, v3}, Lccsancom/google/gson/JsonSyntaxException;-><init>(Ljava/lang/String;)V

    .end local p0    # "reader":Ljava/io/Reader;
    throw v2
    :try_end_0
    .catch Lccsancom/google/gson/stream/MalformedJsonException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 64
    .restart local p0    # "reader":Ljava/io/Reader;
    :cond_1
    :goto_0
    return-object v1

    .line 69
    .end local v0    # "jsonReader":Lccsancom/google/gson/stream/JsonReader;
    .end local v1    # "element":Lccsancom/google/gson/JsonElement;
    :catch_0
    move-exception v0

    .line 70
    .local v0, "e":Ljava/lang/NumberFormatException;
    new-instance v1, Lccsancom/google/gson/JsonSyntaxException;

    invoke-direct {v1, v0}, Lccsancom/google/gson/JsonSyntaxException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 67
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :catch_1
    move-exception v0

    .line 68
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Lccsancom/google/gson/JsonIOException;

    invoke-direct {v1, v0}, Lccsancom/google/gson/JsonIOException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 65
    .end local v0    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v0

    .line 66
    .local v0, "e":Lccsancom/google/gson/stream/MalformedJsonException;
    new-instance v1, Lccsancom/google/gson/JsonSyntaxException;

    invoke-direct {v1, v0}, Lccsancom/google/gson/JsonSyntaxException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static parseString(Ljava/lang/String;)Lccsancom/google/gson/JsonElement;
    .locals 1
    .param p0, "json"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lccsancom/google/gson/JsonSyntaxException;
        }
    .end annotation

    .line 47
    new-instance v0, Ljava/io/StringReader;

    invoke-direct {v0, p0}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lccsancom/google/gson/JsonParser;->parseReader(Ljava/io/Reader;)Lccsancom/google/gson/JsonElement;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public parse(Lccsancom/google/gson/stream/JsonReader;)Lccsancom/google/gson/JsonElement;
    .locals 1
    .param p1, "json"    # Lccsancom/google/gson/stream/JsonReader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lccsancom/google/gson/JsonIOException;,
            Lccsancom/google/gson/JsonSyntaxException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 110
    invoke-static {p1}, Lccsancom/google/gson/JsonParser;->parseReader(Lccsancom/google/gson/stream/JsonReader;)Lccsancom/google/gson/JsonElement;

    move-result-object v0

    return-object v0
.end method

.method public parse(Ljava/io/Reader;)Lccsancom/google/gson/JsonElement;
    .locals 1
    .param p1, "json"    # Ljava/io/Reader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lccsancom/google/gson/JsonIOException;,
            Lccsancom/google/gson/JsonSyntaxException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 104
    invoke-static {p1}, Lccsancom/google/gson/JsonParser;->parseReader(Ljava/io/Reader;)Lccsancom/google/gson/JsonElement;

    move-result-object v0

    return-object v0
.end method

.method public parse(Ljava/lang/String;)Lccsancom/google/gson/JsonElement;
    .locals 1
    .param p1, "json"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lccsancom/google/gson/JsonSyntaxException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 98
    invoke-static {p1}, Lccsancom/google/gson/JsonParser;->parseString(Ljava/lang/String;)Lccsancom/google/gson/JsonElement;

    move-result-object v0

    return-object v0
.end method
