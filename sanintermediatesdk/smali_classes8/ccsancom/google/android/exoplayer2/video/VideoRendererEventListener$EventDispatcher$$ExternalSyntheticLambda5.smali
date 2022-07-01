.class public final synthetic Lccsancom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lccsancom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;

.field public final synthetic f$1:Lccsancom/google/android/exoplayer2/video/VideoSize;


# direct methods
.method public synthetic constructor <init>(Lccsancom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;Lccsancom/google/android/exoplayer2/video/VideoSize;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lccsancom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher$$ExternalSyntheticLambda5;->f$0:Lccsancom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;

    iput-object p2, p0, Lccsancom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher$$ExternalSyntheticLambda5;->f$1:Lccsancom/google/android/exoplayer2/video/VideoSize;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lccsancom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher$$ExternalSyntheticLambda5;->f$0:Lccsancom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;

    iget-object v1, p0, Lccsancom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher$$ExternalSyntheticLambda5;->f$1:Lccsancom/google/android/exoplayer2/video/VideoSize;

    invoke-virtual {v0, v1}, Lccsancom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;->lambda$videoSizeChanged$5$com-google-android-exoplayer2-video-VideoRendererEventListener$EventDispatcher(Lccsancom/google/android/exoplayer2/video/VideoSize;)V

    return-void
.end method
