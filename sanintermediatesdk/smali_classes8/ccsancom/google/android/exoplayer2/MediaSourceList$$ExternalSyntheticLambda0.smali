.class public final synthetic Lccsancom/google/android/exoplayer2/MediaSourceList$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lccsancom/google/android/exoplayer2/source/MediaSource$MediaSourceCaller;


# instance fields
.field public final synthetic f$0:Lccsancom/google/android/exoplayer2/MediaSourceList;


# direct methods
.method public synthetic constructor <init>(Lccsancom/google/android/exoplayer2/MediaSourceList;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lccsancom/google/android/exoplayer2/MediaSourceList$$ExternalSyntheticLambda0;->f$0:Lccsancom/google/android/exoplayer2/MediaSourceList;

    return-void
.end method


# virtual methods
.method public final onSourceInfoRefreshed(Lccsancom/google/android/exoplayer2/source/MediaSource;Lccsancom/google/android/exoplayer2/Timeline;)V
    .locals 1

    iget-object v0, p0, Lccsancom/google/android/exoplayer2/MediaSourceList$$ExternalSyntheticLambda0;->f$0:Lccsancom/google/android/exoplayer2/MediaSourceList;

    invoke-virtual {v0, p1, p2}, Lccsancom/google/android/exoplayer2/MediaSourceList;->lambda$prepareChildSource$0$com-google-android-exoplayer2-MediaSourceList(Lccsancom/google/android/exoplayer2/source/MediaSource;Lccsancom/google/android/exoplayer2/Timeline;)V

    return-void
.end method
