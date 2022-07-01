.class abstract Lccsanandroidx/dynamicanimation/animation/AnimationHandler$AnimationFrameCallbackProvider;
.super Ljava/lang/Object;
.source "AnimationHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsanandroidx/dynamicanimation/animation/AnimationHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "AnimationFrameCallbackProvider"
.end annotation


# instance fields
.field final mDispatcher:Lccsanandroidx/dynamicanimation/animation/AnimationHandler$AnimationCallbackDispatcher;


# direct methods
.method constructor <init>(Lccsanandroidx/dynamicanimation/animation/AnimationHandler$AnimationCallbackDispatcher;)V
    .locals 0
    .param p1, "dispatcher"    # Lccsanandroidx/dynamicanimation/animation/AnimationHandler$AnimationCallbackDispatcher;

    .line 256
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 257
    iput-object p1, p0, Lccsanandroidx/dynamicanimation/animation/AnimationHandler$AnimationFrameCallbackProvider;->mDispatcher:Lccsanandroidx/dynamicanimation/animation/AnimationHandler$AnimationCallbackDispatcher;

    .line 258
    return-void
.end method


# virtual methods
.method abstract postFrameCallback()V
.end method
