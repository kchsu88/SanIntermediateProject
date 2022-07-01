.class Lccsancom/bumptech/glide/load/engine/EngineJob$MainThreadCallback;
.super Ljava/lang/Object;
.source "EngineJob.java"

# interfaces
.implements Lccsanandroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/bumptech/glide/load/engine/EngineJob;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MainThreadCallback"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 195
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lccsancom/bumptech/glide/load/engine/EngineJob$1;)V
    .locals 0
    .param p1, "x0"    # Lccsancom/bumptech/glide/load/engine/EngineJob$1;

    .line 195
    invoke-direct {p0}, Lccsancom/bumptech/glide/load/engine/EngineJob$MainThreadCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Lccsanandroid/os/Message;)Z
    .locals 3
    .param p1, "message"    # Lccsanandroid/os/Message;

    .line 199
    iget v0, p1, Lccsanandroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v1, v0, :cond_1

    const/4 v0, 0x2

    iget v2, p1, Lccsanandroid/os/Message;->what:I

    if-ne v0, v2, :cond_0

    goto :goto_0

    .line 209
    :cond_0
    const/4 v0, 0x0

    return v0

    .line 200
    :cond_1
    :goto_0
    iget-object v0, p1, Lccsanandroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lccsancom/bumptech/glide/load/engine/EngineJob;

    .line 201
    .local v0, "job":Lccsancom/bumptech/glide/load/engine/EngineJob;
    iget v2, p1, Lccsanandroid/os/Message;->what:I

    if-ne v1, v2, :cond_2

    .line 202
    invoke-static {v0}, Lccsancom/bumptech/glide/load/engine/EngineJob;->access$100(Lccsancom/bumptech/glide/load/engine/EngineJob;)V

    goto :goto_1

    .line 204
    :cond_2
    invoke-static {v0}, Lccsancom/bumptech/glide/load/engine/EngineJob;->access$200(Lccsancom/bumptech/glide/load/engine/EngineJob;)V

    .line 206
    :goto_1
    return v1
.end method
