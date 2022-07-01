.class Lccsancom/google/gson/internal/bind/TypeAdapters$26$1;
.super Lccsancom/google/gson/TypeAdapter;
.source "TypeAdapters.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/google/gson/internal/bind/TypeAdapters$26;->create(Lccsancom/google/gson/Gson;Lccsancom/google/gson/reflect/TypeToken;)Lccsancom/google/gson/TypeAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lccsancom/google/gson/TypeAdapter<",
        "Ljava/sql/Timestamp;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lccsancom/google/gson/internal/bind/TypeAdapters$26;

.field final synthetic val$dateTypeAdapter:Lccsancom/google/gson/TypeAdapter;


# direct methods
.method constructor <init>(Lccsancom/google/gson/internal/bind/TypeAdapters$26;Lccsancom/google/gson/TypeAdapter;)V
    .locals 0
    .param p1, "this$0"    # Lccsancom/google/gson/internal/bind/TypeAdapters$26;

    .line 580
    iput-object p1, p0, Lccsancom/google/gson/internal/bind/TypeAdapters$26$1;->this$0:Lccsancom/google/gson/internal/bind/TypeAdapters$26;

    iput-object p2, p0, Lccsancom/google/gson/internal/bind/TypeAdapters$26$1;->val$dateTypeAdapter:Lccsancom/google/gson/TypeAdapter;

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

    .line 580
    invoke-virtual {p0, p1}, Lccsancom/google/gson/internal/bind/TypeAdapters$26$1;->read(Lccsancom/google/gson/stream/JsonReader;)Ljava/sql/Timestamp;

    move-result-object p1

    return-object p1
.end method

.method public read(Lccsancom/google/gson/stream/JsonReader;)Ljava/sql/Timestamp;
    .locals 4
    .param p1, "in"    # Lccsancom/google/gson/stream/JsonReader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 582
    iget-object v0, p0, Lccsancom/google/gson/internal/bind/TypeAdapters$26$1;->val$dateTypeAdapter:Lccsancom/google/gson/TypeAdapter;

    invoke-virtual {v0, p1}, Lccsancom/google/gson/TypeAdapter;->read(Lccsancom/google/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Date;

    .line 583
    .local v0, "date":Ljava/util/Date;
    if-eqz v0, :cond_0

    new-instance v1, Ljava/sql/Timestamp;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/sql/Timestamp;-><init>(J)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method

.method public bridge synthetic write(Lccsancom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 580
    check-cast p2, Ljava/sql/Timestamp;

    invoke-virtual {p0, p1, p2}, Lccsancom/google/gson/internal/bind/TypeAdapters$26$1;->write(Lccsancom/google/gson/stream/JsonWriter;Ljava/sql/Timestamp;)V

    return-void
.end method

.method public write(Lccsancom/google/gson/stream/JsonWriter;Ljava/sql/Timestamp;)V
    .locals 1
    .param p1, "out"    # Lccsancom/google/gson/stream/JsonWriter;
    .param p2, "value"    # Ljava/sql/Timestamp;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 587
    iget-object v0, p0, Lccsancom/google/gson/internal/bind/TypeAdapters$26$1;->val$dateTypeAdapter:Lccsancom/google/gson/TypeAdapter;

    invoke-virtual {v0, p1, p2}, Lccsancom/google/gson/TypeAdapter;->write(Lccsancom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V

    .line 588
    return-void
.end method
