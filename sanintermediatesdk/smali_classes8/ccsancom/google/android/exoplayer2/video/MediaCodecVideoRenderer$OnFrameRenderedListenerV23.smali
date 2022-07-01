.class final Lccsancom/google/android/exoplayer2/video/MediaCodecVideoRenderer$OnFrameRenderedListenerV23;
.super Ljava/lang/Object;
.source "MediaCodecVideoRenderer.java"

# interfaces
.implements Lccsancom/google/android/exoplayer2/mediacodec/MediaCodecAdapter$OnFrameRenderedListener;
.implements Lccsanandroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/google/android/exoplayer2/video/MediaCodecVideoRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "OnFrameRenderedListenerV23"
.end annotation


# static fields
.field private static final HANDLE_FRAME_RENDERED:I


# instance fields
.field private final handler:Lccsanandroid/os/Handler;

.field final synthetic this$0:Lccsancom/google/android/exoplayer2/video/MediaCodecVideoRenderer;


# direct methods
.method public constructor <init>(Lccsancom/google/android/exoplayer2/video/MediaCodecVideoRenderer;Lccsancom/google/android/exoplayer2/mediacodec/MediaCodecAdapter;)V
    .locals 0
    .param p2, "codec"    # Lccsancom/google/android/exoplayer2/mediacodec/MediaCodecAdapter;

    .line 1900
    iput-object p1, p0, Lccsancom/google/android/exoplayer2/video/MediaCodecVideoRenderer$OnFrameRenderedListenerV23;->this$0:Lccsancom/google/android/exoplayer2/video/MediaCodecVideoRenderer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1901
    invoke-static {p0}, Lccsancom/google/android/exoplayer2/util/Util;->createHandlerForCurrentLooper(Lccsanandroid/os/Handler$Callback;)Lccsanandroid/os/Handler;

    move-result-object p1

    iput-object p1, p0, Lccsancom/google/android/exoplayer2/video/MediaCodecVideoRenderer$OnFrameRenderedListenerV23;->handler:Lccsanandroid/os/Handler;

    .line 1902
    invoke-interface {p2, p0, p1}, Lccsancom/google/android/exoplayer2/mediacodec/MediaCodecAdapter;->setOnFrameRenderedListener(Lccsancom/google/android/exoplayer2/mediacodec/MediaCodecAdapter$OnFrameRenderedListener;Lccsanandroid/os/Handler;)V

    .line 1903
    return-void
.end method

.method private handleFrameRendered(J)V
    .locals 3
    .param p1, "presentationTimeUs"    # J

    .line 1939
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/video/MediaCodecVideoRenderer$OnFrameRenderedListenerV23;->this$0:Lccsancom/google/android/exoplayer2/video/MediaCodecVideoRenderer;

    iget-object v0, v0, Lccsancom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->tunnelingOnFrameRenderedListener:Lccsancom/google/android/exoplayer2/video/MediaCodecVideoRenderer$OnFrameRenderedListenerV23;

    if-eq p0, v0, :cond_0

    .line 1941
    return-void

    .line 1943
    :cond_0
    const-wide v0, 0x7fffffffffffffffL

    cmp-long v2, p1, v0

    if-nez v2, :cond_1

    .line 1944
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/video/MediaCodecVideoRenderer$OnFrameRenderedListenerV23;->this$0:Lccsancom/google/android/exoplayer2/video/MediaCodecVideoRenderer;

    invoke-static {v0}, Lccsancom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->access$000(Lccsancom/google/android/exoplayer2/video/MediaCodecVideoRenderer;)V

    goto :goto_0

    .line 1947
    :cond_1
    :try_start_0
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/video/MediaCodecVideoRenderer$OnFrameRenderedListenerV23;->this$0:Lccsancom/google/android/exoplayer2/video/MediaCodecVideoRenderer;

    invoke-virtual {v0, p1, p2}, Lccsancom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->onProcessedTunneledBuffer(J)V
    :try_end_0
    .catch Lccsancom/google/android/exoplayer2/ExoPlaybackException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1950
    goto :goto_0

    .line 1948
    :catch_0
    move-exception v0

    .line 1949
    .local v0, "e":Lccsancom/google/android/exoplayer2/ExoPlaybackException;
    iget-object v1, p0, Lccsancom/google/android/exoplayer2/video/MediaCodecVideoRenderer$OnFrameRenderedListenerV23;->this$0:Lccsancom/google/android/exoplayer2/video/MediaCodecVideoRenderer;

    invoke-static {v1, v0}, Lccsancom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->access$100(Lccsancom/google/android/exoplayer2/video/MediaCodecVideoRenderer;Lccsancom/google/android/exoplayer2/ExoPlaybackException;)V

    .line 1952
    .end local v0    # "e":Lccsancom/google/android/exoplayer2/ExoPlaybackException;
    :goto_0
    return-void
.end method


# virtual methods
.method public handleMessage(Lccsanandroid/os/Message;)Z
    .locals 2
    .param p1, "message"    # Lccsanandroid/os/Message;

    .line 1929
    iget v0, p1, Lccsanandroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 1934
    const/4 v0, 0x0

    return v0

    .line 1931
    :pswitch_0
    iget v0, p1, Lccsanandroid/os/Message;->arg1:I

    iget v1, p1, Lccsanandroid/os/Message;->arg2:I

    invoke-static {v0, v1}, Lccsancom/google/android/exoplayer2/util/Util;->toLong(II)J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lccsancom/google/android/exoplayer2/video/MediaCodecVideoRenderer$OnFrameRenderedListenerV23;->handleFrameRendered(J)V

    .line 1932
    const/4 v0, 0x1

    return v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public onFrameRendered(Lccsancom/google/android/exoplayer2/mediacodec/MediaCodecAdapter;JJ)V
    .locals 4
    .param p1, "codec"    # Lccsancom/google/android/exoplayer2/mediacodec/MediaCodecAdapter;
    .param p2, "presentationTimeUs"    # J
    .param p4, "nanoTime"    # J

    .line 1914
    sget v0, Lccsancom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 v1, 0x1e

    if-ge v0, v1, :cond_0

    .line 1915
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/video/MediaCodecVideoRenderer$OnFrameRenderedListenerV23;->handler:Lccsanandroid/os/Handler;

    const/4 v1, 0x0

    const/16 v2, 0x20

    shr-long v2, p2, v2

    long-to-int v3, v2

    long-to-int v2, p2

    .line 1916
    invoke-static {v0, v1, v3, v2}, Lccsanandroid/os/Message;->obtain(Lccsanandroid/os/Handler;III)Lccsanandroid/os/Message;

    move-result-object v0

    .line 1921
    .local v0, "message":Lccsanandroid/os/Message;
    iget-object v1, p0, Lccsancom/google/android/exoplayer2/video/MediaCodecVideoRenderer$OnFrameRenderedListenerV23;->handler:Lccsanandroid/os/Handler;

    invoke-virtual {v1, v0}, Lccsanandroid/os/Handler;->sendMessageAtFrontOfQueue(Lccsanandroid/os/Message;)Z

    .line 1922
    .end local v0    # "message":Lccsanandroid/os/Message;
    goto :goto_0

    .line 1923
    :cond_0
    invoke-direct {p0, p2, p3}, Lccsancom/google/android/exoplayer2/video/MediaCodecVideoRenderer$OnFrameRenderedListenerV23;->handleFrameRendered(J)V

    .line 1925
    :goto_0
    return-void
.end method
