.class public interface abstract Lccsancom/google/common/hash/Hasher;
.super Ljava/lang/Object;
.source "Hasher.java"

# interfaces
.implements Lccsancom/google/common/hash/PrimitiveSink;


# virtual methods
.method public abstract hash()Lccsancom/google/common/hash/HashCode;
.end method

.method public abstract hashCode()I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract putBoolean(Z)Lccsancom/google/common/hash/Hasher;
.end method

.method public abstract putByte(B)Lccsancom/google/common/hash/Hasher;
.end method

.method public abstract putBytes(Ljava/nio/ByteBuffer;)Lccsancom/google/common/hash/Hasher;
.end method

.method public abstract putBytes([B)Lccsancom/google/common/hash/Hasher;
.end method

.method public abstract putBytes([BII)Lccsancom/google/common/hash/Hasher;
.end method

.method public abstract putChar(C)Lccsancom/google/common/hash/Hasher;
.end method

.method public abstract putDouble(D)Lccsancom/google/common/hash/Hasher;
.end method

.method public abstract putFloat(F)Lccsancom/google/common/hash/Hasher;
.end method

.method public abstract putInt(I)Lccsancom/google/common/hash/Hasher;
.end method

.method public abstract putLong(J)Lccsancom/google/common/hash/Hasher;
.end method

.method public abstract putObject(Ljava/lang/Object;Lccsancom/google/common/hash/Funnel;)Lccsancom/google/common/hash/Hasher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lccsancom/google/common/hash/Funnel<",
            "-TT;>;)",
            "Lccsancom/google/common/hash/Hasher;"
        }
    .end annotation
.end method

.method public abstract putShort(S)Lccsancom/google/common/hash/Hasher;
.end method

.method public abstract putString(Ljava/lang/CharSequence;Ljava/nio/charset/Charset;)Lccsancom/google/common/hash/Hasher;
.end method

.method public abstract putUnencodedChars(Ljava/lang/CharSequence;)Lccsancom/google/common/hash/Hasher;
.end method
