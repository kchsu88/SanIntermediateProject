.class Lccsanandroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplApi19$1;
.super Ljava/lang/Object;
.source "MediaSessionCompat.java"

# interfaces
.implements Lccsanandroid/media/RemoteControlClient$OnMetadataUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsanandroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplApi19;->setCallback(Lccsanandroid/support/v4/media/session/MediaSessionCompat$Callback;Lccsanandroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lccsanandroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplApi19;


# direct methods
.method constructor <init>(Lccsanandroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplApi19;)V
    .locals 0
    .param p1, "this$0"    # Lccsanandroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplApi19;

    .line 3310
    iput-object p1, p0, Lccsanandroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplApi19$1;->this$0:Lccsanandroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplApi19;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMetadataUpdate(ILjava/lang/Object;)V
    .locals 7
    .param p1, "key"    # I
    .param p2, "newValue"    # Ljava/lang/Object;

    .line 3313
    const v0, 0x10000001

    if-ne p1, v0, :cond_0

    instance-of v0, p2, Lccsanandroid/media/Rating;

    if-eqz v0, :cond_0

    .line 3315
    iget-object v1, p0, Lccsanandroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplApi19$1;->this$0:Lccsanandroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplApi19;

    const/16 v2, 0x13

    const/4 v3, -0x1

    const/4 v4, -0x1

    .line 3316
    invoke-static {p2}, Lccsanandroid/support/v4/media/RatingCompat;->fromRating(Ljava/lang/Object;)Lccsanandroid/support/v4/media/RatingCompat;

    move-result-object v5

    const/4 v6, 0x0

    .line 3315
    invoke-virtual/range {v1 .. v6}, Lccsanandroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplApi19;->postToHandler(IIILjava/lang/Object;Lccsanandroid/os/Bundle;)V

    .line 3318
    :cond_0
    return-void
.end method
