.class final Lccsancom/google/android/exoplayer2/StreamVolumeManager$VolumeChangeReceiver;
.super Lccsanandroid/content/BroadcastReceiver;
.source "StreamVolumeManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/google/android/exoplayer2/StreamVolumeManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "VolumeChangeReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lccsancom/google/android/exoplayer2/StreamVolumeManager;


# direct methods
.method private constructor <init>(Lccsancom/google/android/exoplayer2/StreamVolumeManager;)V
    .locals 0

    .line 210
    iput-object p1, p0, Lccsancom/google/android/exoplayer2/StreamVolumeManager$VolumeChangeReceiver;->this$0:Lccsancom/google/android/exoplayer2/StreamVolumeManager;

    invoke-direct {p0}, Lccsanandroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lccsancom/google/android/exoplayer2/StreamVolumeManager;Lccsancom/google/android/exoplayer2/StreamVolumeManager$1;)V
    .locals 0
    .param p1, "x0"    # Lccsancom/google/android/exoplayer2/StreamVolumeManager;
    .param p2, "x1"    # Lccsancom/google/android/exoplayer2/StreamVolumeManager$1;

    .line 210
    invoke-direct {p0, p1}, Lccsancom/google/android/exoplayer2/StreamVolumeManager$VolumeChangeReceiver;-><init>(Lccsancom/google/android/exoplayer2/StreamVolumeManager;)V

    return-void
.end method

.method static synthetic lambda$onReceive$0(Lccsancom/google/android/exoplayer2/StreamVolumeManager;)V
    .locals 0
    .param p0, "rec$"    # Lccsancom/google/android/exoplayer2/StreamVolumeManager;

    .line 214
    invoke-static {p0}, Lccsancom/google/android/exoplayer2/StreamVolumeManager;->access$200(Lccsancom/google/android/exoplayer2/StreamVolumeManager;)V

    return-void
.end method


# virtual methods
.method public onReceive(Lccsanandroid/content/Context;Lccsanandroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Lccsanandroid/content/Context;
    .param p2, "intent"    # Lccsanandroid/content/Intent;

    .line 214
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/StreamVolumeManager$VolumeChangeReceiver;->this$0:Lccsancom/google/android/exoplayer2/StreamVolumeManager;

    invoke-static {v0}, Lccsancom/google/android/exoplayer2/StreamVolumeManager;->access$100(Lccsancom/google/android/exoplayer2/StreamVolumeManager;)Lccsanandroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lccsancom/google/android/exoplayer2/StreamVolumeManager$VolumeChangeReceiver;->this$0:Lccsancom/google/android/exoplayer2/StreamVolumeManager;

    new-instance v2, Lccsancom/google/android/exoplayer2/StreamVolumeManager$VolumeChangeReceiver$$ExternalSyntheticLambda0;

    invoke-direct {v2, v1}, Lccsancom/google/android/exoplayer2/StreamVolumeManager$VolumeChangeReceiver$$ExternalSyntheticLambda0;-><init>(Lccsancom/google/android/exoplayer2/StreamVolumeManager;)V

    invoke-virtual {v0, v2}, Lccsanandroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 215
    return-void
.end method
