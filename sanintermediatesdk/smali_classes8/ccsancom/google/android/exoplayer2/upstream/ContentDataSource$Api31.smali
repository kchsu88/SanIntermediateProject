.class final Lccsancom/google/android/exoplayer2/upstream/ContentDataSource$Api31;
.super Ljava/lang/Object;
.source "ContentDataSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/google/android/exoplayer2/upstream/ContentDataSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Api31"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 231
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static disableTranscoding(Lccsanandroid/os/Bundle;)V
    .locals 2
    .param p0, "providerOptions"    # Lccsanandroid/os/Bundle;

    .line 235
    new-instance v0, Lccsanandroid/media/ApplicationMediaCapabilities$Builder;

    invoke-direct {v0}, Lccsanandroid/media/ApplicationMediaCapabilities$Builder;-><init>()V

    .line 237
    const-string/jumbo v1, "video/hevc"

    invoke-virtual {v0, v1}, Lccsanandroid/media/ApplicationMediaCapabilities$Builder;->addSupportedVideoMimeType(Ljava/lang/String;)Lccsanandroid/media/ApplicationMediaCapabilities$Builder;

    move-result-object v0

    .line 238
    const-string v1, "android.media.feature.hdr.dolby_vision"

    invoke-virtual {v0, v1}, Lccsanandroid/media/ApplicationMediaCapabilities$Builder;->addSupportedHdrType(Ljava/lang/String;)Lccsanandroid/media/ApplicationMediaCapabilities$Builder;

    move-result-object v0

    .line 239
    const-string v1, "android.media.feature.hdr.hdr10"

    invoke-virtual {v0, v1}, Lccsanandroid/media/ApplicationMediaCapabilities$Builder;->addSupportedHdrType(Ljava/lang/String;)Lccsanandroid/media/ApplicationMediaCapabilities$Builder;

    move-result-object v0

    .line 240
    const-string v1, "android.media.feature.hdr.hdr10_plus"

    invoke-virtual {v0, v1}, Lccsanandroid/media/ApplicationMediaCapabilities$Builder;->addSupportedHdrType(Ljava/lang/String;)Lccsanandroid/media/ApplicationMediaCapabilities$Builder;

    move-result-object v0

    .line 241
    const-string v1, "android.media.feature.hdr.hlg"

    invoke-virtual {v0, v1}, Lccsanandroid/media/ApplicationMediaCapabilities$Builder;->addSupportedHdrType(Ljava/lang/String;)Lccsanandroid/media/ApplicationMediaCapabilities$Builder;

    move-result-object v0

    .line 242
    invoke-virtual {v0}, Lccsanandroid/media/ApplicationMediaCapabilities$Builder;->build()Lccsanandroid/media/ApplicationMediaCapabilities;

    move-result-object v0

    .line 243
    .local v0, "mediaCapabilities":Lccsanandroid/media/ApplicationMediaCapabilities;
    const-string v1, "android.provider.extra.MEDIA_CAPABILITIES"

    invoke-virtual {p0, v1, v0}, Lccsanandroid/os/Bundle;->putParcelable(Ljava/lang/String;Lccsanandroid/os/Parcelable;)V

    .line 244
    return-void
.end method
