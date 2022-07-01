.class Lccsancom/google/android/exoplayer2/AudioFocusManager$AudioFocusListener;
.super Ljava/lang/Object;
.source "AudioFocusManager.java"

# interfaces
.implements Lccsanandroid/media/AudioManager$OnAudioFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/google/android/exoplayer2/AudioFocusManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AudioFocusListener"
.end annotation


# instance fields
.field private final eventHandler:Lccsanandroid/os/Handler;

.field final synthetic this$0:Lccsancom/google/android/exoplayer2/AudioFocusManager;


# direct methods
.method public constructor <init>(Lccsancom/google/android/exoplayer2/AudioFocusManager;Lccsanandroid/os/Handler;)V
    .locals 0
    .param p2, "eventHandler"    # Lccsanandroid/os/Handler;

    .line 391
    iput-object p1, p0, Lccsancom/google/android/exoplayer2/AudioFocusManager$AudioFocusListener;->this$0:Lccsancom/google/android/exoplayer2/AudioFocusManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 392
    iput-object p2, p0, Lccsancom/google/android/exoplayer2/AudioFocusManager$AudioFocusListener;->eventHandler:Lccsanandroid/os/Handler;

    .line 393
    return-void
.end method


# virtual methods
.method public synthetic lambda$onAudioFocusChange$0$com-google-android-exoplayer2-AudioFocusManager$AudioFocusListener(I)V
    .locals 1
    .param p1, "focusChange"    # I

    .line 397
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/AudioFocusManager$AudioFocusListener;->this$0:Lccsancom/google/android/exoplayer2/AudioFocusManager;

    invoke-static {v0, p1}, Lccsancom/google/android/exoplayer2/AudioFocusManager;->access$000(Lccsancom/google/android/exoplayer2/AudioFocusManager;I)V

    return-void
.end method

.method public onAudioFocusChange(I)V
    .locals 2
    .param p1, "focusChange"    # I

    .line 397
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/AudioFocusManager$AudioFocusListener;->eventHandler:Lccsanandroid/os/Handler;

    new-instance v1, Lccsancom/google/android/exoplayer2/AudioFocusManager$AudioFocusListener$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lccsancom/google/android/exoplayer2/AudioFocusManager$AudioFocusListener$$ExternalSyntheticLambda0;-><init>(Lccsancom/google/android/exoplayer2/AudioFocusManager$AudioFocusListener;I)V

    invoke-virtual {v0, v1}, Lccsanandroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 398
    return-void
.end method
