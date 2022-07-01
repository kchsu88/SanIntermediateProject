.class Lccsancom/google/gson/Gson$5;
.super Lccsancom/google/gson/TypeAdapter;
.source "Gson.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/google/gson/Gson;->atomicLongArrayAdapter(Lccsancom/google/gson/TypeAdapter;)Lccsancom/google/gson/TypeAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lccsancom/google/gson/TypeAdapter<",
        "Ljava/util/concurrent/atomic/AtomicLongArray;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$longAdapter:Lccsancom/google/gson/TypeAdapter;


# direct methods
.method constructor <init>(Lccsancom/google/gson/TypeAdapter;)V
    .locals 0

    .line 400
    iput-object p1, p0, Lccsancom/google/gson/Gson$5;->val$longAdapter:Lccsancom/google/gson/TypeAdapter;

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

    .line 400
    invoke-virtual {p0, p1}, Lccsancom/google/gson/Gson$5;->read(Lccsancom/google/gson/stream/JsonReader;)Ljava/util/concurrent/atomic/AtomicLongArray;

    move-result-object p1

    return-object p1
.end method

.method public read(Lccsancom/google/gson/stream/JsonReader;)Ljava/util/concurrent/atomic/AtomicLongArray;
    .locals 6
    .param p1, "in"    # Lccsancom/google/gson/stream/JsonReader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 409
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 410
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    invoke-virtual {p1}, Lccsancom/google/gson/stream/JsonReader;->beginArray()V

    .line 411
    :goto_0
    invoke-virtual {p1}, Lccsancom/google/gson/stream/JsonReader;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 412
    iget-object v1, p0, Lccsancom/google/gson/Gson$5;->val$longAdapter:Lccsancom/google/gson/TypeAdapter;

    invoke-virtual {v1, p1}, Lccsancom/google/gson/TypeAdapter;->read(Lccsancom/google/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->longValue()J

    move-result-wide v1

    .line 413
    .local v1, "value":J
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 414
    .end local v1    # "value":J
    goto :goto_0

    .line 415
    :cond_0
    invoke-virtual {p1}, Lccsancom/google/gson/stream/JsonReader;->endArray()V

    .line 416
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 417
    .local v1, "length":I
    new-instance v2, Ljava/util/concurrent/atomic/AtomicLongArray;

    invoke-direct {v2, v1}, Ljava/util/concurrent/atomic/AtomicLongArray;-><init>(I)V

    .line 418
    .local v2, "array":Ljava/util/concurrent/atomic/AtomicLongArray;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v1, :cond_1

    .line 419
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v2, v3, v4, v5}, Ljava/util/concurrent/atomic/AtomicLongArray;->set(IJ)V

    .line 418
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 421
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

    .line 400
    check-cast p2, Ljava/util/concurrent/atomic/AtomicLongArray;

    invoke-virtual {p0, p1, p2}, Lccsancom/google/gson/Gson$5;->write(Lccsancom/google/gson/stream/JsonWriter;Ljava/util/concurrent/atomic/AtomicLongArray;)V

    return-void
.end method

.method public write(Lccsancom/google/gson/stream/JsonWriter;Ljava/util/concurrent/atomic/AtomicLongArray;)V
    .locals 5
    .param p1, "out"    # Lccsancom/google/gson/stream/JsonWriter;
    .param p2, "value"    # Ljava/util/concurrent/atomic/AtomicLongArray;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 402
    invoke-virtual {p1}, Lccsancom/google/gson/stream/JsonWriter;->beginArray()Lccsancom/google/gson/stream/JsonWriter;

    .line 403
    const/4 v0, 0x0

    .local v0, "i":I
    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicLongArray;->length()I

    move-result v1

    .local v1, "length":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 404
    iget-object v2, p0, Lccsancom/google/gson/Gson$5;->val$longAdapter:Lccsancom/google/gson/TypeAdapter;

    invoke-virtual {p2, v0}, Ljava/util/concurrent/atomic/AtomicLongArray;->get(I)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, p1, v3}, Lccsancom/google/gson/TypeAdapter;->write(Lccsancom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V

    .line 403
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 406
    .end local v0    # "i":I
    .end local v1    # "length":I
    :cond_0
    invoke-virtual {p1}, Lccsancom/google/gson/stream/JsonWriter;->endArray()Lccsancom/google/gson/stream/JsonWriter;

    .line 407
    return-void
.end method
