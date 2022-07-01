.class final Lccsancom/google/android/exoplayer2/audio/AudioCapabilitiesReceiver$ExternalSurroundSoundSettingObserver;
.super Lccsanandroid/database/ContentObserver;
.source "AudioCapabilitiesReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/google/android/exoplayer2/audio/AudioCapabilitiesReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ExternalSurroundSoundSettingObserver"
.end annotation


# instance fields
.field private final resolver:Lccsanandroid/content/ContentResolver;

.field private final settingUri:Lccsanandroid/net/Uri;

.field final synthetic this$0:Lccsancom/google/android/exoplayer2/audio/AudioCapabilitiesReceiver;


# direct methods
.method public constructor <init>(Lccsancom/google/android/exoplayer2/audio/AudioCapabilitiesReceiver;Lccsanandroid/os/Handler;Lccsanandroid/content/ContentResolver;Lccsanandroid/net/Uri;)V
    .locals 0
    .param p2, "handler"    # Lccsanandroid/os/Handler;
    .param p3, "resolver"    # Lccsanandroid/content/ContentResolver;
    .param p4, "settingUri"    # Lccsanandroid/net/Uri;

    .line 143
    iput-object p1, p0, Lccsancom/google/android/exoplayer2/audio/AudioCapabilitiesReceiver$ExternalSurroundSoundSettingObserver;->this$0:Lccsancom/google/android/exoplayer2/audio/AudioCapabilitiesReceiver;

    .line 144
    invoke-direct {p0, p2}, Lccsanandroid/database/ContentObserver;-><init>(Lccsanandroid/os/Handler;)V

    .line 145
    iput-object p3, p0, Lccsancom/google/android/exoplayer2/audio/AudioCapabilitiesReceiver$ExternalSurroundSoundSettingObserver;->resolver:Lccsanandroid/content/ContentResolver;

    .line 146
    iput-object p4, p0, Lccsancom/google/android/exoplayer2/audio/AudioCapabilitiesReceiver$ExternalSurroundSoundSettingObserver;->settingUri:Lccsanandroid/net/Uri;

    .line 147
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2
    .param p1, "selfChange"    # Z

    .line 159
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/audio/AudioCapabilitiesReceiver$ExternalSurroundSoundSettingObserver;->this$0:Lccsancom/google/android/exoplayer2/audio/AudioCapabilitiesReceiver;

    invoke-static {v0}, Lccsancom/google/android/exoplayer2/audio/AudioCapabilitiesReceiver;->access$200(Lccsancom/google/android/exoplayer2/audio/AudioCapabilitiesReceiver;)Lccsanandroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lccsancom/google/android/exoplayer2/audio/AudioCapabilities;->getCapabilities(Lccsanandroid/content/Context;)Lccsancom/google/android/exoplayer2/audio/AudioCapabilities;

    move-result-object v1

    invoke-static {v0, v1}, Lccsancom/google/android/exoplayer2/audio/AudioCapabilitiesReceiver;->access$100(Lccsancom/google/android/exoplayer2/audio/AudioCapabilitiesReceiver;Lccsancom/google/android/exoplayer2/audio/AudioCapabilities;)V

    .line 160
    return-void
.end method

.method public register()V
    .locals 3

    .line 150
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/audio/AudioCapabilitiesReceiver$ExternalSurroundSoundSettingObserver;->resolver:Lccsanandroid/content/ContentResolver;

    iget-object v1, p0, Lccsancom/google/android/exoplayer2/audio/AudioCapabilitiesReceiver$ExternalSurroundSoundSettingObserver;->settingUri:Lccsanandroid/net/Uri;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Lccsanandroid/content/ContentResolver;->registerContentObserver(Lccsanandroid/net/Uri;ZLccsanandroid/database/ContentObserver;)V

    .line 151
    return-void
.end method

.method public unregister()V
    .locals 1

    .line 154
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/audio/AudioCapabilitiesReceiver$ExternalSurroundSoundSettingObserver;->resolver:Lccsanandroid/content/ContentResolver;

    invoke-virtual {v0, p0}, Lccsanandroid/content/ContentResolver;->unregisterContentObserver(Lccsanandroid/database/ContentObserver;)V

    .line 155
    return-void
.end method
