.class public final Lccsancom/google/android/exoplayer2/upstream/ResolvingDataSource$Factory;
.super Ljava/lang/Object;
.source "ResolvingDataSource.java"

# interfaces
.implements Lccsancom/google/android/exoplayer2/upstream/DataSource$Factory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/google/android/exoplayer2/upstream/ResolvingDataSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Factory"
.end annotation


# instance fields
.field private final resolver:Lccsancom/google/android/exoplayer2/upstream/ResolvingDataSource$Resolver;

.field private final upstreamFactory:Lccsancom/google/android/exoplayer2/upstream/DataSource$Factory;


# direct methods
.method public constructor <init>(Lccsancom/google/android/exoplayer2/upstream/DataSource$Factory;Lccsancom/google/android/exoplayer2/upstream/ResolvingDataSource$Resolver;)V
    .locals 0
    .param p1, "upstreamFactory"    # Lccsancom/google/android/exoplayer2/upstream/DataSource$Factory;
    .param p2, "resolver"    # Lccsancom/google/android/exoplayer2/upstream/ResolvingDataSource$Resolver;

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    iput-object p1, p0, Lccsancom/google/android/exoplayer2/upstream/ResolvingDataSource$Factory;->upstreamFactory:Lccsancom/google/android/exoplayer2/upstream/DataSource$Factory;

    .line 75
    iput-object p2, p0, Lccsancom/google/android/exoplayer2/upstream/ResolvingDataSource$Factory;->resolver:Lccsancom/google/android/exoplayer2/upstream/ResolvingDataSource$Resolver;

    .line 76
    return-void
.end method


# virtual methods
.method public bridge synthetic createDataSource()Lccsancom/google/android/exoplayer2/upstream/DataSource;
    .locals 1

    .line 63
    invoke-virtual {p0}, Lccsancom/google/android/exoplayer2/upstream/ResolvingDataSource$Factory;->createDataSource()Lccsancom/google/android/exoplayer2/upstream/ResolvingDataSource;

    move-result-object v0

    return-object v0
.end method

.method public createDataSource()Lccsancom/google/android/exoplayer2/upstream/ResolvingDataSource;
    .locals 3

    .line 80
    new-instance v0, Lccsancom/google/android/exoplayer2/upstream/ResolvingDataSource;

    iget-object v1, p0, Lccsancom/google/android/exoplayer2/upstream/ResolvingDataSource$Factory;->upstreamFactory:Lccsancom/google/android/exoplayer2/upstream/DataSource$Factory;

    invoke-interface {v1}, Lccsancom/google/android/exoplayer2/upstream/DataSource$Factory;->createDataSource()Lccsancom/google/android/exoplayer2/upstream/DataSource;

    move-result-object v1

    iget-object v2, p0, Lccsancom/google/android/exoplayer2/upstream/ResolvingDataSource$Factory;->resolver:Lccsancom/google/android/exoplayer2/upstream/ResolvingDataSource$Resolver;

    invoke-direct {v0, v1, v2}, Lccsancom/google/android/exoplayer2/upstream/ResolvingDataSource;-><init>(Lccsancom/google/android/exoplayer2/upstream/DataSource;Lccsancom/google/android/exoplayer2/upstream/ResolvingDataSource$Resolver;)V

    return-object v0
.end method
