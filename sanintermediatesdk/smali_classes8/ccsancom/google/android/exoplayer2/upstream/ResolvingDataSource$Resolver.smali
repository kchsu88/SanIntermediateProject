.class public interface abstract Lccsancom/google/android/exoplayer2/upstream/ResolvingDataSource$Resolver;
.super Ljava/lang/Object;
.source "ResolvingDataSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/google/android/exoplayer2/upstream/ResolvingDataSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Resolver"
.end annotation


# virtual methods
.method public abstract resolveDataSpec(Lccsancom/google/android/exoplayer2/upstream/DataSpec;)Lccsancom/google/android/exoplayer2/upstream/DataSpec;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract resolveReportedUri(Lccsanandroid/net/Uri;)Lccsanandroid/net/Uri;
.end method
