.class Lccsancom/google/gson/internal/bind/TypeAdapters$35$1;
.super Lccsancom/google/gson/TypeAdapter;
.source "TypeAdapters.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/google/gson/internal/bind/TypeAdapters$35;->create(Lccsancom/google/gson/Gson;Lccsancom/google/gson/reflect/TypeToken;)Lccsancom/google/gson/TypeAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lccsancom/google/gson/TypeAdapter<",
        "TT1;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lccsancom/google/gson/internal/bind/TypeAdapters$35;

.field final synthetic val$requestedType:Ljava/lang/Class;


# direct methods
.method constructor <init>(Lccsancom/google/gson/internal/bind/TypeAdapters$35;Ljava/lang/Class;)V
    .locals 0
    .param p1, "this$0"    # Lccsancom/google/gson/internal/bind/TypeAdapters$35;

    .line 888
    iput-object p1, p0, Lccsancom/google/gson/internal/bind/TypeAdapters$35$1;->this$0:Lccsancom/google/gson/internal/bind/TypeAdapters$35;

    iput-object p2, p0, Lccsancom/google/gson/internal/bind/TypeAdapters$35$1;->val$requestedType:Ljava/lang/Class;

    invoke-direct {p0}, Lccsancom/google/gson/TypeAdapter;-><init>()V

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
            ")TT1;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 894
    iget-object v0, p0, Lccsancom/google/gson/internal/bind/TypeAdapters$35$1;->this$0:Lccsancom/google/gson/internal/bind/TypeAdapters$35;

    iget-object v0, v0, Lccsancom/google/gson/internal/bind/TypeAdapters$35;->val$typeAdapter:Lccsancom/google/gson/TypeAdapter;

    invoke-virtual {v0, p1}, Lccsancom/google/gson/TypeAdapter;->read(Lccsancom/google/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object v0

    .line 895
    .local v0, "result":Ljava/lang/Object;, "TT1;"
    if-eqz v0, :cond_1

    iget-object v1, p0, Lccsancom/google/gson/internal/bind/TypeAdapters$35$1;->val$requestedType:Ljava/lang/Class;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 896
    :cond_0
    new-instance v1, Lccsancom/google/gson/JsonSyntaxException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Expected a "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lccsancom/google/gson/internal/bind/TypeAdapters$35$1;->val$requestedType:Ljava/lang/Class;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " but was "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 897
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lccsancom/google/gson/JsonSyntaxException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 899
    :cond_1
    :goto_0
    return-object v0
.end method

.method public write(Lccsancom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V
    .locals 1
    .param p1, "out"    # Lccsancom/google/gson/stream/JsonWriter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/google/gson/stream/JsonWriter;",
            "TT1;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 890
    .local p2, "value":Ljava/lang/Object;, "TT1;"
    iget-object v0, p0, Lccsancom/google/gson/internal/bind/TypeAdapters$35$1;->this$0:Lccsancom/google/gson/internal/bind/TypeAdapters$35;

    iget-object v0, v0, Lccsancom/google/gson/internal/bind/TypeAdapters$35;->val$typeAdapter:Lccsancom/google/gson/TypeAdapter;

    invoke-virtual {v0, p1, p2}, Lccsancom/google/gson/TypeAdapter;->write(Lccsancom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V

    .line 891
    return-void
.end method
