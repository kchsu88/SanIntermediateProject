.class Lccsancom/google/gson/Gson$2;
.super Lccsancom/google/gson/TypeAdapter;
.source "Gson.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/google/gson/Gson;->floatAdapter(Z)Lccsancom/google/gson/TypeAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lccsancom/google/gson/TypeAdapter<",
        "Ljava/lang/Number;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lccsancom/google/gson/Gson;


# direct methods
.method constructor <init>(Lccsancom/google/gson/Gson;)V
    .locals 0
    .param p1, "this$0"    # Lccsancom/google/gson/Gson;

    .line 337
    iput-object p1, p0, Lccsancom/google/gson/Gson$2;->this$0:Lccsancom/google/gson/Gson;

    invoke-direct {p0}, Lccsancom/google/gson/TypeAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public read(Lccsancom/google/gson/stream/JsonReader;)Ljava/lang/Float;
    .locals 2
    .param p1, "in"    # Lccsancom/google/gson/stream/JsonReader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 339
    invoke-virtual {p1}, Lccsancom/google/gson/stream/JsonReader;->peek()Lccsancom/google/gson/stream/JsonToken;

    move-result-object v0

    sget-object v1, Lccsancom/google/gson/stream/JsonToken;->NULL:Lccsancom/google/gson/stream/JsonToken;

    if-ne v0, v1, :cond_0

    .line 340
    invoke-virtual {p1}, Lccsancom/google/gson/stream/JsonReader;->nextNull()V

    .line 341
    const/4 v0, 0x0

    return-object v0

    .line 343
    :cond_0
    invoke-virtual {p1}, Lccsancom/google/gson/stream/JsonReader;->nextDouble()D

    move-result-wide v0

    double-to-float v0, v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic read(Lccsancom/google/gson/stream/JsonReader;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 337
    invoke-virtual {p0, p1}, Lccsancom/google/gson/Gson$2;->read(Lccsancom/google/gson/stream/JsonReader;)Ljava/lang/Float;

    move-result-object p1

    return-object p1
.end method

.method public write(Lccsancom/google/gson/stream/JsonWriter;Ljava/lang/Number;)V
    .locals 3
    .param p1, "out"    # Lccsancom/google/gson/stream/JsonWriter;
    .param p2, "value"    # Ljava/lang/Number;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 346
    if-nez p2, :cond_0

    .line 347
    invoke-virtual {p1}, Lccsancom/google/gson/stream/JsonWriter;->nullValue()Lccsancom/google/gson/stream/JsonWriter;

    .line 348
    return-void

    .line 350
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Number;->floatValue()F

    move-result v0

    .line 351
    .local v0, "floatValue":F
    float-to-double v1, v0

    invoke-static {v1, v2}, Lccsancom/google/gson/Gson;->checkValidFloatingPoint(D)V

    .line 352
    invoke-virtual {p1, p2}, Lccsancom/google/gson/stream/JsonWriter;->value(Ljava/lang/Number;)Lccsancom/google/gson/stream/JsonWriter;

    .line 353
    return-void
.end method

.method public bridge synthetic write(Lccsancom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 337
    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p0, p1, p2}, Lccsancom/google/gson/Gson$2;->write(Lccsancom/google/gson/stream/JsonWriter;Ljava/lang/Number;)V

    return-void
.end method
