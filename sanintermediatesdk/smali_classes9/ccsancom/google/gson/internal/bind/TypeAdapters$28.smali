.class Lccsancom/google/gson/internal/bind/TypeAdapters$28;
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
        "Ljava/util/Locale;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 661
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

    .line 661
    invoke-virtual {p0, p1}, Lccsancom/google/gson/internal/bind/TypeAdapters$28;->read(Lccsancom/google/gson/stream/JsonReader;)Ljava/util/Locale;

    move-result-object p1

    return-object p1
.end method

.method public read(Lccsancom/google/gson/stream/JsonReader;)Ljava/util/Locale;
    .locals 6
    .param p1, "in"    # Lccsancom/google/gson/stream/JsonReader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 664
    invoke-virtual {p1}, Lccsancom/google/gson/stream/JsonReader;->peek()Lccsancom/google/gson/stream/JsonToken;

    move-result-object v0

    sget-object v1, Lccsancom/google/gson/stream/JsonToken;->NULL:Lccsancom/google/gson/stream/JsonToken;

    if-ne v0, v1, :cond_0

    .line 665
    invoke-virtual {p1}, Lccsancom/google/gson/stream/JsonReader;->nextNull()V

    .line 666
    const/4 v0, 0x0

    return-object v0

    .line 668
    :cond_0
    invoke-virtual {p1}, Lccsancom/google/gson/stream/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v0

    .line 669
    .local v0, "locale":Ljava/lang/String;
    new-instance v1, Ljava/util/StringTokenizer;

    const-string v2, "_"

    invoke-direct {v1, v0, v2}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 670
    .local v1, "tokenizer":Ljava/util/StringTokenizer;
    const/4 v2, 0x0

    .line 671
    .local v2, "language":Ljava/lang/String;
    const/4 v3, 0x0

    .line 672
    .local v3, "country":Ljava/lang/String;
    const/4 v4, 0x0

    .line 673
    .local v4, "variant":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreElements()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 674
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    .line 676
    :cond_1
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreElements()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 677
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    .line 679
    :cond_2
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreElements()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 680
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v4

    .line 682
    :cond_3
    if-nez v3, :cond_4

    if-nez v4, :cond_4

    .line 683
    new-instance v5, Ljava/util/Locale;

    invoke-direct {v5, v2}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    return-object v5

    .line 684
    :cond_4
    if-nez v4, :cond_5

    .line 685
    new-instance v5, Ljava/util/Locale;

    invoke-direct {v5, v2, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v5

    .line 687
    :cond_5
    new-instance v5, Ljava/util/Locale;

    invoke-direct {v5, v2, v3, v4}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v5
.end method

.method public bridge synthetic write(Lccsancom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 661
    check-cast p2, Ljava/util/Locale;

    invoke-virtual {p0, p1, p2}, Lccsancom/google/gson/internal/bind/TypeAdapters$28;->write(Lccsancom/google/gson/stream/JsonWriter;Ljava/util/Locale;)V

    return-void
.end method

.method public write(Lccsancom/google/gson/stream/JsonWriter;Ljava/util/Locale;)V
    .locals 1
    .param p1, "out"    # Lccsancom/google/gson/stream/JsonWriter;
    .param p2, "value"    # Ljava/util/Locale;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 692
    if-nez p2, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {p1, v0}, Lccsancom/google/gson/stream/JsonWriter;->value(Ljava/lang/String;)Lccsancom/google/gson/stream/JsonWriter;

    .line 693
    return-void
.end method
