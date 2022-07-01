.class final synthetic Lccsankotlin/io/LineReader$readLine$1;
.super Lccsankotlin/jvm/internal/MutablePropertyReference0Impl;
.source "Console.kt"


# annotations
.annotation runtime Lccsankotlin/Metadata;
    k = 0x3
    mv = {
        0x1,
        0x5,
        0x1
    }
.end annotation


# direct methods
.method constructor <init>(Lccsankotlin/io/LineReader;)V
    .locals 6

    const-class v2, Lccsankotlin/io/LineReader;

    const-string v3, "decoder"

    const-string v4, "getDecoder()Ljava/nio/charset/CharsetDecoder;"

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lccsankotlin/jvm/internal/MutablePropertyReference0Impl;-><init>(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public get()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lccsankotlin/io/LineReader$readLine$1;->receiver:Ljava/lang/Object;

    check-cast v0, Lccsankotlin/io/LineReader;

    .line 169
    invoke-static {v0}, Lccsankotlin/io/LineReader;->access$getDecoder$p(Lccsankotlin/io/LineReader;)Ljava/nio/charset/CharsetDecoder;

    move-result-object v0

    return-object v0
.end method

.method public set(Ljava/lang/Object;)V
    .locals 2
    .param p1, "value"    # Ljava/lang/Object;

    iget-object v0, p0, Lccsankotlin/io/LineReader$readLine$1;->receiver:Ljava/lang/Object;

    check-cast v0, Lccsankotlin/io/LineReader;

    .line 169
    move-object v1, p1

    check-cast v1, Ljava/nio/charset/CharsetDecoder;

    invoke-static {v0, v1}, Lccsankotlin/io/LineReader;->access$setDecoder$p(Lccsankotlin/io/LineReader;Ljava/nio/charset/CharsetDecoder;)V

    return-void
.end method
