.class Lccsancom/google/gson/internal/bind/TypeAdapters$29;
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
        "Lccsancom/google/gson/JsonElement;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 698
    invoke-direct {p0}, Lccsancom/google/gson/TypeAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public read(Lccsancom/google/gson/stream/JsonReader;)Lccsancom/google/gson/JsonElement;
    .locals 3
    .param p1, "in"    # Lccsancom/google/gson/stream/JsonReader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 700
    sget-object v0, Lccsancom/google/gson/internal/bind/TypeAdapters$36;->$SwitchMap$com$google$gson$stream$JsonToken:[I

    invoke-virtual {p1}, Lccsancom/google/gson/stream/JsonReader;->peek()Lccsancom/google/gson/stream/JsonToken;

    move-result-object v1

    invoke-virtual {v1}, Lccsancom/google/gson/stream/JsonToken;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 732
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 720
    :pswitch_0
    new-instance v0, Lccsancom/google/gson/JsonObject;

    invoke-direct {v0}, Lccsancom/google/gson/JsonObject;-><init>()V

    .line 721
    .local v0, "object":Lccsancom/google/gson/JsonObject;
    invoke-virtual {p1}, Lccsancom/google/gson/stream/JsonReader;->beginObject()V

    .line 722
    :goto_0
    invoke-virtual {p1}, Lccsancom/google/gson/stream/JsonReader;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 723
    invoke-virtual {p1}, Lccsancom/google/gson/stream/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1}, Lccsancom/google/gson/internal/bind/TypeAdapters$29;->read(Lccsancom/google/gson/stream/JsonReader;)Lccsancom/google/gson/JsonElement;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lccsancom/google/gson/JsonObject;->add(Ljava/lang/String;Lccsancom/google/gson/JsonElement;)V

    goto :goto_0

    .line 725
    :cond_0
    invoke-virtual {p1}, Lccsancom/google/gson/stream/JsonReader;->endObject()V

    .line 726
    return-object v0

    .line 712
    .end local v0    # "object":Lccsancom/google/gson/JsonObject;
    :pswitch_1
    new-instance v0, Lccsancom/google/gson/JsonArray;

    invoke-direct {v0}, Lccsancom/google/gson/JsonArray;-><init>()V

    .line 713
    .local v0, "array":Lccsancom/google/gson/JsonArray;
    invoke-virtual {p1}, Lccsancom/google/gson/stream/JsonReader;->beginArray()V

    .line 714
    :goto_1
    invoke-virtual {p1}, Lccsancom/google/gson/stream/JsonReader;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 715
    invoke-virtual {p0, p1}, Lccsancom/google/gson/internal/bind/TypeAdapters$29;->read(Lccsancom/google/gson/stream/JsonReader;)Lccsancom/google/gson/JsonElement;

    move-result-object v1

    invoke-virtual {v0, v1}, Lccsancom/google/gson/JsonArray;->add(Lccsancom/google/gson/JsonElement;)V

    goto :goto_1

    .line 717
    :cond_1
    invoke-virtual {p1}, Lccsancom/google/gson/stream/JsonReader;->endArray()V

    .line 718
    return-object v0

    .line 709
    .end local v0    # "array":Lccsancom/google/gson/JsonArray;
    :pswitch_2
    invoke-virtual {p1}, Lccsancom/google/gson/stream/JsonReader;->nextNull()V

    .line 710
    sget-object v0, Lccsancom/google/gson/JsonNull;->INSTANCE:Lccsancom/google/gson/JsonNull;

    return-object v0

    .line 702
    :pswitch_3
    new-instance v0, Lccsancom/google/gson/JsonPrimitive;

    invoke-virtual {p1}, Lccsancom/google/gson/stream/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lccsancom/google/gson/JsonPrimitive;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 707
    :pswitch_4
    new-instance v0, Lccsancom/google/gson/JsonPrimitive;

    invoke-virtual {p1}, Lccsancom/google/gson/stream/JsonReader;->nextBoolean()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {v0, v1}, Lccsancom/google/gson/JsonPrimitive;-><init>(Ljava/lang/Boolean;)V

    return-object v0

    .line 704
    :pswitch_5
    invoke-virtual {p1}, Lccsancom/google/gson/stream/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v0

    .line 705
    .local v0, "number":Ljava/lang/String;
    new-instance v1, Lccsancom/google/gson/JsonPrimitive;

    new-instance v2, Lccsancom/google/gson/internal/LazilyParsedNumber;

    invoke-direct {v2, v0}, Lccsancom/google/gson/internal/LazilyParsedNumber;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Lccsancom/google/gson/JsonPrimitive;-><init>(Ljava/lang/Number;)V

    return-object v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public bridge synthetic read(Lccsancom/google/gson/stream/JsonReader;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 698
    invoke-virtual {p0, p1}, Lccsancom/google/gson/internal/bind/TypeAdapters$29;->read(Lccsancom/google/gson/stream/JsonReader;)Lccsancom/google/gson/JsonElement;

    move-result-object p1

    return-object p1
.end method

.method public write(Lccsancom/google/gson/stream/JsonWriter;Lccsancom/google/gson/JsonElement;)V
    .locals 3
    .param p1, "out"    # Lccsancom/google/gson/stream/JsonWriter;
    .param p2, "value"    # Lccsancom/google/gson/JsonElement;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 737
    if-eqz p2, :cond_8

    invoke-virtual {p2}, Lccsancom/google/gson/JsonElement;->isJsonNull()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_3

    .line 739
    :cond_0
    invoke-virtual {p2}, Lccsancom/google/gson/JsonElement;->isJsonPrimitive()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 740
    invoke-virtual {p2}, Lccsancom/google/gson/JsonElement;->getAsJsonPrimitive()Lccsancom/google/gson/JsonPrimitive;

    move-result-object v0

    .line 741
    .local v0, "primitive":Lccsancom/google/gson/JsonPrimitive;
    invoke-virtual {v0}, Lccsancom/google/gson/JsonPrimitive;->isNumber()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 742
    invoke-virtual {v0}, Lccsancom/google/gson/JsonPrimitive;->getAsNumber()Ljava/lang/Number;

    move-result-object v1

    invoke-virtual {p1, v1}, Lccsancom/google/gson/stream/JsonWriter;->value(Ljava/lang/Number;)Lccsancom/google/gson/stream/JsonWriter;

    goto :goto_0

    .line 743
    :cond_1
    invoke-virtual {v0}, Lccsancom/google/gson/JsonPrimitive;->isBoolean()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 744
    invoke-virtual {v0}, Lccsancom/google/gson/JsonPrimitive;->getAsBoolean()Z

    move-result v1

    invoke-virtual {p1, v1}, Lccsancom/google/gson/stream/JsonWriter;->value(Z)Lccsancom/google/gson/stream/JsonWriter;

    goto :goto_0

    .line 746
    :cond_2
    invoke-virtual {v0}, Lccsancom/google/gson/JsonPrimitive;->getAsString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lccsancom/google/gson/stream/JsonWriter;->value(Ljava/lang/String;)Lccsancom/google/gson/stream/JsonWriter;

    .line 749
    .end local v0    # "primitive":Lccsancom/google/gson/JsonPrimitive;
    :goto_0
    goto/16 :goto_4

    :cond_3
    invoke-virtual {p2}, Lccsancom/google/gson/JsonElement;->isJsonArray()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 750
    invoke-virtual {p1}, Lccsancom/google/gson/stream/JsonWriter;->beginArray()Lccsancom/google/gson/stream/JsonWriter;

    .line 751
    invoke-virtual {p2}, Lccsancom/google/gson/JsonElement;->getAsJsonArray()Lccsancom/google/gson/JsonArray;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/google/gson/JsonArray;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lccsancom/google/gson/JsonElement;

    .line 752
    .local v1, "e":Lccsancom/google/gson/JsonElement;
    invoke-virtual {p0, p1, v1}, Lccsancom/google/gson/internal/bind/TypeAdapters$29;->write(Lccsancom/google/gson/stream/JsonWriter;Lccsancom/google/gson/JsonElement;)V

    .line 753
    .end local v1    # "e":Lccsancom/google/gson/JsonElement;
    goto :goto_1

    .line 754
    :cond_4
    invoke-virtual {p1}, Lccsancom/google/gson/stream/JsonWriter;->endArray()Lccsancom/google/gson/stream/JsonWriter;

    goto :goto_4

    .line 756
    :cond_5
    invoke-virtual {p2}, Lccsancom/google/gson/JsonElement;->isJsonObject()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 757
    invoke-virtual {p1}, Lccsancom/google/gson/stream/JsonWriter;->beginObject()Lccsancom/google/gson/stream/JsonWriter;

    .line 758
    invoke-virtual {p2}, Lccsancom/google/gson/JsonElement;->getAsJsonObject()Lccsancom/google/gson/JsonObject;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/google/gson/JsonObject;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 759
    .local v1, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lccsancom/google/gson/JsonElement;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p1, v2}, Lccsancom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lccsancom/google/gson/stream/JsonWriter;

    .line 760
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lccsancom/google/gson/JsonElement;

    invoke-virtual {p0, p1, v2}, Lccsancom/google/gson/internal/bind/TypeAdapters$29;->write(Lccsancom/google/gson/stream/JsonWriter;Lccsancom/google/gson/JsonElement;)V

    .line 761
    .end local v1    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lccsancom/google/gson/JsonElement;>;"
    goto :goto_2

    .line 762
    :cond_6
    invoke-virtual {p1}, Lccsancom/google/gson/stream/JsonWriter;->endObject()Lccsancom/google/gson/stream/JsonWriter;

    goto :goto_4

    .line 765
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Couldn\'t write "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 738
    :cond_8
    :goto_3
    invoke-virtual {p1}, Lccsancom/google/gson/stream/JsonWriter;->nullValue()Lccsancom/google/gson/stream/JsonWriter;

    .line 767
    :goto_4
    return-void
.end method

.method public bridge synthetic write(Lccsancom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 698
    check-cast p2, Lccsancom/google/gson/JsonElement;

    invoke-virtual {p0, p1, p2}, Lccsancom/google/gson/internal/bind/TypeAdapters$29;->write(Lccsancom/google/gson/stream/JsonWriter;Lccsancom/google/gson/JsonElement;)V

    return-void
.end method
