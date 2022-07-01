.class Lccsancom/google/gson/Gson$FutureTypeAdapter;
.super Lccsancom/google/gson/TypeAdapter;
.source "Gson.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/google/gson/Gson;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "FutureTypeAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lccsancom/google/gson/TypeAdapter<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private delegate:Lccsancom/google/gson/TypeAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lccsancom/google/gson/TypeAdapter<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1006
    .local p0, "this":Lccsancom/google/gson/Gson$FutureTypeAdapter;, "Lccsancom/google/gson/Gson$FutureTypeAdapter<TT;>;"
    invoke-direct {p0}, Lccsancom/google/gson/TypeAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public read(Lccsancom/google/gson/stream/JsonReader;)Ljava/lang/Object;
    .locals 1
    .param p1, "in"    # Lccsancom/google/gson/stream/JsonReader;
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

    .line 1017
    .local p0, "this":Lccsancom/google/gson/Gson$FutureTypeAdapter;, "Lccsancom/google/gson/Gson$FutureTypeAdapter<TT;>;"
    iget-object v0, p0, Lccsancom/google/gson/Gson$FutureTypeAdapter;->delegate:Lccsancom/google/gson/TypeAdapter;

    if-eqz v0, :cond_0

    .line 1020
    invoke-virtual {v0, p1}, Lccsancom/google/gson/TypeAdapter;->read(Lccsancom/google/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 1018
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public setDelegate(Lccsancom/google/gson/TypeAdapter;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/google/gson/TypeAdapter<",
            "TT;>;)V"
        }
    .end annotation

    .line 1010
    .local p0, "this":Lccsancom/google/gson/Gson$FutureTypeAdapter;, "Lccsancom/google/gson/Gson$FutureTypeAdapter<TT;>;"
    .local p1, "typeAdapter":Lccsancom/google/gson/TypeAdapter;, "Lccsancom/google/gson/TypeAdapter<TT;>;"
    iget-object v0, p0, Lccsancom/google/gson/Gson$FutureTypeAdapter;->delegate:Lccsancom/google/gson/TypeAdapter;

    if-nez v0, :cond_0

    .line 1013
    iput-object p1, p0, Lccsancom/google/gson/Gson$FutureTypeAdapter;->delegate:Lccsancom/google/gson/TypeAdapter;

    .line 1014
    return-void

    .line 1011
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public write(Lccsancom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V
    .locals 1
    .param p1, "out"    # Lccsancom/google/gson/stream/JsonWriter;
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

    .line 1024
    .local p0, "this":Lccsancom/google/gson/Gson$FutureTypeAdapter;, "Lccsancom/google/gson/Gson$FutureTypeAdapter<TT;>;"
    .local p2, "value":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lccsancom/google/gson/Gson$FutureTypeAdapter;->delegate:Lccsancom/google/gson/TypeAdapter;

    if-eqz v0, :cond_0

    .line 1027
    invoke-virtual {v0, p1, p2}, Lccsancom/google/gson/TypeAdapter;->write(Lccsancom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V

    .line 1028
    return-void

    .line 1025
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method
