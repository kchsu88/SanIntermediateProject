.class public interface abstract Lccsancom/google/android/exoplayer2/text/SubtitleDecoderFactory;
.super Ljava/lang/Object;
.source "SubtitleDecoderFactory.java"


# static fields
.field public static final DEFAULT:Lccsancom/google/android/exoplayer2/text/SubtitleDecoderFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 72
    new-instance v0, Lccsancom/google/android/exoplayer2/text/SubtitleDecoderFactory$1;

    invoke-direct {v0}, Lccsancom/google/android/exoplayer2/text/SubtitleDecoderFactory$1;-><init>()V

    sput-object v0, Lccsancom/google/android/exoplayer2/text/SubtitleDecoderFactory;->DEFAULT:Lccsancom/google/android/exoplayer2/text/SubtitleDecoderFactory;

    return-void
.end method


# virtual methods
.method public abstract createDecoder(Lccsancom/google/android/exoplayer2/Format;)Lccsancom/google/android/exoplayer2/text/SubtitleDecoder;
.end method

.method public abstract supportsFormat(Lccsancom/google/android/exoplayer2/Format;)Z
.end method
