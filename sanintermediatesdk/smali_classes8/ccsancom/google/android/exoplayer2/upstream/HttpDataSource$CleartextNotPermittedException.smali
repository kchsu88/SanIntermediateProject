.class public final Lccsancom/google/android/exoplayer2/upstream/HttpDataSource$CleartextNotPermittedException;
.super Lccsancom/google/android/exoplayer2/upstream/HttpDataSource$HttpDataSourceException;
.source "HttpDataSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/google/android/exoplayer2/upstream/HttpDataSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CleartextNotPermittedException"
.end annotation


# direct methods
.method public constructor <init>(Ljava/io/IOException;Lccsancom/google/android/exoplayer2/upstream/DataSpec;)V
    .locals 6
    .param p1, "cause"    # Ljava/io/IOException;
    .param p2, "dataSpec"    # Lccsancom/google/android/exoplayer2/upstream/DataSpec;

    .line 363
    const-string v1, "Cleartext HTTP traffic not permitted. See https://exoplayer.dev/issues/cleartext-not-permitted"

    const/16 v4, 0x7d7

    const/4 v5, 0x1

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Lccsancom/google/android/exoplayer2/upstream/HttpDataSource$HttpDataSourceException;-><init>(Ljava/lang/String;Ljava/io/IOException;Lccsancom/google/android/exoplayer2/upstream/DataSpec;II)V

    .line 370
    return-void
.end method
