.class public final Lccsancom/google/android/exoplayer2/audio/AudioSink$ConfigurationException;
.super Ljava/lang/Exception;
.source "AudioSink.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/google/android/exoplayer2/audio/AudioSink;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ConfigurationException"
.end annotation


# instance fields
.field public final format:Lccsancom/google/android/exoplayer2/Format;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lccsancom/google/android/exoplayer2/Format;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "format"    # Lccsancom/google/android/exoplayer2/Format;

    .line 148
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 149
    iput-object p2, p0, Lccsancom/google/android/exoplayer2/audio/AudioSink$ConfigurationException;->format:Lccsancom/google/android/exoplayer2/Format;

    .line 150
    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;Lccsancom/google/android/exoplayer2/Format;)V
    .locals 0
    .param p1, "cause"    # Ljava/lang/Throwable;
    .param p2, "format"    # Lccsancom/google/android/exoplayer2/Format;

    .line 142
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    .line 143
    iput-object p2, p0, Lccsancom/google/android/exoplayer2/audio/AudioSink$ConfigurationException;->format:Lccsancom/google/android/exoplayer2/Format;

    .line 144
    return-void
.end method
