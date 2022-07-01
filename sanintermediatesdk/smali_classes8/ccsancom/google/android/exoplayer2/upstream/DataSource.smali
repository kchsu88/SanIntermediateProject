.class public interface abstract Lccsancom/google/android/exoplayer2/upstream/DataSource;
.super Ljava/lang/Object;
.source "DataSource.java"

# interfaces
.implements Lccsancom/google/android/exoplayer2/upstream/DataReader;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsancom/google/android/exoplayer2/upstream/DataSource$Factory;
    }
.end annotation


# virtual methods
.method public abstract addTransferListener(Lccsancom/google/android/exoplayer2/upstream/TransferListener;)V
.end method

.method public abstract close()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract getResponseHeaders()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end method

.method public abstract getUri()Lccsanandroid/net/Uri;
.end method

.method public abstract open(Lccsancom/google/android/exoplayer2/upstream/DataSpec;)J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
