.class Lccsancom/google/gson/internal/bind/TypeAdapters$10;
.super Lccsancom/google/gson/TypeAdapter;
.source "TypeAdapters.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/google/gson/internal/bind/TypeAdapters;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lccsancom/google/gson/TypeAdapter<",
        "Ljava/util/concurrent/atomic/AtomicIntegerArray;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 265
    invoke-direct {p0}, Lccsancom/google/gson/TypeAdapter;-><init>()V

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

    .line 265
    invoke-virtual {p0, p1}, Lccsancom/google/gson/internal/bind/TypeAdapters$10;->read(Lccsancom/google/gson/stream/JsonReader;)Ljava/util/concurrent/atomic/AtomicIntegerArray;

    move-result-object p1

    return-object p1
.end method

.method public read(Lccsancom/google/gson/stream/JsonReader;)Ljava/util/concurrent/atomic/AtomicIntegerArray;
    .locals 5
    .param p1, "in"    # Lccsancom/google/gson/stream/JsonReader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 267
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 268
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-virtual {p1}, Lccsancom/google/gson/stream/JsonReader;->beginArray()V

    .line 269
    :goto_0
    invoke-virtual {p1}, Lccsancom/google/gson/stream/JsonReader;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 271
    :try_start_0
    invoke-virtual {p1}, Lccsancom/google/gson/stream/JsonReader;->nextInt()I

    move-result v1

    .line 272
    .local v1, "integer":I
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 275
    nop

    .end local v1    # "integer":I
    goto :goto_0

    .line 273
    :catch_0
    move-exception v1

    .line 274
    .local v1, "e":Ljava/lang/NumberFormatException;
    new-instance v2, Lccsancom/google/gson/JsonSyntaxException;

    invoke-direct {v2, v1}, Lccsancom/google/gson/JsonSyntaxException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 277
    .end local v1    # "e":Ljava/lang/NumberFormatException;
    :cond_0
    invoke-virtual {p1}, Lccsancom/google/gson/stream/JsonReader;->endArray()V

    .line 278
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 279
    .local v1, "length":I
    new-instance v2, Ljava/util/concurrent/atomic/AtomicIntegerArray;

    invoke-direct {v2, v1}, Ljava/util/concurrent/atomic/AtomicIntegerArray;-><init>(I)V

    .line 280
    .local v2, "array":Ljava/util/concurrent/atomic/AtomicIntegerArray;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v1, :cond_1

    .line 281
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/atomic/AtomicIntegerArray;->set(II)V

    .line 280
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 283
    .end local v3    # "i":I
    :cond_1
    return-object v2
.end method

.method public bridge synthetic write(Lccsancom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 265
    check-cast p2, Ljava/util/concurrent/atomic/AtomicIntegerArray;

    invoke-virtual {p0, p1, p2}, Lccsancom/google/gson/internal/bind/TypeAdapters$10;->write(Lccsancom/google/gson/stream/JsonWriter;Ljava/util/concurrent/atomic/AtomicIntegerArray;)V

    return-void
.end method

.method public write(Lccsancom/google/gson/stream/JsonWriter;Ljava/util/concurrent/atomic/AtomicIntegerArray;)V
    .locals 4
    .param p1, "out"    # Lccsancom/google/gson/stream/JsonWriter;
    .param p2, "value"    # Ljava/util/concurrent/atomic/AtomicIntegerArray;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 286
    invoke-virtual {p1}, Lccsancom/google/gson/stream/JsonWriter;->beginArray()Lccsancom/google/gson/stream/JsonWriter;

    .line 287
    const/4 v0, 0x0

    .local v0, "i":I
    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicIntegerArray;->length()I

    move-result v1

    .local v1, "length":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 288
    invoke-virtual {p2, v0}, Ljava/util/concurrent/atomic/AtomicIntegerArray;->get(I)I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {p1, v2, v3}, Lccsancom/google/gson/stream/JsonWriter;->value(J)Lccsancom/google/gson/stream/JsonWriter;

    .line 287
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 290
    .end local v0    # "i":I
    .end local v1    # "length":I
    :cond_0
    invoke-virtual {p1}, Lccsancom/google/gson/stream/JsonWriter;->endArray()Lccsancom/google/gson/stream/JsonWriter;

    .line 291
    return-void
.end method
