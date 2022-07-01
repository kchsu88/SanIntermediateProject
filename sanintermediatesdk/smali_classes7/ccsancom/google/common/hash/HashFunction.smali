.class public interface abstract Lccsancom/google/common/hash/HashFunction;
.super Ljava/lang/Object;
.source "HashFunction.java"


# annotations
.annotation runtime Lccsancom/google/errorprone/annotations/Immutable;
.end annotation


# virtual methods
.method public abstract bits()I
.end method

.method public abstract hashBytes(Ljava/nio/ByteBuffer;)Lccsancom/google/common/hash/HashCode;
.end method

.method public abstract hashBytes([B)Lccsancom/google/common/hash/HashCode;
.end method

.method public abstract hashBytes([BII)Lccsancom/google/common/hash/HashCode;
.end method

.method public abstract hashInt(I)Lccsancom/google/common/hash/HashCode;
.end method

.method public abstract hashLong(J)Lccsancom/google/common/hash/HashCode;
.end method

.method public abstract hashObject(Ljava/lang/Object;Lccsancom/google/common/hash/Funnel;)Lccsancom/google/common/hash/HashCode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lccsancom/google/common/hash/Funnel<",
            "-TT;>;)",
            "Lccsancom/google/common/hash/HashCode;"
        }
    .end annotation
.end method

.method public abstract hashString(Ljava/lang/CharSequence;Ljava/nio/charset/Charset;)Lccsancom/google/common/hash/HashCode;
.end method

.method public abstract hashUnencodedChars(Ljava/lang/CharSequence;)Lccsancom/google/common/hash/HashCode;
.end method

.method public abstract newHasher()Lccsancom/google/common/hash/Hasher;
.end method

.method public abstract newHasher(I)Lccsancom/google/common/hash/Hasher;
.end method
