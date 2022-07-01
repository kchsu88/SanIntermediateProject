.class final Lccsancom/google/android/exoplayer2/ExoPlayerImpl$MediaSourceHolderSnapshot;
.super Ljava/lang/Object;
.source "ExoPlayerImpl.java"

# interfaces
.implements Lccsancom/google/android/exoplayer2/MediaSourceInfoHolder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/google/android/exoplayer2/ExoPlayerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "MediaSourceHolderSnapshot"
.end annotation


# instance fields
.field private timeline:Lccsancom/google/android/exoplayer2/Timeline;

.field private final uid:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Lccsancom/google/android/exoplayer2/Timeline;)V
    .locals 0
    .param p1, "uid"    # Ljava/lang/Object;
    .param p2, "timeline"    # Lccsancom/google/android/exoplayer2/Timeline;

    .line 1844
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1845
    iput-object p1, p0, Lccsancom/google/android/exoplayer2/ExoPlayerImpl$MediaSourceHolderSnapshot;->uid:Ljava/lang/Object;

    .line 1846
    iput-object p2, p0, Lccsancom/google/android/exoplayer2/ExoPlayerImpl$MediaSourceHolderSnapshot;->timeline:Lccsancom/google/android/exoplayer2/Timeline;

    .line 1847
    return-void
.end method

.method static synthetic access$002(Lccsancom/google/android/exoplayer2/ExoPlayerImpl$MediaSourceHolderSnapshot;Lccsancom/google/android/exoplayer2/Timeline;)Lccsancom/google/android/exoplayer2/Timeline;
    .locals 0
    .param p0, "x0"    # Lccsancom/google/android/exoplayer2/ExoPlayerImpl$MediaSourceHolderSnapshot;
    .param p1, "x1"    # Lccsancom/google/android/exoplayer2/Timeline;

    .line 1838
    iput-object p1, p0, Lccsancom/google/android/exoplayer2/ExoPlayerImpl$MediaSourceHolderSnapshot;->timeline:Lccsancom/google/android/exoplayer2/Timeline;

    return-object p1
.end method


# virtual methods
.method public getTimeline()Lccsancom/google/android/exoplayer2/Timeline;
    .locals 1

    .line 1856
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/ExoPlayerImpl$MediaSourceHolderSnapshot;->timeline:Lccsancom/google/android/exoplayer2/Timeline;

    return-object v0
.end method

.method public getUid()Ljava/lang/Object;
    .locals 1

    .line 1851
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/ExoPlayerImpl$MediaSourceHolderSnapshot;->uid:Ljava/lang/Object;

    return-object v0
.end method
