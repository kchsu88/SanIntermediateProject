.class Lccsanandroidx/dynamicanimation/animation/AnimationHandler$FrameCallbackProvider14;
.super Lccsanandroidx/dynamicanimation/animation/AnimationHandler$AnimationFrameCallbackProvider;
.source "AnimationHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsanandroidx/dynamicanimation/animation/AnimationHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FrameCallbackProvider14"
.end annotation


# instance fields
.field private final mHandler:Lccsanandroid/os/Handler;

.field mLastFrameTime:J

.field private final mRunnable:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lccsanandroidx/dynamicanimation/animation/AnimationHandler$AnimationCallbackDispatcher;)V
    .locals 2
    .param p1, "dispatcher"    # Lccsanandroidx/dynamicanimation/animation/AnimationHandler$AnimationCallbackDispatcher;

    .line 229
    invoke-direct {p0, p1}, Lccsanandroidx/dynamicanimation/animation/AnimationHandler$AnimationFrameCallbackProvider;-><init>(Lccsanandroidx/dynamicanimation/animation/AnimationHandler$AnimationCallbackDispatcher;)V

    .line 226
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lccsanandroidx/dynamicanimation/animation/AnimationHandler$FrameCallbackProvider14;->mLastFrameTime:J

    .line 230
    new-instance v0, Lccsanandroidx/dynamicanimation/animation/AnimationHandler$FrameCallbackProvider14$1;

    invoke-direct {v0, p0}, Lccsanandroidx/dynamicanimation/animation/AnimationHandler$FrameCallbackProvider14$1;-><init>(Lccsanandroidx/dynamicanimation/animation/AnimationHandler$FrameCallbackProvider14;)V

    iput-object v0, p0, Lccsanandroidx/dynamicanimation/animation/AnimationHandler$FrameCallbackProvider14;->mRunnable:Ljava/lang/Runnable;

    .line 237
    new-instance v0, Lccsanandroid/os/Handler;

    invoke-static {}, Lccsanandroid/os/Looper;->myLooper()Lccsanandroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Lccsanandroid/os/Handler;-><init>(Lccsanandroid/os/Looper;)V

    iput-object v0, p0, Lccsanandroidx/dynamicanimation/animation/AnimationHandler$FrameCallbackProvider14;->mHandler:Lccsanandroid/os/Handler;

    .line 238
    return-void
.end method


# virtual methods
.method postFrameCallback()V
    .locals 4

    .line 242
    invoke-static {}, Lccsanandroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lccsanandroidx/dynamicanimation/animation/AnimationHandler$FrameCallbackProvider14;->mLastFrameTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0xa

    sub-long/2addr v2, v0

    .line 243
    .local v2, "delay":J
    const-wide/16 v0, 0x0

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    .line 244
    .end local v2    # "delay":J
    .local v0, "delay":J
    iget-object v2, p0, Lccsanandroidx/dynamicanimation/animation/AnimationHandler$FrameCallbackProvider14;->mHandler:Lccsanandroid/os/Handler;

    iget-object v3, p0, Lccsanandroidx/dynamicanimation/animation/AnimationHandler$FrameCallbackProvider14;->mRunnable:Ljava/lang/Runnable;

    invoke-virtual {v2, v3, v0, v1}, Lccsanandroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 245
    return-void
.end method
