.class Lccsancom/bumptech/glide/load/resource/gif/GifFrameLoader;
.super Ljava/lang/Object;
.source "GifFrameLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsancom/bumptech/glide/load/resource/gif/GifFrameLoader$FrameSignature;,
        Lccsancom/bumptech/glide/load/resource/gif/GifFrameLoader$DelayTarget;,
        Lccsancom/bumptech/glide/load/resource/gif/GifFrameLoader$FrameLoaderCallback;,
        Lccsancom/bumptech/glide/load/resource/gif/GifFrameLoader$FrameCallback;
    }
.end annotation


# instance fields
.field private final callback:Lccsancom/bumptech/glide/load/resource/gif/GifFrameLoader$FrameCallback;

.field private current:Lccsancom/bumptech/glide/load/resource/gif/GifFrameLoader$DelayTarget;

.field private final gifDecoder:Lccsancom/bumptech/glide/gifdecoder/GifDecoder;

.field private final handler:Lccsanandroid/os/Handler;

.field private isCleared:Z

.field private isLoadPending:Z

.field private isRunning:Z

.field private requestBuilder:Lccsancom/bumptech/glide/GenericRequestBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lccsancom/bumptech/glide/GenericRequestBuilder<",
            "Lccsancom/bumptech/glide/gifdecoder/GifDecoder;",
            "Lccsancom/bumptech/glide/gifdecoder/GifDecoder;",
            "Lccsanandroid/graphics/Bitmap;",
            "Lccsanandroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lccsanandroid/content/Context;Lccsancom/bumptech/glide/load/resource/gif/GifFrameLoader$FrameCallback;Lccsancom/bumptech/glide/gifdecoder/GifDecoder;II)V
    .locals 2
    .param p1, "context"    # Lccsanandroid/content/Context;
    .param p2, "callback"    # Lccsancom/bumptech/glide/load/resource/gif/GifFrameLoader$FrameCallback;
    .param p3, "gifDecoder"    # Lccsancom/bumptech/glide/gifdecoder/GifDecoder;
    .param p4, "width"    # I
    .param p5, "height"    # I

    .line 43
    invoke-static {p1}, Lccsancom/bumptech/glide/Glide;->get(Lccsanandroid/content/Context;)Lccsancom/bumptech/glide/Glide;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/bumptech/glide/Glide;->getBitmapPool()Lccsancom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

    move-result-object v0

    invoke-static {p1, p3, p4, p5, v0}, Lccsancom/bumptech/glide/load/resource/gif/GifFrameLoader;->getRequestBuilder(Lccsanandroid/content/Context;Lccsancom/bumptech/glide/gifdecoder/GifDecoder;IILccsancom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;)Lccsancom/bumptech/glide/GenericRequestBuilder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, p2, p3, v1, v0}, Lccsancom/bumptech/glide/load/resource/gif/GifFrameLoader;-><init>(Lccsancom/bumptech/glide/load/resource/gif/GifFrameLoader$FrameCallback;Lccsancom/bumptech/glide/gifdecoder/GifDecoder;Lccsanandroid/os/Handler;Lccsancom/bumptech/glide/GenericRequestBuilder;)V

    .line 45
    return-void
.end method

.method constructor <init>(Lccsancom/bumptech/glide/load/resource/gif/GifFrameLoader$FrameCallback;Lccsancom/bumptech/glide/gifdecoder/GifDecoder;Lccsanandroid/os/Handler;Lccsancom/bumptech/glide/GenericRequestBuilder;)V
    .locals 4
    .param p1, "callback"    # Lccsancom/bumptech/glide/load/resource/gif/GifFrameLoader$FrameCallback;
    .param p2, "gifDecoder"    # Lccsancom/bumptech/glide/gifdecoder/GifDecoder;
    .param p3, "handler"    # Lccsanandroid/os/Handler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/bumptech/glide/load/resource/gif/GifFrameLoader$FrameCallback;",
            "Lccsancom/bumptech/glide/gifdecoder/GifDecoder;",
            "Lccsanandroid/os/Handler;",
            "Lccsancom/bumptech/glide/GenericRequestBuilder<",
            "Lccsancom/bumptech/glide/gifdecoder/GifDecoder;",
            "Lccsancom/bumptech/glide/gifdecoder/GifDecoder;",
            "Lccsanandroid/graphics/Bitmap;",
            "Lccsanandroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    .line 48
    .local p4, "requestBuilder":Lccsancom/bumptech/glide/GenericRequestBuilder;, "Lccsancom/bumptech/glide/GenericRequestBuilder<Lccsancom/bumptech/glide/gifdecoder/GifDecoder;Lccsancom/bumptech/glide/gifdecoder/GifDecoder;Lccsanandroid/graphics/Bitmap;Lccsanandroid/graphics/Bitmap;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const/4 v0, 0x0

    iput-boolean v0, p0, Lccsancom/bumptech/glide/load/resource/gif/GifFrameLoader;->isRunning:Z

    .line 33
    iput-boolean v0, p0, Lccsancom/bumptech/glide/load/resource/gif/GifFrameLoader;->isLoadPending:Z

    .line 49
    if-nez p3, :cond_0

    .line 50
    new-instance v0, Lccsanandroid/os/Handler;

    invoke-static {}, Lccsanandroid/os/Looper;->getMainLooper()Lccsanandroid/os/Looper;

    move-result-object v1

    new-instance v2, Lccsancom/bumptech/glide/load/resource/gif/GifFrameLoader$FrameLoaderCallback;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lccsancom/bumptech/glide/load/resource/gif/GifFrameLoader$FrameLoaderCallback;-><init>(Lccsancom/bumptech/glide/load/resource/gif/GifFrameLoader;Lccsancom/bumptech/glide/load/resource/gif/GifFrameLoader$1;)V

    invoke-direct {v0, v1, v2}, Lccsanandroid/os/Handler;-><init>(Lccsanandroid/os/Looper;Lccsanandroid/os/Handler$Callback;)V

    move-object p3, v0

    .line 52
    :cond_0
    iput-object p1, p0, Lccsancom/bumptech/glide/load/resource/gif/GifFrameLoader;->callback:Lccsancom/bumptech/glide/load/resource/gif/GifFrameLoader$FrameCallback;

    .line 53
    iput-object p2, p0, Lccsancom/bumptech/glide/load/resource/gif/GifFrameLoader;->gifDecoder:Lccsancom/bumptech/glide/gifdecoder/GifDecoder;

    .line 54
    iput-object p3, p0, Lccsancom/bumptech/glide/load/resource/gif/GifFrameLoader;->handler:Lccsanandroid/os/Handler;

    .line 55
    iput-object p4, p0, Lccsancom/bumptech/glide/load/resource/gif/GifFrameLoader;->requestBuilder:Lccsancom/bumptech/glide/GenericRequestBuilder;

    .line 56
    return-void
.end method

.method private static getRequestBuilder(Lccsanandroid/content/Context;Lccsancom/bumptech/glide/gifdecoder/GifDecoder;IILccsancom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;)Lccsancom/bumptech/glide/GenericRequestBuilder;
    .locals 5
    .param p0, "context"    # Lccsanandroid/content/Context;
    .param p1, "gifDecoder"    # Lccsancom/bumptech/glide/gifdecoder/GifDecoder;
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "bitmapPool"    # Lccsancom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsanandroid/content/Context;",
            "Lccsancom/bumptech/glide/gifdecoder/GifDecoder;",
            "II",
            "Lccsancom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;",
            ")",
            "Lccsancom/bumptech/glide/GenericRequestBuilder<",
            "Lccsancom/bumptech/glide/gifdecoder/GifDecoder;",
            "Lccsancom/bumptech/glide/gifdecoder/GifDecoder;",
            "Lccsanandroid/graphics/Bitmap;",
            "Lccsanandroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .line 172
    new-instance v0, Lccsancom/bumptech/glide/load/resource/gif/GifFrameResourceDecoder;

    invoke-direct {v0, p4}, Lccsancom/bumptech/glide/load/resource/gif/GifFrameResourceDecoder;-><init>(Lccsancom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;)V

    .line 173
    .local v0, "frameResourceDecoder":Lccsancom/bumptech/glide/load/resource/gif/GifFrameResourceDecoder;
    new-instance v1, Lccsancom/bumptech/glide/load/resource/gif/GifFrameModelLoader;

    invoke-direct {v1}, Lccsancom/bumptech/glide/load/resource/gif/GifFrameModelLoader;-><init>()V

    .line 174
    .local v1, "frameLoader":Lccsancom/bumptech/glide/load/resource/gif/GifFrameModelLoader;
    invoke-static {}, Lccsancom/bumptech/glide/load/resource/NullEncoder;->get()Lccsancom/bumptech/glide/load/Encoder;

    move-result-object v2

    .line 175
    .local v2, "sourceEncoder":Lccsancom/bumptech/glide/load/Encoder;, "Lccsancom/bumptech/glide/load/Encoder<Lccsancom/bumptech/glide/gifdecoder/GifDecoder;>;"
    invoke-static {p0}, Lccsancom/bumptech/glide/Glide;->with(Lccsanandroid/content/Context;)Lccsancom/bumptech/glide/RequestManager;

    move-result-object v3

    const-class v4, Lccsancom/bumptech/glide/gifdecoder/GifDecoder;

    invoke-virtual {v3, v1, v4}, Lccsancom/bumptech/glide/RequestManager;->using(Lccsancom/bumptech/glide/load/model/ModelLoader;Ljava/lang/Class;)Lccsancom/bumptech/glide/RequestManager$GenericModelRequest;

    move-result-object v3

    invoke-virtual {v3, p1}, Lccsancom/bumptech/glide/RequestManager$GenericModelRequest;->load(Ljava/lang/Object;)Lccsancom/bumptech/glide/RequestManager$GenericModelRequest$GenericTypeRequest;

    move-result-object v3

    const-class v4, Lccsanandroid/graphics/Bitmap;

    invoke-virtual {v3, v4}, Lccsancom/bumptech/glide/RequestManager$GenericModelRequest$GenericTypeRequest;->as(Ljava/lang/Class;)Lccsancom/bumptech/glide/GenericTranscodeRequest;

    move-result-object v3

    invoke-virtual {v3, v2}, Lccsancom/bumptech/glide/GenericTranscodeRequest;->sourceEncoder(Lccsancom/bumptech/glide/load/Encoder;)Lccsancom/bumptech/glide/GenericRequestBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Lccsancom/bumptech/glide/GenericRequestBuilder;->decoder(Lccsancom/bumptech/glide/load/ResourceDecoder;)Lccsancom/bumptech/glide/GenericRequestBuilder;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lccsancom/bumptech/glide/GenericRequestBuilder;->skipMemoryCache(Z)Lccsancom/bumptech/glide/GenericRequestBuilder;

    move-result-object v3

    sget-object v4, Lccsancom/bumptech/glide/load/engine/DiskCacheStrategy;->NONE:Lccsancom/bumptech/glide/load/engine/DiskCacheStrategy;

    invoke-virtual {v3, v4}, Lccsancom/bumptech/glide/GenericRequestBuilder;->diskCacheStrategy(Lccsancom/bumptech/glide/load/engine/DiskCacheStrategy;)Lccsancom/bumptech/glide/GenericRequestBuilder;

    move-result-object v3

    invoke-virtual {v3, p2, p3}, Lccsancom/bumptech/glide/GenericRequestBuilder;->override(II)Lccsancom/bumptech/glide/GenericRequestBuilder;

    move-result-object v3

    return-object v3
.end method

.method private loadNextFrame()V
    .locals 5

    .line 95
    iget-boolean v0, p0, Lccsancom/bumptech/glide/load/resource/gif/GifFrameLoader;->isRunning:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lccsancom/bumptech/glide/load/resource/gif/GifFrameLoader;->isLoadPending:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 98
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lccsancom/bumptech/glide/load/resource/gif/GifFrameLoader;->isLoadPending:Z

    .line 100
    invoke-static {}, Lccsanandroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lccsancom/bumptech/glide/load/resource/gif/GifFrameLoader;->gifDecoder:Lccsancom/bumptech/glide/gifdecoder/GifDecoder;

    invoke-virtual {v2}, Lccsancom/bumptech/glide/gifdecoder/GifDecoder;->getNextDelay()I

    move-result v2

    int-to-long v2, v2

    add-long/2addr v0, v2

    .line 101
    .local v0, "targetTime":J
    iget-object v2, p0, Lccsancom/bumptech/glide/load/resource/gif/GifFrameLoader;->gifDecoder:Lccsancom/bumptech/glide/gifdecoder/GifDecoder;

    invoke-virtual {v2}, Lccsancom/bumptech/glide/gifdecoder/GifDecoder;->advance()V

    .line 102
    new-instance v2, Lccsancom/bumptech/glide/load/resource/gif/GifFrameLoader$DelayTarget;

    iget-object v3, p0, Lccsancom/bumptech/glide/load/resource/gif/GifFrameLoader;->handler:Lccsanandroid/os/Handler;

    iget-object v4, p0, Lccsancom/bumptech/glide/load/resource/gif/GifFrameLoader;->gifDecoder:Lccsancom/bumptech/glide/gifdecoder/GifDecoder;

    invoke-virtual {v4}, Lccsancom/bumptech/glide/gifdecoder/GifDecoder;->getCurrentFrameIndex()I

    move-result v4

    invoke-direct {v2, v3, v4, v0, v1}, Lccsancom/bumptech/glide/load/resource/gif/GifFrameLoader$DelayTarget;-><init>(Lccsanandroid/os/Handler;IJ)V

    .line 103
    .local v2, "next":Lccsancom/bumptech/glide/load/resource/gif/GifFrameLoader$DelayTarget;
    iget-object v3, p0, Lccsancom/bumptech/glide/load/resource/gif/GifFrameLoader;->requestBuilder:Lccsancom/bumptech/glide/GenericRequestBuilder;

    new-instance v4, Lccsancom/bumptech/glide/load/resource/gif/GifFrameLoader$FrameSignature;

    invoke-direct {v4}, Lccsancom/bumptech/glide/load/resource/gif/GifFrameLoader$FrameSignature;-><init>()V

    invoke-virtual {v3, v4}, Lccsancom/bumptech/glide/GenericRequestBuilder;->signature(Lccsancom/bumptech/glide/load/Key;)Lccsancom/bumptech/glide/GenericRequestBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Lccsancom/bumptech/glide/GenericRequestBuilder;->into(Lccsancom/bumptech/glide/request/target/Target;)Lccsancom/bumptech/glide/request/target/Target;

    .line 106
    return-void

    .line 96
    .end local v0    # "targetTime":J
    .end local v2    # "next":Lccsancom/bumptech/glide/load/resource/gif/GifFrameLoader$DelayTarget;
    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .line 81
    invoke-virtual {p0}, Lccsancom/bumptech/glide/load/resource/gif/GifFrameLoader;->stop()V

    .line 82
    iget-object v0, p0, Lccsancom/bumptech/glide/load/resource/gif/GifFrameLoader;->current:Lccsancom/bumptech/glide/load/resource/gif/GifFrameLoader$DelayTarget;

    if-eqz v0, :cond_0

    .line 83
    invoke-static {v0}, Lccsancom/bumptech/glide/Glide;->clear(Lccsancom/bumptech/glide/request/target/Target;)V

    .line 84
    const/4 v0, 0x0

    iput-object v0, p0, Lccsancom/bumptech/glide/load/resource/gif/GifFrameLoader;->current:Lccsancom/bumptech/glide/load/resource/gif/GifFrameLoader$DelayTarget;

    .line 86
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lccsancom/bumptech/glide/load/resource/gif/GifFrameLoader;->isCleared:Z

    .line 88
    return-void
.end method

.method public getCurrentFrame()Lccsanandroid/graphics/Bitmap;
    .locals 1

    .line 91
    iget-object v0, p0, Lccsancom/bumptech/glide/load/resource/gif/GifFrameLoader;->current:Lccsancom/bumptech/glide/load/resource/gif/GifFrameLoader$DelayTarget;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lccsancom/bumptech/glide/load/resource/gif/GifFrameLoader$DelayTarget;->getResource()Lccsanandroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method onFrameReady(Lccsancom/bumptech/glide/load/resource/gif/GifFrameLoader$DelayTarget;)V
    .locals 4
    .param p1, "delayTarget"    # Lccsancom/bumptech/glide/load/resource/gif/GifFrameLoader$DelayTarget;

    .line 110
    iget-boolean v0, p0, Lccsancom/bumptech/glide/load/resource/gif/GifFrameLoader;->isCleared:Z

    const/4 v1, 0x2

    if-eqz v0, :cond_0

    .line 111
    iget-object v0, p0, Lccsancom/bumptech/glide/load/resource/gif/GifFrameLoader;->handler:Lccsanandroid/os/Handler;

    invoke-virtual {v0, v1, p1}, Lccsanandroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Lccsanandroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Lccsanandroid/os/Message;->sendToTarget()V

    .line 112
    return-void

    .line 115
    :cond_0
    iget-object v0, p0, Lccsancom/bumptech/glide/load/resource/gif/GifFrameLoader;->current:Lccsancom/bumptech/glide/load/resource/gif/GifFrameLoader$DelayTarget;

    .line 116
    .local v0, "previous":Lccsancom/bumptech/glide/load/resource/gif/GifFrameLoader$DelayTarget;
    iput-object p1, p0, Lccsancom/bumptech/glide/load/resource/gif/GifFrameLoader;->current:Lccsancom/bumptech/glide/load/resource/gif/GifFrameLoader$DelayTarget;

    .line 117
    iget-object v2, p0, Lccsancom/bumptech/glide/load/resource/gif/GifFrameLoader;->callback:Lccsancom/bumptech/glide/load/resource/gif/GifFrameLoader$FrameCallback;

    invoke-static {p1}, Lccsancom/bumptech/glide/load/resource/gif/GifFrameLoader$DelayTarget;->access$100(Lccsancom/bumptech/glide/load/resource/gif/GifFrameLoader$DelayTarget;)I

    move-result v3

    invoke-interface {v2, v3}, Lccsancom/bumptech/glide/load/resource/gif/GifFrameLoader$FrameCallback;->onFrameReady(I)V

    .line 119
    if-eqz v0, :cond_1

    .line 120
    iget-object v2, p0, Lccsancom/bumptech/glide/load/resource/gif/GifFrameLoader;->handler:Lccsanandroid/os/Handler;

    invoke-virtual {v2, v1, v0}, Lccsanandroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Lccsanandroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Lccsanandroid/os/Message;->sendToTarget()V

    .line 123
    :cond_1
    const/4 v1, 0x0

    iput-boolean v1, p0, Lccsancom/bumptech/glide/load/resource/gif/GifFrameLoader;->isLoadPending:Z

    .line 124
    invoke-direct {p0}, Lccsancom/bumptech/glide/load/resource/gif/GifFrameLoader;->loadNextFrame()V

    .line 125
    return-void
.end method

.method public setFrameTransformation(Lccsancom/bumptech/glide/load/Transformation;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/bumptech/glide/load/Transformation<",
            "Lccsanandroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    .line 60
    .local p1, "transformation":Lccsancom/bumptech/glide/load/Transformation;, "Lccsancom/bumptech/glide/load/Transformation<Lccsanandroid/graphics/Bitmap;>;"
    if-eqz p1, :cond_0

    .line 63
    iget-object v0, p0, Lccsancom/bumptech/glide/load/resource/gif/GifFrameLoader;->requestBuilder:Lccsancom/bumptech/glide/GenericRequestBuilder;

    const/4 v1, 0x1

    new-array v1, v1, [Lccsancom/bumptech/glide/load/Transformation;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Lccsancom/bumptech/glide/GenericRequestBuilder;->transform([Lccsancom/bumptech/glide/load/Transformation;)Lccsancom/bumptech/glide/GenericRequestBuilder;

    move-result-object v0

    iput-object v0, p0, Lccsancom/bumptech/glide/load/resource/gif/GifFrameLoader;->requestBuilder:Lccsancom/bumptech/glide/GenericRequestBuilder;

    .line 64
    return-void

    .line 61
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Transformation must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public start()V
    .locals 1

    .line 67
    iget-boolean v0, p0, Lccsancom/bumptech/glide/load/resource/gif/GifFrameLoader;->isRunning:Z

    if-eqz v0, :cond_0

    .line 68
    return-void

    .line 70
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lccsancom/bumptech/glide/load/resource/gif/GifFrameLoader;->isRunning:Z

    .line 71
    const/4 v0, 0x0

    iput-boolean v0, p0, Lccsancom/bumptech/glide/load/resource/gif/GifFrameLoader;->isCleared:Z

    .line 73
    invoke-direct {p0}, Lccsancom/bumptech/glide/load/resource/gif/GifFrameLoader;->loadNextFrame()V

    .line 74
    return-void
.end method

.method public stop()V
    .locals 1

    .line 77
    const/4 v0, 0x0

    iput-boolean v0, p0, Lccsancom/bumptech/glide/load/resource/gif/GifFrameLoader;->isRunning:Z

    .line 78
    return-void
.end method
