.class public interface abstract Lccsancom/google/android/exoplayer2/upstream/HttpDataSource$Factory;
.super Ljava/lang/Object;
.source "HttpDataSource.java"

# interfaces
.implements Lccsancom/google/android/exoplayer2/upstream/DataSource$Factory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/google/android/exoplayer2/upstream/HttpDataSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Factory"
.end annotation


# virtual methods
.method public abstract createDataSource()Lccsancom/google/android/exoplayer2/upstream/HttpDataSource;
.end method

.method public abstract setDefaultRequestProperties(Ljava/util/Map;)Lccsancom/google/android/exoplayer2/upstream/HttpDataSource$Factory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lccsancom/google/android/exoplayer2/upstream/HttpDataSource$Factory;"
        }
    .end annotation
.end method
