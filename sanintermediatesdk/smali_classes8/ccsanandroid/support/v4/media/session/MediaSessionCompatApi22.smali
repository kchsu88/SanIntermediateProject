.class Lccsanandroid/support/v4/media/session/MediaSessionCompatApi22;
.super Ljava/lang/Object;
.source "MediaSessionCompatApi22.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    return-void
.end method

.method public static setRatingType(Ljava/lang/Object;I)V
    .locals 1
    .param p0, "sessionObj"    # Ljava/lang/Object;
    .param p1, "type"    # I

    .line 26
    move-object v0, p0

    check-cast v0, Lccsanandroid/media/session/MediaSession;

    invoke-virtual {v0, p1}, Lccsanandroid/media/session/MediaSession;->setRatingType(I)V

    .line 27
    return-void
.end method