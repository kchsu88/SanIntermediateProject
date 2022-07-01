.class public final Lccsancom/google/android/exoplayer2/upstream/DefaultDataSource$Factory;
.super Ljava/lang/Object;
.source "DefaultDataSource.java"

# interfaces
.implements Lccsancom/google/android/exoplayer2/upstream/DataSource$Factory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/google/android/exoplayer2/upstream/DefaultDataSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Factory"
.end annotation


# instance fields
.field private final baseDataSourceFactory:Lccsancom/google/android/exoplayer2/upstream/DataSource$Factory;

.field private final context:Lccsanandroid/content/Context;

.field private transferListener:Lccsancom/google/android/exoplayer2/upstream/TransferListener;


# direct methods
.method public constructor <init>(Lccsanandroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Lccsanandroid/content/Context;

    .line 71
    new-instance v0, Lccsancom/google/android/exoplayer2/upstream/DefaultHttpDataSource$Factory;

    invoke-direct {v0}, Lccsancom/google/android/exoplayer2/upstream/DefaultHttpDataSource$Factory;-><init>()V

    invoke-direct {p0, p1, v0}, Lccsancom/google/android/exoplayer2/upstream/DefaultDataSource$Factory;-><init>(Lccsanandroid/content/Context;Lccsancom/google/android/exoplayer2/upstream/DataSource$Factory;)V

    .line 72
    return-void
.end method

.method public constructor <init>(Lccsanandroid/content/Context;Lccsancom/google/android/exoplayer2/upstream/DataSource$Factory;)V
    .locals 1
    .param p1, "context"    # Lccsanandroid/content/Context;
    .param p2, "baseDataSourceFactory"    # Lccsancom/google/android/exoplayer2/upstream/DataSource$Factory;

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    invoke-virtual {p1}, Lccsanandroid/content/Context;->getApplicationContext()Lccsanandroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lccsancom/google/android/exoplayer2/upstream/DefaultDataSource$Factory;->context:Lccsanandroid/content/Context;

    .line 86
    iput-object p2, p0, Lccsancom/google/android/exoplayer2/upstream/DefaultDataSource$Factory;->baseDataSourceFactory:Lccsancom/google/android/exoplayer2/upstream/DataSource$Factory;

    .line 87
    return-void
.end method


# virtual methods
.method public bridge synthetic createDataSource()Lccsancom/google/android/exoplayer2/upstream/DataSource;
    .locals 1

    .line 59
    invoke-virtual {p0}, Lccsancom/google/android/exoplayer2/upstream/DefaultDataSource$Factory;->createDataSource()Lccsancom/google/android/exoplayer2/upstream/DefaultDataSource;

    move-result-object v0

    return-object v0
.end method

.method public createDataSource()Lccsancom/google/android/exoplayer2/upstream/DefaultDataSource;
    .locals 3

    .line 106
    new-instance v0, Lccsancom/google/android/exoplayer2/upstream/DefaultDataSource;

    iget-object v1, p0, Lccsancom/google/android/exoplayer2/upstream/DefaultDataSource$Factory;->context:Lccsanandroid/content/Context;

    iget-object v2, p0, Lccsancom/google/android/exoplayer2/upstream/DefaultDataSource$Factory;->baseDataSourceFactory:Lccsancom/google/android/exoplayer2/upstream/DataSource$Factory;

    .line 107
    invoke-interface {v2}, Lccsancom/google/android/exoplayer2/upstream/DataSource$Factory;->createDataSource()Lccsancom/google/android/exoplayer2/upstream/DataSource;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lccsancom/google/android/exoplayer2/upstream/DefaultDataSource;-><init>(Lccsanandroid/content/Context;Lccsancom/google/android/exoplayer2/upstream/DataSource;)V

    .line 108
    .local v0, "dataSource":Lccsancom/google/android/exoplayer2/upstream/DefaultDataSource;
    iget-object v1, p0, Lccsancom/google/android/exoplayer2/upstream/DefaultDataSource$Factory;->transferListener:Lccsancom/google/android/exoplayer2/upstream/TransferListener;

    if-eqz v1, :cond_0

    .line 109
    invoke-virtual {v0, v1}, Lccsancom/google/android/exoplayer2/upstream/DefaultDataSource;->addTransferListener(Lccsancom/google/android/exoplayer2/upstream/TransferListener;)V

    .line 111
    :cond_0
    return-object v0
.end method

.method public setTransferListener(Lccsancom/google/android/exoplayer2/upstream/TransferListener;)Lccsancom/google/android/exoplayer2/upstream/DefaultDataSource$Factory;
    .locals 0
    .param p1, "transferListener"    # Lccsancom/google/android/exoplayer2/upstream/TransferListener;

    .line 100
    iput-object p1, p0, Lccsancom/google/android/exoplayer2/upstream/DefaultDataSource$Factory;->transferListener:Lccsancom/google/android/exoplayer2/upstream/TransferListener;

    .line 101
    return-object p0
.end method
