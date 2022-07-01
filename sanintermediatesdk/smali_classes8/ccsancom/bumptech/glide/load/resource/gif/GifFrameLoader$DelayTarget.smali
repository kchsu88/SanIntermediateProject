.class Lccsancom/bumptech/glide/load/resource/gif/GifFrameLoader$DelayTarget;
.super Lccsancom/bumptech/glide/request/target/SimpleTarget;
.source "GifFrameLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/bumptech/glide/load/resource/gif/GifFrameLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "DelayTarget"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lccsancom/bumptech/glide/request/target/SimpleTarget<",
        "Lccsanandroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field private final handler:Lccsanandroid/os/Handler;

.field private final index:I

.field private resource:Lccsanandroid/graphics/Bitmap;

.field private final targetTime:J


# direct methods
.method public constructor <init>(Lccsanandroid/os/Handler;IJ)V
    .locals 0
    .param p1, "handler"    # Lccsanandroid/os/Handler;
    .param p2, "index"    # I
    .param p3, "targetTime"    # J

    .line 152
    invoke-direct {p0}, Lccsancom/bumptech/glide/request/target/SimpleTarget;-><init>()V

    .line 153
    iput-object p1, p0, Lccsancom/bumptech/glide/load/resource/gif/GifFrameLoader$DelayTarget;->handler:Lccsanandroid/os/Handler;

    .line 154
    iput p2, p0, Lccsancom/bumptech/glide/load/resource/gif/GifFrameLoader$DelayTarget;->index:I

    .line 155
    iput-wide p3, p0, Lccsancom/bumptech/glide/load/resource/gif/GifFrameLoader$DelayTarget;->targetTime:J

    .line 156
    return-void
.end method

.method static synthetic access$100(Lccsancom/bumptech/glide/load/resource/gif/GifFrameLoader$DelayTarget;)I
    .locals 1
    .param p0, "x0"    # Lccsancom/bumptech/glide/load/resource/gif/GifFrameLoader$DelayTarget;

    .line 146
    iget v0, p0, Lccsancom/bumptech/glide/load/resource/gif/GifFrameLoader$DelayTarget;->index:I

    return v0
.end method


# virtual methods
.method public getResource()Lccsanandroid/graphics/Bitmap;
    .locals 1

    .line 159
    iget-object v0, p0, Lccsancom/bumptech/glide/load/resource/gif/GifFrameLoader$DelayTarget;->resource:Lccsanandroid/graphics/Bitmap;

    return-object v0
.end method

.method public onResourceReady(Lccsanandroid/graphics/Bitmap;Lccsancom/bumptech/glide/request/animation/GlideAnimation;)V
    .locals 4
    .param p1, "resource"    # Lccsanandroid/graphics/Bitmap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsanandroid/graphics/Bitmap;",
            "Lccsancom/bumptech/glide/request/animation/GlideAnimation<",
            "-",
            "Lccsanandroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    .line 164
    .local p2, "glideAnimation":Lccsancom/bumptech/glide/request/animation/GlideAnimation;, "Lccsancom/bumptech/glide/request/animation/GlideAnimation<-Lccsanandroid/graphics/Bitmap;>;"
    iput-object p1, p0, Lccsancom/bumptech/glide/load/resource/gif/GifFrameLoader$DelayTarget;->resource:Lccsanandroid/graphics/Bitmap;

    .line 165
    iget-object v0, p0, Lccsancom/bumptech/glide/load/resource/gif/GifFrameLoader$DelayTarget;->handler:Lccsanandroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p0}, Lccsanandroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Lccsanandroid/os/Message;

    move-result-object v0

    .line 166
    .local v0, "msg":Lccsanandroid/os/Message;
    iget-object v1, p0, Lccsancom/bumptech/glide/load/resource/gif/GifFrameLoader$DelayTarget;->handler:Lccsanandroid/os/Handler;

    iget-wide v2, p0, Lccsancom/bumptech/glide/load/resource/gif/GifFrameLoader$DelayTarget;->targetTime:J

    invoke-virtual {v1, v0, v2, v3}, Lccsanandroid/os/Handler;->sendMessageAtTime(Lccsanandroid/os/Message;J)Z

    .line 167
    return-void
.end method

.method public bridge synthetic onResourceReady(Ljava/lang/Object;Lccsancom/bumptech/glide/request/animation/GlideAnimation;)V
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Lccsancom/bumptech/glide/request/animation/GlideAnimation;

    .line 146
    move-object v0, p1

    check-cast v0, Lccsanandroid/graphics/Bitmap;

    invoke-virtual {p0, v0, p2}, Lccsancom/bumptech/glide/load/resource/gif/GifFrameLoader$DelayTarget;->onResourceReady(Lccsanandroid/graphics/Bitmap;Lccsancom/bumptech/glide/request/animation/GlideAnimation;)V

    return-void
.end method
