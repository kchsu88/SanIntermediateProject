.class final Lccsancom/google/android/exoplayer2/MediaSourceList$MediaSourceAndListener;
.super Ljava/lang/Object;
.source "MediaSourceList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/google/android/exoplayer2/MediaSourceList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "MediaSourceAndListener"
.end annotation


# instance fields
.field public final caller:Lccsancom/google/android/exoplayer2/source/MediaSource$MediaSourceCaller;

.field public final eventListener:Lccsancom/google/android/exoplayer2/MediaSourceList$ForwardingEventListener;

.field public final mediaSource:Lccsancom/google/android/exoplayer2/source/MediaSource;


# direct methods
.method public constructor <init>(Lccsancom/google/android/exoplayer2/source/MediaSource;Lccsancom/google/android/exoplayer2/source/MediaSource$MediaSourceCaller;Lccsancom/google/android/exoplayer2/MediaSourceList$ForwardingEventListener;)V
    .locals 0
    .param p1, "mediaSource"    # Lccsancom/google/android/exoplayer2/source/MediaSource;
    .param p2, "caller"    # Lccsancom/google/android/exoplayer2/source/MediaSource$MediaSourceCaller;
    .param p3, "eventListener"    # Lccsancom/google/android/exoplayer2/MediaSourceList$ForwardingEventListener;

    .line 514
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 515
    iput-object p1, p0, Lccsancom/google/android/exoplayer2/MediaSourceList$MediaSourceAndListener;->mediaSource:Lccsancom/google/android/exoplayer2/source/MediaSource;

    .line 516
    iput-object p2, p0, Lccsancom/google/android/exoplayer2/MediaSourceList$MediaSourceAndListener;->caller:Lccsancom/google/android/exoplayer2/source/MediaSource$MediaSourceCaller;

    .line 517
    iput-object p3, p0, Lccsancom/google/android/exoplayer2/MediaSourceList$MediaSourceAndListener;->eventListener:Lccsancom/google/android/exoplayer2/MediaSourceList$ForwardingEventListener;

    .line 518
    return-void
.end method
