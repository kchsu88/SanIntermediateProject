.class Lccsanandroidx/dynamicanimation/animation/AnimationHandler$FrameCallbackProvider16;
.super Lccsanandroidx/dynamicanimation/animation/AnimationHandler$AnimationFrameCallbackProvider;
.source "AnimationHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsanandroidx/dynamicanimation/animation/AnimationHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FrameCallbackProvider16"
.end annotation


# instance fields
.field private final mChoreographer:Lccsanandroid/view/Choreographer;

.field private final mChoreographerCallback:Lccsanandroid/view/Choreographer$FrameCallback;


# direct methods
.method constructor <init>(Lccsanandroidx/dynamicanimation/animation/AnimationHandler$AnimationCallbackDispatcher;)V
    .locals 1
    .param p1, "dispatcher"    # Lccsanandroidx/dynamicanimation/animation/AnimationHandler$AnimationCallbackDispatcher;

    .line 203
    invoke-direct {p0, p1}, Lccsanandroidx/dynamicanimation/animation/AnimationHandler$AnimationFrameCallbackProvider;-><init>(Lccsanandroidx/dynamicanimation/animation/AnimationHandler$AnimationCallbackDispatcher;)V

    .line 199
    invoke-static {}, Lccsanandroid/view/Choreographer;->getInstance()Lccsanandroid/view/Choreographer;

    move-result-object v0

    iput-object v0, p0, Lccsanandroidx/dynamicanimation/animation/AnimationHandler$FrameCallbackProvider16;->mChoreographer:Lccsanandroid/view/Choreographer;

    .line 204
    new-instance v0, Lccsanandroidx/dynamicanimation/animation/AnimationHandler$FrameCallbackProvider16$1;

    invoke-direct {v0, p0}, Lccsanandroidx/dynamicanimation/animation/AnimationHandler$FrameCallbackProvider16$1;-><init>(Lccsanandroidx/dynamicanimation/animation/AnimationHandler$FrameCallbackProvider16;)V

    iput-object v0, p0, Lccsanandroidx/dynamicanimation/animation/AnimationHandler$FrameCallbackProvider16;->mChoreographerCallback:Lccsanandroid/view/Choreographer$FrameCallback;

    .line 210
    return-void
.end method


# virtual methods
.method postFrameCallback()V
    .locals 2

    .line 214
    iget-object v0, p0, Lccsanandroidx/dynamicanimation/animation/AnimationHandler$FrameCallbackProvider16;->mChoreographer:Lccsanandroid/view/Choreographer;

    iget-object v1, p0, Lccsanandroidx/dynamicanimation/animation/AnimationHandler$FrameCallbackProvider16;->mChoreographerCallback:Lccsanandroid/view/Choreographer$FrameCallback;

    invoke-virtual {v0, v1}, Lccsanandroid/view/Choreographer;->postFrameCallback(Lccsanandroid/view/Choreographer$FrameCallback;)V

    .line 215
    return-void
.end method
