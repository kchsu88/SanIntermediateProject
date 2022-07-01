.class final Lccsancom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher$ListenerAndHandler;
.super Ljava/lang/Object;
.source "DrmSessionEventListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ListenerAndHandler"
.end annotation


# instance fields
.field public handler:Lccsanandroid/os/Handler;

.field public listener:Lccsancom/google/android/exoplayer2/drm/DrmSessionEventListener;


# direct methods
.method public constructor <init>(Lccsanandroid/os/Handler;Lccsancom/google/android/exoplayer2/drm/DrmSessionEventListener;)V
    .locals 0
    .param p1, "handler"    # Lccsanandroid/os/Handler;
    .param p2, "listener"    # Lccsancom/google/android/exoplayer2/drm/DrmSessionEventListener;

    .line 229
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 230
    iput-object p1, p0, Lccsancom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher$ListenerAndHandler;->handler:Lccsanandroid/os/Handler;

    .line 231
    iput-object p2, p0, Lccsancom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher$ListenerAndHandler;->listener:Lccsancom/google/android/exoplayer2/drm/DrmSessionEventListener;

    .line 232
    return-void
.end method
