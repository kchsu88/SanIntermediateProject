.class final Lccsancom/google/android/exoplayer2/util/SystemHandlerWrapper$SystemMessage;
.super Ljava/lang/Object;
.source "SystemHandlerWrapper.java"

# interfaces
.implements Lccsancom/google/android/exoplayer2/util/HandlerWrapper$Message;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/google/android/exoplayer2/util/SystemHandlerWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SystemMessage"
.end annotation


# instance fields
.field private handler:Lccsancom/google/android/exoplayer2/util/SystemHandlerWrapper;

.field private message:Lccsanandroid/os/Message;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lccsancom/google/android/exoplayer2/util/SystemHandlerWrapper$1;)V
    .locals 0
    .param p1, "x0"    # Lccsancom/google/android/exoplayer2/util/SystemHandlerWrapper$1;

    .line 134
    invoke-direct {p0}, Lccsancom/google/android/exoplayer2/util/SystemHandlerWrapper$SystemMessage;-><init>()V

    return-void
.end method

.method private recycle()V
    .locals 1

    .line 163
    const/4 v0, 0x0

    iput-object v0, p0, Lccsancom/google/android/exoplayer2/util/SystemHandlerWrapper$SystemMessage;->message:Lccsanandroid/os/Message;

    .line 164
    iput-object v0, p0, Lccsancom/google/android/exoplayer2/util/SystemHandlerWrapper$SystemMessage;->handler:Lccsancom/google/android/exoplayer2/util/SystemHandlerWrapper;

    .line 165
    invoke-static {p0}, Lccsancom/google/android/exoplayer2/util/SystemHandlerWrapper;->access$100(Lccsancom/google/android/exoplayer2/util/SystemHandlerWrapper$SystemMessage;)V

    .line 166
    return-void
.end method


# virtual methods
.method public getTarget()Lccsancom/google/android/exoplayer2/util/HandlerWrapper;
    .locals 1

    .line 159
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/util/SystemHandlerWrapper$SystemMessage;->handler:Lccsancom/google/android/exoplayer2/util/SystemHandlerWrapper;

    invoke-static {v0}, Lccsancom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsancom/google/android/exoplayer2/util/HandlerWrapper;

    return-object v0
.end method

.method public sendAtFrontOfQueue(Lccsanandroid/os/Handler;)Z
    .locals 1
    .param p1, "handler"    # Lccsanandroid/os/Handler;

    .line 146
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/util/SystemHandlerWrapper$SystemMessage;->message:Lccsanandroid/os/Message;

    invoke-static {v0}, Lccsancom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsanandroid/os/Message;

    invoke-virtual {p1, v0}, Lccsanandroid/os/Handler;->sendMessageAtFrontOfQueue(Lccsanandroid/os/Message;)Z

    move-result v0

    .line 147
    .local v0, "success":Z
    invoke-direct {p0}, Lccsancom/google/android/exoplayer2/util/SystemHandlerWrapper$SystemMessage;->recycle()V

    .line 148
    return v0
.end method

.method public sendToTarget()V
    .locals 1

    .line 153
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/util/SystemHandlerWrapper$SystemMessage;->message:Lccsanandroid/os/Message;

    invoke-static {v0}, Lccsancom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsanandroid/os/Message;

    invoke-virtual {v0}, Lccsanandroid/os/Message;->sendToTarget()V

    .line 154
    invoke-direct {p0}, Lccsancom/google/android/exoplayer2/util/SystemHandlerWrapper$SystemMessage;->recycle()V

    .line 155
    return-void
.end method

.method public setMessage(Lccsanandroid/os/Message;Lccsancom/google/android/exoplayer2/util/SystemHandlerWrapper;)Lccsancom/google/android/exoplayer2/util/SystemHandlerWrapper$SystemMessage;
    .locals 0
    .param p1, "message"    # Lccsanandroid/os/Message;
    .param p2, "handler"    # Lccsancom/google/android/exoplayer2/util/SystemHandlerWrapper;

    .line 140
    iput-object p1, p0, Lccsancom/google/android/exoplayer2/util/SystemHandlerWrapper$SystemMessage;->message:Lccsanandroid/os/Message;

    .line 141
    iput-object p2, p0, Lccsancom/google/android/exoplayer2/util/SystemHandlerWrapper$SystemMessage;->handler:Lccsancom/google/android/exoplayer2/util/SystemHandlerWrapper;

    .line 142
    return-object p0
.end method
