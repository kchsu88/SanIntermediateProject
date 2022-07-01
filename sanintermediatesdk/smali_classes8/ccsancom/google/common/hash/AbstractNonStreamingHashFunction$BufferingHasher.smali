.class final Lccsancom/google/common/hash/AbstractNonStreamingHashFunction$BufferingHasher;
.super Lccsancom/google/common/hash/AbstractHasher;
.source "AbstractNonStreamingHashFunction.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/google/common/hash/AbstractNonStreamingHashFunction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "BufferingHasher"
.end annotation


# instance fields
.field final stream:Lccsancom/google/common/hash/AbstractNonStreamingHashFunction$ExposedByteArrayOutputStream;

.field final synthetic this$0:Lccsancom/google/common/hash/AbstractNonStreamingHashFunction;


# direct methods
.method constructor <init>(Lccsancom/google/common/hash/AbstractNonStreamingHashFunction;I)V
    .locals 0
    .param p2, "expectedInputSize"    # I

    .line 82
    iput-object p1, p0, Lccsancom/google/common/hash/AbstractNonStreamingHashFunction$BufferingHasher;->this$0:Lccsancom/google/common/hash/AbstractNonStreamingHashFunction;

    invoke-direct {p0}, Lccsancom/google/common/hash/AbstractHasher;-><init>()V

    .line 83
    new-instance p1, Lccsancom/google/common/hash/AbstractNonStreamingHashFunction$ExposedByteArrayOutputStream;

    invoke-direct {p1, p2}, Lccsancom/google/common/hash/AbstractNonStreamingHashFunction$ExposedByteArrayOutputStream;-><init>(I)V

    iput-object p1, p0, Lccsancom/google/common/hash/AbstractNonStreamingHashFunction$BufferingHasher;->stream:Lccsancom/google/common/hash/AbstractNonStreamingHashFunction$ExposedByteArrayOutputStream;

    .line 84
    return-void
.end method


# virtual methods
.method public hash()Lccsancom/google/common/hash/HashCode;
    .locals 4

    .line 106
    iget-object v0, p0, Lccsancom/google/common/hash/AbstractNonStreamingHashFunction$BufferingHasher;->this$0:Lccsancom/google/common/hash/AbstractNonStreamingHashFunction;

    iget-object v1, p0, Lccsancom/google/common/hash/AbstractNonStreamingHashFunction$BufferingHasher;->stream:Lccsancom/google/common/hash/AbstractNonStreamingHashFunction$ExposedByteArrayOutputStream;

    invoke-virtual {v1}, Lccsancom/google/common/hash/AbstractNonStreamingHashFunction$ExposedByteArrayOutputStream;->byteArray()[B

    move-result-object v1

    iget-object v2, p0, Lccsancom/google/common/hash/AbstractNonStreamingHashFunction$BufferingHasher;->stream:Lccsancom/google/common/hash/AbstractNonStreamingHashFunction$ExposedByteArrayOutputStream;

    invoke-virtual {v2}, Lccsancom/google/common/hash/AbstractNonStreamingHashFunction$ExposedByteArrayOutputStream;->length()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Lccsancom/google/common/hash/AbstractNonStreamingHashFunction;->hashBytes([BII)Lccsancom/google/common/hash/HashCode;

    move-result-object v0

    return-object v0
.end method

.method public putByte(B)Lccsancom/google/common/hash/Hasher;
    .locals 1
    .param p1, "b"    # B

    .line 88
    iget-object v0, p0, Lccsancom/google/common/hash/AbstractNonStreamingHashFunction$BufferingHasher;->stream:Lccsancom/google/common/hash/AbstractNonStreamingHashFunction$ExposedByteArrayOutputStream;

    invoke-virtual {v0, p1}, Lccsancom/google/common/hash/AbstractNonStreamingHashFunction$ExposedByteArrayOutputStream;->write(I)V

    .line 89
    return-object p0
.end method

.method public bridge synthetic putByte(B)Lccsancom/google/common/hash/PrimitiveSink;
    .locals 0

    .line 79
    invoke-virtual {p0, p1}, Lccsancom/google/common/hash/AbstractNonStreamingHashFunction$BufferingHasher;->putByte(B)Lccsancom/google/common/hash/Hasher;

    move-result-object p1

    return-object p1
.end method

.method public putBytes(Ljava/nio/ByteBuffer;)Lccsancom/google/common/hash/Hasher;
    .locals 1
    .param p1, "bytes"    # Ljava/nio/ByteBuffer;

    .line 100
    iget-object v0, p0, Lccsancom/google/common/hash/AbstractNonStreamingHashFunction$BufferingHasher;->stream:Lccsancom/google/common/hash/AbstractNonStreamingHashFunction$ExposedByteArrayOutputStream;

    invoke-virtual {v0, p1}, Lccsancom/google/common/hash/AbstractNonStreamingHashFunction$ExposedByteArrayOutputStream;->write(Ljava/nio/ByteBuffer;)V

    .line 101
    return-object p0
.end method

.method public putBytes([BII)Lccsancom/google/common/hash/Hasher;
    .locals 1
    .param p1, "bytes"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I

    .line 94
    iget-object v0, p0, Lccsancom/google/common/hash/AbstractNonStreamingHashFunction$BufferingHasher;->stream:Lccsancom/google/common/hash/AbstractNonStreamingHashFunction$ExposedByteArrayOutputStream;

    invoke-virtual {v0, p1, p2, p3}, Lccsancom/google/common/hash/AbstractNonStreamingHashFunction$ExposedByteArrayOutputStream;->write([BII)V

    .line 95
    return-object p0
.end method

.method public bridge synthetic putBytes(Ljava/nio/ByteBuffer;)Lccsancom/google/common/hash/PrimitiveSink;
    .locals 0

    .line 79
    invoke-virtual {p0, p1}, Lccsancom/google/common/hash/AbstractNonStreamingHashFunction$BufferingHasher;->putBytes(Ljava/nio/ByteBuffer;)Lccsancom/google/common/hash/Hasher;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic putBytes([BII)Lccsancom/google/common/hash/PrimitiveSink;
    .locals 0

    .line 79
    invoke-virtual {p0, p1, p2, p3}, Lccsancom/google/common/hash/AbstractNonStreamingHashFunction$BufferingHasher;->putBytes([BII)Lccsancom/google/common/hash/Hasher;

    move-result-object p1

    return-object p1
.end method
