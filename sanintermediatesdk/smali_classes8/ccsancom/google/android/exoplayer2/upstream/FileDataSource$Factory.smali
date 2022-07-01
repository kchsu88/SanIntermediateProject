.class public final Lccsancom/google/android/exoplayer2/upstream/FileDataSource$Factory;
.super Ljava/lang/Object;
.source "FileDataSource.java"

# interfaces
.implements Lccsancom/google/android/exoplayer2/upstream/DataSource$Factory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/google/android/exoplayer2/upstream/FileDataSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Factory"
.end annotation


# instance fields
.field private listener:Lccsancom/google/android/exoplayer2/upstream/TransferListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic createDataSource()Lccsancom/google/android/exoplayer2/upstream/DataSource;
    .locals 1

    .line 69
    invoke-virtual {p0}, Lccsancom/google/android/exoplayer2/upstream/FileDataSource$Factory;->createDataSource()Lccsancom/google/android/exoplayer2/upstream/FileDataSource;

    move-result-object v0

    return-object v0
.end method

.method public createDataSource()Lccsancom/google/android/exoplayer2/upstream/FileDataSource;
    .locals 2

    .line 86
    new-instance v0, Lccsancom/google/android/exoplayer2/upstream/FileDataSource;

    invoke-direct {v0}, Lccsancom/google/android/exoplayer2/upstream/FileDataSource;-><init>()V

    .line 87
    .local v0, "dataSource":Lccsancom/google/android/exoplayer2/upstream/FileDataSource;
    iget-object v1, p0, Lccsancom/google/android/exoplayer2/upstream/FileDataSource$Factory;->listener:Lccsancom/google/android/exoplayer2/upstream/TransferListener;

    if-eqz v1, :cond_0

    .line 88
    invoke-virtual {v0, v1}, Lccsancom/google/android/exoplayer2/upstream/FileDataSource;->addTransferListener(Lccsancom/google/android/exoplayer2/upstream/TransferListener;)V

    .line 90
    :cond_0
    return-object v0
.end method

.method public setListener(Lccsancom/google/android/exoplayer2/upstream/TransferListener;)Lccsancom/google/android/exoplayer2/upstream/FileDataSource$Factory;
    .locals 0
    .param p1, "listener"    # Lccsancom/google/android/exoplayer2/upstream/TransferListener;

    .line 80
    iput-object p1, p0, Lccsancom/google/android/exoplayer2/upstream/FileDataSource$Factory;->listener:Lccsancom/google/android/exoplayer2/upstream/TransferListener;

    .line 81
    return-object p0
.end method
