.class final Lccsancom/google/android/exoplayer2/source/CompositeMediaSource$MediaSourceAndListener;
.super Ljava/lang/Object;
.source "CompositeMediaSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/google/android/exoplayer2/source/CompositeMediaSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "MediaSourceAndListener"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final caller:Lccsancom/google/android/exoplayer2/source/MediaSource$MediaSourceCaller;

.field public final eventListener:Lccsancom/google/android/exoplayer2/source/CompositeMediaSource$ForwardingEventListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lccsancom/google/android/exoplayer2/source/CompositeMediaSource<",
            "TT;>.ForwardingEvent",
            "Listener;"
        }
    .end annotation
.end field

.field public final mediaSource:Lccsancom/google/android/exoplayer2/source/MediaSource;


# direct methods
.method public constructor <init>(Lccsancom/google/android/exoplayer2/source/MediaSource;Lccsancom/google/android/exoplayer2/source/MediaSource$MediaSourceCaller;Lccsancom/google/android/exoplayer2/source/CompositeMediaSource$ForwardingEventListener;)V
    .locals 0
    .param p1, "mediaSource"    # Lccsancom/google/android/exoplayer2/source/MediaSource;
    .param p2, "caller"    # Lccsancom/google/android/exoplayer2/source/MediaSource$MediaSourceCaller;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/google/android/exoplayer2/source/MediaSource;",
            "Lccsancom/google/android/exoplayer2/source/MediaSource$MediaSourceCaller;",
            "Lccsancom/google/android/exoplayer2/source/CompositeMediaSource<",
            "TT;>.ForwardingEvent",
            "Listener;",
            ")V"
        }
    .end annotation

    .line 210
    .local p0, "this":Lccsancom/google/android/exoplayer2/source/CompositeMediaSource$MediaSourceAndListener;, "Lccsancom/google/android/exoplayer2/source/CompositeMediaSource$MediaSourceAndListener<TT;>;"
    .local p3, "eventListener":Lccsancom/google/android/exoplayer2/source/CompositeMediaSource$ForwardingEventListener;, "Lccsancom/google/android/exoplayer2/source/CompositeMediaSource<TT;>.ForwardingEventListener;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 211
    iput-object p1, p0, Lccsancom/google/android/exoplayer2/source/CompositeMediaSource$MediaSourceAndListener;->mediaSource:Lccsancom/google/android/exoplayer2/source/MediaSource;

    .line 212
    iput-object p2, p0, Lccsancom/google/android/exoplayer2/source/CompositeMediaSource$MediaSourceAndListener;->caller:Lccsancom/google/android/exoplayer2/source/MediaSource$MediaSourceCaller;

    .line 213
    iput-object p3, p0, Lccsancom/google/android/exoplayer2/source/CompositeMediaSource$MediaSourceAndListener;->eventListener:Lccsancom/google/android/exoplayer2/source/CompositeMediaSource$ForwardingEventListener;

    .line 214
    return-void
.end method
