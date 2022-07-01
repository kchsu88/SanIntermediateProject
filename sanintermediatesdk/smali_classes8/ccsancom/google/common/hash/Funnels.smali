.class public final Lccsancom/google/common/hash/Funnels;
.super Ljava/lang/Object;
.source "Funnels.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsancom/google/common/hash/Funnels$SinkAsStream;,
        Lccsancom/google/common/hash/Funnels$LongFunnel;,
        Lccsancom/google/common/hash/Funnels$SequentialFunnel;,
        Lccsancom/google/common/hash/Funnels$IntegerFunnel;,
        Lccsancom/google/common/hash/Funnels$StringCharsetFunnel;,
        Lccsancom/google/common/hash/Funnels$UnencodedCharsFunnel;,
        Lccsancom/google/common/hash/Funnels$ByteArrayFunnel;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static asOutputStream(Lccsancom/google/common/hash/PrimitiveSink;)Ljava/io/OutputStream;
    .locals 1
    .param p0, "sink"    # Lccsancom/google/common/hash/PrimitiveSink;

    .line 239
    new-instance v0, Lccsancom/google/common/hash/Funnels$SinkAsStream;

    invoke-direct {v0, p0}, Lccsancom/google/common/hash/Funnels$SinkAsStream;-><init>(Lccsancom/google/common/hash/PrimitiveSink;)V

    return-object v0
.end method

.method public static byteArrayFunnel()Lccsancom/google/common/hash/Funnel;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lccsancom/google/common/hash/Funnel<",
            "[B>;"
        }
    .end annotation

    .line 36
    sget-object v0, Lccsancom/google/common/hash/Funnels$ByteArrayFunnel;->INSTANCE:Lccsancom/google/common/hash/Funnels$ByteArrayFunnel;

    return-object v0
.end method

.method public static integerFunnel()Lccsancom/google/common/hash/Funnel;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lccsancom/google/common/hash/Funnel<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 144
    sget-object v0, Lccsancom/google/common/hash/Funnels$IntegerFunnel;->INSTANCE:Lccsancom/google/common/hash/Funnels$IntegerFunnel;

    return-object v0
.end method

.method public static longFunnel()Lccsancom/google/common/hash/Funnel;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lccsancom/google/common/hash/Funnel<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 211
    sget-object v0, Lccsancom/google/common/hash/Funnels$LongFunnel;->INSTANCE:Lccsancom/google/common/hash/Funnels$LongFunnel;

    return-object v0
.end method

.method public static sequentialFunnel(Lccsancom/google/common/hash/Funnel;)Lccsancom/google/common/hash/Funnel;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lccsancom/google/common/hash/Funnel<",
            "TE;>;)",
            "Lccsancom/google/common/hash/Funnel<",
            "Ljava/lang/Iterable<",
            "+TE;>;>;"
        }
    .end annotation

    .line 168
    .local p0, "elementFunnel":Lccsancom/google/common/hash/Funnel;, "Lccsancom/google/common/hash/Funnel<TE;>;"
    new-instance v0, Lccsancom/google/common/hash/Funnels$SequentialFunnel;

    invoke-direct {v0, p0}, Lccsancom/google/common/hash/Funnels$SequentialFunnel;-><init>(Lccsancom/google/common/hash/Funnel;)V

    return-object v0
.end method

.method public static stringFunnel(Ljava/nio/charset/Charset;)Lccsancom/google/common/hash/Funnel;
    .locals 1
    .param p0, "charset"    # Ljava/nio/charset/Charset;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/charset/Charset;",
            ")",
            "Lccsancom/google/common/hash/Funnel<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation

    .line 85
    new-instance v0, Lccsancom/google/common/hash/Funnels$StringCharsetFunnel;

    invoke-direct {v0, p0}, Lccsancom/google/common/hash/Funnels$StringCharsetFunnel;-><init>(Ljava/nio/charset/Charset;)V

    return-object v0
.end method

.method public static unencodedCharsFunnel()Lccsancom/google/common/hash/Funnel;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lccsancom/google/common/hash/Funnel<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation

    .line 61
    sget-object v0, Lccsancom/google/common/hash/Funnels$UnencodedCharsFunnel;->INSTANCE:Lccsancom/google/common/hash/Funnels$UnencodedCharsFunnel;

    return-object v0
.end method
