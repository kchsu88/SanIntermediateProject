.class Lccsanandroid/support/v4/media/session/MediaControllerCompat$MediaControllerExtraData;
.super Lccsanandroidx/core/app/ComponentActivity$ExtraData;
.source "MediaControllerCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsanandroid/support/v4/media/session/MediaControllerCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MediaControllerExtraData"
.end annotation


# instance fields
.field private final mMediaController:Lccsanandroid/support/v4/media/session/MediaControllerCompat;


# direct methods
.method constructor <init>(Lccsanandroid/support/v4/media/session/MediaControllerCompat;)V
    .locals 0
    .param p1, "mediaController"    # Lccsanandroid/support/v4/media/session/MediaControllerCompat;

    .line 140
    invoke-direct {p0}, Lccsanandroidx/core/app/ComponentActivity$ExtraData;-><init>()V

    .line 141
    iput-object p1, p0, Lccsanandroid/support/v4/media/session/MediaControllerCompat$MediaControllerExtraData;->mMediaController:Lccsanandroid/support/v4/media/session/MediaControllerCompat;

    .line 142
    return-void
.end method


# virtual methods
.method getMediaController()Lccsanandroid/support/v4/media/session/MediaControllerCompat;
    .locals 1

    .line 145
    iget-object v0, p0, Lccsanandroid/support/v4/media/session/MediaControllerCompat$MediaControllerExtraData;->mMediaController:Lccsanandroid/support/v4/media/session/MediaControllerCompat;

    return-object v0
.end method
