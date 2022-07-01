.class public final Lccsancom/google/android/exoplayer2/upstream/UdpDataSource$UdpDataSourceException;
.super Lccsancom/google/android/exoplayer2/upstream/DataSourceException;
.source "UdpDataSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/google/android/exoplayer2/upstream/UdpDataSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "UdpDataSourceException"
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/Throwable;I)V
    .locals 0
    .param p1, "cause"    # Ljava/lang/Throwable;
    .param p2, "errorCode"    # I

    .line 47
    invoke-direct {p0, p1, p2}, Lccsancom/google/android/exoplayer2/upstream/DataSourceException;-><init>(Ljava/lang/Throwable;I)V

    .line 48
    return-void
.end method
