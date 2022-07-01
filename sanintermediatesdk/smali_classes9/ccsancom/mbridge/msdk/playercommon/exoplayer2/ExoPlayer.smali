.class public interface abstract Lccsancom/mbridge/msdk/playercommon/exoplayer2/ExoPlayer;
.super Ljava/lang/Object;
.source "ExoPlayer.java"

# interfaces
.implements Lccsancom/mbridge/msdk/playercommon/exoplayer2/Player;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsancom/mbridge/msdk/playercommon/exoplayer2/ExoPlayer$ExoPlayerMessage;,
        Lccsancom/mbridge/msdk/playercommon/exoplayer2/ExoPlayer$ExoPlayerComponent;,
        Lccsancom/mbridge/msdk/playercommon/exoplayer2/ExoPlayer$EventListener;
    }
.end annotation


# static fields
.field public static final REPEAT_MODE_ALL:I = 0x2

.field public static final REPEAT_MODE_OFF:I = 0x0

.field public static final REPEAT_MODE_ONE:I = 0x1

.field public static final STATE_BUFFERING:I = 0x2

.field public static final STATE_ENDED:I = 0x4

.field public static final STATE_IDLE:I = 0x1

.field public static final STATE_READY:I = 0x3


# virtual methods
.method public varargs abstract blockingSendMessages([Lccsancom/mbridge/msdk/playercommon/exoplayer2/ExoPlayer$ExoPlayerMessage;)V
.end method

.method public abstract createMessage(Lccsancom/mbridge/msdk/playercommon/exoplayer2/PlayerMessage$Target;)Lccsancom/mbridge/msdk/playercommon/exoplayer2/PlayerMessage;
.end method

.method public abstract getPlaybackLooper()Lccsanandroid/os/Looper;
.end method

.method public abstract prepare(Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaSource;)V
.end method

.method public abstract prepare(Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaSource;ZZ)V
.end method

.method public varargs abstract sendMessages([Lccsancom/mbridge/msdk/playercommon/exoplayer2/ExoPlayer$ExoPlayerMessage;)V
.end method

.method public abstract setSeekParameters(Lccsancom/mbridge/msdk/playercommon/exoplayer2/SeekParameters;)V
.end method
