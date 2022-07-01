.class final Lccsancom/google/android/exoplayer2/MetadataRetriever$MetadataRetrieverInternal$MediaSourceHandlerCallback;
.super Ljava/lang/Object;
.source "MetadataRetriever.java"

# interfaces
.implements Lccsanandroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/google/android/exoplayer2/MetadataRetriever$MetadataRetrieverInternal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "MediaSourceHandlerCallback"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsancom/google/android/exoplayer2/MetadataRetriever$MetadataRetrieverInternal$MediaSourceHandlerCallback$MediaSourceCaller;
    }
.end annotation


# static fields
.field private static final ERROR_POLL_INTERVAL_MS:I = 0x64


# instance fields
.field private mediaPeriod:Lccsancom/google/android/exoplayer2/source/MediaPeriod;

.field private mediaSource:Lccsancom/google/android/exoplayer2/source/MediaSource;

.field private final mediaSourceCaller:Lccsancom/google/android/exoplayer2/MetadataRetriever$MetadataRetrieverInternal$MediaSourceHandlerCallback$MediaSourceCaller;

.field final synthetic this$0:Lccsancom/google/android/exoplayer2/MetadataRetriever$MetadataRetrieverInternal;


# direct methods
.method public constructor <init>(Lccsancom/google/android/exoplayer2/MetadataRetriever$MetadataRetrieverInternal;)V
    .locals 0

    .line 133
    iput-object p1, p0, Lccsancom/google/android/exoplayer2/MetadataRetriever$MetadataRetrieverInternal$MediaSourceHandlerCallback;->this$0:Lccsancom/google/android/exoplayer2/MetadataRetriever$MetadataRetrieverInternal;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 134
    new-instance p1, Lccsancom/google/android/exoplayer2/MetadataRetriever$MetadataRetrieverInternal$MediaSourceHandlerCallback$MediaSourceCaller;

    invoke-direct {p1, p0}, Lccsancom/google/android/exoplayer2/MetadataRetriever$MetadataRetrieverInternal$MediaSourceHandlerCallback$MediaSourceCaller;-><init>(Lccsancom/google/android/exoplayer2/MetadataRetriever$MetadataRetrieverInternal$MediaSourceHandlerCallback;)V

    iput-object p1, p0, Lccsancom/google/android/exoplayer2/MetadataRetriever$MetadataRetrieverInternal$MediaSourceHandlerCallback;->mediaSourceCaller:Lccsancom/google/android/exoplayer2/MetadataRetriever$MetadataRetrieverInternal$MediaSourceHandlerCallback$MediaSourceCaller;

    .line 135
    return-void
.end method

.method static synthetic access$500(Lccsancom/google/android/exoplayer2/MetadataRetriever$MetadataRetrieverInternal$MediaSourceHandlerCallback;)Lccsancom/google/android/exoplayer2/source/MediaPeriod;
    .locals 1
    .param p0, "x0"    # Lccsancom/google/android/exoplayer2/MetadataRetriever$MetadataRetrieverInternal$MediaSourceHandlerCallback;

    .line 124
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/MetadataRetriever$MetadataRetrieverInternal$MediaSourceHandlerCallback;->mediaPeriod:Lccsancom/google/android/exoplayer2/source/MediaPeriod;

    return-object v0
.end method

.method static synthetic access$502(Lccsancom/google/android/exoplayer2/MetadataRetriever$MetadataRetrieverInternal$MediaSourceHandlerCallback;Lccsancom/google/android/exoplayer2/source/MediaPeriod;)Lccsancom/google/android/exoplayer2/source/MediaPeriod;
    .locals 0
    .param p0, "x0"    # Lccsancom/google/android/exoplayer2/MetadataRetriever$MetadataRetrieverInternal$MediaSourceHandlerCallback;
    .param p1, "x1"    # Lccsancom/google/android/exoplayer2/source/MediaPeriod;

    .line 124
    iput-object p1, p0, Lccsancom/google/android/exoplayer2/MetadataRetriever$MetadataRetrieverInternal$MediaSourceHandlerCallback;->mediaPeriod:Lccsancom/google/android/exoplayer2/source/MediaPeriod;

    return-object p1
.end method


# virtual methods
.method public handleMessage(Lccsanandroid/os/Message;)Z
    .locals 5
    .param p1, "msg"    # Lccsanandroid/os/Message;

    .line 139
    iget v0, p1, Lccsanandroid/os/Message;->what:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_0

    .line 172
    const/4 v0, 0x0

    return v0

    .line 164
    :pswitch_0
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/MetadataRetriever$MetadataRetrieverInternal$MediaSourceHandlerCallback;->mediaPeriod:Lccsancom/google/android/exoplayer2/source/MediaPeriod;

    if-eqz v0, :cond_0

    .line 165
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/MetadataRetriever$MetadataRetrieverInternal$MediaSourceHandlerCallback;->mediaSource:Lccsancom/google/android/exoplayer2/source/MediaSource;

    invoke-static {v0}, Lccsancom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsancom/google/android/exoplayer2/source/MediaSource;

    iget-object v3, p0, Lccsancom/google/android/exoplayer2/MetadataRetriever$MetadataRetrieverInternal$MediaSourceHandlerCallback;->mediaPeriod:Lccsancom/google/android/exoplayer2/source/MediaPeriod;

    invoke-interface {v0, v3}, Lccsancom/google/android/exoplayer2/source/MediaSource;->releasePeriod(Lccsancom/google/android/exoplayer2/source/MediaPeriod;)V

    .line 167
    :cond_0
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/MetadataRetriever$MetadataRetrieverInternal$MediaSourceHandlerCallback;->mediaSource:Lccsancom/google/android/exoplayer2/source/MediaSource;

    invoke-static {v0}, Lccsancom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsancom/google/android/exoplayer2/source/MediaSource;

    iget-object v3, p0, Lccsancom/google/android/exoplayer2/MetadataRetriever$MetadataRetrieverInternal$MediaSourceHandlerCallback;->mediaSourceCaller:Lccsancom/google/android/exoplayer2/MetadataRetriever$MetadataRetrieverInternal$MediaSourceHandlerCallback$MediaSourceCaller;

    invoke-interface {v0, v3}, Lccsancom/google/android/exoplayer2/source/MediaSource;->releaseSource(Lccsancom/google/android/exoplayer2/source/MediaSource$MediaSourceCaller;)V

    .line 168
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/MetadataRetriever$MetadataRetrieverInternal$MediaSourceHandlerCallback;->this$0:Lccsancom/google/android/exoplayer2/MetadataRetriever$MetadataRetrieverInternal;

    invoke-static {v0}, Lccsancom/google/android/exoplayer2/MetadataRetriever$MetadataRetrieverInternal;->access$100(Lccsancom/google/android/exoplayer2/MetadataRetriever$MetadataRetrieverInternal;)Lccsancom/google/android/exoplayer2/util/HandlerWrapper;

    move-result-object v0

    invoke-interface {v0, v1}, Lccsancom/google/android/exoplayer2/util/HandlerWrapper;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 169
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/MetadataRetriever$MetadataRetrieverInternal$MediaSourceHandlerCallback;->this$0:Lccsancom/google/android/exoplayer2/MetadataRetriever$MetadataRetrieverInternal;

    invoke-static {v0}, Lccsancom/google/android/exoplayer2/MetadataRetriever$MetadataRetrieverInternal;->access$300(Lccsancom/google/android/exoplayer2/MetadataRetriever$MetadataRetrieverInternal;)Lccsanandroid/os/HandlerThread;

    move-result-object v0

    invoke-virtual {v0}, Lccsanandroid/os/HandlerThread;->quit()Z

    .line 170
    return v2

    .line 161
    :pswitch_1
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/MetadataRetriever$MetadataRetrieverInternal$MediaSourceHandlerCallback;->mediaPeriod:Lccsancom/google/android/exoplayer2/source/MediaPeriod;

    invoke-static {v0}, Lccsancom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsancom/google/android/exoplayer2/source/MediaPeriod;

    const-wide/16 v3, 0x0

    invoke-interface {v0, v3, v4}, Lccsancom/google/android/exoplayer2/source/MediaPeriod;->continueLoading(J)Z

    .line 162
    return v2

    .line 148
    :pswitch_2
    :try_start_0
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/MetadataRetriever$MetadataRetrieverInternal$MediaSourceHandlerCallback;->mediaPeriod:Lccsancom/google/android/exoplayer2/source/MediaPeriod;

    if-nez v0, :cond_1

    .line 149
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/MetadataRetriever$MetadataRetrieverInternal$MediaSourceHandlerCallback;->mediaSource:Lccsancom/google/android/exoplayer2/source/MediaSource;

    invoke-static {v0}, Lccsancom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsancom/google/android/exoplayer2/source/MediaSource;

    invoke-interface {v0}, Lccsancom/google/android/exoplayer2/source/MediaSource;->maybeThrowSourceInfoRefreshError()V

    goto :goto_0

    .line 151
    :cond_1
    invoke-interface {v0}, Lccsancom/google/android/exoplayer2/source/MediaPeriod;->maybeThrowPrepareError()V

    .line 153
    :goto_0
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/MetadataRetriever$MetadataRetrieverInternal$MediaSourceHandlerCallback;->this$0:Lccsancom/google/android/exoplayer2/MetadataRetriever$MetadataRetrieverInternal;

    invoke-static {v0}, Lccsancom/google/android/exoplayer2/MetadataRetriever$MetadataRetrieverInternal;->access$100(Lccsancom/google/android/exoplayer2/MetadataRetriever$MetadataRetrieverInternal;)Lccsancom/google/android/exoplayer2/util/HandlerWrapper;

    move-result-object v0

    const/16 v1, 0x64

    invoke-interface {v0, v2, v1}, Lccsancom/google/android/exoplayer2/util/HandlerWrapper;->sendEmptyMessageDelayed(II)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 158
    goto :goto_1

    .line 155
    :catch_0
    move-exception v0

    .line 156
    .local v0, "e":Ljava/lang/Exception;
    iget-object v1, p0, Lccsancom/google/android/exoplayer2/MetadataRetriever$MetadataRetrieverInternal$MediaSourceHandlerCallback;->this$0:Lccsancom/google/android/exoplayer2/MetadataRetriever$MetadataRetrieverInternal;

    invoke-static {v1}, Lccsancom/google/android/exoplayer2/MetadataRetriever$MetadataRetrieverInternal;->access$200(Lccsancom/google/android/exoplayer2/MetadataRetriever$MetadataRetrieverInternal;)Lccsancom/google/common/util/concurrent/SettableFuture;

    move-result-object v1

    invoke-virtual {v1, v0}, Lccsancom/google/common/util/concurrent/SettableFuture;->setException(Ljava/lang/Throwable;)Z

    .line 157
    iget-object v1, p0, Lccsancom/google/android/exoplayer2/MetadataRetriever$MetadataRetrieverInternal$MediaSourceHandlerCallback;->this$0:Lccsancom/google/android/exoplayer2/MetadataRetriever$MetadataRetrieverInternal;

    invoke-static {v1}, Lccsancom/google/android/exoplayer2/MetadataRetriever$MetadataRetrieverInternal;->access$100(Lccsancom/google/android/exoplayer2/MetadataRetriever$MetadataRetrieverInternal;)Lccsancom/google/android/exoplayer2/util/HandlerWrapper;

    move-result-object v1

    const/4 v3, 0x3

    invoke-interface {v1, v3}, Lccsancom/google/android/exoplayer2/util/HandlerWrapper;->obtainMessage(I)Lccsancom/google/android/exoplayer2/util/HandlerWrapper$Message;

    move-result-object v1

    invoke-interface {v1}, Lccsancom/google/android/exoplayer2/util/HandlerWrapper$Message;->sendToTarget()V

    .line 159
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    return v2

    .line 141
    :pswitch_3
    iget-object v0, p1, Lccsanandroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lccsancom/google/android/exoplayer2/MediaItem;

    .line 142
    .local v0, "mediaItem":Lccsancom/google/android/exoplayer2/MediaItem;
    iget-object v3, p0, Lccsancom/google/android/exoplayer2/MetadataRetriever$MetadataRetrieverInternal$MediaSourceHandlerCallback;->this$0:Lccsancom/google/android/exoplayer2/MetadataRetriever$MetadataRetrieverInternal;

    invoke-static {v3}, Lccsancom/google/android/exoplayer2/MetadataRetriever$MetadataRetrieverInternal;->access$000(Lccsancom/google/android/exoplayer2/MetadataRetriever$MetadataRetrieverInternal;)Lccsancom/google/android/exoplayer2/source/MediaSourceFactory;

    move-result-object v3

    invoke-interface {v3, v0}, Lccsancom/google/android/exoplayer2/source/MediaSourceFactory;->createMediaSource(Lccsancom/google/android/exoplayer2/MediaItem;)Lccsancom/google/android/exoplayer2/source/MediaSource;

    move-result-object v3

    iput-object v3, p0, Lccsancom/google/android/exoplayer2/MetadataRetriever$MetadataRetrieverInternal$MediaSourceHandlerCallback;->mediaSource:Lccsancom/google/android/exoplayer2/source/MediaSource;

    .line 143
    iget-object v4, p0, Lccsancom/google/android/exoplayer2/MetadataRetriever$MetadataRetrieverInternal$MediaSourceHandlerCallback;->mediaSourceCaller:Lccsancom/google/android/exoplayer2/MetadataRetriever$MetadataRetrieverInternal$MediaSourceHandlerCallback$MediaSourceCaller;

    invoke-interface {v3, v4, v1}, Lccsancom/google/android/exoplayer2/source/MediaSource;->prepareSource(Lccsancom/google/android/exoplayer2/source/MediaSource$MediaSourceCaller;Lccsancom/google/android/exoplayer2/upstream/TransferListener;)V

    .line 144
    iget-object v1, p0, Lccsancom/google/android/exoplayer2/MetadataRetriever$MetadataRetrieverInternal$MediaSourceHandlerCallback;->this$0:Lccsancom/google/android/exoplayer2/MetadataRetriever$MetadataRetrieverInternal;

    invoke-static {v1}, Lccsancom/google/android/exoplayer2/MetadataRetriever$MetadataRetrieverInternal;->access$100(Lccsancom/google/android/exoplayer2/MetadataRetriever$MetadataRetrieverInternal;)Lccsancom/google/android/exoplayer2/util/HandlerWrapper;

    move-result-object v1

    invoke-interface {v1, v2}, Lccsancom/google/android/exoplayer2/util/HandlerWrapper;->sendEmptyMessage(I)Z

    .line 145
    return v2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
