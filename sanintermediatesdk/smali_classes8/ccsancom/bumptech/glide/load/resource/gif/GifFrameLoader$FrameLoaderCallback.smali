.class Lccsancom/bumptech/glide/load/resource/gif/GifFrameLoader$FrameLoaderCallback;
.super Ljava/lang/Object;
.source "GifFrameLoader.java"

# interfaces
.implements Lccsanandroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/bumptech/glide/load/resource/gif/GifFrameLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FrameLoaderCallback"
.end annotation


# static fields
.field public static final MSG_CLEAR:I = 0x2

.field public static final MSG_DELAY:I = 0x1


# instance fields
.field final synthetic this$0:Lccsancom/bumptech/glide/load/resource/gif/GifFrameLoader;


# direct methods
.method private constructor <init>(Lccsancom/bumptech/glide/load/resource/gif/GifFrameLoader;)V
    .locals 0

    .line 127
    iput-object p1, p0, Lccsancom/bumptech/glide/load/resource/gif/GifFrameLoader$FrameLoaderCallback;->this$0:Lccsancom/bumptech/glide/load/resource/gif/GifFrameLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lccsancom/bumptech/glide/load/resource/gif/GifFrameLoader;Lccsancom/bumptech/glide/load/resource/gif/GifFrameLoader$1;)V
    .locals 0
    .param p1, "x0"    # Lccsancom/bumptech/glide/load/resource/gif/GifFrameLoader;
    .param p2, "x1"    # Lccsancom/bumptech/glide/load/resource/gif/GifFrameLoader$1;

    .line 127
    invoke-direct {p0, p1}, Lccsancom/bumptech/glide/load/resource/gif/GifFrameLoader$FrameLoaderCallback;-><init>(Lccsancom/bumptech/glide/load/resource/gif/GifFrameLoader;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Lccsanandroid/os/Message;)Z
    .locals 3
    .param p1, "msg"    # Lccsanandroid/os/Message;

    .line 133
    iget v0, p1, Lccsanandroid/os/Message;->what:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 134
    iget-object v0, p1, Lccsanandroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lccsancom/bumptech/glide/load/resource/gif/GifFrameLoader$DelayTarget;

    .line 135
    .local v0, "target":Lccsancom/bumptech/glide/load/resource/gif/GifFrameLoader$DelayTarget;
    iget-object v2, p0, Lccsancom/bumptech/glide/load/resource/gif/GifFrameLoader$FrameLoaderCallback;->this$0:Lccsancom/bumptech/glide/load/resource/gif/GifFrameLoader;

    invoke-virtual {v2, v0}, Lccsancom/bumptech/glide/load/resource/gif/GifFrameLoader;->onFrameReady(Lccsancom/bumptech/glide/load/resource/gif/GifFrameLoader$DelayTarget;)V

    .line 136
    return v1

    .line 137
    .end local v0    # "target":Lccsancom/bumptech/glide/load/resource/gif/GifFrameLoader$DelayTarget;
    :cond_0
    iget v0, p1, Lccsanandroid/os/Message;->what:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 138
    iget-object v0, p1, Lccsanandroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lccsancom/bumptech/glide/load/resource/gif/GifFrameLoader$DelayTarget;

    .line 139
    .restart local v0    # "target":Lccsancom/bumptech/glide/load/resource/gif/GifFrameLoader$DelayTarget;
    invoke-static {v0}, Lccsancom/bumptech/glide/Glide;->clear(Lccsancom/bumptech/glide/request/target/Target;)V

    .line 141
    .end local v0    # "target":Lccsancom/bumptech/glide/load/resource/gif/GifFrameLoader$DelayTarget;
    :cond_1
    const/4 v0, 0x0

    return v0
.end method
